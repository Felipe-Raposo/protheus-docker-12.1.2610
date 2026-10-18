[PRE-APURACAO]
(PRE) aTotal := Array(30)
(PRE) aTotal[01] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[02] := FsApCiap(aTotal[01][1],aTotal[01][2]) 
(PRE) aTotal[04] := 0
(PRE) aTotal[05] := 0  
(POS) 
[APURACAO ICMS]
(PRE) {|x| aTotal[04] += Iif(SubStr(x[01],1,1) == "5",x[67],0)}
(PRE){|x| aTotal[05] += Iif(x[67]>0, x[67], 0)}
(POS)
[POS-APURACAO]                               
(PRE)
ST 002=002.01;ICMS Retido FOnte ;aTotal[05];;
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
