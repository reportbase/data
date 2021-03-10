0032.jpg 2295 1575 1.45714
0082.jpg 2278 1584 1.43813
0059.jpg 2245 1562 1.43726

convert -crop 1147x1575 0032.jpg 0032%d.jpg
mv 00320.jpg 0032.jpg
mv 00321.jpg 0033.jpg

convert -crop 1138x1575 0082.jpg 0082%d.jpg
mv 00820.jpg 0082.jpg
mv 00821.jpg 0083:w.jpg

convert -crop 1280x1687 0052.jpg 0052%d.jpg
mv 00520.jpg 0052.jpg
mv 00521.jpg 0053.jpg


