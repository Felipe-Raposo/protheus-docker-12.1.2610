[PRE-APURACAO]
(PRE) aTotal := Array(32)
(PRE) aTotal[01] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[02] := FsApCiap(aTotal[1][1],aTotal[1][2])
(PRE) aTotal[03] := 0 
(PRE) aTotal[04] := 0
(PRE) aTotal[05] := 0
(PRE) aTotal[06] := .T.
(PRE) aTotal[07] := .T.
(PRE) aTotal[20] := GetNewPar("MV_FUST",0)
(PRE) aTotal[21] := GetNewPar("MV_FUNTTEL",0)
(PRE) aTotal[22] := 0
(PRE) aTotal[23] := {}
(PRE) aTotal[24] := Iif(aTotal[20] > 0 .Or. aTotal[21] > 0,CalcRB(aTotal[1][1],aTotal[1][2],aTotal[22],.F.,aTotal[23],.T.),0)
(PRE) aTotal[25] := Iif(aTotal[27]==.T.,aTotal[24] * aTotal[20] / 100, 0)
(PRE) aTotal[26] := Iif(aTotal[27]==.T.,aTotal[24] * aTotal[21] / 100, 0)
(PRE) aTotal[27] := GetNewPar("MV_GERAUT",.T.)
(PRE) aTotal[28] := 0
(PRE) aTotal[29] := 0                                  
(PRE) aTotal[30] := 0
(PRE) aTotal[31] := 0
(PRE) aTotal[32] := 0
003=003.01;Estorno CIAP;aTotal[2][1]; ;
006=007.01;Relativo a entrada de bem do Ativo Permanente;aTotal[2][2]; ;
(POS)
[APURACAO ICMS]
(PRE) 
(PRE) {|x| aTotal[05] += IIf((SuperGetMv("MV_ESTADO")=="MT" .And. x[34]>0), x[34], 0)}
(PRE) {|x| aTotal[29] += IIf((SuperGetMv("MV_ESTADO")=="MT" .And. SubStr(x[1],1,1)<"5" .And. x[81]>0),x[81],0)} 
(PRE) {|x| aTotal[30] += IIf((SuperGetMv("MV_ESTADO")=="MT" .And. SubStr(x[1],1,1)>"4" .And. x[82]>0),x[82],0)} 
(PRE) {|x| aTotal[31] += Iif((SuperGetMv("MV_ESTADO")=="MT" .And. SubStr(x[1],1,1)>="5" .And. x[117]>0), x[117],0)}
(PRE) {|x| aTotal[32] += Iif( x[118] > 0, x[118] ,0) }
(POS)
[POS-APURACAO]
002=002.07;Inciso II do Artigo 117 do RICMS ;aTotal[3];;
002=002.20;FUST    ;aTotal[25];            ;.F.;          ;
002=002.21;FUNTTEL ;aTotal[26];            ;.F.;          ;
006=007.18;Inciso I do Artigo 117 do RICMS ;aTotal[4];;
006=006.01;Credito Presumido - PRODEIC - LEI 7.958 - 2003;aTotal[05];; 
007=007.01;FECEP ART 14,X Lei 7098/98;aTotal[31];;                     
007=007.02;Estorno ICMS - art. 8º-A, An. IX, RICMS/MT;aTotal[32];;
ST 007=007.99;ICMS Garantido - Art.435-N do RICMS;aTotal[28]+aTotal[29];;
DE 900=900.01;FECEP ART 14,X Lei 7098/98;aTotal[31];;
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
