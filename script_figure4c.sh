set term pngcairo size 800,600 enhanced font "Times-New-Roman,24"

set output 'figure4c.png'
set border linewidth 2.0
set xtics font "Times-New-Roman Bold Italic,20"
set ytics font "Times-New-Roman Bold Italic,20"
set key font "Times-New-Roman Bold Italic, 20"
set xlabel "r/d" font "Times-New-Roman Bold Italic,20" offset 0.0, 0.75
set ylabel "g(r)" font "Times-New-Roman Bold Italic,20" offset 2.5,0.0
set tics scale 1.25
#set log x
#set log y

set tmargin 0.5
set bmargin 2.5
set lmargin 5.0
set rmargin 1.0

set xtics nomirror
set ytics nomirror


#set format x "10^{%L}"
#set format y "10^{%L}"

set yrange[0.005:1.1]
set xrange [0.5:4]
set key at graph 0.95, 0.95
set key font "Times-New-Roman Bold Italic, 24"
set key spacing 1

set multiplot layout 1,1 


#################################################################################
#   Rdf plot here
####3############################################################################
N = 2

# function to average every N rows of a file
avg_cmd(file, N) = sprintf("<awk '{sx+=$1; sy+=$2; c++; if(c==%d){print sx/%d, sy/%d; sx=sy=c=0}}' %s", N, N, N, file)

plot \
 avg_cmd("figure4c_1.txt",N) u 1:2 t "0" w lp pt 7 ps 0.85 lw 2 lc rgb "red",\
 avg_cmd("figure4c_2.txt",N) u 1:2 t "4"  w lp pt 3 ps 0.85 lw 2 lc rgb "forest-green",\

