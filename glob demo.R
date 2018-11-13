# try
library(tidyverse)
data.frame(files = Sys.glob("data/*.txt")) %>% separate(files, into = c(NA, "name", NA))

Sys.glob("data/1*.txt")

Sys.glob("data/??.txt")
