library(magrittr)

add_talents <- function(df) {
  
  x <- split(df, df$Code)
  for (code in names(x)) {
    
    cat("<h4><b>", x[[code]][["Name"]][1], "</h4></b>")
    cat('\n\n<!-- -->\n\n')
    print(
      knitr::kable(x[[code]][-1]) %>%
        kableExtra::kable_styling(htmltable_class = "talent") %>%
        kableExtra::column_spec(1, width = "6%", extra_css = "text-align: right;") %>%
        kableExtra::column_spec(2, width = "25%") %>%
        kableExtra::column_spec(3, width = "69%")
    )
    cat('\n\n<!-- -->\n\n')
    
  }
}
