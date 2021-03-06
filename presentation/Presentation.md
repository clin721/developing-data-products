Developing Data Products - Course Project
========================================================
author: Christopher Lin
date: 8/18/17
autosize: true

Overview
========================================================

The following project is a Shiny application as part of the Developing Data Products coursera class.

- This project was made using the [Shiny](https://www.shinyapps.io/) library in R
- The application can be found [here](https://clin721.shinyapps.io/simple_stats/)
- The source code for this project is located on this [github repo](https://github.com/clin721/developing-data-products) 


Application Description
========================================================

This application lets you create a normal distribution with 100-200 samples in it and set the seed used by R from 1-2000. 

Once those parameters are set, it plots a histogram showing the distribution of points along with some descriptive statistics for the population like the mean, standard deviation, and standard error of the mean.

Screenshot of Application
========================================================
![](image.png)


Example Code
========================================================


```r
set.seed(1)
x = rnorm(150)
mean(x)
```

```
[1] 0.0217631
```

```r
sd(x)
```

```
[1] 0.9041799
```
