#########################################
# To-Do:
# - Pull out data for 10 states with the most data
# - Make 3 separate data sets for each validation test with those states only
# - Make separate data set for each forecasting task with those states only
# - Clean covariate data sets to include just the included states (keep them
#       separate to harder version people have to attach them on their own)
#
# - Make 1 state version of just validation test 3
# - Attach covariates for easy version
#
# - Finish writing instructions for easy and hard versions in qmd document
#
#
#########################################

dengue <- read.csv("dengue.csv")

str(dengue)

unique(dengue$uf)

dengue %>% group_by(uf) %>% summarize(n = n()) %>% arrange(desc(n))
