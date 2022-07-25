## My helper functions and settings

#Helper function
`%nin%` <- negate(`%in%`)

#Short cut for csv output with html tables
my_datatable <- function(x){
  DT::datatable(x, extensions = "Buttons", options = list(dom = "Bfrtip", 
                                                          buttons = c("csv")))
}

#Baseline plot settings
theme_set(theme_minimal(base_family = "Roboto", base_size = 20) +
            theme(panel.grid.minor = element_blank(),
                  axis.title.y = element_text(margin = margin(0, 20, 0, 0)),
                  axis.title.x = element_text(margin = margin(20, 0, 0, 0)),
                  plot.caption = element_text(colour = "#AAAAAA"),
                  plot.margin = margin(3,15,3,3,"mm")))

#global options for scientific numbers and significant digits.          
options(scipen = 10,
        digits = 3)