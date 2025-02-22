## Understanding loops and map functions
install.packages('tidyverse')
install.packages('R.utils')

## importing Libratries
library(tidyverse)
library(R.utils)

#listing all the files in the Zip folder
#Filtering by patterns
list.files(path = 'Zip/',pattern = 'gz')
