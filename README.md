# R4DS BOOKNAME Book Club

FIND/REPLACE BOOKABBR, BOOKNAME, BOOKURL, BOOKAUTHORS, BOOKPUBLISHER, BOOKCOPYRIGHT, BOOKISBN, BOOKDOI, BOOKDAYS, and BOOKTIMECST THEN DELETE THIS SENTENCE.

ALSO UPDATE THE MEETING TIME INFO BELOW AND DELETE THIS SENTENCE.

ALSO ADD PLACEHOLDERS FOR ALL CHAPTERS BY COPYING 01.Rmd (IDEALLY ALSO UPDATE TITLES WITHIN THE FILES), THEN DELETE THIS SENTENCE.

Welcome to the R4DS BOOKNAME Book Club!

We are working together to read [_BOOKNAME_](BOOKURL) by BOOKAUTHORS (BOOKPUBLISHER, copyright BOOKCOPYRIGHT, [BOOKISBN](BOOKDOI)).
Join the #book_club-BOOKABBR channel on the [R4DS Slack](https://r4ds.io/join) to participate.
As we read, we are producing [notes about the book](https://r4ds.io/BOOKABBR).

## Meeting Schedule

If you would like to present, please add your name next to a chapter using the [GitHub Web Editor](https://youtu.be/d41oc2OMAuI)!

*Cohort 1: BOOKDAYS, BOOKTIMECST CST/CDT*

<details>
  <summary> Past Meetings </summary>
  
(none yet)
</details>

- YYYY-MM-DD: Introduction - FACILITATOR
- YYYY-MM-DD: Chapter 1 (TITLE) - Presenter TBD


<hr>


## How to Present

This repository is structured as a [{bookdown}](https://CRAN.R-project.org/package=bookdown) site.
To present, follow these instructions:

1. [Setup Github Locally](https://www.youtube.com/watch?v=hNUNPkoledI)
2. Fork this repository.
3. Create a New Project in RStudio using your fork.
4. Install dependencies for this book with `devtools::install_dev_deps()` (technically optional but it's nice to be able to rebuild the full book).
5. Create a New Branch in your fork for your work.
6. Edit the appropriate chapter file, if necessary. Use `##` to indicate new slides (new sections).
7. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
8. Commit your changes.
9. Push your changes to your branch.
10. Open a Pull Request (PR) to let us know that your slides are ready.

When your PR is checked into the main branch, the bookdown site will rebuild, adding your slides to [this site](https://r4ds.io/BOOKABBR).
