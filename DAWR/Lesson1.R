reddit <- read.csv('reddit.csv')

table(reddit$employment.status)
summary(reddit)
levels(reddit$age.range)
reddit$age.range = as.factor(reddit$age.range)
reddit[sapply(reddit, is.character)] <- lapply(reddit[sapply(reddit, is.character)], 
                                       as.factor)
levels(reddit$age.range)

library(ggplot2)
qplot(data = reddit, x = age.range)

# We can see that 

reddit.order <- ordered(reddit, levels = c("Under 18","18-24","25-34","35-44","45-54","55-64","65 or Above","NA"))
reddit.order
qplot(data = reddit.order, x = age.range)

ses <- c("low", "middle", "low", "low", "low", "low", "middle", "low", "middle",
         "middle", "middle", "middle", "middle", "high", "high", "low", "middle",
         "middle", "low", "high")

ses.f <- factor(ses, levels = c("low", "middle", "high"))
is.factor(ses.f)
levels(ses.f)

ses.order <- ordered(ses, levels = c("low", "middle", "high"))
ses
ses.order
reddit.order
