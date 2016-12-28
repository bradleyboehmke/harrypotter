# This is the script used to download the Harry Potter text files and add
# them to the harrypotter package

library(tidyverse)
library(rvest)
library(XML)


# this function takes the full book name and the number of chapters in the book
# and scrapes & cleans the data and returns the clean text in a vector with each
# element containing a chapter of the book
readBook <- function(bookName, Chapters){

  for (lesson in 01:Chapters){

    if(lesson %in% 1:9) {
      bk1 <- read_html(paste("http://www.readbooksvampire.com/J.K._Rowling/",
                             bookName, "/0", lesson, ".html", collapse = NULL,
                             sep=''))
      fl1 <- bk1 %>%
        html_nodes("td") %>%
        html_text()

      lsn <- fl1[5] %>%
        gsub("[\r\n]+", "", .) %>%
        gsub('^"',"",.) %>%
        gsub('"$',"",.)

    }
    else {
      if(lesson %in% 10:Chapters) {
        bk1 <- read_html(paste("http://www.readbooksvampire.com/J.K._Rowling/",
                               bookName, "/", lesson, ".html", collapse = NULL,
                               sep=''))
        fl1 <- bk1 %>%
          html_nodes("td") %>%
          html_text()

        lsn <- fl1[5] %>%
          gsub("[\r\n]+", "", .) %>%
          gsub('^"',"",.) %>%
          gsub('"$',"",.)
      }
    }

    gkz <- c(gkz, lsn)

  }

  gkz
}

# scrape each book --> yes, I should've automated this but eh.
gkz <- vector()
philosophers_stone <- readChapter("Harry_Potter_and_the_Philosophers_Stone", 17)
gkz <- vector()
chamber_of_secrets <- readChapter("Harry_Potter_and_the_Chamber_of_Secrets",19)
gkz <- vector()
prisoner_of_azkaban <- readChapter("Harry_Potter_and_the_Prisoner_of_Azkaban",22)
gkz <- vector()
goblet_of_fire <- readChapter("Harry_Potter_and_the_Goblet_of_Fire",37)
gkz <- vector()
order_of_the_phoenix <- readChapter("Harry_Potter_and_the_Order_of_the_Phoenix",38)
gkz <- vector()
half_blood_prince <- readChapter("Harry_Potter_and_the_Half-Blood_Prince",30)
gkz <- vector()
deathly_hallows <- readChapter("Harry_Potter_and_the_Deathly_Hallows",37)
gkz <- vector()

## Now, add the data files to the package
devtools::use_data(philosophers_stone, overwrite = TRUE)
devtools::use_data(chamber_of_secrets, overwrite = TRUE)
devtools::use_data(prisoner_of_azkaban, overwrite = TRUE)
devtools::use_data(goblet_of_fire, overwrite = TRUE)
devtools::use_data(order_of_the_phoenix, overwrite = TRUE)
devtools::use_data(half_blood_prince, overwrite = TRUE)
devtools::use_data(deathly_hallows, overwrite = TRUE)
