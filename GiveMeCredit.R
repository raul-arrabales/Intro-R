
# Upload the CSV file to your VM, then load it as a data frame:
# dataset1 <- read.csv("/mnt/shared-data/cs-training.csv") 
dataset1 <- read.csv("R-code/cs-training.csv") 

# Parsing text manually:
text <- readLines("R-code/DataDictionary.txt")

# Removing comments:
Comments <- grepl("^#", text) 
text <- text[!Comments] 

# Split lines into fields
DSfields <- strsplit(text[1], split = "\t") 
onerow <- strsplit(text[2], split = "\t")

# A specific parser for our text input:
buildFields <- function(x)
{   
 	out <- character(3)    
	words <- gsub("\t", " ", x)  
	words <- strsplit(words, " ")  

	# Get variable name  
	out[1] <- words[[1]][1]    

	# Get variable desc  
	out[2] <  paste(words[[1]][2:(length(words[[1]])-1)],collapse=' ')    

	# Get variable type  
	out[3] <- words[[1]][length(words[[1]])]      

	out 
}

# That can be applied to selected lines:
metadata <- lapply(text[2:10],buildFields)

# And converted in a data frame:
m1 <- matrix(unlist(metadata),
	 	         nrow = length(metadata), 
		         byrow = TRUE) 

metadataDF <- as.data.frame(m1) 

Normalized <- transform( metadataDF, V1 = as.character(V1)) 



