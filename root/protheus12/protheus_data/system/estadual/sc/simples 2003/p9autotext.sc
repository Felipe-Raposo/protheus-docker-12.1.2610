[PRE-APURACAO]
(PRE) aTotal := Array(8)
(PRE) aTotal[1] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[2] := FsApCiap(aTotal[1][1],aTotal[1][2])
(PRE) aTotal[5] := {{5000,0,25,0},{10000,1,100,0},{20000,1.95,295,95},{40000,3.75,1045,455},{60000,4.85,2015,895},{99999999999999,5.95,2015,1555}}
(PRE) aTotal[6] := 0
(PRE) aTotal[7] := ""
(PRE) aTotal[8] := 0
003=003.01;Estorno CIAP;aTotal[2][1]; ;
006=007.01;Credido CIAP;aTotal[2][2]; ;
(POS)
[APURACAO ICMS]
(PRE) {|x| aTotal[7] := &(GetNewPar("MV_GIASC01",{"",""}))}
(PRE) {|x| aTotal[6] += IIF(AllTrim(x[1])$aTotal[7][1],IIf(SubStr(x[1],1,1)$"123",-1*x[11],x[11]),0)}
(POS)
[POS-APURACAO]
(PRE) aTotal[7] := aScan(aTotal[5],{|x| x[1]>=aTotal[6]})
(PRE) aTotal[8] := aTotal[6] 
(PRE) aTotal[6] := (aTotal[5][aTotal[7]][2]*aTotal[6]/100)-(aTotal[5][aTotal[7]][4])
(PRE) aTotal[6] := IIF(aTotal[8]==0,0,(Max(aTotal[5][1][3],aTotal[6])))
002=1303;Optante pelo Simples;aTotal[6];;
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
