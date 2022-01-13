library(rvest)
library(dplyr)

link  = "https://www.larvalabs.com/cryptopunks/forsale"
page = read_html(link)

image_src = page %>% html_nodes(xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "pixelated", " " ))]') %>% html_attr('src') %>% paste0("https://www.larvalabs.com", ., sep="")
price = page %>% html_nodes(".punk-image-text-dense") %>% html_text()
price = trimws(price)
details_URL = page %>% html_nodes("a") %>% html_attr('href') %>% paste0("https://www.larvalabs.com", ., sep="")
# remove NA values
details_URL <- details_URL[-c(1:7)]
details_URL <- details_URL[-c(1411:1432)]

df <- data.frame(image_src[1:100], price[1:100])

details_page = read_html(details_URL[1])
name = details_page %>% html_nodes("h1") %>% html_text()
currentOwner = details_page %>% html_nodes("p+ div > a") %>% html_text()
currentOwner = currentOwner[1]
amount = details_page %>% html_nodes('td:nth-child(4)') %>% html_text()
amount = amount[amount!=""] %>% paste(collapse=",")
transaction_date = details_page %>% html_nodes("td:nth-child(5) a") %>% html_text()
transaction_date = transaction_date[amount!=""] %>% paste(collapse=",")

df2 <- data.frame(name, currentOwner, amount, transaction_date)

for(index in seq(from = 2, to = 100, by = 1)){
  details_page = read_html(details_URL[index])
  name = details_page %>% html_nodes("h1") %>% html_text()
  currentOwner = details_page %>% html_nodes("p+ div > a") %>% html_text()
  currentOwner= currentOwner[1];
  amount = details_page %>% html_nodes('td:nth-child(4)') %>% html_text()
  transaction_date = details_page %>% html_nodes("td:nth-child(5) a") %>% html_text()
  transaction_date = transaction_date[amount!=""] %>% paste(collapse=",")
  amount = amount[amount!=""] %>% paste(collapse=",")
  df2 <- rbind(df2, data.frame(name, currentOwner, amount, transaction_date))
}


myData <- data.frame(df, df2)

write.csv(myData, "shinyData.csv")