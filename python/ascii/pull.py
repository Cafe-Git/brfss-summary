from urllib.request import urlretrieve


def pull(url:str = "https://www.cdc.gov/brfss/annual_data/2022/files/LLCP2022ASC.zip", 
        file:str = "py-ascii-2022.zip"):
    urlretrieve(url, file)
    return file
    