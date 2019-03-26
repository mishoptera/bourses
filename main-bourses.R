# Author: Misha Leong
# Date: March 2019
# Project: Compare scenarios for Bourses Scolaires
# https://sanfrancisco.consulfrance.org/spip.php?article3860


# *************************************************************
# FIRST THINGS FIRST
# *************************************************************
# load libraries
library(tidyverse)


# *************************************************************
# EQUATIONS
# *************************************************************
# Rn is base salary minus dedeductable charges. We think for 2017
# this calculated value would be 70,000. Let's look at it as a range from
# 40,000 to 100,000.

# 60000 is cost for 2 kids. 3 is "le nombre de part"
# 121 is SF cost of living, 0.86 is Euro conversion

Rn <- 110000

Qp <- (((Rn - 60000)/3) * 100) / 121 * 0.86

BP <- (1 - ((Qp - 23000/7)/(23000 - 23000/7))) * 100
BP

