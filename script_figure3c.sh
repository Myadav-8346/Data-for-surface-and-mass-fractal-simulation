set terminal pngcairo size 800,600 enhanced color font 'Times-New-Roman,24' linewidth 2
set output 'figure3c.png'
set border linewidth 1.2
set xtics font "Times-New-Roman,24"
set ytics font "Times-New-Roman,24"
set key font "Times-New-Roman,24"
set xlabel "q" font "Times-New-Roman Bold Italic ,24" offset 0.0,1.0
set ylabel "S(q)" font "Times-New-Roman Bold Italic,24" offset 1.0,0.0

set xrange [0.25:10]
set yrange [0.01:5000]
set tics scale 1.5
set tmargin 1.8
set bmargin 2.5
set lmargin 7.0
set rmargin 1.8
set key at graph 0.9,0.95
set key font "Times-New-Roman Bold Italic,24"
set key spacing 1.0
set log x
set log y
set format  "10^{%L}"
f(x) = 1
g(x) = 0.1

set xtics nomirror
set ytics nomirror


N = 3

avg_cmd(file, N) = sprintf("<awk '{sx+=$1; sy+=$2; c++; if(c==%d){print sx/%d, sy/%d; sx=sy=c=0}}' %s", N, N, N, file)

set multiplot layout 1,1
plot avg_cmd("figure3c_1.txt",N) with p t " 0" ps 1.5 pt 2 lw 1 lc rgb "red",\
 avg_cmd("figure3c_2.txt",N) with p t " 4" ps 1.5 pt 4 lw 1 lc rgb "orangered",[0.3:6.50]  4.8*x**-2.5 notitle lw 2.0 lc rgb "orangered",\
 avg_cmd("figure3c_3.txt",N) with p t " 12" ps 1.5 pt 6 lw 1 lc rgb "blue",[0.3:6.50]  7.4*x**-2.6 notitle lw 2.0 lc rgb "blue",\
 avg_cmd("figure3c_4.txt",N) with p t " 30" ps 1.5 pt 8 lw 1 lc rgb "black",[0.3:6.50] 9.4*x**-2.7 notitle lw 2.0 lc rgb "black"

