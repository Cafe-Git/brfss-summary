raw_csv <-
  readr::read_csv(
    file = fs::path_wd("data", "variable-layout-2022", ext = "csv")
  ) |>
  dplyr::rename(
    col_start = `Starting Column`,
    var_name = `Variable Name`,
    length = `Field Length`
  )

nanoparquet::write_parquet(
  raw_csv,
  file = fs::path_wd("data", "variable-layout-2022", ext = "parquet")
)
