library(pins)
#local board
board1 <- board_local()
board1



#write some pins
board1 %>% pin_write(mtcars)
board1 %>% pin_write(faithful)
board1 %>% pin_write(palmerpenguins::penguins, name = "penguins", versioned = TRUE)

#what do we have?
board1 %>% pin_list()


#search
board1 %>% pin_search("cars")

#read the pin
board1 %>% pin_read("mtcars")

#list versions
board1 %>% pin_versions("penguins")

