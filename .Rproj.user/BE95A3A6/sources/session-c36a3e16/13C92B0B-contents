library(shiny)

shinyServer(function(input, output) {
  
  bmi_result <- eventReactive(input$calc, {
    height_m <- input$height / 100
    bmi <- input$weight / (height_m ^ 2)
    round(bmi, 2)
  })
  
  output$bmi_value <- renderText({
    req(bmi_result())
    paste("Your BMI is:", bmi_result())
  })
  
  output$bmi_category <- renderText({
    req(bmi_result())
    bmi <- bmi_result()
    if (bmi < 18.5) {
      "You are underweight."
    } else if (bmi < 24.9) {
      "You have a normal weight."
    } else if (bmi < 29.9) {
      "You are overweight."
    } else {
      "You are obese."
    }
  })
})