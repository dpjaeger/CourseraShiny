shinyUI(
  fluidPage(
    
    titlePanel("Chicken Feed Type"),
    
    sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("feedchoice", label = h3("Feed Type (select at least one)"),
                         choices = levels(chick$feed))),
      
      mainPanel(
        h3(textOutput("caption")),
        
        plotOutput("chickPlot")
      )
    )))