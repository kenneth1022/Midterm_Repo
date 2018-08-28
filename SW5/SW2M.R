library(imager)
library(magick)


Pic1 <- load.image("augimg/Pic1.jpg") 
plot(Pic1)

Pic2 <- load.image("augimg/Pic2.jpg") 
plot(Pic2)

Pic3 <- load.image("augimg/Pic3.jpg")
plot(Pic3)

#1 RESIZE IMAGER
#library = imager resize image local
resizeimg <- function(img,height,width){
Rsize <- resize(img, size_x = height, size_y = width)
save.image(im = Rsize,"augimg/resizePic1.jpg")
plot(Rsize)
}

resizeimg(Pic1,50,50)

#2 GRAYSCALE IMAGER
#library = imager grayimg local
Picgray <- function(img,x){
  is.logical(x)
if(x==TRUE){
  Ken <- grayscale(img)
  Ken1 <- save.image(Ken,"augimg/Pic2gray.jpg")
  plot(Ken)
} else{
  plot(img)
}
}
#3 gray 
Picgray(Pic2,TRUE)
Picgray(Pic2,FALSE)




#4 INVERTION IMAGER
#library = imager invertion of img local
inverted <- function(im,angle){
  Iimg <- imrotate(im,angle)
  Iimg1 <- save.image(Iimg,"augimg/Pic3inverted.jpg")
  plot(Iimg)
}
inverted(Pic3,150)



#library = magick web resize

#5 DISPLAY MAGICK
Pin <- magick::image_read("https://glutensugardairyfree.com/wp-content/uploads/gsd-pineapple-whole.png")
Pin

#6 RESIZE MAGICK 
jksl <- function(img,W,H){
  jk <- image_resize(img, geometry_size_pixels(width = W, height = H, preserve_aspect = FALSE))
  jk
}
jksl(Pin,400,150)





