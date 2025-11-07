set term pngcairo size 800,600 enhanced font "Times-New-Roman,24"

set output 'figure4d.png'
set border linewidth 2.0
set xtics font "Times-New-Roman Bold Italic,20"
set ytics font "Times-New-Roman Bold Italic,20"
set key font "Times-New-Roman Bold Italic, 20"
set xlabel "{/Symbol q}" font "Times-New-Roman Bold Italic,24" offset 0.0, 0.75
set ylabel "ADF (Patches)" font "Times-New-Roman Bold Italic,24" offset 3.0,0.0
set tics scale 1.5
#set log x
#set log y

set tmargin 1.0
set bmargin 2.5
set lmargin 7.0
set rmargin 1.8

set key at graph 0.95, 0.95
set key font "Times-New-Roman Bold Italic, 20"
set key spacing 1

plot "figure4d_1.txt"  t "0" w lp pt 7 ps 1 lw 1 lc rgb "red",\
"figure4d_2.txt" t "4"  w lp pt 3 ps 1 lw 1 lc rgb "forest-green",\





