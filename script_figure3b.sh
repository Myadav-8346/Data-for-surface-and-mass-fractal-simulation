set terminal pngcairo size 800,600 enhanced color font 'Times-New-Roman,24' linewidth 2
set output 'figure3b.png'
set border linewidth 1.2
set xtics font "Times-New-Roman,24"
set ytics font "Times-New-Roman,24"
set key font "Times-New-Roman,24"
set xlabel "m" font "Times-New-Roman Bold Italic ,24" offset 0.0,1.0
set ylabel "N(m)" font "Times-New-Roman Bold Italic,24" offset 1.0,0.0

set xrange [1:900]
set yrange [0.0000001:5]
set tics scale 1.5
set tmargin 1.8
set bmargin 2.5
set lmargin 7.0
set rmargin 1.8
set key at graph 0.98,0.95
set key font "Times-New-Roman Bold Italic,24"
set key spacing 1.0
set log x
set log y

set xtics nomirror
set ytics nomirror

set format  "10^{%L}"
set label " 1.5" at 30,0.0001 center rotate by -22 font "Times-New-Roman Bold Italic,24"

plot 'figure3b_1.txt' t ' 0' with points ps 1.5 pt 2 lw 1.25 lc rgb "red",\
	'figure3b_2.txt' t '4' with points ps 1.25 pt 4 lw 1.5 lc rgb "orangered",\
	'figure3b_3.txt' t '12' with points ps 1.25 pt 6 lw 1.5 lc rgb "blue", [2:200] 0.5*x**(-1.5) notitle lw 2 lc rgb "blue",\
	'figure3b_4.txt' notitle with linespoints ps 1.25 pt 8 lw 1.5 lc rgb "black",\
	'figure3b_4.txt' t '30' with points ps 1.25 pt 8 lw 1.5 lc rgb "black"


