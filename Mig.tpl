//Number of population samples (demes)
2
//Population effective sizes (number of genes)
Npop1
Npop2
//Sample sizes
70
68
//Growth rates	: negative growth implies population expansion
0
0
//Number of migration matrices : 0 implies no migration between demes
2
//Migration matrix 0
0 0
0 0
//Migration matrix 1
0.000 Mig12
Mig21 0.000
//historical event: time, source, sink, migrants, new size, new growth rate, migr. matrix 
2
Tiso 0 0 0 1 0 1
Tdiv 1 0 1 Nanc 0 0 absoluteResize
//Number of independent loci [chromosome] 
1 0
//Per chromosome: Number of linkage blocks
1
//per Block: data type, num loci, rec. rate and mut rate + optional parameters
FREQ 1 0 2.96e-9 OUTEXP
