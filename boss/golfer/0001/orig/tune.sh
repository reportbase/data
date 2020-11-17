# colorboost 50
for image in sized/*.jpg ; do colorboost $image tuned/$(basename -- "$image"); done
#cp sized/*.jpg tuned
 

 
