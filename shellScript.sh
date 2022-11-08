#!/bin/bash
rm lauda.txt
touch lauda.txt
for i in {1000..10000..100};
do
	netperf -t TCP_STREAM   -- -s $i -o min_latency,max_latency,p50_latency,mean_latency >> lauda.txt 
done

