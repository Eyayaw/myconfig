# R packages installations -----------

## install `data.table` with openmp support -----
if ("data.table" %in% installed.packages()[, "Package"]) {
      remove.packages("data.table")
  }
install.packages("data.table",
    type = "source",
    repos = "https://Rdatatable.gitlab.io/data.table"
)


## other critical packages ------
pkgs <- c(
    "ggplot2", "dplyr", "tidyr", "tibble", "stringr",
    "rvest", "readr", "waldo", "haven", "readxl", "usethis", "here",
    "rmarkdown", "knitr", "bookdown", "kableExtra", "tinytex",
    "styler", "datapasta", "poorman", "fastverse", "MASS", "bit64",
    "sandwich", "fixest", "terra",
    "sf", "terra", "tmap", "exactextractr"
)
pkgs <- pkgs[!(pkgs %in% installed.packages()[, "Package"])]
for (pkg in pkgs) {
    if (!requireNamespace(pkg)) {
          install.packages(pkg, character.only = TRUE)
      }
}