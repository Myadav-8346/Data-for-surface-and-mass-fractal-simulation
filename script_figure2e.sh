set term pngcairo size 800,600 enhanced font "Times-New-Roman,24"
set output 'figure1e.png'

set border linewidth 2.0
set xtics font "Times-New-Roman Bold Italic,20"
set ytics font "Times-New-Roman Bold Italic, 20"
set ztics font "Times-New-Roman Bold Italic, 20"
set tics scale 1.25

set tmargin at screen 0.98
set bmargin  at screen 0.25
set lmargin  at screen 0.25
set rmargin  at screen 0.85

set xtics nomirror
set ytics nomirror

set ticslevel 0
set xrange [0.5:4]
#set yrange [0:35]   # Adjust to include max B_att (30)
set zrange [0:1.2]    # Let z auto-scale

set xlabel "r/d" font "Times-New-Roman Bold Italic,20" offset 4,0 center
set ylabel "B_{att}" font "Times-New-Roman Bold Italic,20" offset -3,-0.5 right


set ytics ("0" 0, "4" 1, "12" 2, "30" 3)
set ytics scale 0
set yrange [-1:5]    # optional, just to frame the plot nicely
set zlabel "G(r)" font "Times-New-Roman Bold Italic,20" offset 1,0 rotate by 90

set key at graph 0.95, 0.95
set key font "Times-New-Roman Bold Italic, 24"
set key spacing 1

set view 60,25

N = 3

# function to average every N rows of a file
avg_cmd(file, N) = sprintf("<awk '{sx+=$1; sy+=$2; c++; if(c==%d){print sx/%d, sy/%d; sx=sy=c=0}}' %s", N, N, N, file)


splot \
	 avg_cmd("figure2e_4.txt",N)  u 1:(3):2 notitle w linespoints lw 2 pt 8 lc rgb "magenta",\
	 avg_cmd("figure2e_3.txt",N)  u 1:(2):2 notitle w linespoints lw 2 pt 6 lc rgb "dark-blue" ,\
	avg_cmd("figure2e_2.txt",N)   u 1:(1):2 notitle w linespoints lw 2 pt 4 lc rgb "forest-green",\
	avg_cmd("figure2e_1.txt",N)   u 1:(0):2 notitle w linespoints lw 2 pt 2 lc rgb "red"       

