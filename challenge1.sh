#!/bin/bash 

math=90
science=85
english=88

echo "========================"
echo "MARKS REPORT"
echo "========================"

echo "Math: $math"
echo

echo "Science: $science"
echo

echo "English: $english"
echo

total=$(( math+science+english ))
echo "Total marks: $total"
echo

echo "Average: $(( total/3 ))"
echo

echo "Remaining:  $(( 300 - total))"
