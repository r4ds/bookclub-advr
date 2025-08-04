chapter_numbers <- 3:25

purrr::walk(chapter_numbers, \(chapter_number) {
  chapter_number_wide <- stringr::str_pad(chapter_number, 2, pad = "0")
  chapter <- readLines(glue::glue("slides/{chapter_number_wide}.Rmd"))
  vids_start <- stringr::str_which(chapter, "^## Meeting Videos")
  if (length(vids_start)) {
    fs::dir_create("videos", chapter_number_wide)
    txt <- paste(chapter[vids_start:length(chapter)], collapse = "\n")
    vid_sections <- stringr::str_split_1(txt, "\\n###\\s*") |>
      stringr::str_subset("^## Meeting Videos", negate = TRUE)
    if (length(vid_sections)) {
      purrr::walk(vid_sections, \(vid_section) {
        section_lines <- stringr::str_split_1(vid_section, "\\n") |>
          purrr::keep(~ nchar(.x) > 0)
        cohort <- stringr::str_extract(section_lines[[1]], "\\d+")
        cohort_wide <- stringr::str_pad(cohort, 2, pad = "0")
        youtube_codes <- purrr::discard(
          stringr::str_extract(
            section_lines,
            "https://www\\.youtube\\.com/embed/([^\"]+)",
            1
          ),
          is.na
        )
        youtube_embeds <- glue::glue(
          "{{< video https://www.youtube.com/embed/[youtube_codes] >}}",
          .open = "[",
          .close = "]"
        )
        chat_log <- stringr::str_subset(
          section_lines[-1],
          "https://www\\.youtube\\.com/embed/",
          negate = TRUE
        ) |>
          paste(collapse = "\n")

        cat(
          c(
            "---",
            glue::glue("title: Cohort {cohort}"),
            "---",
            youtube_embeds,
            chat_log
          ) |>
            purrr::keep(~ nchar(.x) > 0),
          sep = "\n",
          file = fs::path(
            "videos",
            chapter_number_wide,
            cohort_wide,
            ext = "qmd"
          )
        )
      })
    }
  }
})
