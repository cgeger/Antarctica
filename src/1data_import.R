install.packages("readxl")
library(readxl)

rock <- read_excel("data/DATA_MDS_PCA_20180609.xlsx", sheet = "ROCK")
desc <- read_excel("data/DATA_MDS_PCA_20180609.xlsx", sheet = "DESC")
color <- read_excel("data/DATA_MDS_PCA_20180609.xlsx", sheet = "CCI")
soil <- read_excel("data/DATA_MDS_PCA_20180609.xlsx", sheet = "SOIL") 
geol <- read_excel("data/DATA_MDS_PCA_20180609.xlsx", sheet = "GEOL")
depth <- read_excel("data/DATA_MDS_PCA_20180609.xlsx", sheet = "DEPTH")
infil <- read_excel("data/DATA_MDS_PCA_20180609.xlsx", sheet = "INFIL")



dryver <- read.csv("https://raw.githubusercontent.com/kurtjoy/DRYVER_IMPACT/master/dryver_nat_20180612.csv")
head(dryver)
