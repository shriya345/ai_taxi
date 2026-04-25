isMedian<-function(x){
  Median<-median(x)
}
isPalindrome<-function(x){
  x<-tolower(gsub(" ","",x))
  x==paste(rev(strsplit(x,"")[[1]]),collapse="")
}
isArea<-function(b,h){
  b*h*0.5
}
v<-c(10,20,30,40,50)
med<-isMedian(v)
p1<-isPalindrome("hello")
p2<-isPalindrome("madam")
tri<-isArea(10,5)
cat("Vector:", v, "\n")
cat("Median:", med, "\n\n")

cat("madam ->", p1, "\n")
cat("hello ->", p2, "\n\n")

cat("Triangle Area:", tri, "\n")


library(ggplot2)
library(dplyr)

orders <- read.csv("orders1.csv", stringsAsFactors = FALSE)
orders$order_date <- as.Date(orders$order_date)

monthly_sales <- orders %>%
  mutate(month = format(order_date, "%Y-%m")) %>%
  group_by(month) %>%
  summarise(total_revenue = sum(total_amount))

print(monthly_sales)

ggplot(monthly_sales, aes(x = month, y = total_revenue, group = 1)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "Monthly Sales Revenue",
       x = "Month", y = "Revenue") +
  theme_minimal()
