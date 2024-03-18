# ==============  csv file 

df <- read.csv("Coures/09_read_data/examples/test.csv")

str(df)

View(df)


df <- data.frame(
    names=c("sidi" , "khaled" , "naji") ,
    ages = c(22,23,24) ,
    log = c(TRUE , FALSE, TRUE)

)

df 

write.csv(df , "Coures/09_read_data/examples/test.csv" , sep="\t" , row.names= F)


# ========== Excel file :

install.packages("readxl")
library(readxl)

list_sheets <- excel_sheets("Coures/09_read_data/examples/test.xlsx"  )
list_sheets

# data.frame of sheet1 
df.1 <- read_excel("Coures/09_read_data/examples/test.xlsx" , sheet="Sheet1")
head(df.1)
class(df.1)

# list of all data-frame of all sheet in excel file

list_df <- lapply(list_sheets, FUN = read_excel , path="Coures/09_read_data/examples/test.xlsx")
list_df




install.packages("writexl")
library(writexl)
df <- mtcars
class(df)
head(df)
write_xlsx(df , "test.xlsx")


