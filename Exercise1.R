install.packages('lubridate')

# Checking th current date
lubridate::date()

#Checking todays date
lubridate::today()

#Checking what month is today
lubridate::month(x=lubridate::today())

#importing the library
#This helps to use all the functions without refrencing to the library
library('lubridate')
# Refrencing the lubridate functions without callig the library
month(x= today())

#using the function parameters
month(x=today(),label = T)

month(x = today(), label = T, abbr = F)

#using Variables
d1 <- '2025-02-20'
d2<- ymd(d1)

#Checking the class of the created variables
class(d1)
class(d2)


#Usigng the system functions
Sys.Date()
Sys.sleep(10) #puts the system to sleep for 10 seconds
