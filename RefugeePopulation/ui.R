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
                    tabPanel("Plot",
                             h3("Refugee Arrivals by Year"),
                             plotlyOutput("refugeePlot"),
                             h3("Sum of Refugee Arrivals 2000-2019"),
                             tableOutput("refugeeTable")
                    ),
                    tabPanel("Documentation",
                        h3("Reference Data"),
                        p("This app provides data on the number of refugee arrivals to the US by country and year,
                         provided by the United States Department of Homeland Security's Yearbook of Immigration
                         Statistics. The countries chosen for inclusion in this app are those which have data provided
                         for every year from 2000 through 2019, found at"),
                         a("https://www.dhs.gov/immigration-statistics/yearbook"),
                        h3("Seeing the Data"),
                        p("In the plot tab, a plot is provided with a line tracking the number
                        of refugee arrivals per year for every selected country. The total number
                        of arrivals for selected countries is also displayed in the table under the plot.
                        To select a country, check the corresponding box in the sidebar. To deselect a
                        country, uncheck the corresponding box.")
                    )
                )    
            )
        )
    )
)