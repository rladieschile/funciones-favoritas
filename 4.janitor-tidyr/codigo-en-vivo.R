library(readxl)
library(janitor)
library(tidyr)

ejemplo <- read_excel("ejemplo.xlsx", skip = 1) %>% 
  remove_empty(c("cols", "rows")) %>% 
  fill(c("REGIÓN RESIDENCIA HABITUAL", "CÓDIGO REGIÓN")) %>% 
  pivot_longer(cols = PERÚ:"PAÍS DE NACIMIENTO NO DECLARADO",
               names_to = "origen",
               values_to = "n") %>% 
  clean_names()

head(ejemplo)
