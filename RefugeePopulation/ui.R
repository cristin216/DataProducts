library(shiny)
library(plotly)
datamelt<-read.csv("datamelt.csv")

shinyUI(
    fluidPage(
        titlePanel("Refugee Arrivals to the US"),
        
        sidebarLayout(
            sidebarPanel(
                checkboxGroupInput("variable","Countries to Include:",levels(as.factor(datamelt$Country)),selected=NULL)
            ),
            mainPanel(
                tabsetPanel(type="tabs",
                    tabPanel("Plot",plotlyOutput("refugeePlot")),
                    tabPanel("Documentation",
                        h3("Reference Data"),
                        p("This app provides data on the number of refugee arrivals to the US by country and year,
                         provided by the United States Department of Homeland Security's Yearbook of Immigration
                         Statistics. The countries chosen for inclusion in this app are those which have data provided
                         for every year from 2000 through 2019, found at"),
                         a("https://www.dhs.gov/immigration-statistics/yearbook"),
                        h3("Using the Plot"),
                        p("Checking a box in the side panel will display a line in the plot corresponding to the data
                          for that country. Unchecking a box will clear the country's line. The plot can be seen in
                          the Plot tab")
                    )
                )    
            )
        )
    )
)