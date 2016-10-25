library(shiny)

ui <- fluidPage(
        "Hola Shiny",
        sliderInput(inputId = "num", label = "Elije un número",
                    value = 5, min = 1, max = 10))

server <- function(input, output){}

shinyApp(ui = ui, server = server)
