# try
library(tidyverse)
data.frame(files = Sys.glob("data/*.txt")) %>% separate(files, into = c(NA, "name", NA))

Sys.glob("data/1*.txt")

Sys.glob("data/??.txt")


samples <- tibble(files = Sys.glob("data/*/summary.txt")) %>% separate(files, into = c(NA, "name", NA), sep = "/", remove = F)

summaries <- list()
for (i in 1:nrow(samples)) {
  summaries[[i]] <- read_table(as.character(samples[i, "files"]), skip = 3, col_types = "cc-c-")
}