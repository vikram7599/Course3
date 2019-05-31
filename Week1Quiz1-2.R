fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "./NaturalGas.xlsx", method = "curl")

data <- read.xlsx('./NaturalGas.xlsx', sheetIndex = ",")