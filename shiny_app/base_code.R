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

jan2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjan2015
  FROM Posts
  WHERE CreationDate >= '2015-01-01' AND CreationDate <= '2015-01-31'
")

feb2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countfeb2015
  FROM Posts
  WHERE CreationDate >= '2015-02-01' AND CreationDate <= '2015-02-28'
")

mar2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmar2015
  FROM Posts
  WHERE CreationDate >= '2015-03-01' AND CreationDate <= '2015-03-31'
")

apr2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countapr2015
  FROM Posts
  WHERE CreationDate >= '2015-04-01' AND CreationDate <= '2015-04-30'
")

may2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmay2015
  FROM Posts
  WHERE CreationDate >= '2015-05-01' AND CreationDate <= '2015-05-31'
")

jun2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjun2015
  FROM Posts
  WHERE CreationDate >= '2015-06-01' AND CreationDate <= '2015-06-30'
")

jul2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjul2015
  FROM Posts
  WHERE CreationDate >= '2015-07-01' AND CreationDate <= '2015-07-31'
")

aug2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countaug2015
  FROM Posts
  WHERE CreationDate >= '2015-08-01' AND CreationDate <= '2015-08-31'
")

sep2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countsep2015
  FROM Posts
  WHERE CreationDate >= '2015-09-01' AND CreationDate <= '2015-09-30'
")

oct2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countoct2015
  FROM Posts
  WHERE CreationDate >= '2015-10-01' AND CreationDate <= '2015-10-31'
")

nov2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countnov2015
  FROM Posts
  WHERE CreationDate >= '2015-11-01' AND CreationDate <= '2015-11-30'
")

dec2015 <- sqldf("
  SELECT COUNT(CreationDate) AS Countdec2015
  FROM Posts
  WHERE CreationDate >= '2015-12-01' AND CreationDate <= '2015-12-31'
")

jan2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjan2016
  FROM Posts
  WHERE CreationDate >= '2016-01-01' AND CreationDate <= '2016-01-31'
")

feb2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countfeb2016
  FROM Posts
  WHERE CreationDate >= '2016-02-01' AND CreationDate <= '2016-02-29'
")

mar2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmar2016
  FROM Posts
  WHERE CreationDate >= '2016-03-01' AND CreationDate <= '2016-03-31'
")

apr2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countapr2016
  FROM Posts
  WHERE CreationDate >= '2016-04-01' AND CreationDate <= '2016-04-30'
")

may2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmay2016
  FROM Posts
  WHERE CreationDate >= '2016-05-01' AND CreationDate <= '2016-05-31'
")

jun2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjun2016
  FROM Posts
  WHERE CreationDate >= '2016-06-01' AND CreationDate <= '2016-06-30'
")

jul2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjul2016
  FROM Posts
  WHERE CreationDate >= '2016-07-01' AND CreationDate <= '2016-07-31'
")

aug2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countaug2016
  FROM Posts
  WHERE CreationDate >= '2016-08-01' AND CreationDate <= '2016-08-31'
")

sep2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countsep2016
  FROM Posts
  WHERE CreationDate >= '2016-09-01' AND CreationDate <= '2016-09-30'
")

oct2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countoct2016
  FROM Posts
  WHERE CreationDate >= '2016-10-01' AND CreationDate <= '2016-10-31'
")

nov2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countnov2016
  FROM Posts
  WHERE CreationDate >= '2016-11-01' AND CreationDate <= '2016-11-30'
")

dec2016 <- sqldf("
  SELECT COUNT(CreationDate) AS Countdec2016
  FROM Posts
  WHERE CreationDate >= '2016-12-01' AND CreationDate <= '2016-12-31'
")

jan2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjan2017
  FROM Posts
  WHERE CreationDate >= '2017-01-01' AND CreationDate <= '2017-01-31'
")

feb2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countfeb2017
  FROM Posts
  WHERE CreationDate >= '2017-02-01' AND CreationDate <= '2017-02-28'
")

mar2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmar2017
  FROM Posts
  WHERE CreationDate >= '2017-03-01' AND CreationDate <= '2017-03-31'
")

apr2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countapr2017
  FROM Posts
  WHERE CreationDate >= '2017-04-01' AND CreationDate <= '2017-04-30'
")

may2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmay2017
  FROM Posts
  WHERE CreationDate >= '2017-05-01' AND CreationDate <= '2017-05-31'
")

jun2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjun2017
  FROM Posts
  WHERE CreationDate >= '2017-06-01' AND CreationDate <= '2017-06-30'
")

jul2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjul2017
  FROM Posts
  WHERE CreationDate >= '2017-07-01' AND CreationDate <= '2017-07-31'
")

aug2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countaug2017
  FROM Posts
  WHERE CreationDate >= '2017-08-01' AND CreationDate <= '2017-08-31'
")

sep2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countsep2017
  FROM Posts
  WHERE CreationDate >= '2017-09-01' AND CreationDate <= '2017-09-30'
")

oct2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countoct2017
  FROM Posts
  WHERE CreationDate >= '2017-10-01' AND CreationDate <= '2017-10-31'
")

nov2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countnov2017
  FROM Posts
  WHERE CreationDate >= '2017-11-01' AND CreationDate <= '2017-11-30'
")

dec2017 <- sqldf("
  SELECT COUNT(CreationDate) AS Countdec2017
  FROM Posts
  WHERE CreationDate >= '2017-12-01' AND CreationDate <= '2017-12-31'
")

jan2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjan2018
  FROM Posts
  WHERE CreationDate >= '2018-01-01' AND CreationDate <= '2018-01-31'
")

feb2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countfeb2018
  FROM Posts
  WHERE CreationDate >= '2018-02-01' AND CreationDate <= '2018-02-28'
")

mar2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmar2018
  FROM Posts
  WHERE CreationDate >= '2018-03-01' AND CreationDate <= '2018-03-31'
")

apr2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countapr2018
  FROM Posts
  WHERE CreationDate >= '2018-04-01' AND CreationDate <= '2018-04-30'
")

may2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmay2018
  FROM Posts
  WHERE CreationDate >= '2018-05-01' AND CreationDate <= '2018-05-31'
")

jun2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjun2018
  FROM Posts
  WHERE CreationDate >= '2018-06-01' AND CreationDate <= '2018-06-30'
")

jul2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjul2018
  FROM Posts
  WHERE CreationDate >= '2018-07-01' AND CreationDate <= '2018-07-31'
")

aug2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countaug2018
  FROM Posts
  WHERE CreationDate >= '2018-08-01' AND CreationDate <= '2018-08-31'
")

sep2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countsep2018
  FROM Posts
  WHERE CreationDate >= '2018-09-01' AND CreationDate <= '2018-09-30'
")

oct2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countoct2018
  FROM Posts
  WHERE CreationDate >= '2018-10-01' AND CreationDate <= '2018-10-31'
")

nov2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countnov2018
  FROM Posts
  WHERE CreationDate >= '2018-11-01' AND CreationDate <= '2018-11-30'
")

dec2018 <- sqldf("
  SELECT COUNT(CreationDate) AS Countdec2018
  FROM Posts
  WHERE CreationDate >= '2018-12-01' AND CreationDate <= '2018-12-31'
")

jan2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjan2019
  FROM Posts
  WHERE CreationDate >= '2019-01-01' AND CreationDate <= '2019-01-31'
")

feb2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countfeb2019
  FROM Posts
  WHERE CreationDate >= '2019-02-01' AND CreationDate <= '2019-02-28'
")

mar2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmar2019
  FROM Posts
  WHERE CreationDate >= '2019-03-01' AND CreationDate <= '2019-03-31'
")

apr2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countapr2019
  FROM Posts
  WHERE CreationDate >= '2019-04-01' AND CreationDate <= '2019-04-30'
")

may2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmay2019
  FROM Posts
  WHERE CreationDate >= '2019-05-01' AND CreationDate <= '2019-05-31'
")

jun2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjun2019
  FROM Posts
  WHERE CreationDate >= '2019-06-01' AND CreationDate <= '2019-06-30'
")

jul2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjul2019
  FROM Posts
  WHERE CreationDate >= '2019-07-01' AND CreationDate <= '2019-07-31'
")

aug2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countaug2018
  FROM Posts
  WHERE CreationDate >= '2019-08-01' AND CreationDate <= '2019-08-31'
")

sep2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countsep2019
  FROM Posts
  WHERE CreationDate >= '2019-09-01' AND CreationDate <= '2019-09-30'
")

oct2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countoct2019
  FROM Posts
  WHERE CreationDate >= '2019-10-01' AND CreationDate <= '2019-10-31'
")

nov2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countnov2019
  FROM Posts
  WHERE CreationDate >= '2019-11-01' AND CreationDate <= '2019-11-30'
")

dec2019 <- sqldf("
  SELECT COUNT(CreationDate) AS Countdec2019
  FROM Posts
  WHERE CreationDate >= '2019-12-01' AND CreationDate <= '2019-12-31'
")

jan2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjan2020
  FROM Posts
  WHERE CreationDate >= '2020-01-01' AND CreationDate <= '2020-01-31'
")

feb2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countfeb2020
  FROM Posts
  WHERE CreationDate >= '2020-02-01' AND CreationDate <= '2020-02-29'
")

mar2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmar2020
  FROM Posts
  WHERE CreationDate >= '2020-03-01' AND CreationDate <= '2020-03-31'
")

apr2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countapr2020
  FROM Posts
  WHERE CreationDate >= '2020-04-01' AND CreationDate <= '2020-04-30'
")

may2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countmay2020
  FROM Posts
  WHERE CreationDate >= '2020-05-01' AND CreationDate <= '2020-05-31'
")

jun2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjun2020
  FROM Posts
  WHERE CreationDate >= '2020-06-01' AND CreationDate <= '2020-06-30'
")

jul2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countjul2020
  FROM Posts
  WHERE CreationDate >= '2020-07-01' AND CreationDate <= '2020-07-31'
")

aug2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countaug2020
  FROM Posts
  WHERE CreationDate >= '2020-08-01' AND CreationDate <= '2020-08-31'
")

sep2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countsep2020
  FROM Posts
  WHERE CreationDate >= '2020-09-01' AND CreationDate <= '2020-09-30'
")

oct2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countoct2020
  FROM Posts
  WHERE CreationDate >= '2020-10-01' AND CreationDate <= '2020-10-31'
")

nov2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countnov2020
  FROM Posts
  WHERE CreationDate >= '2020-11-01' AND CreationDate <= '2020-11-30'
")

dec2020 <- sqldf("
  SELECT COUNT(CreationDate) AS Countdec2020
  FROM Posts
  WHERE CreationDate >= '2020-12-01' AND CreationDate <= '2020-12-31'
")

x <- c(as.numeric(jan2015), as.numeric(feb2015), as.numeric(mar2015), as.numeric(apr2015), as.numeric(may2015), as.numeric(jun2015), as.numeric(jul2015), as.numeric(aug2015), as.numeric(sep2015), as.numeric(oct2015), as.numeric(nov2015), as.numeric(dec2015),
       as.numeric(jan2016), as.numeric(feb2016), as.numeric(mar2016), as.numeric(apr2016), as.numeric(may2016), as.numeric(jun2016), as.numeric(jul2016), as.numeric(aug2016), as.numeric(sep2016), as.numeric(oct2016), as.numeric(nov2016), as.numeric(dec2016),
       as.numeric(jan2017), as.numeric(feb2017), as.numeric(mar2017), as.numeric(apr2017), as.numeric(may2017), as.numeric(jun2017), as.numeric(jul2017), as.numeric(aug2017), as.numeric(sep2017), as.numeric(oct2017), as.numeric(nov2017), as.numeric(dec2017),
       as.numeric(jan2018), as.numeric(feb2018), as.numeric(mar2018), as.numeric(apr2018), as.numeric(may2018), as.numeric(jun2018), as.numeric(jul2018), as.numeric(aug2018), as.numeric(sep2018), as.numeric(oct2018), as.numeric(nov2018), as.numeric(dec2018),
       as.numeric(jan2019), as.numeric(feb2019), as.numeric(mar2019), as.numeric(apr2019), as.numeric(may2019), as.numeric(jun2019), as.numeric(jul2019), as.numeric(aug2019), as.numeric(sep2019), as.numeric(oct2019), as.numeric(nov2019), as.numeric(dec2019),
       as.numeric(jan2020), as.numeric(feb2020), as.numeric(mar2020), as.numeric(apr2020), as.numeric(may2020), as.numeric(jun2020), as.numeric(jul2020), as.numeric(aug2020), as.numeric(sep2020), as.numeric(oct2020), as.numeric(nov2020), as.numeric(dec2020))


PostsbyMonth <- matrix(x, nrow = 12, ncol = 6)
rownames(PostsbyMonth) = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
colnames(PostsbyMonth) = c("2015", "2016", "2017", "2018", "2019", "2020")     


