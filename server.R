Wealth <- function(start.capital,yield,years) {
    result <- start.capital*(1+yield)^years
    return(round(result,digit=2))
}

Wealth2 <- function(start.capital,yield,years) {
    yield2 <- yield+.01
    result2 <- start.capital*(1+yield2)^years
    return(round(result2,digit=2))
}

Wealth3 <- function(start.capital,yield,years) {
    years2 <- years+10
    result3 <- start.capital*(1+yield)^years2
    return(round(result3,digit=2))
}

shinyServer(
    function(input,output) {
        output$start.capital <- renderPrint({input$start.capital})
        output$yield <- renderPrint({input$yield})
        output$years <- renderPrint({input$years})
        output$prediction <- renderPrint({Wealth(input$start.capital,input$yield,input$years)})
        output$prediction2 <- renderPrint({Wealth2(input$start.capital,input$yield,input$years)})
        output$prediction3 <- renderPrint({Wealth3(input$start.capital,input$yield,input$years)})
    }
)