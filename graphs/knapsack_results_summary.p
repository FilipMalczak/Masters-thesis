#set terminal latex
set terminal lua tikz mono dashed
#set terminal pngcairo mono size 640,480 dashed enhanced font 'Verdana,10'
set output "knapsack_results_summary.tex"
#set output "knapsack_results_summary.png"
set boxwidth 0.75
set border 3
set xrange [0:11]
set yrange [-800:-1200]
set key outside reverse Left top right
set ytics border nomirror
unset xtics
#plot 'data/knapsack_results_summary.dat' u 1:($3+700):2 w labels left rotate by 75, \\
#'' u 1:3 w boxes fs solid 1


#plot 'data/knapsack_results_summary.dat' u 3:xtic(2) w boxes fs solid 1


#plot 'data/knapsack_results_summary.dat' u 1:3 w boxes fs solid 1

filename(n) = sprintf("data/results_summary/knapsack_%d.dat", n)
title(n) = sprintf("%d", n)

titles = "stdGenSel($\\bot$,R,R) stdGenSel($\\top$,R,R) stdGenSel($\\bot$,RS,RS) stdGenSel($\\bot$,RS,TS(2)) stdGenSel($\\bot$,RS,RS) stdGenSel($\\bot$,RS,R) stdGenSel($\\top$,RS,RS) stdGenSel($\\top$,RS,R) harem(5,0,25,RS,RS,R) harem(3,0,0,RS,TS(2),R)"

plot for [i=1:10] filename(i) u 1:2:xtic(1) w boxes fs pattern 20+i title title(i)# title word(titles, i) 
#plot for [i=1:10] 'data/result_summary/$i.dat' u 0:1  fs pattern i