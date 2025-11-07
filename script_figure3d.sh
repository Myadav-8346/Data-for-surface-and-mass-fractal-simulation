set terminal pngcairo size 800,600 enhanced color font 'Times-New-Roman,24' linewidth 2
set output 'figure3d.png'
set border linewidth 1.2
set xtics font "Times-New-Roman,24"
set ytics font "Times-New-Roman,24"
set key font "Times-New-Roman,24"
set xlabel "L" font "Times-New-Roman Bold Italic ,24" offset 0.0,1.0
set ylabel "w(L)" font "Times-New-Roman Bold Italic,24" offset 1.0,0.0

set xrange [0.8:20]
set yrange [0.35:5]
set xtic nomirror
set ytic nomirror
set tics scale 1.5
set tmargin 1.8
set bmargin 2.5
set lmargin 7.0
set rmargin 1.8
#set key at graph 0.45,0.95 reverse
set key at graph 0.30,0.95
set key font "Times-New-Roman Bold Italic,24"
set key spacing 1.0
set log x
set log y
set format  "10^{%L}"
f(x) = 1


set multiplot layout 1,1
plot "figure3d_1.txt" with p t " 0" ps 1.5 pt 4 lw 1 lc rgb "red",\
	"figure3d_2.txt" with p t " 4" ps 1.5 pt 6 lw 1 lc rgb "orangered",\
	"figure3d_3.txt" with p t " 12" ps 1.5 pt 8 lw 1 lc rgb "blue",[1.5:15] 0.5*x**0.62 notitle  lw 1.5 lc rgb "navy",\
	"figure3d_4.txt" with p t " 30" ps 1.5 pt 10 lw 1 lc rgb "black",[1.5:15] 0.445*x**0.8 notitle lw 1.5 lc rgb "black"
	

