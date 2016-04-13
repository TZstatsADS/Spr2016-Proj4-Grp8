library(httr)
library(rvest)
doc <- read_html("ftp://cran.r-project.org/pub/R/web/packages/rvest/vignettes/selectorgadget.html")

h2 <- doc %>%
        html_nodes("h2") %>%
        html_text()

h2

lego_movie <- read_html("http://www.amazon.com/exec/obidos/ASIN/B00004RYA7")
h1 <- lego_movie %>%
        html_nodes("#detail-bullets li:nth-child(1) a") %>%
        html_text(trim=T) 
h1[length(h1)-1]
h1[1:(length(h1)-2)]

cast <- lego_movie %>%
        html_nodes("li:nth-child(7) .a-color-tertiary") %>%
        html_text()
cast


year <- lego_movie %>%
        html_nodes("#title-overview-widget img") %>%
        html_attr("src")
year

citibike <- read_html("https://s3.amazonaws.com/tripdata/index.html")

a <- citibike %>%
        html_nodes("#h1-title") %>%
        html_text()
a

links <- citibike %>%
        html_nodes('a') %>%
        html_attr('href')
links
########################################### API
url <- "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=columbia%2Buniversity&begin_date=20150101&end_date=20151231&sort=newest&api-key=08723c17470c4df930b9260de670b419%3A0%3A74812023"
response <- httr::GET(url)
response
result <- content(response, "parsed")
str(result)
names(result$response)
length(result$response$docs)
