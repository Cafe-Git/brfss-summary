# startup renv package
source("renv/activate.R")

# inform humans
cli::cli_alert_info("Setting up environment per `renv` and repo .Rprofile.")

# basic r library
cli::cli_alert_info("Attaching Libraries to NAMESPACE.")
library(tidyverse) |> suppressPackageStartupMessages()
library(fs)
library(reticulate)
cli::cli_alert_warning("All NAMESPACE conflicts will prefer the tidyverse")
conflicted::conflict_prefer_all(winner = "tidyverse", quiet = TRUE)

# setting up python polars
cli::cli_alert_info("Importing Python Polars")
reticulate::py_require("polars")
pl <- import("polars")

# fin
cli::cli_alert_success("Setup finished.")
