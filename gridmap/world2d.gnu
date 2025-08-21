#!/usr/bin/gnuplot

set term pngcairo font "Times New Roman,24" truecolor size 1920, 1080
set output "../../fig/map.png"

reset

# wxt
#set terminal wxt size 350,262 enhanced font "Helvetica,10" persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'world2d.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial,sans-serif' \
#fsize 10
#set output 'world2d.svg'

# color definitions
set border lw 1.5
set style line 1 lc rgb '#555555' lt 1 lw 2

set xrange [-180:180]
set yrange [-90:90]

unset key
set format ''
set tics scale 0
set grid

set bmargin screen 0
set lmargin screen 0
set rmargin screen 1
set tmargin screen 1

plot 'world_10m.txt' with filledcurve fc rgb "#bbbbbb" linestyle 1 ,\
     'world_10m.txt' with lines linestyle 1 ,\
     'grids.dat' using ($1):($2):(1):(.5):($3) with boxxy fs transparent solid 0.80 fc rgb variable
