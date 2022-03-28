Modeling Exercise
================
DAR Lab
Spring 2022

**Libraries we need for the following code.**

``` r
library(Stat2Data)
library(tidyverse)
library(MASS)
library(adklakedata)
library(lme4)
```

# Model 1

Use the `BirdNest` data from the `Stat2Data` library in R.

#### Question

The question you need to answer is **do open vs closed nest types differ
in their mean days of total care?**

Determine which model we have discussed in class would be best to
analyze the data to answer the question. You are strongly encourage to
visualize the data.

# Model 2

Use the `BirdNest` data from the `Stat2Data` library in R.

#### Question

The question this model answers is **do 4 different nest types differ in
their mean days of total care?**

For simplicity and clarity only consider `conif`, `decid`, `ground`, and
`shrub` nest types.

Determine which model we have discussed in class would be best to
analyze the data to answer the question. You are strongly encourage to
visualize the data.

# Model 3

Use the `BirdNest` data from the `Stat2Data` library in R.

#### Question

The question this model answers is **does the mean body length of birds
effect the number of eggs produced?**

Make sure to treat the number of eggs as an integer.

Determine which model we have discussed in class would be best to
analyze the data to answer the question. You are strongly encourage to
visualize the data.

# Model 4

Use the `Melanoma` data from the `Mass` library in R.

#### Question

The question this model answers is **whether age or thickness is a
better predictor for the presence of an ulcer?**

Determine which model we have discussed in class would be best to
analyze the data to answer the question. You are strongly encourage to
visualize the data.

# Model 5

Use the `nutrient` data from the `adklakedata` library in R.

#### Question

The question this model answers is **among lakes, does phosphorus in the
summer increase, decrease, or remain the same over time (years)?**

Note that Phosphorus is in micrograms per liter and summer means July
and August. Please transform the year by subtracting the minimum value
from each year (why is this done?) and log transform the phosphorus
values.

Determine which model we have discussed in class would be best to
analyze the data to answer the question. You are strongly encourage to
visualize the data.
