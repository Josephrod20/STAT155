# Load necessary libraries
library(readr)
library(dplyr)

# Load raw data (fast and tidy-friendly)
data <- read_csv("Project1/HMDA_raw.csv")

# Filter rows where action_taken is 1 (approved) or 3 (denied)
data_clean <- data %>%
  filter(action_taken %in% c(1, 3)) %>%
  mutate(approved = ifelse(action_taken == 1, 1, 0))

# Create and save cleaned data
write.csv(data_clean, "HMDA_clean.csv", row.names = FALSE)
print("Data cleaned and saved!")
