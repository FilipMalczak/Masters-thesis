set terminal latex
#set terminal pngcairo size 800,600 dashed enhanced font 'Verdana,10'
set output "knapsack_male_avg.tex"
#set output "knapsack_male_avg.png"
set key outside center bottom
set xrange [0:22]
set yrange[6000:8000]
plot "data/knapsack_male_avg.dat" using 1:2 with linespoints notitle