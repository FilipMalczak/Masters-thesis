set terminal latex
#set terminal pngcairo size 800,600 dashed enhanced font 'Verdana,10'
set output "tsp_male_avg.tex"
#set output "tsp_male_avg.png"
set key outside center bottom
set xrange [0:20]
set yrange[6000:8000]
set xlabel "Liczba samców"
set ylabel "\\rotatebox{90}{Średnia ocena}"
plot "data/tsp_male_avg.dat" using 1:2 with linespoints notitle