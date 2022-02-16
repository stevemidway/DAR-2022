Exercise 4: The tidyverse
================
DAR Lab
Spring 2022

## The `tidyverse`

The `tidyverse` is a family of packages written and developed by Hadley
Wickham, in order to provide advanced and consistet functionality to
`R`. Many of the things in the `tidyverse` can be done in base `R` or
with other packages; however, packages and functions within `tidyverse`
offer new and often more efficent ways to do them. See an overview of
`tidyverse` packages [here](https://www.tidyverse.org/packages/).
Information and cheat sheets to all the `tidyverse` packages can be
found at that website.

You can load all the tidyverse packages with the following commands:

``` r
install.packages("tidyverse")
library(tidyverse)
```

1.  `tidyr` is a useful package for manipulating large dataframes into
    more usable formats. Consider the dataset created below. That
    dataset may be better off without individual `years` as columns
    headers, and rather one single `year` column with year values in
    that column. Use the `gather()` function (or `pivot_longer()`) to
    turn the following dataframe into one with a single column for
    `year`. Note: this is also referred to as making wide data narrow.

``` r
Species <- c(rep("A",3),rep("B",3),rep("C",3))
setseed(16)
Year2017 <- rpois(n = 9, lambda = 1)
Year2018 <- rpois(n = 9, lambda = 3)
Year2019 <- rpois(n = 9, lambda = 5)
Year2020 <- rpois(n = 9, lambda = 7)
wide.df <- as.data.frame(cbind(Species, Year2017, Year2018, Year2019, Year2020))
```

2.  The `stringr` library has a lot of good functions for dealing with
    strings, which are defined as any values that are bound by single or
    double quotations. The `str_sub()` function is useful for modifying
    strings. For example, in the database you gathered for the question
    above, you successfully created a column for year, but the term
    `year` was still appended to the date, making it a (character)
    string. It is likely you would want to use the numeric date. Use the
    `str_sub()` function to remove the term `Year` from data in the
    `Year` column.

3.  We discussed `dplyr` in class and reviewed some of its functions.
    Continuing with the dataframe in this exercise, use the
    `summarise()` function to report the mean number of each `species`
    for each `Year`. You may want to consider the `group_by()` function
    as well.

4.  Finally, `ggplot` is the well known `tidyverse` package for
    plotting. Consider an appropriate plot type to show species `Counts`
    plotted against `Year`. Add some information, like color or shape,
    to indicate specific species. You are welcome to play with other
    `ggplot` themes, aesthetics, etc.

**To complete this Exercise, please answer all questions showing code
and appropriate output. I don’t have to see everything (code and output)
if the output is correct and you are comfortable with what you coded.
But you are welcome to share anything you would like me to review.
Please upload an RMarkdown-rendered document to Box by 5pm Tuesday,
February 22, 2021.**
