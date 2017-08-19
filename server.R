
library(markdown)
library(shiny)

shinyServer(function(input, output) {
  
  #read in number from slider bar and create a normal distribution
  samp <- reactive({ 
    set.seed(as.numeric(input$slider2))
    rnorm(as.numeric(input$slider1))
  })
  
  output$mean <- reactive({ ifelse(input$show_mean, mean(samp()),"")})
  output$stddev <- reactive({ifelse(input$show_stddev, sd(samp()),"")})
  output$stderr <- reactive({
    if(input$show_stderr) 
      sd(samp())/sqrt(as.numeric(input$slider1))
    else
      ""
  })
  
  output$confint <- reactive({
    if(input$show_confint){
      x = samp()
      mean = mean(x)
      std = sd(x)
      err = qnorm(.975)*std/sqrt(as.numeric(input$slider1))
      round(c(mean-err,mean+err),3)
    } else
      ""
  })
  
  # draw the histogram for the sample
  output$distPlot <- renderPlot({
    hist(samp(), col = 'darkgray', border = 'white',
         main = "Frequency of sample values",
         xlab = "Point values")
  })
  
})
