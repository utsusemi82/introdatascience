
library(shiny)

ui <- fluidPage(
  numericInput(inputId = "num1",
               label = "Enter a number",
               value = 1),
  
  selectizeInput(inputId = "operator",
                 label = "Choose an operator",
                 choices = c("+", "-", "*", "/")
                 ),
  
  numericInput(inputId = "num2",
               label = "Enter another number",
               value = 1),
  
  actionButton(
    inputId = "update",
    label = "Calculate!"
  ),
  
  fluidRow(
    br(),
    column(3, verbatimTextOutput(outputId = "ans"))
  )
)

server <- function(input, output) {
  
  calculation <- eventReactive(input$update,
    if (input$operator == "+"){
      ans <- input$num1 + input$num2
    }else if (input$operator == "-"){
      ans <- input$num1 - input$num2
    }else if (input$operator == "*"){
      ans <- input$num1 * input$num2
    }else if (input$operator == "/"){
      ans <- input$num1 / input$num2
    }
  )
  
  output$ans <- renderText(
    paste("The calculated value is", calculation(), sep = " ")
  )
  
}

shinyApp(ui = ui, server = server)