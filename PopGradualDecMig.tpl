//Number of population samples (demes)
2
//Population effective sizes (number of genes)
Ncont1
Ncont2
//Sample sizes
70
68
//Growth rates	: negative growth implies population expansion
R1
R2
//Number of migration matrices : 0 implies no migration between demes
2
//Migration Matrix 0
0 0
0 0
//Migration Matrix 1
0.0 Mig12
Mig21 0.0
//historical event: time, source, sink, migrants, new size, new growth rate, migr. matrix 
4 historical event
Tiso 0 0 0 1 keep 1
Tr1 0 0 0 Nhist1 0 keep absoluteResize
Tr2 1 1 0 Nhist2 0 keep absoluteResize
Tdiv 1 0 1 Nanc 0 0 absoluteResize
//Number of independent loci [chromosome] 
1 0
//Per chromosome: Number of linkage blocks
1
//per Block: data type, num loci, rec. rate and mut rate + optional parameters
FREQ 1 0 2.96e-9 OUTEXP
