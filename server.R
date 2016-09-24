
chick <- chickwts

shinyServer(

  function(input, output) {
    
    formulaText <- reactive({
      paste("Chart")
    })
    
    output$caption <- renderText({
      formulaText()
    })
    
    output$chickPlot <- renderPlot({
      boxplot(weight~feed,
              data = chick[chick$feed == input$feedchoice, ],
              main = "Chicken Weight by Feed",
              xlab = "Feed Type",
              ylab = "Weight")
    })
  }
)
