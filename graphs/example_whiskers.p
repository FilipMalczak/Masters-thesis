set terminal latex
#set terminal pngcairo size 800,600 dashed enhanced font 'Verdana,10'
set output "example_whiskers.tex"
#set output "example_whiskers.png"
set yrange [0:3]
set xrange [-1:1] 
unset xtics
unset ytics
set ytics add ("" 0)
set ytics add ("minimum" 0.5)
set ytics add ("średnia - wariancja" 1)
set ytics add ("średnia" 1.5)
set ytics add ("średnia + wariancja" 2)
set ytics add ("maksimum" 2.5)
set ytics add ("" 3)
set key outside center bottom
set boxwidth 0.5
plot "data/example_whiskers.dat" using 1:3:2:6:5 with candlesticks notitle whiskerbars