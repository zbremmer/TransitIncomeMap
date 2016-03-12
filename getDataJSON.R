# Get census income data and convert to data frame

install.packages("RJSONIO")
library(RJSONIO)

#Read in JSON
#Add key to URL  
rawData <- fromJSON("http://api.census.gov/data/2014/acs5/profile?get=DP03_0062E&for=zip+code+tabulation+area:*&key=******")

#Deal with any null values 
incomeData <- lapply(rawData, function(x){x[sapply(x, is.null)]<-NA 
              unlist(x)}) 

#Create data frame and add header names from first row
incomeData <- as.data.frame(do.call(rbind, incomeData))
names(incomeData) = as.character(unlist(incomeData[1,]))
incomeData <- incomeData[-1,]

#Write to csv
output <- data.frame(ZipCode = incomeData$`zip code tabulation area`, MedianIncome = incomeData$DP03_0062E)
write.csv(output, file = 'Median Income by Zip.csv', row.names = FALSE)
