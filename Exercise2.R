## Understanding loops and map functions
install.packages('tidyverse')
install.packages('R.utils')

## importing Libratries
library(tidyverse)
library(R.utils)

#listing all the files in the Zip folder
#Filtering by patterns
list.files(path = 'Zip/',pattern = 'gz',full.names = T)

# Creating a vector to store all the zipfiles paths
myzipfiles <- list.files(path = 'Zip/',pattern = 'gz',full.names = T)

#Vectors are not zero indexed like python, the indexes start form 1
# Accessing the first path in myzipfiles
myzipfiles[1]


for(i in myzipfiles){
  # print(i)
  gunzip(i, remove = F)
}

# After creating temporary variables it is good idea to remove them from
# environment to save memory

rm(i) ## Use this to remove the varibles that are not required


# Using walk function to unzip the files
walk(.x = myzipfiles, .f = safely(gunzip), remove = F)


# Removing the cs files with walk
rmfiles <- list.files(path = 'Zip/', pattern = 'csv$',full.names = T)

walk(.x = rmfiles, .f = file.remove)

rm(myzipfiles)
rm(rmfiles)
