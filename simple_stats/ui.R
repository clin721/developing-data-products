

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Descriptive Statistics for a Sample Population"),
  
  # Sidebar with a slider input for number of samples 
  sidebarLayout(
    sidebarPanel(
      sliderInput("slider1", "Number of samples:", min = 100, max = 200, value = 150),
      sliderInput("slider2", "Seed #:", min = 1, max = 2000, value = 1234),
       
      # checkboxes to display relevant info about the sample population
      checkboxInput("show_mean", "Mean", value = TRUE),
      checkboxInput("show_stddev", "Std. Deviation", value = TRUE),
      checkboxInput("show_stderr", "Std. Error of Mean"),
      checkboxInput("show_confint", "95% Confidence Interval")
       
    ),
    
   
    mainPanel(
       # Show a plot of the generated distribution
       plotOutput("distPlot"),
       
       # Show the summary stats of the population
       h4("Mean: "),
       textOutput("mean"),
       h4("Std. Deviation: "),
       textOutput("stddev"),
       h4("Std. Error of Mean: "),
       textOutput("stderr"),
       h4("95% Confidence Interval: "),
       textOutput("confint")
    )
  )
))
