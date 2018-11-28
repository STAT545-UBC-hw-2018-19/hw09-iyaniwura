# this file reads the words.txt file and select the words beginning with the characters a-e. The first character of the words, the words themselves, and their length is used to 
# create a data frame. This data frame is saved in file called df_words.csv

words <- readLines("words.txt")  # reads in the words data set


subwords1 <- grep("^[A-I,a-i]", words, value = TRUE)  # extract the words beginning with the specified characters

subwords <- tolower(subwords1)  # convert all words to lower case
N_subwords <- nchar(subwords)  # determines the number of character in each word
first_alp <- substr(subwords, 1, 1) # select the first character of each word

df_words <- data.frame( "First alp" =  first_alp ,   "A-E words" = subwords, "length" = N_subwords)  # create a data frame with 3 column with the first character, the words, and their lenght
write.csv(df_words, "df_words.csv",row.names = FALSE, quote = FALSE) # save the data frame into a file
