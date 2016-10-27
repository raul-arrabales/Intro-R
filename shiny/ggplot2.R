library(ggplot2)

# From http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html 
housing <- read.csv("https://raw.githubusercontent.com/raul-arrabales/Intro-R/master/data/landdata-states.csv")

View(housing) 

housing$Year <- as.numeric(substr(housing$Date, 1, 4))
housing$Qrtr <- as.numeric(substr(housing$Date, 5, 5))
housing$Date <- housing$Year + housing$Qrtr/4

ggplot(housing, aes(x = Home.Value)) +
  geom_histogram()


plot(Home.Value ~ Date,
     data=subset(housing, State == "MA"))
points(Home.Value ~ Date, col="red",
       data=subset(housing, State == "TX"))
legend(19750, 400000,
       c("MA", "TX"), title="State",
       col=c("black", "red"),
       pch=c(1, 1))

ggplot(subset(housing, State %in% c("MA", "TX")),
       aes(x=Date,
           y=Home.Value,
           color=State))+
  geom_point()


