
chick <- chickwts

shinyServer(

  function(input, output) {
    
    
    output$caption <- renderText({
      c("Average weight: ", round(mean(chick[chick$feed == input$feedchoice, 1]), digits = 0), " grams")
    })
    
    output$chickPlot <- renderPlot({
      hist(chick[chick$feed == input$feedchoice, 1], breaks = 10,
           xlab = "weight",
           col="red",
           main = c("Chicken weights for feedtype ", input$feedchoice),
           xlim = c(100,500),
           ylim = c(0, 4)
           )
    })
  }
)
