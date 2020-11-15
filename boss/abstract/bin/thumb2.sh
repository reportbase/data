. ../meta.ini
SUBHEADER=${title}

. ../../meta.ini
HEADER=${title}

cd thumb

convert ../../0180.0220.000.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER" ../../0180.0220.gif


