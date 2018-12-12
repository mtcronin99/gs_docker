#!/bin/ash
SRCFILE=$1
DPI=$2
TMPFILE=`mktemp ~/gs_XXXXXXX`
OPTIONS="-dDownsampleColorImages -dColorImageDownsampleType=/Bicubic -dColorImageResolution=${DPI} -dDownsampleGrayImages -dGrayImageDownsampleType=/Bicubic -dGrayImageResolution=${DPI} -dDownsampleMonoImages -dMonoImageDownsampleType=/Subsample -dMonoImageResolution=${DPI}  "
gs -dBATCH -dNOPAUSE -dQUIET -sDEVICE=ps2write ${OPTIONS} -sOUTPUTFILE=${TMPFILE} /var/local/data/in/${SRCFILE}
gs -dBATCH -dNOPAUSE -dQUIET -sDEVICE=pdfwrite -sOUTPUTFILE=/var/local/data/out/${SRCFILE} ${TMPFILE}
unlink ${TMPFILE}
