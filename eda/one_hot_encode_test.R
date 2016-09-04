library(Matrix)
library(plyr)
library(dplyr)

train.raw <- read.csv("./data/train.csv",stringsAsFactors = FALSE)

train3.raw <- model.matrix(~.-1,
                           data=select(train.raw,c(LotShape,Street)))

