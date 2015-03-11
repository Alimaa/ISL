library(ISLR)
library(ggplot2)

show(Default)

a<-qplot(data=Default,balance,income,colour=factor(default))
windows()
print(a)

windows()

ggplot(Default, aes(x=default, y=balance , fill = default)) + 
  geom_boxplot()

windows()

ggplot(Default, aes(x=default, y=income , fill = default)) + 
  geom_boxplot()
  