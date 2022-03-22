Assignment 3: Linear Models, Generalized Linear Models, and Mixed Models
================
DAR
Spring 2022

### Introduction

Each student will answer the questions below that draw on concepts and
models we have discussed in linear modeling, generalized linear
modeling, and mixed modeling (random effects). **This assignment
accounts for 20% of your course grade.**

### Questions

#### Concepts

1.  Write a short paragraph about how to conceptualize a linear model,
    and use the terms: *units*, *predictors*, *response*, *linear
    predictor*, *error*. (5 points)
2.  Why is it important to understand the data-generating distribution
    (the assumed distribution of your data) as you go about selecting
    the appropriate model? (5 points)
3.  What is the difference between a means and effects parameterization?
    Answer in terms of the model matrix and the result. (5 points)

#### Linear Model

4.  Using the built-in data set `trees`, write a linear model that
    evaluates the effect of `Height` on `Volume`. (5 points)
5.  Describe how you evaluated the residuals and what your determination
    is about the residuals. (5 points)
6.  Try `Girth` instead of `Height` as the independent variable. Is
    `Girth` a better predictor than `Height`? Include how you interpret
    one predictor being **better** than another. (5 points)

#### Generalized Linear Model

7.  List 3 examples in your field of study where GLMs might be
    applicable. (This can be common data collected or common
    relationships examined in your research area.) In order to get full
    credit, for each example include each the specific type of GLM and
    why you selected that one. (10 points)
8.  You run a Poisson GLM and then (separately) an LM on a dataset with
    the response of species richness. Both models fit and the regression
    lines do not clearly suggest which is the better model. Which one do
    you use and why? (5 points)
9.  In the `Stat2Data` library, load the `LeveeFailures` data. Write a
    model for a GLM to evaluate the effect of `Sinuosity` on `Failure`.
    (5 points)
10. What is the sinuosity at which you have a 50% probability levee
    failure? (5 points)
11. Plot the data and the model. (5 points)

#### Random Effects and Mixed Models

12. List 3 examples in your field where random effects (or mixed models)
    might be applicable. (This can be common data collected or common
    relationships examined in your research area.) In order to get full
    credit, for each example include each the specific attribute(s) of
    the data that qualify it as such. (10 points)
13. Explain one admonition each for aggregating and disaggregating data.
    (5 points)
14. In the `Stat2Data` library, load the `Sparrows` data. Write a mixed
    model for the effect of `WingLength` on `Weight` that includes only
    a random slope. (5 points)
15. Is there evidence supporting a different relationship between
    `WingLength` on `Weight` by `Treatment`? (5 points)
16. Using a multipanel plot, show `Treatment`-specific relationships of
    the model in question 14. (5 points)
17. Examine the relationship in question 14 with a random intercepts
    model. Provide one reason why this may be a better model and one
    reason why this may not be a better model. (10 points)

### Deliverable

Your deliverable will be a write up of answers to each of the above
questions. Note that some questions require written answers, while
others may be addressed in bullet points, code, and/or figures. Number
your answers to correspond to the question or part of the question you
are addressing. Be thorough, but not redundant. Full credit will be
given for correct answers and reproducibility, and partial credit may be
given for either correct answers and reproducibility.

**Your assignment is due by 5pm on April 8, 2022; please upload your assignment to Box.**
