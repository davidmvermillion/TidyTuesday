# Pulling data from the main repository (lines 3-14 copied)
# Readme from https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-11-03/readme.md

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

EDA1 <- glimpse(ikea)
EDA2 <- summary(ikea)
EDA2
