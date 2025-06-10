# Final Portfolio: Analyzing Mortgage Lending Fairness in the U.S.

This portfolio investigates racial, ethnic, and regional disparities in U.S. mortgage lending outcomes. Using 2023 HMDA data, the analysis spans from exploratory data analysis to predictive modeling and Monte Carlo simulation, aiming to understand potential bias and digital redlining practices.

## Research Question

**Do race, ethnicity, and region independently influence the probability of mortgage approval, even after accounting for applicant financial and neighborhood characteristics?**

## Repository Structure

```         
/FinalPortfolio/
├── Project1/
│   ├── readme.qmd or README.md
│   ├── data/
│   ├── data_dictionary.md
│   └── data prep scripts
├── Project2/
│   └── eda.qmd
├── Project3/
│   └── model.qmd
├── Project4/
│   ├── project4_lastname_firstname.pdf
│   └── project4_simulation_lastname_firstname.qmd
├── presentation.pdf
├── written_report.pdf
├── README.md               <-- this file
└── FinalProject.Rproj
```

## How to Reproduce Each Project

### Prerequisites

Install required R packages:

``` r
install.packages(c("tidyverse", "broom", "ggplot2", "readr"))
```

### Step-by-Step Execution

1.  Clone or download this repository.
2.  Place `HMDA_clean.csv` in the root or `Project1/data/` folder as required.
3.  Knit the following `.qmd` files for each stage:

-   **Project 1:** Read the narrative and data dictionary in `Project1/`
-   **Project 2 (EDA):** Knit `Project2/eda.qmd`
-   **Project 3 (Modeling):** Knit `Project3/model.qmd`
-   **Project 4 (Simulation):** Knit `Project4/project4_simulation_lastname_firstname.qmd`

4.  Optionally, review the final compiled PDFs:
    -   `presentation.pdf`\
    -   `written_report.pdf`\
    -   `project4_lastname_firstname.pdf`

## Links to Relevant Files

-   📁 `Project1/` → Dataset, data dictionary, narrative
-   📁 `Project2/eda.qmd` → Exploratory Data Analysis
-   📁 `Project3/model.qmd` → Logistic regression model
-   📁 `Project4/project4_simulation_lastname_firstname.qmd` → Monte Carlo study
-   📄 `presentation.pdf`, `written_report.pdf` → Final deliverables

## Session Info

Paste the output of the following to document package versions:

``` r
sessionInfo()
```

**Example Output:**

```         
R version 4.3.1 (2023-06-16)
Platform: x86_64-apple-darwin20 (64-bit)
Packages:
- tidyverse 2.0.0
- broom 1.0.5
- ggplot2 3.4.3
- readr 2.1.4
```

------------------------------------------------------------------------

This README provides an overview and instructions for fully navigating and reproducing the final portfolio. Each project builds on the last to offer a complete investigation into fairness in mortgage lending across the U.S.
