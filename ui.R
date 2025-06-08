library(shiny)

shinyUI(fluidPage(
  titlePanel("BMI Calculator - Saad Ul Islam"),
  
  sidebarLayout(
    sidebarPanel(
      tags$h4("Enter your details:"),
      numericInput("height", "Height (cm):", value = 170, min = 50, max = 300),
      numericInput("weight", "Weight (kg):", value = 65, min = 10, max = 500),
      actionButton("calc", "Calculate BMI", class = "btn-primary"),
      br(), br(),
      tags$em("This app calculates your Body Mass Index and gives feedback on your health status.")
    ),
    
    mainPanel(
      tags$h3("Result:"),
      verbatimTextOutput("bmi_value"),
      textOutput("bmi_category")
    )
  )
))