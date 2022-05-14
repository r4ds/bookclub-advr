# R4DS Advanced R Book Club

Welcome to the R4DS Advanced R Book Club!

We are working together to read [_Advanced R_](https://adv-r.hadley.nz/) by Hadley Wickham (Chapman & Hall, copyright 2019, [9780815384571](https://www.routledge.com/Advanced-R-Second-Edition/Wickham/p/book/9780815384571)).
Join the #book_club-advr channel on the [R4DS Slack](https://r4ds.io/join) to participate.
As we read, we are producing [notes about the book](https://r4ds.io/advr).

## Meeting Schedule

If you would like to present, please add your name next to a chapter using the [GitHub Web Editor](https://youtu.be/d41oc2OMAuI)!

*Cohort 6: TBD, TBD CST/CDT*

<details>
  <summary> Past Meetings </summary>
  (none yet)
</details>

- 2022-MM-DD: Chapter 1 (Introduction) - FACILITATOR TBD

**Foundations**

- 2022-MM-DD: Chapter 2 (Names and values) - Presenter TBD
- 2022-MM-DD: Chapter 3 (Vectors) - Presenter TBD
- 2022-MM-DD: Chapter 4 (Subsetting) - Presenter TBD
- 2022-MM-DD: Chapter 5(Control flow) - Presenter TBD
- 2022-MM-DD: Chapter 6 (Functions) - Presenter TBD
- 2022-MM-DD: Chapter 7 (Environments) - Presenter TBD
- 2022-MM-DD: Chapter 8 (Conditions) - Presenter TBD

**Functional programming**

- 2022-MM-DD: Chapter 9 (Functionals) - Presenter TBD
- 2022-MM-DD: Chapter 10 (Function factories) - Presenter TBD
- 2022-MM-DD: Chapter 11 (Function operators) - Presenter TBD

**Object-oriented programming**

- 2022-MM-DD: Chapter 12 (Base types) - Presenter TBD
- 2022-MM-DD: Chapter 13 (S3) - Presenter TBD
- 2022-MM-DD: Chapter 14 (R6) - Presenter TBD
- 2022-MM-DD: Chapter 15 (S4) - Presenter TBD
- 2022-MM-DD: Chapter 16 (Trade-offs) - Presenter TBD

**Metaprogramming**

- 2022-MM-DD: Chapter 17 (Big picture) - Presenter TBD
- 2022-MM-DD: Chapter 18 (Expressions) - Presenter TBD
- 2022-MM-DD: Chapter 19 (Quasiquotation) - Presenter TBD
- 2022-MM-DD: Chapter 20 (Evaluation) - Presenter TBD
- 2022-MM-DD: Chapter 21 (Translating R code) - Presenter TBD

**Techniques**

- 2022-MM-DD: Chapter 22 (Debugging) - Presenter TBD
- 2022-MM-DD: Chapter 23 (Measuring performance) - Presenter TBD
- 2022-MM-DD: Chapter 24 (Improving performance) - Presenter TBD
- 2022-MM-DD: Chapter 24 (Rewriting R code in C++) - Presenter TBD

[Previous cohorts](https://github.com/r4ds/bookclub-Advanced_R).

<hr>


## How to Present

This repository is structured as a [{bookdown}](https://CRAN.R-project.org/package=bookdown) site.
To present, follow these instructions:

1. [Setup Github Locally](https://www.youtube.com/watch?v=hNUNPkoledI) (also see [_HappyHappy Git and GitHub for the useR_](https://happygitwithr.com/github-acct.html))
2. Install {usethis} `install.packages("usethis")`
3. `usethis::create_from_github("r4ds/bookclub-advr")` (cleanly creates your own copy of this repository).
4. `usethis::pr_init("my-chapter")` (creates a branch for your work, to avoid confusion).
5. Edit the appropriate chapter file, if necessary. Use `##` to indicate new slides (new sections).
7. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
8. Commit your changes (either through the command line or using Rstudio's Git tab).
9. `usethis::pr_push()` (pushes the changes up to github, and opens a "pull request" (PR) to let us know your work is ready).
10. (If we request changes, make them)
11. When your PR has been accepted ("merged"), `usethis::pr_finish()` to close out your branch and prepare your local repository for future work.

When your PR is checked into the main branch, the bookdown site will rebuild, adding your slides to [this site](https://r4ds.io/advr).
