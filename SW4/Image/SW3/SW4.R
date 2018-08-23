library(imager)
library(magick) 

#Reading the Image 

library(imager)
fpath <- system.file('exdata/Pic2.jpg', package = 'imager')
Ken <- load.image("Pic2.jpg")
plot(Ken)

# Resizing image 
library(imager)
z = load.image("Pic2.jpg")
y = resize (z, size_x = 250, size_y = 250)
save.image (im = y, "Pic2.jpg")
Pic1 <- load.image("Pic2.jpg")
plot(Pic1)

#Reading the Image true web 
library(magick)
Ken<- image_read('http://cnnphilippines.com/incoming/ml23y2-boracay_CNNPH.jpg/alternates/FREE_640/boracay_CNNPH.jpg')
print(Ken)

x <- image_resize(Ken, "300")
x
