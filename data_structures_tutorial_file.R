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
