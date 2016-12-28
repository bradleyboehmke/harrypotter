<!-- README.md is generated from README.Rmd. Please edit that file -->
An R Package for J.K. Rowling's Harry Potter Series
---------------------------------------------------

This package provides access to the full texts of the first seven Harry Potter books. The UTF-8 plain text for each novel was sourced from [Read Vampire Books](www.readbooksvampire.com), processed a bit, and is ready for text analysis. Each text is in a character vector with each element representing a single chapter. The package contains:

-   philosophers\_stone: Harry Potter and the Philosophers Stone, published in 1997
-   chamber\_of\_secrets: Harry Potter and the Chamber of Secrets, published in 1998
-   prisoner\_of\_azkaban: Harry Potter and the Prisoner of Azkaban, published in 1999
-   goblet\_of\_fire: Harry Potter and the Goblet of Fire, published in 2000
-   order\_of\_the\_phoenix: Harry Potter and the Order of the Phoenix, published in 2003
-   half\_blood\_prince: Harry Potter and the Half-Blood Prince, published in 2005
-   deathly\_hallows: Harry Potter and the Deathly Hallows, published in 2007

Installation
------------

You can install harrypotter two ways.

-   Using the latest released version from CRAN:

<!-- -->

    install.packages("harrypotter")

-   Using the latest development version from GitHub:

<!-- -->

    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }

    devtools::install_github("bradleyboehmke/harrypotter")
