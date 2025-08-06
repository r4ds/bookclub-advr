# DSLC Advanced R Book Club

Welcome to the DSLC Advanced R Book Club!

We are working together to read [_Advanced R_](https://adv-r.hadley.nz/) by Hadley Wickham (Chapman & Hall, copyright 2019, [9780815384571](https://www.routledge.com/Advanced-R-Second-Edition/Wickham/p/book/9780815384571)).

Join the [#book_club-advr](https://dslcio.slack.com/archives/C010GJ3VAE5) channel on the [DSLC Slack](https://dslc.io/join) to participate.
As we read, we are producing [slides about the book](https://dslc.io/advr).

## Meeting Schedule

If you would like to present, please see the schedule sign-up sheet for your cohort (linked below, and pinned in the [#book_club-advr](https://dslcio.slack.com/archives/C010GJ3VAE5) channel on Slack).

- Cohort 1 (started 2020-04-02, ended 2020-09-22): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGi9lH7q-phZlPrl6HKXYDbn)
- Cohort 2 (started 2020-07-30, ended 2021-03-04): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGhPmtka2Wg_NdLk71LJFbVl)
- Cohort 3 (started 2020-08-04, ended 2021-03-22): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGhUCEVefMkCEiJKE_C-gwV5)
- Cohort 4 (started 2020-10-05, ended 2021-04-26): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGh5cCdh4W2U6Allc6MrUGID)
- Cohort 5 (started 2021-03-06, ended 2021-08-31): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGjRvoeE6wS7AWqSA6Sigg5R)
- Cohort 6 (started 2022-05-25, ended 2023-01-18): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGjnCxGKeDNJUfPpRFI2hJjv)
- Cohort 7 (started 2022-10-24, ended 2023-06-13): [meeting videos](https://youtube.com/playlist?list=PL3x6DOfs2NGi4I1DhjPufFNbqCry_xQLq)
- Cohort 8 (started 2024-02-01, ended 2024-06-13): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGgr9ZNvaqf4Lb6GN9l6g9dK)
- Cohort 9 (started 2024-05-24, ended 2024-11-22): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGgR7BeG9Jri8wrSgW_X-s4_)
- Cohort 10 (facilitator: @jonthegeek): meeting time TBD | [schedule](https://docs.google.com/spreadsheets/d/1PgK1ZgOzKqIyxwS6iU_KF5LqBHrb0yx4GN0crVUAaUE/edit?usp=sharing) [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGjlV0O0uf685xmUGfBzstHP)

The slides from the old clubs are in a [separate repository](https://github.com/r4ds/bookclub-Advanced_R).

<hr>


## How to Present

This repository is structured as a Quarto website.
To present, follow these instructions:

Do these steps once in RStudio or Positron:

1. [Setup Git and GitHub to work with RStudio](https://github.com/r4ds/bookclub-setup) (click through for detailed, step-by-step instructions; I recommend checking this out even if you're pretty sure you're all set).
2. `usethis::create_from_github("r4ds/bookclub-advr")` (cleanly creates your own copy of this repository).

Do these steps each time you present another chapter:

1. Open your project for this book.
2. `usethis::pr_init("my-chapter")` (creates a branch for your work, to avoid confusion, making sure that you have the latest changes from other contributors; replace `my-chapter` with a descriptive name, ideally).
3. `pak::pak()` (installs any packages used by the book that you don't already have installed).
4. Edit the appropriate chapter file (in `slides/`). Use `#` (section) and `##` (slide) to indicate new slides. If the file is currently `.Rmd`, rename to `.qmd`. You do *not* need to update the `_quarto.yml` index; it automatically finds chapter slide files. Warning: unedited decks might look weird or otherwise not render properly!
5. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
6. Preview your changes! ctrl-shift-k (or command-shift-k) will render the current slide + anything that you haven't rendered before in RStudio or Positron. Please do this to make sure it works before you push your changes up to the main repo! Note: When the site builds on your machine, you'll get some untracked files (`01.qmd` etc in the root directory) and directories (`_site` and `.quarto`). Ignore these files; they're generated during the render, and *should* automatically update when you re-render. If you're having trouble rendering, try deleting old copies of these files/directories on your local machine; sometimes quarto gets "stuck." You might also need to delete something in `_freeze` if things aren't updating properly on something you've edited.
7. Commit your changes (through the command line, using Rstudio's Git tab, or using Positron's Source Control section). The exact message usually isn't important, but something like "Updates to chapter 2 slides" is enough.
8. `usethis::pr_push()` (pushes the changes up to github, and opens a "pull request" (PR) to let us know your work is ready).
9. (If we request changes, make them)
10. When your PR has been accepted ("merged"), `usethis::pr_finish()` to close out your branch and prepare your local repository for future work.
11. Now that your local copy is up-to-date with the main repo, you need to update your remote fork. Run `gert::git_push("origin")` or click the `Push` button on the `Git` tab of Rstudio.

When your PR is checked into the main branch, the quarto site will rebuild, adding your slides to [this site](https://dslc.io/advr).
