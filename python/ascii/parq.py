import polars as pl
import zipfile

def unzip(file:str = "py-ascii-2022.zip"):
    with zipfile.ZipFile(file, "r") as zip_ref:
        zip_ref.extractall("py-ascii-2022")

unzip()