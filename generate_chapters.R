# This script runs before the website renders, to generate chapter-index files.
toc <- readr::read_csv("toc.csv", show_col_types = FALSE)
header_template <- yaml::read_yaml("templates/_chapter_header.yml")
quarto_index_path <- "_quarto.yml"
quarto_index <- yaml::read_yaml(quarto_index_path)

standard_parts <- list(
  "index.qmd", 
  list(
    file = "slides/00.qmd", 
    target = "advr_club-slides"
  )
)

slide_files <- unclass(fs::dir_ls("slides", regexp = "[.](R|q)md$"))
names(slide_files) <- fs::path_file(slide_files) |>
  fs::path_ext_remove()
slide_files <- slide_files[names(slide_files) != "00"]

video_folders <- unclass(fs::dir_ls("videos", type = "directory"))
names(video_folders) <- basename(video_folders)

# Generate index files.
purrr::iwalk(
  slide_files,
  \(path, number_wide) {
    this_row <- toc[toc$number_wide == number_wide, ]
    header <- header_template
    header$title <- glue::glue_data(this_row, header$title)
    header$listing[[1]]$contents <- path
    qmd_body <- "{{< include templates/_slides.qmd >}}"
    if (number_wide %in% names(video_folders)) {
      header$listing[[2]]$contents <- video_folders[[number_wide]]
      qmd_body <- paste(
        qmd_body,
        "{{< include templates/_videos.qmd >}}",
        sep = "\n\n"
      )
    } else {
      header$listing[[2]] <- NULL
    }
    qmd_contents <- paste(
      "---",
      yaml::as.yaml(header),
      "---",
      "<-- This file is generated automatically. Do not edit. -->",
      "<-- Edit files in /slides and /videos. -->",
      qmd_body,
      sep = "\n"
    )
    cat(qmd_contents, file = glue::glue("{number_wide}.qmd"))
  }
)

more_parts <- purrr::map(
  unique(toc$part),
  \(this_part) {
    part_contents <- dplyr::filter(toc, .data$part == this_part) |> 
      dplyr::filter(.data$number_wide %in% names(slide_files)) |> 
      glue::glue_data("{number_wide}.qmd")
    # Never inline contents.
    if (length(part_contents) == 1) {
      part_contents <- list(part_contents)
    } 
    list(
      section = this_part,
      contents = part_contents
    )
  }
)

logical_handler <- function(x) {
  to_return <- tolower(x)
  class(to_return) <- "verbatim"
  to_return
}

quarto_index$website$sidebar$contents <- c(standard_parts, more_parts)
yaml::write_yaml(quarto_index, quarto_index_path, handlers = list(logical = logical_handler))
