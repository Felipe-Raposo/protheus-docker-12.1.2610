[PRE-APURACAO]
(PRE) aTotal := Array(30)
(PRE) aTotal[01] := 0
(PRE) aTotal[02] := 0   
(PRE) aTotal[03] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[04] := 0
(PRE) aTotal[05] := 0
(PRE) aTotal[06] := .T.
(POS) 
[APURACAO ICMS]
(PRE) {|x| Iif(SuperGetMv('MV_ESTADO')=='MA' .And. x[50] > 0 .And. SubStr(AllTrim(x[1]),1,1)$"123", aTotal[04] += x[50], aTotal[04] += 0)}
(PRE) {|x| Iif(SuperGetMv('MV_ESTADO')=='MA' .And. x[83] > 0, aTotal[05] += x[83], aTotal[05] := 0)}
(POS)
[POS-APURACAO]                               
(PRE)
006=006.02;Antecipacao Tribut.ICMS ;aTotal[04];;
012=012.01;Adicional relativo ao FUMACOP;aTotal[05];;
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
