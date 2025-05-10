# ascii data exist?
if (!fs::file_exists(ASCII_FILE_PATH)) cli::cli_alert_danger("No ASCII Data.")

# read ascii
# TODO: use data dictionary to specify
# for now just do a cold read for testing

brffs <-
  readr::read_fwf(ASCII_FILE_PATH)

# TODO: implement minimally viable wrangle
# TODO:  save to parquet file in data_prooduct/
