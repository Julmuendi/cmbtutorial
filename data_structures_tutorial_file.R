cats <- data.frame(coat=c("calico","black","tabby"),
                   weight=c(2.1, 5.0, 3.2),
                   likes_catnip=c(1,0,1)
                   )
write.csv(x = cats, file = "data/feline_data.csv", row.names = FALSE)
cats<- read.csv(file = "data/feline_data.csv")
cats
cats$weight
cats$coat
cats$weight + 3
paste("My cat is", cats$coat)
typeof(cats$weight)
typeof(3.14)
typeof(1L)
typeof(1 + 1i)
##adding an additional cat to the list
additional_cat <- data.frame(coat = "tabby", weight = "2.3 or 2.4", likes_catnip = 1 )
additional_cat
cats2 <- rbind(cats, additional_cat)
cats2

##checking what type of data we find in the weights column
typeof(cats2$weight)

str(cats2)
class(cats)
cats[,1]
test <- cats[,1]
typeof(test)
str(test)
#to give the first entry in a dataframe settinng
cats[1,]
str(cats[1,])
#other ways of exploring the data
cats[1]
cats$coat
cats[[1]]
cats['coat']
cats[1,1]
cats[1,2]

#Renaming columns
names(cats)

##to rename the second column
names(cats)[2] <- "weight_in_kg"

###check for the change
names(cats)[2]

#matrices
##declaring a matrix full of zeroes example
matrix_example <- matrix(0, ncol = 6, nrow = 3)
matrix_example
dim(matrix_example)
###to query a matrix
typeof(matrix_example)
class(matrix_example)
str(matrix_example)
nrow(matrix_example)
ncol(matrix_example)
length(matrix_example) ###gives ncol * nrow

###another example of matrix
another_matrix <- matrix(1:50, ncol = 5, nrow = 10)
another_matrix
length(another_matrix)
#challenge: Create a list of length two containing a character vector for each of the sections in this part of the workshop
data_types <- c("double", "complex", "logical", "character", "integer")
data_structures <- c("data.frame", "vector", "list", "matrix")
answer <- list(data_types, data_structures)
answer

###practice for matices
matrix(c(4, 1, 9, 5, 10, 7), ncol = 2, byrow = TRUE)

###to read tabular data: gapminder data
gapminder <- read.csv(file = "data/gapminder_data.csv")
gapminder

names(gapminder)
length(gapminder)
typeof(gapminder)
class(gapminder)
str(gapminder)
nrow(gapminder)
ncol(gapminder)
