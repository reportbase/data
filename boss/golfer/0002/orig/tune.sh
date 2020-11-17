# colorboost 50
for image in sized/*.JPG ; do colorboost $image tuned/$(basename -- "$image"); done
#cp sized/*.jpg tuned
 

 
