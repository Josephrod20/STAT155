# Load necessary libraries
library(readr)
library(dplyr)

# Load raw data (fast and tidy-friendly)
data <- read_csv("Project1/data/HMDA_raw.csv")

# Filter rows where action_taken is 1 (approved) or 3 (denied)
data_clean <- data %>%
  filter(action_taken %in% c(1, 3)) %>%
  mutate(approved = ifelse(action_taken == 1, 1, 0))

# Create and save cleaned data
write.csv(data_clean, "HMDA_clean.csv", row.names = FALSE)
print("Data cleaned and saved!")

# Take a random sample of 1000 rows
set.seed(123)  # For reproducibility
sample_data <- data_clean[sample(nrow(data_clean), 1000), ]

# Save the sample as a new CSV
write.csv(sample_data, "mortgage_sample.csv", row.names = FALSE)
