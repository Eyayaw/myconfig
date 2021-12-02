set.seed(2021)
dir.create("Rstudio Themes")

create_snippet <- function() {
  themes <- readLines("themes.txt")
  SET <- c(letters = LETTERS, num = 1:9)
  for (theme in themes) {
    snippet <- sprintf("rstudioapi::applyTheme(\'%s\')", theme)
    uid <- sprintf(
      "%s-%s-%s",
      paste(sample(SET, 5, replace = TRUE), collapse = ""),
      toupper(theme),
      paste(sample(SET, 5, replace = TRUE), collapse = "")
    )
    name <- theme
    keyword <- paste0(janitor::make_clean_names(theme))

    jsonf <- sprintf('{
    "alfredsnippet" : {
        "snippet" : "%s",
        "uid" : "%s",
        "name" : "%s",
        "keyword" : "%s"
    }
}', snippet, uid, name, keyword)

    writeLines(jsonf, sprintf("Rstudio Themes/%s[%s].json", name, uid))
  }
}

create_snippet()

# create info.plist
'<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>snippetkeywordprefix</key>
	<string>..</string>
	<key>snippetkeywordsuffix</key>
	<string></string>
</dict>
</plist>' |>
  writeLines("Rstudio Themes/info.plist")

tar(
  "Rstudio Themes.alfredsnippets",
  dir("Rstudio Themes", "[.]json$", full.names = T)
)
