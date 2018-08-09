# Exercises 
# ggplot2 패키지에 내장되어있는 diamond 데이터를 활용하여 다음의 문제들을 해결하시오

library(ggplot2)
library(dplyr)

# 1. cut 데이터의 빈도를 나타내는 histogram을 그리시오
cut_freq <- data.frame(table(diamonds$cut))
cut_freq %>% ggplot(aes(Var1, Freq)) + geom_histogram(stat = "identity")

# 2. cut 데이터의 빈도를 나타내는 Pie Chart를 그리시오
cut_freq %>% ggplot(aes(Var1, Freq)) + geom_histogram(stat = "identity") + coord_polar("x")

# 3. carat별로 diamond의 색 분포를 나타내는 histogram을 그리시오
diamonds %>% ggplot(aes(carat, fill=color)) + geom_bar(position = "fill")

# 4. carat과 price에 대한 scatterplot을 그리시오.
diamonds %>% ggplot(aes(carat, price)) + geom_point()

# 5. 3캐럿 이상인 다이아몬드들의 carat과 price에 대한 scatterplot을 그리시오. 
# color는 clarity로 하고, point의 size는 cut으로하시오
diamonds %>% filter(carat>=3) %>% ggplot(aes(carat, price)) + geom_point(aes(color=clarity, size=cut))


