---
title: "HW 1, CS 625, Fall 2022"
author: "Swati Mishra"
date: Sept 04, 2022
output: rmarkdown::github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Git, GitHub

1. *What is your GitHub username?*

2. *What is the URL of your remote GitHub repo (created through Mr. Kennedy's exercises)?*

## R

The command below will load the tidyverse package.  If you have installed R, RStudio, and the tidyverse package, it should display a list of loaded packages and their versions.
```{r}
library(tidyverse)
```

## R Markdown 

1. *Create a bulleted list with at least 3 items*

* Data visualization is the graphical representation of information  and data.
* By using visual elements like charts, graphs, and maps, data visualization tools provide an accessible way to see and understand   trends, outliers, and patterns in data. 
* In the world of Big Data, data visualization tools and technologies are essential to analyze massive amounts of information and make data-driven decisions.

2. *Write a single paragraph that demonstrates the use of italics, bold, bold italics, code, and includes a link. The paragraph does not have to make sense.*

**The importance of data visualization is simple:** 
  *It helps people see, interact with, and better understand data.* 
  ***Whether simple or complex*** 
  *the right visualization can bring everyone on the same page,* 
  `regardless of their level of expertise.`
*Example of Visualization can be found here*
[Examples of data visualization](https://www.tableau.com/learn/articles/data-visualization).

3. *Create a level 3 heading*

### "Data visualization is the language of decision making. Good charts effectively convey information. Great charts enable, inform, and improve decision making."

## R 

#### Data Visualization Exercises

1. (Q2) *How many rows are in mpg? How many columns?*
        There are 234 rows and 11 columns.
        *Syntax:* 
        ** nrow(mpg) # To find row count **
        ** ncol(mpg) # To find column count **

2. (Q3) *What does the drv variable describe? Read the help for ?mpg to find out.*
        The drv variable depicts the type of drive train, 
        *where f = front-wheel drive*, 
        *r = rear wheel drive*,
        *4 = 4wd*

3. (Q4) *Make a scatterplot of hwy vs cyl.*
       Below is the code for making scatterplot

```
ggplot(data = mpg)+ geom_point(mapping = aes(x = hwy, y = cyl))
```

#### Workflow: basics Exercises

1. (Q2) *Tweak each of the following R commands so that they run correctly (`library(tidyverse)` is correct):*

```r
library(tidyverse)
ggplot(dota = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

fliter(mpg, cyl = 8)

filter(diamond, carat > 3)
```
Below is the updated code:
```
library(tidyverse)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
filter(mpg, cyl == 8)
filter(mpg, cyl > 3)
```
*Explaination:*
* The ggplot function argument name is mis-spelled it should be data not dota.
* Funtion filter() is not defined properly and also the operator is not used correctly it should be filter() instead of fliter() and == instead of = .
* Correct dataset and column variable is not defined inorder to filter the data. Dataset is mpg not diamond and the column name is cyl not carat.

## Google Colab

1. *What are the URLs of your Google Colab notebooks (both Python and R)?*

## Tableau

*Insert your the image of your final bar chart here*

1. *What conclusions can you draw from the chart?*

## Observable and Vega-Lite

### A Taste of Observable

1. *In the "New York City weather forecast" section, try replacing `Forecast: detailedForecast` with `Forecast: shortForecast`. Then press the blue play button  or use Shift-Return to run your change. What happens?*

1. *Under the scatterplot of temperature vs. name, try replacing `markCircle()` with `markSquare()`. Then press the blue play button  or use Shift-Return to run your change. What happens? How about `markPoint()`?*

1. *Under "Pick a location, see the weather forecast", pick a location on the map.  Where was the point you picked near?*

1. *The last visualization on this page is a "fancy" weather chart embedded from another notebook.  Click on the 3 dots next to that chart and choose 'Download PNG'.  Insert the PNG into your report.*

### Charting with Vega-Lite

`markCircle()`

1. *Pass an option of `{ size: 200 }` to `markCircle()`.*
1. *Try `markSquare` instead of `markCircle`.*
1. *Try `markPoint({ shape: 'diamond' })`.*

`vl.x().fieldQ("Horsepower")`, ...

1. *Change `Horsepower` to `Acceleration`*
1. *Swap what fields are displayed on the x- and y-axis*

`vl.tooltip().fieldN("Name")`

1. *Change `Name` to `Origin`.*

Another example, `count()`

1. *Remove the `vl.y().fieldN("Origin")` line.*
1. *Replace `count()` with `average("Miles_per_Gallon")`.*

## References

*Every report must list the references that you consulted while completing the assignment. If you consulted a webpage, you must include the URL.*

* Insert Reference 1, https://www.example.com
* Insert Reference 2, https://www.example.com/reallyreallyreally-extra-long-URI/
