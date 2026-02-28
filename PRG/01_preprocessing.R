#################### Body Perception - Pre-manip ###################

# OBJECTIVE:
# Reconstruct the mapping between:
# - Avatar presented at each slot (VI03_01 ... VI03_12)
# - 72 ratings (PM01_01 ... PM72_01)
# Reshape the dataset into long format for statistical analyses.

### Libraries
library(readxl)
library(dplyr)
library(stringr)
library(openxlsx)
library(tidyr)
library(ggplot2)

### Set directory
PRG_PATH = dirname(rstudioapi::getSourceEditorContext()$path) 
PATH = dirname(PRG_PATH)
DAT_PATH = file.path(PATH, "DAT")
RAW_PATH = file.path(DAT_PATH, "raw")
CLEAN_PATH = file.path(DAT_PATH, "clean")

# Import raw data
file_name = "data_BodyPerception.xlsx"
file_path = file.path(RAW_PATH, file_name)
df_raw = read_excel(file_path)

ADJ = c("athletic", "average", "overweight", "obese", "thin", "skinny")

# VI columns
n_slots <- 12
n_adj <- 6
vi_cols = sprintf("VI03_%02d",1:n_slots )
pm_cols = sprintf("PM%02d_01", 1:(n_slots * n_adj))

# Safety check
stopifnot(all(vi_cols %in% names(df_raw)))
stopifnot(all(pm_cols %in% names(df_raw)))

# Meta columns (demographic, ID, etc.)
meta_cols = setdiff(names(df_raw), c(vi_cols, pm_cols))

# Function to get PM columns (ratings) for each slot (1..12)
get_pm_cols_for_slot <- function(s) {
  sprintf("PM%02d_01", ((s - 1) * n_adj + 1):(s * n_adj))
}

long_list = vector("list", n_slots)

# Loop
for (s in 1:n_slots) {
  avatar_col = sprintf("VI03_%02d", s)
  slot_pm    = get_pm_cols_for_slot(s)
  tmp_long = df_raw %>%
    select(all_of(meta_cols), all_of(avatar_col), all_of(slot_pm)) %>%
    rename(avatar = all_of(avatar_col)) %>%
    mutate(slot = s) %>%
    pivot_longer( #Reshape to long format
      cols = all_of(slot_pm),
      names_to = "pm_item",
      values_to = "note"
    ) %>%
    mutate(
      pm_num   = as.integer(str_match(pm_item, "^PM(\\d{2})_01$")[,2]), #Extract adjective
      adjectif = ADJ[((pm_num - 1) %% n_adj) + 1]
    ) %>%
    select(-pm_item, -pm_num)
  
  long_list[[s]] = tmp_long
}

# Bind all slots
ratings_long = bind_rows(long_list) %>%
  mutate(
    avatar   = as.character(avatar),
    adjectif = factor(adjectif, levels = ADJ)
  )

# Export cleaned data
# RData
save(ratings_long, file = file.path(CLEAN_PATH, "pre_manip_ratings.rdata"))

# CSV
write.csv(ratings_long,
          file = file.path(CLEAN_PATH, "pre_manip_ratings.csv"),
          row.names = FALSE)

# Excel
wb = createWorkbook()
addWorksheet(wb, "ratings_long")
writeData(wb, "ratings_long", ratings_long)
saveWorkbook(wb,
             file = file.path(CLEAN_PATH, "pre_manip_ratings.xlsx"),
             overwrite = TRUE)

# Sanity check 
print(head(ratings_long))
print(table(ratings_long$adjectif))
