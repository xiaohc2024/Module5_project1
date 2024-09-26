## @knitr setup

# define knitr options
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(warning = FALSE)
knitr::opts_chunk$set(message = FALSE)

# set any missing NAs in table to blank
options(knitr.kable.NA='')

# load R packages
library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)

## @knitr loadData

# load steak_survey dataset
data("steak_survey", package="fivethirtyeight")

# create subset, no missing NAs
# pick a specific region
sdat <- na.omit(steak_survey) %>%
  filter(region=="Mountain")
