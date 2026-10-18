[PRE-APURACAO]
(PRE) aTotal := Array(7)
(PRE) aTotal[01] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)[1]
(PRE) aTotal[02] := &(GetNewPar("MV_INVEST","{}") )
(PRE) aTotal[03] := Iif( Len( aTotal[02] ) > 0, Iif( aTotal[01] <= CToD( aTotal[2,1] ) , .T. , .F. ) , .F. )
(PRE) aTotal[04] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[05] := FsApCiap(aTotal[4][1],aTotal[4][2])
(PRE) aTotal[06] := 0
(PRE) aTotal[07] := 0
(POS)
[APURACAO ICMS]
(PRE) {|x| aTotal[06] += x[59]} 
(PRE) {|x| aTotal[07] += x[57]}
(POS)
[POS-APURACAO]
(PRE)
003=003.01;Estorno de Credito - Reducao Base de Calculo Invest-ES;Iif(aTotal[03],1,0);;
003=003.02;Estorno CIAP;aTotal[5][1]; ;
006=006.01;Credito Presumido Invest-ES;Iif(aTotal[03],1,0);;
006=006.02;Relativo a entrada de bem do Ativo Permanente;aTotal[5][2];;
007=007.01;Estorno de Debito Invest-ES;Iif(aTotal[03],1,0);;
012=012.01;Adicional relativo ao FECP;aTotal[06];;
ST 014=014.01;Adicional relativo ao FECP;aTotal[07];;
DE 900=900.01;Adicional relativo ao FECP;aTotal[06];;
DE 901=901.01;Adicional relativo ao FECP;aTotal[07];;
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
