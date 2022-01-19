## app.R ##
library(shiny)
library(shinydashboard)
    
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
    width = 400,
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
                  title = "CryptoPunk 1482",status = "primary", solidHeader = TRUE, width = 5, height = 500,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset1", height = "250px",
                      tabPanel("Profile", imageOutput("img1")),
                      tabPanel("Prices",plotOutput("plot1", height = 300, width = 400))
                    )
                  )
                ),
                box(
                  title = "CryptoPunk 441", status = "primary", solidHeader = TRUE,width = 5, height = 500,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset2", height = "250px",
                      tabPanel("Profile",imageOutput("img2")),
                      tabPanel("Prices", plotOutput("plot2", height = 300, width = 400))
                    )
                  )
                ),
                box(
                  title = "CryptoPunk 548", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset3", height = "250px",
                      tabPanel("Profile", imageOutput("img3")),
                      tabPanel("Prices", plotOutput("plot3", height = 300, width = 400))
                    )
                  )
                ),
                box(
                  title = "CryptoPunk 1915", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset1", height = "250px",
                      tabPanel("Profile", imageOutput("img4")),
                      tabPanel("Prices", plotOutput("plot4", height = 300, width = 400))
                    )
                  )
                ),
                box(
                  title = "CryptoPunk 2354", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset1", height = "250px",
                      tabPanel("Profile", imageOutput("img5")),
                      tabPanel("Prices", plotOutput("plot5", height = 300, width = 400))
                    )
                  )
                ),
                box(
                  title = "CryptoPunk 7969", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset1", height = "250px",
                      tabPanel("Profile", imageOutput("img6")),
                      tabPanel("Prices", plotOutput("plot6", height = 300, width = 400))
                    )
                  )
                ),
                box(
                  title = "CryptoPunk 2124", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                  collapsible = TRUE,
                  fluidRow(
                    tabBox(
                      title = "Details",
                      # The id lets us use input$tabset1 on the server to find the current tab
                      id = "tabset1", height = "250px",
                      tabPanel("Profile", imageOutput("img7")),
                      tabPanel("Prices", plotOutput("plot7", height = 300, width = 400))
                    )
                  )
                ),
              box(
                title = "CryptoPunk 5380", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img8")),
                    tabPanel("Prices", plotOutput("plot8", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 2971", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img9")),
                    tabPanel("Prices", plotOutput("plot9", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 3716", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img10")),
                    tabPanel("Prices", plotOutput("plot10", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 9828", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img11")),
                    tabPanel("Prices", plotOutput("plot11", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 8335", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img12")),
                    tabPanel("Prices", plotOutput("plot12", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 983", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img13")),
                    tabPanel("Prices", plotOutput("plot13", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 9103", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img14")),
                    tabPanel("Prices", plotOutput("plot14", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 5358", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img15")),
                    tabPanel("Prices", plotOutput("plot15", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 7484", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img16")),
                    tabPanel("Prices", plotOutput("plot16", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 197", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img17")),
                    tabPanel("Prices", plotOutput("plot17", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 7877", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img18")),
                    tabPanel("Prices", plotOutput("plot18", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 3218", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img19")),
                    tabPanel("Prices", plotOutput("plot19", height = 300, width = 400))
                  )
                )
              ),
              box(
                title = "CryptoPunk 7044", status = "primary", solidHeader = TRUE,width = 5, height = 450,
                collapsible = TRUE,
                fluidRow(
                  tabBox(
                    title = "Details",
                    # The id lets us use input$tabset1 on the server to find the current tab
                    id = "tabset1", height = "250px",
                    tabPanel("Profile", imageOutput("img20")),
                    tabPanel("Prices", plotOutput("plot20", height = 300, width = 400))
                  )
                )
              ),
                
                fluidRow(
                  # A static infoBox
                  infoBox("New NFT", 20 , icon = icon("ethereum")),
                  # Dynamic infoBoxes
                  infoBoxOutput("progressBox"),
                  infoBoxOutput("approvalBox")
                )
          )
      ),
      
      # Second tab content
      tabItem(tabName = "Currency",
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



USD <- function(ETH) ETH * 3000
MYR <- function(ETH) ETH * 12000
JPY <- function(ETH) ETH * 350000
CNY <- function(ETH) ETH * 20000


server <- function(input, output) {
  
  output$img1 <- renderImage({
    list(src = "cryptopunk1482.png", height = "300px", width = "300px", alt = "Something went wrong", deleteFile = FALSE)
  })
  
  output$plot1 <- renderPlot({
    #dataset cryptopunk 1482
    data1 = c(12,11,11,10,08)
    data2 = c(59.69,56,60.69,55,61.95)
    data12 = data.frame(data1,data2)
    plot(data12,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img2 <- renderImage({
    list(src = "punk441.png", height = "300px", width = "300px")
  })
  
  output$plot2 <- renderPlot({
    #dataset crytopunk 441
    data3 = c(12,12,10,9,9)
    data4 = c(50,59.95,60.95,58,58)
    data34 =data.frame(data3,data4)
    plot(data34,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img3 <- renderImage({
    list(src = "punk548.png", height = "300px", width = "300px")
  })
  
  output$plot3 <- renderPlot({
    #dataset cryptopunk 548
    data5 = c(6,6,5,2,1)
    data6 = c(44.75,44.75,36.99,36.99,39.99)
    data56 = data.frame(data5,data6)
    plot(data56,type = "o", col = "red", xlab = "Dates (Aug 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img4 <- renderImage({
    list(src = "punk1915.png", height = "300px", width = "300px")
  })
  
  output$plot4 <- renderPlot({
    #dataset punk1915
    data7 = c(10,8,8,8,7)
    data8 = c(55,62.95,63,56,63)
    data78 = data.frame(data7,data8)
    plot(data78,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img5 <- renderImage({
    list(src = "punk2354.png", height = "300px", width = "300px")
  })
  
  output$plot5 <- renderPlot({
    #dataset punk2354
    data9 = c(10,8,8,8,7)
    data10 = c(58.88,58.88,56.66,62.97,56.66)
    data910 = data.frame(data9,data10)
    plot(data910,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img6 <- renderImage({
    list(src = "punk7969.png", height = "300px", width = "300px")
  })
  
  output$plot6 <- renderPlot({
    #dataset punk7969
    data11 = c(10,8,8,8,7)
    data12 = c(63.98,64.98,67.49,72.51,69.42)
    data1112 = data.frame(data11,data12)
    plot(data1112,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img7 <- renderImage({
    list(src = "punk2124.png", height = "300px", width = "300px")
  })
  
  output$plot7 <- renderPlot({
    #dataset punk2124
    data13 = c(10,8,8,8,7)
    data14 = c(58,55,48,48,23)
    data1314 = data.frame(data13,data14)
    plot(data1314,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img8 <- renderImage({
    list(src = "punk5380.png", height = "300px", width = "300px")
  })
  
  output$plot8 <- renderPlot({
    #dataset punk5380
    data15 = c(10,8,8,8,7)
    data16 = c(58,58,64,74,70)
    data1516 = data.frame(data15,data16)
    plot(data1516,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img9 <- renderImage({
    list(src = "punk2971.png", height = "300px", width = "300px")
  })
  
  output$plot9 <- renderPlot({
    #dataset punk2971
    data17 = c(10,8,8,8,7)
    data18 = c(52,52,23,23,64)
    data1718 = data.frame(data17,data18)
    plot(data1718,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img10 <- renderImage({
    list(src = "punk3716.png", height = "300px", width = "300px")
  })
  
  output$plot10 <- renderPlot({
    #dataset punk3716
    data19 = c(10,8,8)
    data20 = c(52,52,64.5)
    data1920 = data.frame(data19,data20)
    plot(data1920,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img11 <- renderImage({
    list(src = "punk9828.png", height = "300px", width = "300px")
  })
  
  output$plot11 <- renderPlot({
    #dataset punk9828
    data21 = c(10,8,8,8,7)
    data22 = c(64.95,67.95,68.95,69.95,71.95)
    data2122 = data.frame(data21,data22)
    plot(data2122,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img12 <- renderImage({
    list(src = "punk8335.png", height = "300px", width = "300px")
  })
  
  output$plot12 <- renderPlot({
    #dataset punk8335
    data23 = c(10,8,8,8,7)
    data24 = c(60,62,62,61,60)
    data2324 = c(data23,data24)
    plot(data2324,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img13 <- renderImage({
    list(src = "punk983.png", height = "300px", width = "300px")
  })
  
  output$plot13 <- renderPlot({
    #dataset punk983
    data25 = c(10,8,8,8,7)
    data26 = c(60,66,165,150,250)
    data2526 = data.frame(data25,data26)
    plot(data2526,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img14 <- renderImage({
    list(src = "punk9103.png", height = "300px", width = "300px")
  })
  
  output$plot14 <- renderPlot({
    #dataset punk9103
    data27 = c(10,8,8,8,7)
    data28 = c(62,62,66.2,60,60)
    data2728 = data.frame(data27,data28)
    plot(data2728,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img15 <- renderImage({
    list(src = "punk5358.png", height = "300px", width = "300px")
  })
  
  output$plot15 <- renderPlot({
    #dataset punk5358
    data29 = c(10,8,8,8,7)
    data30 = c(60.02,60,66.66,72.72,0.06)
    data2930 = data.frame(data29,data30)
    plot(data2930,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img16 <- renderImage({
    list(src = "punk7484.png", height = "300px", width = "300px")
  })
  
  output$plot16 <- renderPlot({
    #dataset punk7484
    data31 = c(10,8,8,8,7)
    data32 = c(60,66.69,75,88.88,125)
    data3132 = data.frame(data31,data32)
    plot(data3132,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img17 <- renderImage({
    list(src = "punk197.png", height = "300px", width = "300px")
  })
  
  output$plot17 <- renderPlot({
    #dataset punk197
    data33 = c(10,8,8,8,7)
    data34 = c(66.69,67.69,68.99,65,65)
    data3334 = data.frame(data33,data34)
    plot(data3334,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img18 <- renderImage({
    list(src = "punk7877.png", height = "300px", width = "300px")
  })
  
  output$plot18 <- renderPlot({
    #dataset punk7877
    data35 = c(10,8,8,8,7)
    data36 = c(67.49,68.63,61,61,70)
    data3536 = data.frame(data35,data36)
    plot(data3536,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img19 <- renderImage({
    list(src = "punk3218.png", height = "300px", width = "300px")
  })
  
  output$plot19 <- renderPlot({
    #dataset punk3218
    data37 = c(10,8,8,8,7)
    data38 = c(67.69,23.99,23.99,21.99,18)
    data3738 = data.frame(data37,data38)
    plot(data3738,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$img20 <- renderImage({
    list(src = "punk7044.png", height = "300px", width = "300px")
  })
  
  output$plot20 <- renderPlot({
    #dataset punk7044
    data39 = c(10,8,8,8,7)
    data40 = c(67.76,65,65,73.73,82.69)
    data3940 = data.frame(data39,data40)
    plot(data3940,type = "o", col = "red", xlab = "Dates (Jan 2022)", ylab = "Prices (ETH)",
         main = "Historical prices & dates")
  })
  
  output$progressBox <- renderInfoBox({
    infoBox(
      "Trading Progress", "60%", icon = icon("list"),
      color = "purple"
    )
  })
  output$approvalBox <- renderInfoBox({
    infoBox(
      "Approval Payment", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
      color = "yellow"
    )
  })
  
  
  output$MYR <- renderPrint({MYR(input$ETH)})
  output$USD <- renderPrint({USD(input$ETH)})
  output$JPY <- renderPrint({JPY(input$ETH)})
  output$CNY <- renderPrint({CNY(input$ETH)})
}

shinyApp(ui, server)










