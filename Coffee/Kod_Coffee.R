library(data.table)
library(ggplot2)
library(reshape)
library(stats)

# df jest ramką danych Posts forum Coffee 

plotCoffee1 <- function(df){
  
  # tworzymy pomocniczą ramkę danych z dat
  
  Posts1 <- as.Date(df$CreationDate)
  
  postsAsDataFrame <- as.data.table(Posts1)
  
  ################## 2020 ##################
  
  PostsIn2020Covid <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2020-04-01" 
                                                                    & postsAsDataFrame$Posts1 <= "2020-09-30"), ]))
  PostsIn2020 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2019-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2020-03-30"), ]))
  ################## 2019 ##################
  
  PostsIn2019Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2019-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2019-09-30"), ]))
  PostsIn2019 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2018-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2019-03-30"), ]))
  
  ################## 2018 ##################
  
  PostsIn2018Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2018-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2018-09-30"), ]))
  PostsIn2018 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2017-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2018-03-30"), ]))
  
  ################## 2017 ##################
  
  PostsIn2017Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2017-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2017-09-30"), ]))
  PostsIn2017 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2016-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2017-03-30"), ]))
  
  ################## 2016 ##################
  
  PostsIn2016Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2016-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2016-09-30"), ]))
  PostsIn2016 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2015-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2016-03-30"), ]))
  
  ################## 2015 ##################
  
  PostsIn2015Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2015-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2015-09-30"), ]))
  PostsIn2015 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2014-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2015-03-30"), ]))
  # tworzymy ramke danych do generowania wykresow
  
  x <- data.table(Season = rep(c("Winter", "Summer"), 6),
                  Year = c("2015", "2015", "2016", "2016", "2017", "2017",
                           "2018", "2018", "2019", "2019", "2020", "2020"), 
                  Count = c(PostsIn2015,
                            PostsIn2015Lato,
                            PostsIn2016,
                            PostsIn2016Lato,
                            PostsIn2017,
                            PostsIn2017Lato,
                            PostsIn2018,
                            PostsIn2018Lato,
                            PostsIn2019, 
                            PostsIn2019Lato, 
                            PostsIn2020, 
                            PostsIn2020Covid))
  # zmieniamy format ramki x 
  df <- melt(x)
  
  # generujemy wykres
  
  ggplot(df, aes(Year, value, fill = Season)) + 
    geom_bar(stat="identity", position = "dodge")
  
}

plotCoffee2 <- function(df){
  
  # tworzymy pomocniczą ramkę danych z dat
  
  Posts1 <- as.Date(df$CreationDate)
  
  postsAsDataFrame <- as.data.table(Posts1)
  
  ################## 2020 ##################
  
  PostsIn2020Covid <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2020-04-01" 
                                                                    & postsAsDataFrame$Posts1 <= "2020-09-30"), ]))
  PostsIn2020 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2019-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2020-03-30"), ]))
  ################## 2019 ##################
  
  PostsIn2019Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2019-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2019-09-30"), ]))
  PostsIn2019 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2018-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2019-03-30"), ]))
  
  ################## 2018 ##################
  
  PostsIn2018Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2018-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2018-09-30"), ]))
  PostsIn2018 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2017-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2018-03-30"), ]))
  
  ################## 2017 ##################
  
  PostsIn2017Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2017-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2017-09-30"), ]))
  PostsIn2017 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2016-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2017-03-30"), ]))
  
  ################## 2016 ##################
  
  PostsIn2016Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2016-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2016-09-30"), ]))
  PostsIn2016 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2015-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2016-03-30"), ]))
  
  ################## 2015 ##################
  
  PostsIn2015Lato <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2015-04-01" 
                                                                   & postsAsDataFrame$Posts1 <= "2015-09-30"), ]))
  PostsIn2015 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2014-10-01" 
                                                               & postsAsDataFrame$Posts1 <= "2015-03-30"), ]))
  
  # tworzymy ramke danych do generowania wykresow
  
  x <- data.table(Season = rep(c("Winter", "Summer"), 6),
                  Year = c("2015", "2015", "2016", "2016", "2017", "2017",
                           "2018", "2018", "2019", "2019", "2020", "2020"), 
                  Count = c(PostsIn2015,
                            PostsIn2015Lato,
                            PostsIn2016,
                            PostsIn2016Lato,
                            PostsIn2017,
                            PostsIn2017Lato,
                            PostsIn2018,
                            PostsIn2018Lato,
                            PostsIn2019, 
                            PostsIn2019Lato, 
                            PostsIn2020, 
                            PostsIn2020Covid))
  # zmieniamy format ramki x 
  df <- melt(x)
  
  # generujemy wykres
  
  ggplot(df, aes(Season, value, fill = Year)) + 
    geom_bar(stat="identity", position = "dodge")
  
}


plotCoffee3 <- function(df){
  
  # tworzymy pomocniczą ramkę danych z dat
  
  Posts1 <- as.Date(df$CreationDate)
  
  postsAsDataFrame <- as.data.table(Posts1)
  
  # tworzymy ramki danych z datami utworzemia postow poszczegolnych lat
  
  PostsIn2020 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2020-01-01" 
                                                               & postsAsDataFrame$Posts1 <= "2020-12-31"), ]))
  PostsIn2019 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2019-01-01" 
                                                               & postsAsDataFrame$Posts1 <= "2019-12-31"), ]))
  PostsIn2018 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2018-01-01" 
                                                               & postsAsDataFrame$Posts1 <= "2018-12-31"), ]))
  PostsIn2017 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2017-01-01" 
                                                               & postsAsDataFrame$Posts1 <= "2017-12-31"), ]))
  PostsIn2016 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2016-01-01" 
                                                               & postsAsDataFrame$Posts1 <= "2016-12-31"), ]))
  PostsIn2015 <- nrow(with(postsAsDataFrame, postsAsDataFrame[(postsAsDataFrame$Posts1 >= "2015-01-01" 
                                                               & postsAsDataFrame$Posts1 <= "2015-12-31"), ]))
  
  # tworzymy ramke danych do generowania wykresow
  
  byYear <- data.table(year = c("2015", "2016", "2017",
                                "2018", "2019", "2020"),
                       count = c(PostsIn2015, PostsIn2016, PostsIn2017,
                                 PostsIn2018, PostsIn2019, PostsIn2020))
  
  # generujemy wykres
  ggplot(byYear,  aes(x = year, y = count, fill = year))+
    geom_bar(width =1, stat = "identity")+ 
    coord_polar(theta = "y")
  
}
