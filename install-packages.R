# R packages installations -----------

## install `data.table` with openmp support -----
if ('data.table' %in% installed.packages()[, 'Package'])
    remove.packages("data.table")
install.packages("data.table", type = "source",
    repos = "https://Rdatatable.gitlab.io/data.table")


## other critical packages ------
pkgs = c('ggplot2', 'dplyr', 'tidyr', 'tibble', 'rmarkdown', 'knitr', 'bookdown',
         'styler', 'usethis', 'readr', 'waldo', 'bookdown', 'datapasta', 'stringr',
         'haven', 'readxl',  'tinytex', 'sf', 'tmap', 'MASS', 'bit64', 'plm',
         'sandwich', 'fixest', 'rvest')
pkgs = pkgs[!(pkgs %in% installed.packages()[, "Package"])]
for (pkg in pkgs) {
  if (!requireNamespace(pkg))
    install.packages(pkg, character.only = TRUE)
}
