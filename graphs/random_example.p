set terminal latex
#set terminal pngcairo size 800,600 dashed enhanced font 'Verdana,10'
set output "random_example.tex"
#set output "random_example.png"
set key outside center bottom
set boxwidth 0.5
set xrange [-10:120]
plot "data/random_example.dat" using 1:3:2:6:5 with candlesticks notitle whiskerbars
#,\
#    "data/random_example.dat" using 1:4 with linespoints notitle