# for humans
cli::cli_alert_info("Downloading and unzipping 2022 BRFSS ASCII data.")

# destination file/path
path <- fs::path_wd("data", "ascii-2022-data", ext = "zip")

# Download zip folder
download_result <-
  download.file(
    url = "https://www.cdc.gov/brfss/annual_data/2022/files/LLCP2022ASC.zip",
    destfile = path,
    quiet = TRUE
  )

if (download_result > 0) cli::cli_alert_danger("Cannot download file.")

# Unzip folder
unzip_result <- utils::unzip(zipfile = path, exdir = fs::path_wd("data"))
if (is.null(unzip_result)) cli::cli_alert_danger("Cannot unzip file.")

# File Reorganization
# delete zipped folder
fs::file_delete(path)

# rename ascii file
fs::file_move(
  fs::as_fs_path(unzip_outcome),
  fs::path_wd("data", "brfss-2022-ascii.asc")
)

cli::cli_alert_success(
  "BRFSS data successfully downdloaded and unzipped to {fs::path_wd('data/brss-2022-ascii.asc')}"
)
