shinyUI(
  fluidPage(
    
    titlePanel("Chicken Feed Type"),
    
    sidebarLayout(
    sidebarPanel(
      selectInput("feedchoice", label = h3("Feed Type"),
                         choices = levels(chick$feed))),
      
      mainPanel(
        h3(textOutput("caption")),
        
        plotOutput("chickPlot")
      )
    )))