library(ggplot2)
library(tidyverse)
earthquake <- read.csv("C:\\Users\\mzisy\\OneDrive - Universiti Malaya\\FSKTM\\Courses\\Sem 1\\WIA1007 (Intro to DS)\\Week 12\\Greece Earthquake Dataset\\Earthquakes.csv")
eq_db <- data.frame(earthquake)
eq_db$DATETIME <- strptime(as.character(eq_db$DATETIME),"%m/%d/%Y %H:%M")
eq_db$DATETIME <-format(eq_db$DATETIME,"%Y")
eqdb <- subset(eq_db, DATETIME >1999)
g <- ggplot(eqdb, aes(DATETIME, MAGNITUDE))
f <-  g + geom_count(alpha = 0.7) + 
      labs(title = "Earthquakes in Greece 2020-2021", x = "Year", y = "Magnitude") +
      scale_y_continuous(breaks = seq(0,7,by = 0.2)) + 
      scale_size(range = c(1.5, 7.5)) + 
      theme(axis.text.x = element_text(angle = 90, hjust = 1))
f