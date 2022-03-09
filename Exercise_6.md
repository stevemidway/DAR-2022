Exercise 6 and 7: Linear Modeling
================
DAR Lab
Spring 2022

## Modeling Secchi Depth of Adirondack Lakes

This exercise is designed to model an open source data set that examines
water quality of lakes in the Adirondack region of New York, USA.

*Huge Disclaimer: Anytime you are dealing with temporal data, data in
which time is a factor, or in which your predictor is a measure of time,
you should strongly consider a time series model. We are overlooking
this as a modeling option for this data and will use a linear
regression.*

First, we need to load the library that contains the data

``` r
library("adklakedata")
```

The `adk_data()` function contains a lot of different data sets
pertaining to the lakes. Feel free to look up the function to see what
data it contains. Let’s look at the Secchi depth, which is a measure of
water clarity. More about Secchi depth can be learned
[here](https://en.wikipedia.org/wiki/Secchi_disk#Secchi_depth), in
addition to the fact that the Secchi disc is named after an Italian
astronomer—how fun is that!

``` r
secchi <- adk_data('secchi')
head(secchi)
```

    ##   PERMANENT_ID lake.name       date year month day secchi
    ## 1    131843856 Big Moose 1994-06-30 1994     6  30    3.8
    ## 2    131843856 Big Moose 1994-07-25 1994     7  25    5.2
    ## 3    131843856 Big Moose 1994-08-30 1994     8  30    6.1
    ## 4    131843856 Big Moose 1995-06-20 1995     6  20    5.0
    ## 5    131843856 Big Moose 1995-08-07 1995     8   7    5.0
    ## 6    131843856 Big Moose 1995-09-12 1995     9  12    5.8

The `secchi` data contains information about the measurements, along
with the measurements. There are only a few measurements per lake per
year, so let’s combine all the lakes.

We want to ask 2 ecological questions that can be addressed with a
linear model.

#### 1. When pooling across all lakes and all years (i.e., not taking into account individual lakes or years), does Secchi depth increase, decrease, or not change throughout the summer months (June–September)?

To answer this question, consider (A) a linear model where summer months
are a *continuous predictor*. Evaluate the residuals and model fit, and
report on the slope, or the effect of time, to draw inference on whether
water clarity significantly changes throughout the summer. Whether it
does or does not change, next (B) examine a model where month is a
*factor*. Although a linear trend in water quality may be reasonable to
assume over such a short time period, treating month as a factor will
allow each month to have its own mean that can be comapred to other
months. This model will not pick up a trend, but it would allow, for
example, the middle months to be higher or lower and for that effect to
be detected. Again, evalute the residuals and model fit, and any
reported significance.

#### 2. When pooling across all lakes and all months (i.e., not taking into account individual lakes or months), does Secchi depth increase, decrease, or not change throughout the years in the data (1994–2012)?

Now we want to move past the within-year trend and look at long-term
trends across years represented in the data. For this, consider a linear
model of secchi measurements with the *continuous* predictor of year.
Evaluate the model residuals and model fit, and whether any significance
is reported. How is significance interpreted?

**Deliverable: Please complete Questions 1 and 2 by running and
reporting the appropriate models and results. Ultimately, just a few
models need to be run and reporting can be concise. However, you are
welcome to include a figure or any other information you find useful or
helps support your findings. Please upload to Box an RMarkdown-rendered
file by 5pm Tuesday, March 22, 2022.**
