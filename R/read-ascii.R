# TODO: add helper function that will read the zips, unzip and create parqs
# just to have for funsies

# ascii data exist?
ascii_file_path <- fs::path_wd("data", "brfss-2022-ascii", ext = "asc")
if (!fs::file_exists(ascii_file_path)) cli::cli_alert_warning("No ASCII Data.")

# layout file exist?
layout_path <- fs::path_wd("data", "variable-layout-2022", ext = "parquet")
if (!fs::file_exists(layout_path)) cli::cli_alert_warning("No layout Data.")

layout <-
  nanoparquet::read_parquet(layout_path) |>
  dplyr::mutate(
    width = lead(col_start) - col_start
  ) |>
  dplyr::filter(width > 0)

brfss <-
  readr::read_fwf(
    file = ascii_file_path,
    guess_max = 5000L,
    readr::fwf_widths(
      widths = layout$width,
      col_names = layout$var_name
    )
  )

# save to parquet with column names, but raw values - for now
brfss_path <- fs::path_wd("data", "brfss-2022", ext = "parquet")
nanoparquet::write_parquet(brfss, brfss_path)
