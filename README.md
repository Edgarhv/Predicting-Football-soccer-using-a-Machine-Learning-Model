
# Segment 1

### Triangle Role

![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/7a4fd1b4b64849be725836da1b73f3cbc0f3b30a/BlaringAccurateArcticfox-mobile.gif)
##### Source:https://gfycat.com/blaringaccuratearcticfox

My role is responsible for creating a simple machine learning model. The model that I created helped us as a team to understand where and how a machine learning model will fit into the project. Also, the model gives us more time to work out the specifics related to machine learning in the futures segments.

# First Impression
- We can see that R-squared is equal to 0.691, which means that the regression equation can explain the 69.1% variation in player value.

![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/718e428415bb97be370d9682df8f0e11957c2468/Images/img_segment1.png)
![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/718e428415bb97be370d9682df8f0e11957c2468/Images/img_segment1.2.png)

![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/ab986e3d2b3c643975ecc26a4bba3ed6c069801c/Images/Dumies.png)

### Model settings  

- I will add the variable position, and then this position variable will treat as a dummy variable. The midfielder will be labeled as 1; Forward will be labeled as 2; Goalkeeper will be labeled as 3; Defender will be labeled as.


# Segment 2

![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/451a020a6d633ba5f215c11b8bb2d33d6f16bd39/Images/descarga.png)
After defining the variables that we were going to use in our model we needed to encode categorical variables in our data. We used One Hot Encoder from sklearn to encode the player_position variable, obtaininga number per position of a player as shown below:

Attack as 1000 and there are 124 players with this position.
Defender as 0100 and there are 106 players with this position.
Goalkeeper as 0010 and there are 101 players with this position.
Midfield as 0001 and there are only 17 players with this position.
![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/58a35b17f9209e3cde206a83d8f0ea959071aa8a/Images/correlation_heatmap.png)
we created a presentation for the final segment. Also, we develop a dashboard
### Link to Google Slides Presentation
[Presentation_Team3](https://docs.google.com/presentation/d/1ABp-GkqQUZYdRsoX6pAX-By1u8ZcKY6oNnCJunGCxJk/edit?usp=sharing)
### Dashboard
[Web_PageDashboard](https://sites.google.com/view/team3bootcamp/dashboard)

# Segment 3
We convert the variable " player_position " to dummies:

- Player position: Attack, Encode position: 0
- Player position: Defender, Encode position: 3
- Player position: Goalkeeper, Encode position: 2
- Player position: Midfield, Encode position: 1	

## Top 3 football players
![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/782c742abb7eef76cb856556bceb649d42db6943/Images/cr7.png)
![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/d8ae8490c325c0272da02425f6ac8477397d35d3/Images/Ney.png)
![Img](https://github.com/Edgarhv/Predicting-Football-soccer-using-a-Machine-Learning-Model/blob/67fb0226f59664aa2634f2f59bf0714ff6512581/Images/Messi.png)

# Segment 4
# Data

-Data Source

Name: “Football Data from Transfermarkt”

Description

Clean, structured and automatically-updated football data from Transfermarkt, including:
* 40,000+ games from many seasons on all major competitions
* 300+ clubs from those competitions
* 20,000+ players from those clubs
* 900,000+ player appearance records from all games
#### Source: Kaggle:https://www.kaggle.com/davidcariboo/player-scores?select=players.csv

-Data Source

Name: “Top 250 Football transfers from 2000 to 2018”

Description

The dataset of the 250 most expensive football transfers from season 2000-2001 until 2018-2019. There is a total of 4700 rows and 10 columns in this dataset. The columns contain the following information: the name of each football player, the selling team and league, the league and team where the player is sold, the estimated market value of the player, the actual value of the transfer, the position of the player and season during which the transfer took place.
#### Source: Kaggle:https://www.kaggle.com/vardan95ghazaryan/top-250-football-transfers-from-2000-to-2018



- Data Anlysis

 This dataset aims to present up-to-date football data down to the level of performance of the players.
 
 We selected 10 independent variables and one dependent variable of the season 2018 to 2019. The independent variables are divided into three categories: physical data of the players, performance data of the players, and the ranking of the players club.

# Potential Features and Target Variable
We selected 10 independent variables and one dependent variable from players, matches, and team data of European football from 2017 to 2018. The independent variables are divided into three categories: physical data of the players, performance data of the players, and the market of the club. The dependent variable is the players’ market value. After importing the raw data into Python for data cleaning we got a dataset of 348 rows and 11 columns.

## DV= β + β1 A + β2 Pp + β3 G + β4 G + β5 A + β6 Hp + β7 Yc + β8 Rc + β9Tf + β10 Cmv + є
* Club Market Value
* Red Cards 
* Assists
* Age
* Hours Played
* Goals
* Transfer Fee
* Games
* Yellow Cards
* Player Position

### * Dependent Variable :Market value 
