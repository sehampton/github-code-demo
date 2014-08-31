# https://github.com/naupaka/esa_data_viz_2014
# GGplot2 workshop for data viz
# Naupaka Zimmerman and Andrew Tredennick
# 10 aug 2014
# abbreviated my notes from ESA_ggplot2_20140810.R to
# learn more about using github



# must be a data.frame
data(iris)
head(iris, 10)
library(plyr)
library(reshape2)
df<-melt(iris, id.vars="Species") #go from wide to long
head(df, 10)
tail(df)
df2<-melt(iris, id.vars="Species", "Sepal.Length") #go from wide to long
head(df2, 10)
dcast(df2, Species ~variable, mean) # averages for all variables

library(ggplot2)
#ggplot creates a graphing object when you call ggplot - it's a plotting object
#that gets stored, not like the way base R graphics work
myplot<-ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width))
summary(myplot)
#now can add points
myplot+geom_point()

#or done this way works too
myplot<-ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
myplot

#change points
myplot<-ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point(size=4)
myplot

