rm(list = ls()) #Clear memory

#install.packages("heatmaply")
#install.packages("readxl")
#install.packages("astsa")
#install.packages("ggcorrplot")
#install.packages("forecast")
#install.packages("xts")
#install.packages("dplyr")
#install.packages("GGally")
#install.packages("caret")


library(heatmaply)
library(readxl)
library(astsa)
library(ggcorrplot)
library(forecast)
library(xts)
library(dplyr)
library(GGally)
library(caret)

data_features <- read.csv("C:/Users/rafae/Desktop/Predicting-Football-soccer-using-a-Machine-Learning-Model-main/Resources/data_features.csv")
View(data_features)

str(data_features)


#Logistic regresion
fitcontrol <- trainControl(method = "cv", number = 2)

mod_fitcv <- train(market_value ~ age + transfer_fee + player_id + club_id + club_market_value + goals + assists + minutes_played + yellow_cards + red_cards + games + appearances
                   ,data = na.exclude(data_features), method = "glm", trControl = fitcontrol) #, variable =binomal

summary(mod_fitcv)
