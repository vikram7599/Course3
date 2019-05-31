fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

download.file(fileUrl, destfile = "./CommunityService.csv", method = "curl")

data <- read.csv('CommunityService.csv')

x <- data[,c("VAL")]
x <- x[!is.na(x)]

ans = 0

for(i in x){
  if(i == 24){
    ans = ans+1
  }
}

print(ans)