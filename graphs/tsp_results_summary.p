#set terminal latex
set terminal lua tikz mono dashed
#set terminal pngcairo size 1024,860 dashed enhanced font 'Verdana,10'
set output "tsp_results_summary.tex"
#set output "tsp_results_summary.png"

set boxwidth 0.75
set border 3
set xrange [0:11]
set yrange [0:80000]
set key outside reverse Left top right
set ytics border nomirror
unset xtics
#plot 'data/tsp_result_summary.dat' u 1:($3+700):2 w labels left rotate by 75, \
#'' u 1:3 w boxes fs solid 1


#plot 'data/tsp_result_summary.dat' u 3:xtic(2) w boxes fs solid 1


#plot 'data/tsp_result_summary.dat' u 1:3 w boxes fs solid 1

titles = "stdGenSel($\\bot$,R,R) stdGenSel($\\top$,R,R) stdGenSel($\\bot$,RS,RS) stdGenSel($\\bot$,RS,R) stdGenSel($\\bot$,RS,RS) stdGenSel($\\bot$,RS,R) stdGenSel($\\top$,RS,RS) stdGenSel($\\top$,RS,R) harem(5,0,1,RS,RS,R) harem(5,0,1,RS,R,R)"

filename(n) = sprintf("data/results_summary/tsp_%d.dat", n)
title(n) = sprintf("%d", n)

#plot for [i=1:10] 'data/result_summary/$i.dat' u 0:1 w boxes title columnheader(0)
plot for [i=1:10] filename(i) u 1:2:xtic(1) w boxes fs pattern 10+i title title(i)# title word(titles, i) 