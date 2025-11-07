set term pngcairo size 800,600 enhanced font "Times-New-Roman,24" linewidth 2

set output 'figure3a.png'
set border linewidth 1.2
set xtics font "Times-New-Roman,24"
set ytics font "Times-New-Roman,24"
set key font "Times Roman,24"
set xlabel "R_g" font "Times-New-Roman Bold Italic,24" offset 0.0, 1.25
set ylabel "m" font "Times-New-Roman Bold Italic,24" offset 1.35,0.0
set tics scale 1.5
set log x
set log y

set xtics nomirror
set ytics nomirror

set tmargin 1.0
set bmargin 2.0
set lmargin 5.0
set rmargin 1.0

set xrange [0.5:15]
set key at graph 1.0, 0.35
set key font "Times-New-Roman Bold Italic, 24"
set key spacing 1
set label " 2.0" at 3,20 center rotate by 22 font "Times-New-Roman Bold Italic,24'
set label " 1.85" at 2,100 center rotate by 22 font "Times-New-Roman Bold Italic,24'


set format x "10^{%L}"
set format y "10^{%L}"

set multiplot layout 1,1


plot "figure3a_1.txt" with points t " 0" pt 2 ps 1.5 lw 2 lc rgb "red",\
 "figure3a_2.txt" with points t " 4" pt 4 ps 1.5 lw 2 lc rgb "orange",\
 "figure3a_3.txt" with points t " 12" pt 6 ps 1.5 lw 2 lc rgb "blue",\
 "figure3a_4.txt" with points t " 30" pt 8 ps 1.5 lw 2 lc rgb "black",\
  [0.7:11]  4*x**(2.0) notitle lt 5 lw 2.0 lc rgb "forest-green",\
 [0.7:11]  15*x**(1.85) notitle lt 5 lw 2.0 lc rgb "black"

