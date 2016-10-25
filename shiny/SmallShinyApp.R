library(shiny)

ui <- fluidPage(
        "Hi Shiny!",
        sliderInput(inputId = "num", label = "Choose a number",
                    value = 5, min = 1, max = 1000),
        plotOutput(outputId = "hist")
      )

server <- function(input, output)
{
  output$hist <- renderPlot({
    title <- paste("Normal distribution of", input$num, "values")
    hist(rnorm(input$num), main = title)
  })
  
}

shinyApp(ui = ui, server = server)
