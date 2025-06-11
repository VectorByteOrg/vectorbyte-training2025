####### Enter Team Name ######
teamName <- "ENTER TEAM NAME HERE"

###### Enter path name to file containing VectorByte Training Data ######

pathname <- "ENTER PATH NAME HERE"
setwd(pathname)

###### Read in the data ######

dengue <- read.csv("dengueForecasting.csv")

###### Modeling Space ######
# Get creative and do your modeling here!








###### Get Forecasts ######

# Save the 12 forecasts for each state in a separate vector below. Start
# with the earliest forecast (4/14/2024). Feel free to use your coding 
# skills to avoid having to type each one out.

MG <- c()
SP <- c()
RS <- c()
BA <- c()
PR <- c()

# This code pulls them together into a data set for exporting

forecasts <- data.frame(teamName = rep(teamName, 60),
                        state = rep(c("MG", "SP", "RS", "BA",
                                      "PR"), each = 12),
                        epiweek = rep(seq(202416, 202427, 1), 5),
                        cases = c(BA, MG, PR, RS, SP))

####### Export Forecast .csv ######

filename <- paste0(teamName,"_dengueChallenge_VB_2025.csv")

# This will export the file to the folder where you have the data stored
write.csv(forecasts, filename)



