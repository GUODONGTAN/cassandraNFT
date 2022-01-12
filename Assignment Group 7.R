## app.R ##
library(shiny)
library(shinydashboard)

library(imager)
im = load.image("https://www.larvalabs.com/public/images/cryptopunks/punk1482.png")

ui <- dashboardPage(
  dashboardHeader(title = "OpenAI",
                  dropdownMenu(type = "messages",
                               messageItem(
                                 from = "Sales Dept",
                                 message = "Sales are steady this month."
                               ),
                               messageItem(
                                 from = "New User",
                                 message = "How do I register?",
                                 icon = icon("question"),
                                 time = "13:45"
                               ),
                               messageItem(
                                 from = "Support",
                                 message = "The new server is ready.",
                                 icon = icon("life-ring"),
                                 time = "2014-12-01"
                               )
                  ),
                  dropdownMenu(type = "notifications",
                                  notificationItem(
                                  text = "5 new users today",
                                  icon("users")
                                ),
                                notificationItem(
                                  text = "12 items delivered",
                                  icon("truck"),
                                  status = "success"
                                ),
                                notificationItem(
                                  text = "Server load at 86%",
                                  icon = icon("exclamation-triangle"),
                                  status = "warning"
                                )
                  ),
                  dropdownMenu(type = "tasks", badgeStatus = "success",
                               taskItem(value = 90, color = "green",
                                        "Documentation"
                               ),
                               taskItem(value = 17, color = "aqua",
                                        "Project X"
                               ),
                               taskItem(value = 75, color = "yellow",
                                        "Server deployment"
                               ),
                               taskItem(value = 80, color = "red",
                                        "Overall project"
                               )
                  )
  ),
                  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Currency", tabName = "Currency", icon = icon("ethereum"),
               badgeLabel = "new", badgeColor = "green")
    ),
    sidebarSearchForm(textId = "searchText", buttonId = "searchButton",
                      label = "Search...")
  ),
  
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "dashboard",
              fluidRow(
                box(
                  title = "CryptoPunk 1482", status = "primary", solidHeader = TRUE,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset1", height = "250px",
                      tabPanel("Profile", "First tab content"),
                      tabPanel("Prices", "Tab content 2")
                    )
                )
                )
                ),
              fluidRow(
                box(
                  title = "CryptoPunk 3193", status = "primary", solidHeader = TRUE,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset1", height = "250px",
                      tabPanel("Profile", "First tab content"),
                      tabPanel("Prices", "Tab content 2")
                    )
                  )
                )
              ),
                
                fluidRow(
                  # A static infoBox
                  infoBox("New NFT", 50 * 2, icon = icon("ethereum")),
                  # Dynamic infoBoxes
                  infoBoxOutput("progressBox"),
                  infoBoxOutput("approvalBox")
                )
      ),
      
      # Second tab content
      tabItem(tabName = "Currency",
              headerPanel("Currency Convertor"),
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


USD <- function(ETH) ETH * 3000
MYR <- function(ETH) ETH * 12000
JPY <- function(ETH) ETH * 350000
CNY <- function(ETH) ETH * 20000


server <- function(input, output) {
  
  output$progressBox <- renderInfoBox({
    infoBox(
      "Trading Progress", paste0(25 + input$count, "%"), icon = icon("list"),
      color = "purple"
    )
  })
  output$approvalBox <- renderInfoBox({
    infoBox(
      "Approval Payment", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
      color = "yellow"
    )
  })
  
  
  output$MYR <- renderPrint({MYR(input$MYR)})
  output$USD <- renderPrint({USD(input$USD)})
  output$JPY <- renderPrint({JPY(input$JPY)})
  output$CNY <- renderPrint({CNY(input$CNY)})
}

shinyApp(ui, server)

library(imager)
im = load.image("https://www.larvalabs.com/public/images/cryptopunks/punk1482.png")
plot(im)
