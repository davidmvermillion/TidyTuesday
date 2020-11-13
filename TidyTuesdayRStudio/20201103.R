# Pulling data from the main repository (lines 3-14 copied)
# Readme from https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-11-03/readme.md

# Load Data ---------------------------------------------------------------


## Get the Data

# Read in with tidytuesdayR package 
# Install from CRAN via: install.packages("tidytuesdayR")
# This loads the readme and all the datasets for the week of interest

# Either ISO-8601 date or year/week works!

install.packages("tidytuesdayR")
library(tidytuesdayR)
# tuesdata <- tidytuesdayR::tt_load('2020-11-03')
# tuesdata <- tidytuesdayR::tt_load(2020, week = 45)

# ikea.csv <- tuesdata$ikea.csv
# Load dataset
ikea <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-11-03/ikea.csv')

# Load tidyverse
library(tidyverse)

# Begin Analysis ----------------------------------------------------------


EDA1 <- glimpse(ikea)
EDA2 <- summary(ikea)
EDA2

# R base scatterplot matrix
# http://www.sthda.com/english/wiki/scatter-plot-matrices-r-base-graphs
pairs(ikea[1:4], pch = 19)
pairs(ikea)
# Dataset inadequately designed to readily utilize the pairs function without further cleaning

# Plot depth
plot(ikea$depth)
# Plot height
plot(ikea$height)
# Plot width
plot(ikea$width)

# Separate numeric observations
cols <- c(5,12,13,14)
ikeanumeric <- ikea[,cols]

# Plot numeric observations
pairs(ikeanumeric)

# Create Volume Observation
volume <- ikeanumeric[2]*ikeanumeric[3]*ikeanumeric[4]

# Add volume to ikeanumeric
# Resorted to this method after being confused with results
ikeanumeric2 <- ikeanumeric
ikeanumeric2["volume"] <- volume

# Plot new numeric observations
pairs(ikeanumeric2)

# boxplot pairs
boxplot(ikeanumeric, use.cols = TRUE)
# Price has a spread, but not the others

p <- ggplot(ikeanumeric3, aes(ikeanumeric)) + 
  geom_boxplot()

# separate price from ikeanumeric
ikeanumeric3 <- ikeanumeric[-1]

# Show spread in main dimensions
boxplot(ikeanumeric3)

# boxplot volume
boxplot(ikeanumeric2$volume, notch = TRUE)
# Significant outliers in dataset. Not meaningful elsewhere.

# stripchart
stripchart(ikeanumeric)

# Comments on material ------
# SR is Saudi Arabian currency
# Create volume for graphing

