set terminal latex
#set terminal pngcairo size 1024,860 dashed enhanced font 'Verdana,10'
set output "tsp_results_summary.tex"
#set output "tsp_results_summary.png"
set key outside center bottom
set boxwidth 0.5
set border 3
set xrange [0:11]
set yrange [0:80000]
unset key
unset xtics
#plot 'data/tsp_result_summary.dat' u 1:($3+700):2 w labels left rotate by 75, \
#'' u 1:3 w boxes fs solid 1


#plot 'data/tsp_result_summary.dat' u 3:xtic(2) w boxes fs solid 1


plot 'data/tsp_result_summary.dat' u 1:3 w boxes fs solid 1