
ny = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

head(ny)

head(wash)

head(chi)

# Your solution code goes here
library(ggplot2)

ny$months <- months(as.Date(ny$Start.Time), abbreviate=TRUE)
wash$months <- months(as.Date(wash$Start.Time), abbreviate=TRUE)
chi$months <- months(as.Date(chi$Start.Time), abbreviate=TRUE)

ny$months <- factor(ny$months, levels = c("Jan", "Feb", "Mar", "Apr", "May","Jun"))
wash$months <- factor(wash$months, levels = c("Jan", "Feb", "Mar", "Apr","May", "Jun"))
chi$months <- factor(chi$months, levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun"))

table(ny$months)  
table(wash$months)
table(chi$months)

ny_usage <- ggplot(ny, aes(x=ny$months)) +
  geom_bar(stat="count") +   geom_text(
    stat = "count",
    aes(label = ..count..), vjust = -1, 
  ) + 
labs(x = "Months", y = "Total Users", title = "Most Common Month - New York") +
theme_classic()
ny_usage 

wash_usage <- ggplot(data=wash, aes(x=wash$months)) +
  geom_bar(stat="count") +   geom_text(
    stat = "count",
    aes(label = ..count..), vjust = -1, 
  ) + 
labs(x = "Months", y = "Total Users", title = "Most Common Month - Washington") +
theme_minimal()
wash_usage 

chi_usage <- ggplot(data=chi, aes(x=chi$months)) +
  geom_bar(stat="count") +   geom_text(
    stat = "count",
    aes(label = ..count..), vjust = -1, 
  ) + 
labs(x = "Months", y = "Total Users", title = "Most Common Month - Chicago") +
theme_minimal()
chi_usage 

# Your solution code goes here

ny_users <- ggplot(data=ny, aes(x=ny$User.Type)) +
        geom_bar(stat="count") +   geom_text(
    stat = "count",
    aes(label = ..count..), vjust = -1, 
  ) + 
labs(x = "User Type", y = "Total Users", title = "User Types - New York") +
theme_minimal()

ny_users

wash_users <- ggplot(data=wash, aes(x=wash$User.Type)) +
        geom_bar(stat="count") +   geom_text(
    stat = "count",
    aes(label = ..count..), vjust = -1, 
  ) + 
labs(x = "User Type", y = "Total Users", title = "User Types Count - Washington") +
theme_minimal()

wash_users

65600 - 23450

chi_users <- ggplot(data=chi, aes(x=chi$User.Type)) +
        geom_bar(stat="count") +   geom_text(
    stat = "count",
    aes(label = ..count..), vjust = -1, 
  ) + 
labs(x = "User Type", y = "Total Users", title = "User Types Count - Chicago") +
theme_minimal()

chi_users

6883 - 1746

# Your solution code goes here

ny_gender <- ggplot(data=ny, aes(x=ny$Gender)) +
  geom_bar(stat="count") +   geom_text(
    stat = "count",
    aes(label = ..count..), vjust = -1, 
  ) + 
labs(x = "Gender", y = "Total Users", title = "Users by Gender - New York") +
theme_classic()
ny_gender

chi_gender <- ggplot(data=chi, aes(x=chi$Gender)) +
  geom_bar(stat="count") +   geom_text(
    stat = "count",
    aes(label = ..count..), vjust = -1, 
  ) + 
labs(x = "Gender", y = "Total Users", title = "Users by Gender - Chicago") +
theme_classic()
chi_gender

1748 - 1723

system('python -m nbconvert Explore_bikeshare_data.ipynb')
