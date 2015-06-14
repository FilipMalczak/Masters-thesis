set terminal latex
#set terminal pngcairo size 800,600 dashed enhanced font 'Verdana,10'
set output "tsp_init_example.tex"
#set output "tsp_init_example.png"
set key outside center bottom
set boxwidth 0.5
set xrange [-10:120]
set xlabel "Nr. pokolenia"
set ylabel "\\rotatebox{90}{Ocena}"
plot "data/tsp_init_example.dat" using 1:3:2:6:5 with candlesticks notitle whiskerbars
#,\
#    "data/tsp_init_example.dat" using 1:4 with linespoints notitle