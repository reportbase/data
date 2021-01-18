#left,top      right,bottom
convert 004.000.webp -crop +100+15 -crop -0-15 004.000a.webp
convert 004.001.webp -crop +100+15 -crop -0-15 004.001a.webp
convert 004.002.webp -crop +100+0 -crop -0-30 004.002a.webp
convert  004.000a.webp 004.001a.webp +append 008.000.webp



