# Predicting-Football-soccer-using-a-Machine-Learning-Model
 Project Roadmap
 
 
 
 ![img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/c223bccf8249a93fbd144af998475da9b2bed1ff/CompassionateRespectfulBlesbok-mobile.gif)
#### Source:https://gfycat.com/compassionaterespectfulblesbok-soccer-world-cup-football-sports

In this Project, using multiple linear regression are being estimated market values of the football players in all European teams in the 2018-2019 season.Players from European League will be examined, and we will show the most and the least affecting factors for the market value.
# Link to Google Slides Presentation
[Presentation_Team3](https://docs.google.com/presentation/d/1ABp-GkqQUZYdRsoX6pAX-By1u8ZcKY6oNnCJunGCxJk/edit?usp=sharing)
# Link to Tableau Dashboard
[Football_dashboard](https://public.tableau.com/views/Football_dashboard/PlayersperSeason?:language=es-ES&:display_count=n&:origin=viz_share_link)

# The reason why we selected this topic?

Nowadays, FIFA is the most important association that governs football federations all over the planet and attracts a lot of fans. Because of its popularity, many football associations obtain huge incomes. Thus, soccer clubs are companies. These companies always make important decisions in relation to who football player they want to employ. It has been a fact that transfers of players make a significant impact on football clubs, cities, countries, and governments. Also, the market value of players provides a budget for these transfers. Therefore, the market value of a player is important to sales and profit for the clubs, which pay attention to analysis and predict player value. So, our question is “ what kind of factors will influence the market value of a player?”

# Questions We hope to answer with the data

- what kind of factors will influence the market value of a player?
- How much does the market value of the players increase on average? 
- player performance and club rank can make a significant impact on player value.


# Project Objective & Target Audience

Develop an optimal model using Linear regression to predict the performance of the players.

- Target Audience
  * Sports statistics fans
  * Enthusiasts of football


# Data

- Data Source.

2021 Football Data clean, structured and automatically updated football data from from transfermarkt

Source:https://www.kaggle.com/davidcariboo/player-scores?select=players.csv

2018 Summer window transfer.The dataset of top 250 most expensive football transfers from season 2000-2001 until 2018-2019.

Source:https://www.kaggle.com/vardan95ghazaryan/top-250-football-transfers-from-2000-to-2018

- Data Anlysis

 This dataset aims to present up-to-date football data down to the level of performance of the players.
 
 We selected 10 independent variables and one dependent variable of the season 2018 to 2019. The independent variables are divided into three categories: physical data of the players, performance data of the players, and the ranking of the players club.

# Potential Features and Target Variable

* Appearnece 
* Goals
* Assists
* Minute played
* Date of birth
* Position

# Database
In order to obtain our target values for our model, we needed to join multiple datasets with information from the players club, games and player market values, we joined our datasets in SQL as shown in our ERD below to:

<p align="center">
  <img src="./Images/DB_diagram/ERD.PNG" alt="Sublime's custom image"/>
</p>

After joining the datasets we obtained a table with <code>19,189</code> rows containing the player name with multiple appearances and games. In order to reduce the amount of rows we obtained the performance of each player by performing the next operations:
* <code>COUNT</code> the number of <code>games</code>
* <code>SUM</code> the number of <code>goals</code>
* <code>SUM</code> the number of <code>assists</code>
* <code>SUM</code> the number of <code>minutes_played</code> and transform them into <code>hours_played</code>
* <code>SUM</code> of <code>yellow_cards</code>
* <code>SUM</code> of <code>red_cards</code>

After obtaining the performance of each player in all games of every season from 2014 to 2018, we obtained a database of 710 unique players from all the available seasons.
In order to load the data to the cloud to make it more available and easier to access we created connected our final database from PostgreSQL with Heroku as shown in the images below:

Heroku Connection    |  Database Credentials  
:-------------------------:|:-------------------------:
![Time original code](./Images/Heroku_connection.PNG)    | ![Time refactored code](./Images/Heroku_database_credentials.png)

By loading the data into our Heroku database we can access the data by using the credentials of the database including the password.

# Machine Learning Model

We used a multiple linear regression analysis because the multiple regression model not only helps us to make predictions about the data but also can help us to identify the variables that have a significant effect on the dependent variable (market_value). So it was suitable as well as reasonable for us to use here.

Source: https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/db3a093e1ffb48e24f918146f414501d6cdadba9/FutPlayers_PredictValue.ipynb
### First analysis

-We can see that R-squared is equal to 0.691, which means that the regression equation can explain the 69.1% variation in player value.
 ![img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/f61047a04885a3b0895896cc7e75782d7a663c87/Images/img_segment1.png)
 ![img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/e3ae7d7565e80f7a28e18a2581de69f59f705117/Images/img_segment1.2.png)

# Role Distribution

This week, each team member chose a shape, and We knew that each shape was responsible for a specific task. Also, We chose from the square, circle, triangle, and X.  Finally, We chose a figure concerning our strengths and with the help of the documentation on canvas.

We created a page where we can edit code all together at the same time and this is how we started to work. Also, with the help of other technologies such as WhatsApp we have and create good communication. 
https://deepnote.com/project/Untitled-Python-Project-eAGO52SQT5SsuFcbuPwvtw/%2FUntitled.ipynb


