# output as png image
set terminal png

# save file to "benchmark.png"
set output "benchmark.png"

# graph title
set title "ab -r -n 5000 -c 10 -g out.data http://127.0.0.1:3000/hotels/in/cancun/from/09-03-2015/to/30-03-2015"
#nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

#x-axis label
set xlabel "request"

#y-axis label
set ylabel "response time (ms)"

#plot data from "out.data" using column 9 with smooth sbezier lines
plot "out.data" using 9 smooth sbezier with lines title "something"
