# This file extract the data for Nigeria from the gapminder data set


suppressPackageStartupMessages(library(tidyverse))
library(gapminder)


# extract the data for NIgeira from the gapminder data set
gap_extract <- gapminder %>%
	filter(country=="Nigeria")

# write the extracted data into a file
write.csv(gap_extract,"gap_extract.csv",row.names = FALSE, quote = FALSE)