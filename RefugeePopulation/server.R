library(shiny)
library(plotly)


    shinyServer(function(input, output) {
        output$refugeePlot<-renderPlotly({
        #Create plot
              datamelt<-read.csv("datamelt.csv")
            plot_ly(datamelt, x = ~Year, y = ~Number)  %>%
                filter(Country %in% input$variable) %>%
                group_by(Country) %>%
                add_lines(color=~Country)
    })
})