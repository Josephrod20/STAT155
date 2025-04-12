# README

# **Narrative**

## **Research Question**

*“Does algorithmic decision-making in U.S. mortgage approvals systematically disadvantage Black and Hispanic applicants compared to White applicants with identical financial qualifications, and how do these disparities vary by geographic region?”*

**Motivation**

1.  **The Wealth Gap Crisis**

    -   Housing is the primary driver of generational wealth in the U.S., yet Black families hold only 15% of the median wealth of White families. ([NCRC](https://ncrc.org/the-racial-wealth-divide-and-black-homeownership-new-data-show-small-gains-deep-fragility/))

    -   Algorithmic underwriting tools, now used in 90%+ of mortgage approvals ([Urban Institute, 2023](https://www.urban.org/sites/default/files/2023-11/Harnessing%20Artificial%20Intelligence%20for%20Equity%20in%20Mortgage%20Finance.pdf)), risk automating historical redlining practices.

2.  **Digital Redlining**

    -   Digital redlining refers to the use of biased algorithms that replicate and amplify historical inequities, often under the guise of “neutral” data-driven decisions. While traditionally linked to housing discrimination, this practice now pervades industries like healthcare, hiring, and advertising.These systems inherit biases from flawed historical data and lack transparency, allowing organizations to sidestep accountability while perpetuating systemic harm.

3.  **Regulatory Gaps**

    -   While laws like the Equal Credit Opportunity Act (ECOA) prohibit overt discrimination, they were designed for an era of human decision-making, not opaque algorithms. Current regulations lack clear standards for auditing AI-driven lending tools, and enforcement agencies struggle to hold lenders accountable when biases emerge from “black box” systems. Without requirements for transparency or bias testing, lenders can deny responsibility by claiming their algorithms are “neutral” — even when outcomes disproportionately harm marginalized groups.

## **Hypotheses**

1.  **Racial Disparities in Approval Rates:**

    *Black applicants are at least 30% more likely to be denied conventional mortgages than White applicants with identical credit scores (≥700) and debt-to-income ratios (≤43%), even when controlling for income.*

2.  **Geographic Variation in Bias:**

    *Racial disparities in mortgage denials are 50% larger in Southern U.S. states (e.g., Texas, Florida) compared to Midwestern states (e.g., Illinois, Ohio)*

3.  **Compounded Bias for Black Women:**\
    *Black women experience 40% higher denial rates than White men at identical income tiers.*

# The Data

## Data set

**Source**: [2023 HMDA Data](https://ffiec.cfpb.gov/data-browser/)

**Original Data Dict.** : [2023 HDMA Data Dict](https://ffiec.cfpb.gov/documentation/publications/loan-level-datasets/lar-data-fields)\
**Number of observations: 3,134,392**

**Number of variables: 100**

This dataset is a filtered and cleaned version of the original HMDA (Home Mortgage Disclosure Act) dataset. It includes only loan applications where the decision was either approved (\`action_taken = 1\`) or denied (\`action_taken = 3\`), and includes a derived binary column \`approved\` (1 = approved, 0 = denied).

**Data Dictionary (Selected Variables)**

| Variable | Description |
|----|----|
| action_taken | Code for loan action taken (1 = Approved, 3 = Denied) |
| approved | Binary flag added during preprocessing (1 = Approved, 0 = Denied) |
| applicant_race-1 | Race of the primary applicant (e.g., 1 = White, 2 = Black or African American) |
| applicant_ethnicity-1 | Ethnicity of the primary applicant (e.g., Hispanic or Latino, Not Hispanic) |
| income | Applicant’s reported annual income |
| loan_amount | Amount of the loan requested |
| loan_type | Type of loan (e.g., conventional, FHA, VA) |
| state_code | State code for property location |
| derived_msa-md | Metropolitan Statistical Area / Metropolitan Division code |
| applicant_sex | Sex of the primary applicant (1 = Male, 2 = Female, 4 = Not Provided, etc.) |
