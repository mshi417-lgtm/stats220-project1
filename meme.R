# Load required libraries
library(tidyverse)
library(magick)

# Read image from URL
img <- image_read("https://i.imgflip.com/30b1gx.jpg")

# Add text to create meme
meme <- img %>%
  image_annotate("WHEN YOUR CODE HAS NO ERRORS",
                 size = 45,
                 color = "white",
                 strokecolor = "black",
                 gravity = "north",
                 location = "+0+20") %>%
  image_annotate("AND YOU DON'T KNOW WHY",
                 size = 45,
                 color = "white",
                 strokecolor = "black",
                 gravity = "south",
                 location = "+0+20")

# Save the meme image
image_write(meme, "my_meme.png")