[PRE-APURACAO]
(PRE) aTotal := Array(37)
(PRE) aTotal[01] := SuperGetMv('MV_ESTADO') == 'MG' .And. GetNewPar("MV_TRANSST",.F.)
(PRE) aTotal[02] := 0
(PRE) aTotal[03] := 0
(PRE) aTotal[04] := GetNewPar("MV_TRANSST",.F.)
(PRE) aTotal[05] := 0
(PRE) aTotal[06] := 0
(PRE) aTotal[07] := 0
(PRE) aTotal[08] := 0
(PRE) aTotal[09] := 0
(PRE) aTotal[10] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[11] := FsApCiap(aTotal[10][1],aTotal[10][2])
(PRE) aTotal[12] := 0
(PRE) aTotal[13] := 0
(PRE) aTotal[20] := GetNewPar("MV_FUST",0)
(PRE) aTotal[21] := GetNewPar("MV_FUNTTEL",0)
(PRE) aTotal[28] := GetNewPar("MV_GERAUT",.T.)
(PRE) aTotal[22] := 0
(PRE) aTotal[23] := {}
(PRE) aTotal[24] := Iif(aTotal[20] > 0 .Or. aTotal[21] > 0,CalcRB(aTotal[10][1],aTotal[10][2],aTotal[22],.F.,aTotal[23],.T.),0)
(PRE) aTotal[25] := aTotal[24] * aTotal[20] / 100
(PRE) aTotal[26] := aTotal[24] * aTotal[21] / 100
(PRE) aTotal[27] := 0
(PRE) aTotal[28] := .T.
(PRE) aTotal[29] := 0
(PRE) aTotal[30] := 0  
(PRE) aTotal[31] := 0
(PRE) aTotal[32] := 0
(PRE) aTotal[33] := 0  
(PRE) aTotal[34] := 0
(PRE) aTotal[35] := 0
(PRE) aTotal[36] := 0
(PRE) aTotal[37] := 0
003=003.01;Estorno CIAP;aTotal[11][1]; ;
006=006.01;Credito CIAP;aTotal[11][2]; ;
(POS) 
[APURACAO ICMS]
(PRE) {|x| aTotal[02] += Iif(aTotal[01],x[39],0)}
(PRE) {|x| aTotal[03] += Iif(aTotal[01] .And. x[39] > 0,x[40] + x[39],0)}
(PRE) {|x| aTotal[03] += Iif(aTotal[04] .And. x[60] > 0,x[60],0)}
(PRE) {|x| Iif(Left(x[1],1,1)<"5", aTotal[12] += x[43], aTotal[13] += x[43])}
(PRE) {|x| aTotal[27] += Iif(SubStr(AllTrim(x[1]),1,1)$"567",x[49],0)}
(PRE) {|x| aTotal[29] += IIf((SuperGetMv("MV_ESTADO")=="MG" .And. x[34]>0 .And. SubStr(x[1],1,1)$"567"), x[34], 0)}
(PRE) {|x| aTotal[31] += IIf((SuperGetMv("MV_ESTADO")=="MG" .And. x[87]>0 .And. SubStr(x[1],1,1)$"123"), x[87], 0)}
(PRE) {|x| aTotal[32] += IIf((SuperGetMv("MV_ESTADO")=="MG" .And. x[88]>0 .And. SubStr(x[1],1,1)$"567"), x[88], 0)}
(PRE) {|x| aTotal[33] += IIf((SuperGetMv("MV_ESTADO")=="MG" .And. x[103]>0 .And. SubStr(x[1],1,1)$"5"), x[103], 0)}
(PRE) {|x| aTotal[34] += IIf((SuperGetMv("MV_ESTADO")=="MG" .And. x[113]>0 .And. SubStr(x[1],1,1)>="5"), x[113], 0)}
(PRE) {|x| aTotal[35] += IIf((SuperGetMv("MV_ESTADO")=="MG" .And. x[114]>0 .And. SubStr(x[1],1,1)>="5"), x[114], 0)}
(PRE) {|x| aTotal[36] += IIf((SuperGetMv("MV_ESTADO")=="MG" .And. x[115]>0 .And. SubStr(x[1],1,1)>="5"), x[115], 0)}
(PRE) {|x| aTotal[37] += IIf((SuperGetMv("MV_ESTADO")=="MG" .And. x[116]>0 .And. SubStr(x[1],1,1)>="5"), x[116], 0)}
(POS)
[POS-APURACAO]
002=002.20;FUST    ;aTotal[25];            ;.F.;          ;
002=002.21;FUNTTEL ;aTotal[26];            ;.F.;          ;
002=002.23;Transf.credito Art 488, IX do RICMS/MG;aTotal[32];;
006=006.02;Credito Presumido Art.75,XXXII do RICMS/MG;aTotal[29];; 
006=006.03;Transf.credito Art 488, IX do RICMS/MG;aTotal[31];;
012=012.01;FECP-MG Apuração ICMS;aTotal[34];;
012=012.02;FECP-MG-Operação;aTotal[36];;
(PRE)
007=007.01;Estorno conf. Artigo 4 An. XV do RICMS/MG;aTotal[27];;
ST 002=002.02;ICMS Servico de Transporte/ST;aTotal[03];;
ST 002=002.04;ICMS-ST Transportes;aTotal[33];;.F.;
ST 007=007.01;Credito Presumido Transp. art. 75, RICMS/02;aTotal[02];;
ST 014=014.01;FECP/ST-MG Apuração ICMS ST;Iif(aTotal[35]>0,aTotal[35],0);;  
ST 014=014.02;FECP/ST-MG-Operação;Iif(aTotal[37]>0,aTotal[37],0);;  
DE 900=900.01;FECP-MG Apuração ICMS;aTotal[34];;
DE 900=900.02;FECP-MG Operação;aTotal[36];;
DE 901=901.01;FECP/ST-MG Apuração ICMS ST;Iif(aTotal[35]>0,aTotal[35],0);;  
DE 901=901.02;FECP/ST-MG Operação;Iif(aTotal[37]>0,aTotal[37],0);;  
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
