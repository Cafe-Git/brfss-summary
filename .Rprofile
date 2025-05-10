# startup renv package
source("renv/activate.R")

# inform humans
rlang::inform("Setting up environment per `renv` and repo .Rprofile.")

# basic r library
library(tidyverse) |> suppressPackageStartupMessages()
library(fs)
library(reticulate)
conflicted::conflict_prefer_all(winner = "tidyverse", quiet = TRUE)

# setting up python polars
reticulate::py_require("polars")
pl <- import("polars")

# fin
rlang::inform("setup finished.")
