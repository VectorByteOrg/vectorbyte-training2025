library(Metrics)

##### Read in the answer key #####
dengueAnswers <- read.csv("dengueAnswers.csv")

##### Read in all of the team submissions #####

# Someone will have to do this manually, sorry pals
# Ex:

team1 <- read.csv("Team1_dengueChallenge_VB_2025.csv")
coolTeam <- read.csv("coolTeam_dengueChallenge_VB_2025.csv")

# Add the data sets to this vector
teams <- list(team1, coolTeam)

##### Get RMSE for each team #####

# Get RMSE for each team

rmseDF <- data.frame(team = c(NA),
                     RMSE = c(NA))

for(i in 1:length(teams)) {
  
  data <- teams[[i]]
  teamName <- data$teamName[1]
  teamCases <- data$cases               # pull out the case data
  trueCases <- dengueAnswers$cases
  
  rmse <- rmse(trueCases, teamCases)
  
  rmseDF[i,] <- c(teamName, rmse)
  
}

##### Rank the teams #####

teamRankings <- rmseDF %>% arrange(rmse) # Lower RMSE is better

print(teamRankings)

