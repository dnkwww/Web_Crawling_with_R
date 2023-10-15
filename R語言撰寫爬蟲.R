library(rvest)

url <- "https://www.imdb.com/title/tt4154756/"
data <- read_html(url)

score <- html_nodes(data, ".AggregateRatingButton__RatingScore-sc-1ll29m0-1.iTLWoV")
score

ranking <- html_text(score)
ranking <- as.numeric(ranking)
ranking <- ranking[-2]
ranking

url <- "https://www.imdb.com/title/tt4154756/ratings/?ref_=tt_ov_rt"
data <- read_html(url)
score <- html_nodes(data, ".ipl-rating-widget > .ipl-rating-star .ipl-rating-star__rating")
score

ranking <- html_text(score)
ranking <- as.numeric(ranking)
ranking

#

url <- "https://www.csie.ndhu.edu.tw/"
data <- read_html(url)
context <- html_nodes(data, "#content a")
context

text <- html_text(context)
text

text <- gsub("\\s+", text, replacement = "")
#gsub("選取範圍 +代表~無限", 參數, replacement = "取代為")
text