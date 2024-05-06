# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Interval regression model (models) Use intReg With (In) R Software
install.packages("readxl")
install.packages("httr")
install.packages("Ecdat")
install.packages("sets")
install.packages("intReg", repos="http://R-Forge.R-project.org")
library("httr")
library("readxl")
library("Ecdat")
library("sets")
library("intReg")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/intReg/raw/main/intReg/intReg.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
intReg <- readxl::read_excel(temp_file)
# Estimate Interval regression model (models) Use intReg With (In) R Software
intReg_ols <- lm(log(wage) ~ factor(educ) + poly(exper, 2), data=intReg)
cat("OLS estimate:\n")
print(summary(ols))
intervals <- c(0, 5, 10, 15, 25, Inf)
salary <- cut(intReg$wage, intervals)
intReg <- intReg(salary ~ factor(educ) + poly(exper, 2), data=intReg, boundaries=log(intervals))
cat("Interval regression:\n")
print(summary(intReg))
# Interval regression model (models) Use intReg With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
