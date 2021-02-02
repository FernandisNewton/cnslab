BEGIN {
}
{
if($6=="cwnd_")
/* don’t leave space after writing cwnd_ */
printf("%f\t%f\t\n",$1,$7);
/* you must put \n in printf */
}
END {
}


#===================================
#NodesDefinition
#===================================

$ns make-lan "$n3 $n4 $n5 $n6 $n7 $n8" 512Kb 50ms LL Queue/DropTail

#AgentsDefinition
#===================================
#SetupaTCP/Renoconnection
$tcp0 set class_ 1
set tfile1 [open cwnd1.tr w]
$tcp0 attach $tfile1
$tcp0 trace cwnd_
