library(shiny)
library(plotly)
library(plyr)
datamelt<-read.csv("datamelt.csv")
shinyServer(function(input, output) {
      output$refugeePlot<-renderPlotly({
            plot_ly(datamelt, x = ~Year, y = ~Number)  %>%
                  filter(Country %in% input$variable) %>%
                  group_by(Country) %>%
                  add_lines(color=~Country)
      })
      output$refugeeTable<-renderTable({
            if(!is.null(input$variable)){
                  dm1<-subset(datamelt,Country %in% input$variable)
                  ddply(dm1,.(Country),summarize,sum=sum(Number))
            }
            else{
                  x<-"Which countries would you like to see?"
                  x
            }
      })
})