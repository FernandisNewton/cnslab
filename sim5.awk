BEGIN{
count1=0;
pack1=0;
time1=0;
}
{
if($1=="r"&& $3=="_7_"&& $4=="AGT")
{
count1++;
pack1= pack1+$8;
time1=$2;
}
}
END{
printf("The throughput from n0 to n7: %f Mbps\n",((count1*pack1*8)/(time1*1000000)));
}
