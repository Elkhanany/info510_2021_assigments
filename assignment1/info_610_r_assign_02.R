library(tidyverse)
library(ggsci)
library(cowplot)
library(reshape2)

## HW: Summary statistic for the four 
data(iris)
iris_melt_collapse <- iris %>% melt() %>% 
  group_by (Species, variable) %>% summarise(mean= mean(value), sd= sd(value))

head(iris_melt_collapse)

ggplot(data = iris_melt_collapse, aes(x = Species, y = mean, fill = variable))+
  geom_bar(stat = "identity", position ="dodge")+
  scale_fill_nejm()+
  theme_minimal()

ggplot(data = iris_melt_collapse, aes(x = variable, y = mean, fill = Species))+
  geom_bar(stat = "identity", position ="dodge")+
  scale_fill_nejm()+
  theme_minimal()