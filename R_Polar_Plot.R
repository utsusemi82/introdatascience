
library(ggplot2)
library(plotrix)

df = data.frame(
  status = c("Solved","Open","Reopened","Deleted","Unassigned","Escalated"),
  percentage = c(45.5, 39.5, 6.5, 2.6, 2.0, 3.9)
)

plot <- ggplot(df, aes(status, percentage, fill = status)) +
  geom_bar(width = 1, stat = "identity", color = "black") +
  geom_errorbar(aes(ymin = percentage - std.error(percentage), 
                    ymax = percentage + std.error(percentage), 
                    color = status), 
                width = .3) + 
  theme_gray() +
  theme(axis.ticks = element_blank(),
        text = element_text(size=10),
        axis.text.x = element_text(angle=0, vjust = 1, hjust=1)) +
  labs(title="Ticket Status vs Percentage", 
       subtitle="", 
       y="Percentage %", 
       x="Ticket Status")
plot + coord_polar() 
