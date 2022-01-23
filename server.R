library(dplyr)
library(tidyr)
library(tidyverse)
library(shiny)
library(shinydashboard)

shinyData <- data.frame(read.csv("~/R Studio/GroupProject/shinyData.csv"))
imageData <- shinyData[,2]
namelist <- c(shinyData[,5])

sortedUSD <- arrange(shinyData, desc(shinyData$price.USD.))
sortedUSD <- sortedUSD[1:10,]

transactionData <- data.frame(read.csv("~/R Studio/GroupProject/transaction.csv"))
transactionData <- transactionData[,c(2,3)]

shinyServer(function(input, output) {
  # home page
  output$name = renderText(input$selector)
  output$priceUSD = renderText(paste("$",shinyData$price.USD.[shinyData$name == input$selector]))
  output$priceETH = renderText(paste(shinyData$price.ETH.[shinyData$name == input$selector], "ETH"))
  output$owner = renderText(paste(shinyData$currentOwner[shinyData$name == input$selector]))
  output$plot1 <- renderPlot({plot(transactionData$amount[transactionData$name ==input$selector],
                                   type = "l",
                                   lwd = 3,
                                   col="navy",
                                   xlab = "N days ago",
                                   ylab = "Price(ETH)",
                                   main = input$selector)},
                             res = 96)
  output$image <- renderUI(
    tags$img(src = shinyData$image_src.1.100.[shinyData$name == input$selector], width = "100px")
  )
  
  # trending
  output$img1 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk1181.png", width = "100px")
  )
  
  output$p1 <- renderText({
    paste("261.24K")
  })
  
  output$e1 <- renderText({
    paste("77.97")
  })
  
  output$o1 <- renderText({
    paste("0xaf04fc")
  })
  
  output$img2 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk0927.png", width = "100px")
  )
  
  output$p2 <- renderText({
    paste("261.18K")
  })
  
  output$e2 <- renderText({
    paste("77.95")
  })
  
  output$o2 <- renderText({
    paste("0xc9d483")
  })
  
  output$img3 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk3845.png", width = "100px")
  )
  
  output$p3 <- renderText({
    paste("260.67K")
  })
  
  output$e3 <- renderText({
    paste("77.80")
  })
  
  output$o3 <- renderText({
    paste("0xhyperi.")
  })
  
  output$img4 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk7214.png", width = "100px")
  )
  
  output$p4 <- renderText({
    paste("260.57K")
  })
  
  output$e4 <- renderText({
    paste("77.77")
  })
  
  output$o4 <- renderText({
    paste("0xcc7c33")
  })
  
  output$img5 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk9056.png", width = "100px")
  )
  
  output$p5 <- renderText({
    paste("260.57K")
  })
  
  output$e5 <- renderText({
    paste("77.77")
  })
  
  output$o5 <- renderText({
    paste("0x6611fe")
  })
  
  output$img6 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk2071.png", width = "100px")
  )
  
  output$p6 <- renderText({
    paste("260.44K")
  })
  
  output$e6 <- renderText({
    paste("77.73")
  })
  
  output$o6 <- renderText({
    paste("0x7fb715")
  })
  
  output$img7 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk5131.png", width = "100px")
  )
  
  output$p7 <- renderText({
    paste("260.34K")
  })
  
  output$e7 <- renderText({
    paste("77.70")
  })
  
  output$o7 <- renderText({
    paste("ethie.et.")
  })
  
  output$img8 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk1794.png", width = "100px")
  )
  
  output$p8 <- renderText({
    paste("260.24K")
  })
  
  output$e8 <- renderText({
    paste("77.67")
  })
  
  output$o8 <- renderText({
    paste("0x073793")
  })
  
  output$img9 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk9091.png", width = "100px")
  )
  
  output$p9 <- renderText({
    paste("257.99K")
  })
  
  output$e9 <- renderText({
    paste("77")
  })
  
  output$o9 <- renderText({
    paste("0x110929")
  })
  
  output$img10 <- renderUI(
    tags$img(src = "https://www.larvalabs.com/public/images/cryptopunks/punk1803.png", width = "100px")
  )
  
  output$p10 <- renderText({
    paste("257.99K")
  })
  
  output$e10 <- renderText({
    paste("77")
  })
  
  output$o10 <- renderText({
    paste("0xfda9b8")
  })
  
  # currency
  output$MYR <- renderPrint({MYR(input$ETH)})
  output$USD <- renderPrint({USD(input$ETH)})
  output$JPY <- renderPrint({JPY(input$ETH)})
  output$CNY <- renderPrint({CNY(input$ETH)})
})


USD <- function(ETH) ETH * 3000
MYR <- function(ETH) ETH * 12000
JPY <- function(ETH) ETH * 350000
CNY <- function(ETH) ETH * 20000

