library(pins)
#local board
board1 <- board_local()
board1
# Pin board <pins_board_folder>
# Path: '~/Library/Application Support/pins'

#write some pins
board1 %>% pin_write(mtcars)
board1 %>% pin_write(faithful)
board1 %>% pin_write(palmerpenguins::penguins, name = "penguins", versioned = TRUE)

#what do we have?
board1 %>% pin_list()
# [1] "faithful" "mtcars"   "penguins"

#read the pin
board1 %>% pin_read("mtcars")

#list versions
board1 %>% pin_versions("penguins")
# A tibble: 2 × 3
#   version                created             hash
#   <chr>                  <dttm>              <chr>
# 1 20211207T005403Z-84255 2021-12-06 16:54:00 84255
# 2 20211207T005855Z-84255 2021-12-06 16:58:00 84255
