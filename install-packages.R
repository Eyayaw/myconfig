# R packages installations -----------

## install `data.table` with openmp support -----
if ("data.table" %in% installed.packages()[, "Package"]) {
  if (data.table::getDTthreads() == 1L) {
    remove.packages("data.table")
    install.packages("data.table", type = "source",
                     repos = "https://Rdatatable.gitlab.io/data.table")
  }
} else {
  install.packages("data.table", type = "source",
                   repos = "https://Rdatatable.gitlab.io/data.table")
}

## other critical packages ------
pkgs <- c(
  "ggplot2", "dplyr", "tidyr", "tibble", "stringr",
  "readr", "haven", "readxl", "waldo", "rvest", "usethis", "here",
  "janitor", "rmarkdown", "knitr", "bookdown", "kableExtra", "tinytex",
  "lintr", "styler", "datapasta",
  "MASS", "bit64", "poorman", "fastverse",
  "ivreg", "sandwich", "fixest", "AER", "stargazer",
  "sf", "terra", "stars", "tmap", "exactextractr",
  "languageserver", "rsthemes", "cowplot", "patchwork"
)

pkgs <- pkgs[!(pkgs %in% installed.packages()[, "Package"])]
for (pkg in pkgs) {
  install.packages(pkg, character.only = TRUE)
}

install.packages(
  "rsthemes",
  repos = c(gadenbuie = 'https://gadenbuie.r-universe.dev', getOption("repos"))
)
