library(shiny)

ui <- fluidPage(
  titlePanel("MY CALCULATOR"),
  numericInput(inputId = "num1", label = "Enter a number: ",value = 1),
  selectInput(inputId = "operator", label = "Operator: ",choices = c("+",'-','*',"/")),
  numericInput(inputId = "num2", label = "Enter another number: ", value = 1),
  actionButton(inputId = "update", label = "Calculate! "),
  
  fluidRow(
    br(),
    column(3, verbatimTextOutput(outputId = "ans"))
  )
)
  
server <- function (input, output){
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
    paste("Answer is",calculation())
  )
}
  
shinyApp(ui = ui, server = server)

