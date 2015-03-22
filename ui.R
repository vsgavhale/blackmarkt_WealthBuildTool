library(shiny)

shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Simple Wealth Building Tool"),
        
        sidebarPanel(
            h3('Instructions'),
            helpText('This financial application is designed to help you calculate your future projected wealth after investing at a target yield for x years.'),
            helpText('Just simply enter 3 things below: Starting Capital, Yield and Years. And hit Submit.'),
            h3('Inputs'),
            numericInput('start.capital','Starting Capital',1000,min=100,max=1000000,step=1000),
            numericInput('yield','Yield',.05,min=0,max=1),
            numericInput('years','Years to invest',10,min=1,max=200),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Wealth Building Calculator'),
            h4('Your starting capital'),
            verbatimTextOutput('start.capital'),
            h4('Your target yield'),
            verbatimTextOutput('yield'),
            h4('The number of years you have to invest'),
            verbatimTextOutput('years'),
            h4('Your Future Projected Wealth is '),
            verbatimTextOutput("prediction"),
            h4('However, if you just increased your yield by .01 your wealth would be '),
            verbatimTextOutput('prediction2'),
            h4('Or if you increased your investment horizon by 10 years '),
            verbatimTextOutput('prediction3')
            )
        )
    )
