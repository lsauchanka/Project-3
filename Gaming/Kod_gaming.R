if ( options()$stringsAsFactors ) 
  options(stringsAsFactors=FALSE)
Tags <- read.csv("gaming.stackexchange.com/Tags.csv")
head(Tags)
Badges <- read.csv("gaming.stackexchange.com/Badges.csv")
head(Badges)
Comments <- read.csv("gaming.stackexchange.com/Comments.csv")
head(Comments)
PostLinks <- read.csv("gaming.stackexchange.com/PostLinks.csv")
head(PostLinks)
Posts <- read.csv("gaming.stackexchange.com/Posts.csv")
head(Posts)
Users <- read.csv("gaming.stackexchange.com/Users.csv")
head(Users)
Votes <- read.csv("gaming.stackexchange.com/Votes.csv")
head(Votes)
PostHistory <- read.csv("gaming.stackexchange.com/PostHistory.csv")
head(PostHistory)

library(sqldf)
library(RColorBrewer)
library(ggplot2)
library(data.table)

### TopGames ####

TopGames <- sqldf("
  SELECT TagName AS Game, 
  Count
  FROM Tags
  WHERE Game != 'steam' 
  AND Game != 'technical-issues' 
  AND Game != 'pc' 
  AND Game != 'xbox-360'
  AND Game != 'achievements'
  AND Game != 'ps4'
  AND Game != 'ps3'
  AND Game != 'controllers'
  AND Game != 'minecraft-commands'
  AND Game != 'minecraft-java-edition-server'
  AND Game != 'xbox-one'
  AND Game != 'mods'
  ORDER BY Count DESC 
  LIMIT 10
")

colorp1 <- brewer.pal(10, "Spectral")
df <- TopGames

ggplot(data=df, aes(x=reorder(Game, -Count), y=Count)) +
  geom_bar(stat="identity", fill=colorp1)+
  geom_text(aes(label=Count), vjust=-0.3, size=4)+
  theme(text = element_text(size=14),
        axis.text.x = element_text(angle=30, hjust=1))+ 
  ggtitle("Plot of top games") +
  xlab("Game") + ylab("Count")


###OUR CATEGORIES####

Categories <- sqldf("
  SELECT TagName AS Game, 
  Count,
  CASE WHEN Count > 2000 THEN 'Greatest game ever'
  WHEN Count > 1000 THEN 'Very popular game'
  WHEN Count > 500 THEN 'Popular game'
  WHEN Count > 250 THEN 'Quite popular game'
  ELSE 'Not so popular'
  END AS PopularityCategory
  FROM Tags
  WHERE Game != 'steam' 
  AND Game != 'technical-issues' 
  AND Game != 'pc' 
  AND Game != 'xbox-360'
  AND Game != 'achievements'
  AND Game != 'ps4'
  AND Game != 'ps3'
  AND Game != 'controllers'
  AND Game != 'minecraft-commands'
  AND Game != 'minecraft-java-edition-server'
  AND Game != 'xbox-one'
  AND Game != 'mods'
  AND Game != 'minecraft-redstone'
  AND Game != 'xcom-enemy-unknown'
  AND Game != 'terminology'
  AND Game != 'macos'
  AND Game != 'ios'
  ORDER BY Count DESC 
")

### POSTS IN YEARS ####

y2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Count2015
  FROM Posts
  WHERE CreationDate >= '2015-01-01' AND CreationDate <= '2015-12-31'
")


y2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Count016
  FROM Posts
  WHERE CreationDate >= '2016-01-01' AND CreationDate <= '2016-12-31'
")


y2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Count2017
  FROM Posts
  WHERE CreationDate >= '2017-01-01' AND CreationDate <= '2017-12-31'
")


y2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Count2018
  FROM Posts
  WHERE CreationDate >= '2018-01-01' AND CreationDate <= '2018-12-31'
")


y2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Count2019
  FROM Posts
  WHERE CreationDate >= '2019-01-01' AND CreationDate <= '2019-12-31'
")


y2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Count2020
  FROM Posts
  WHERE CreationDate >= '2020-01-01' AND CreationDate <= '2020-12-31'
")

byYear <- data.table(Year = c("2015", "2016", "2017", "2018", "2019", "2020"),
                     Count = c(y2015, y2016, y2017, y2018, y2019, y2020))

ggplot(byYear, aes(x=Year, y=Count, fill = Year))+
  geom_bar(width=1, stat="identity")+
  coord_polar(theta="y")

### USERS IN EUROPE ####

Europe <- sqldf("
  SELECT Location,
  CASE WHEN Location LIKE '%Russia%' THEN 'Russia'
  WHEN Location LIKE '%Turkey%' THEN 'Turkey'
  WHEN Location LIKE '%Turkiye%' THEN 'Turkey'
  WHEN Location LIKE '%Germany%' THEN 'Germany'
  WHEN Location LIKE '%France%' THEN 'France'
  WHEN Location LIKE '%United Kingdom%' THEN 'United Kingdom'
  WHEN Location LIKE '%UK' THEN 'United Kingdom'
  WHEN Location LIKE '%Italy%' THEN 'Italy'
  WHEN Location LIKE '%Spain%' THEN 'Spain'
  WHEN Location LIKE '%Ukraine%' THEN 'Ukraine'
  WHEN Location LIKE '%Poland%' THEN 'Poland'
  WHEN Location LIKE '%Romania%' THEN 'Romania'
  WHEN Location LIKE '%Netherlands%' THEN 'Netherlands'
  WHEN Location LIKE '%Belgium%' THEN 'Belgium'
  WHEN Location LIKE '%Czech Republic%' THEN 'Czech Republic'
  WHEN Location LIKE '%Greece%' THEN 'Greece'
  WHEN Location LIKE '%Portugal%' THEN 'Portugal'
  WHEN Location LIKE '%Sweden%' THEN 'Sweden'
  WHEN Location LIKE '%Hungary%' THEN 'Hungary'
  WHEN Location LIKE '%Belarus%' THEN 'Belarus'
  WHEN Location LIKE '%Austria%' THEN 'Austria'
  WHEN Location LIKE '%Serbia%' THEN 'Serbia'
  WHEN Location LIKE '%Switzerland%' THEN 'Switzerland'
  WHEN Location LIKE '%Bulgaria%' THEN 'Bulgaria'
  WHEN Location LIKE '%Denmark%' THEN 'Denmark'
  WHEN Location LIKE '%Finland%' THEN 'Finland'
  WHEN Location LIKE '%Slovakia%' THEN 'Slovakia'
  WHEN Location LIKE '%Norway%' THEN 'Norway'
  WHEN Location LIKE '%Irleand%' THEN 'Irleand'
  WHEN Location LIKE '%Croatia%' THEN 'Croatia'
  WHEN Location LIKE '%Moldova%' THEN 'Moldova'
  WHEN Location LIKE '%Bosnia and Herzegovina%' THEN 'Bosnia and Herzegovina'
  WHEN Location LIKE '%Albania%' THEN 'Albania'
  WHEN Location LIKE '%Lithuania%' THEN 'Lithuania'
  WHEN Location LIKE '%North Macedonia%' THEN 'North Macedonia'
  WHEN Location LIKE '%Slovenia%' THEN 'Slovenia'
  WHEN Location LIKE '%Latvia%' THEN 'Latvia'
  WHEN Location LIKE '%Montenegro%' THEN 'Montenegro'
  WHEN Location LIKE '%Luxembourg%' THEN 'Luxembourg'
  WHEN Location LIKE '%Malta%' THEN 'Malta'
  WHEN Location LIKE '%Iceland%' THEN 'Iceland'
  END AS EuropeanCountries
  FROM Users")

Top10EuropeCount <- sqldf("
  SELECT EuropeanCountries AS Country,
  COUNT(EuropeanCountries) AS Count
  FROM Europe
  WHERE Country <> 'NA'
  GROUP BY EuropeanCountries
  ORDER BY Count DESC
  LIMIT 10")

df <- Top10EuropeCount
color <- brewer.pal(10, "Set3")
  
ggplot(data=df, aes(x=reorder(Country, -Count), y=Count)) +
  geom_bar(stat="identity", fill=color)+
  geom_text(aes(label=Count), vjust=-0.3, size=4)+
  theme(text = element_text(size=14),
        axis.text.x = element_text(angle=30, hjust=1))+
  ggtitle("Plot of top 10 European countries") +
  xlab("Country") + ylab("Count")
