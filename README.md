<!-- README.md is generated from README.Rmd. Please edit that file -->
An R Package for J.K. Rowling's Harry Potter Series
---------------------------------------------------

This package provides access to the full texts of the first seven Harry Potter books. The UTF-8 plain text for each novel was sourced from [Read Vampire Books](www.readbooksvampire.com), processed a bit, and is ready for text analysis. Each text is in a character vector with each element representing a single chapter. The package contains:

-   `philosophers_stone`: Harry Potter and the Philosophers Stone, published in 1997
-   `chamber_of_secrets`: Harry Potter and the Chamber of Secrets, published in 1998
-   `prisoner_of_azkaban`: Harry Potter and the Prisoner of Azkaban, published in 1999
-   `goblet_of_fire`: Harry Potter and the Goblet of Fire, published in 2000
-   `order_of_the_phoenix`: Harry Potter and the Order of the Phoenix, published in 2003
-   `half_blood_prince`: Harry Potter and the Half-Blood Prince, published in 2005
-   `deathly_hallows`: Harry Potter and the Deathly Hallows, published in 2007

Installation
------------

You can install `harrypotter` from GitHub:

    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }

    devtools::install_github("bradleyboehmke/harrypotter")
