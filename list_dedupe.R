library(dplyr)
file_renew <- read.csv('/Users/sasaro/Downloads/4INFO_Likely Voter Renewables.csv', stringsAsFactors = F)

swing <- read.csv('/Users/sasaro/Downloads/4INFO_Likely Voter Renewable Swing.csv', stringsAsFactors = F)
head(swing)



file_renew = file_renew[!duplicated(file_renew$Postal.Address),]
head(file_renew)

swing = swing[!duplicated(swing$Resident.ID),]
nrow(swing)

?write.csv
write.csv(file_renew, file = 'Likely Voter Renewables.csv', quote = F, row.names = F)
write.csv(swing, file ='Likely Voters Renewable Swing.csv', quote = F, row.names = F)
