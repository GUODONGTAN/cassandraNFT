library(dplyr)
library(tidyr)
library(tidyverse)
library(ggplot2)
library(shiny)
library(shinydashboard)
library(dashboardthemes)

shinyData <- data.frame(read.csv("~/R Studio/GroupProject/shinyData.csv"))
imageData <- shinyData[,c(5,6)]
namelist <- c(shinyData[,5])

sortedUSD <- arrange(shinyData, desc(shinyData$price.USD.))
sortedUSD <- sortedUSD[1:10,]

transactionData <- data.frame(read.csv("~/R Studio/GroupProject/transaction.csv"))


# Define UI for application that draws a histogram
shinyUI <- dashboardPage(
  dashboardHeader(title = "Cassandra"),
  dashboardSidebar(
    width = 250,
    sidebarMenu(
      menuItem("Home", tabName = "homepage", icon = icon("home")),
      menuItem("Trending", tabName = "trending", icon = icon("chart-line")),
      menuItem("Currency", tabName = "currency", icon = icon("ethereum"),
               badgeLabel = "new", badgeColor = "green")
    )
  ),
  dashboardBody(
    shinyDashboardThemes(theme = "poor_mans_flatly"),
    tags$head(tags$style(HTML('
      .main-header .logo {
        font-family: "Georgia", Times, "Times New Roman", serif;
        font-weight: bold;
        font-size: 24px;
      }
    '))),
    tabItems(
      # Home page content
      tabItem(tabName = "homepage",
              fluidRow(
                box(title = "Search", status = "primary", width = 12, solidHeader = TRUE,
                     selectInput("selector", "Select your Crypto Punk: ", namelist),
                     submitButton("Search"), collapsible = TRUE),
                box(uiOutput("image"), width = 2),
                box(title = "Product Name", status = "primary", width = 10, solidHeader = TRUE,
                    h1(textOutput("name")))
                ),
              fluidRow(
                column(width = 4,
                  infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                          textOutput("priceUSD"))),
                column(width = 4,
                  infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                          textOutput("priceETH"))),
                column(width = 4,
                  infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                          textOutput("owner"))),
                box(title = "Historical Price", status = "primary", width = 12, solidHeader =TRUE,
                    plotOutput("plot1"))
                 
                )
                
              ),
      # Trending page content
      tabItem(tabName = "trending",
              fluidRow(
                h1("Top 10 Sales for Crypto Punk"),
                box(
                  title = "CryptoPunk 1181",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img1")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p1"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e1"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o1")))
                  )
                ),
                box(
                  title = "CryptoPunk 927",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img2")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p2"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e2"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o2")))
                  )
                ),
                box(
                  title = "CryptoPunk 3845",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img3")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p3"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e3"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o3")))
                  )
                ),
                box(
                  title = "CryptoPunk 7214",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img4")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p4"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e4"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o4")))
                  )
                ),
                box(
                  title = "CryptoPunk 9056",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img5")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p5"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e5"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o5")))
                  )
                ),
                box(
                  title = "CryptoPunk 2071",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img6")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p6"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e6"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o6")))
                  )
                ),
                box(
                  title = "CryptoPunk 5131",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img7")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p7"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e7"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o7")))
                  )
                ),
                box(
                  title = "CryptoPunk 1794",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img8")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p8"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e8"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o8")))
                  )
                ),
                box(
                  title = "CryptoPunk 9091",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img9")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p9"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e9"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o9")))
                  )
                ),
                box(
                  title = "CryptoPunk 1794",status = "primary", solidHeader = TRUE, width = 12, height = 200,
                  collapsible = TRUE,
                  fluidRow(
                    column(width = 3, uiOutput("img10")),
                    column(width = 3, infoBox("Price in USD: ", width = NULL, color = "maroon", icon = icon("dollar-sign"),
                                              textOutput("p10"))),
                    column(width = 3, infoBox("Price in ETH: ", width = NULL, color = "aqua", icon = icon("ethereum"),
                                              textOutput("e10"))),
                    column(width = 3, infoBox("Current Owner Address: ", color = "yellow", width = NULL, icon = icon("user"),
                                              textOutput("o10")))
                  )
                )
              )
      ),
      # Currency page content
      tabItem(tabName = "currency",
              headerPanel("Currency Converter"),
              sidebarLayout(
                sidebarPanel(
                  numericInput('ETH', 'ETH ($)', 1, min = 1, max = 300000, step = 1
                  ),
                  submitButton('Convert')
                ),
                mainPanel(
                  h3('Results'),
                  h4('ETH ($) -> MYR (RM)'),
                  verbatimTextOutput("MYR"),
                  h4('ETH ($) -> USD ($)'),
                  verbatimTextOutput("USD"),
                  h4('ETH ($) -> JPY (¥)'),
                  verbatimTextOutput("JPY"),
                  h4('ETH ($) -> CNY (YUAN)'),
                  verbatimTextOutput("CNY"),
                )
              )
      )
    )
    
    
  )
)


