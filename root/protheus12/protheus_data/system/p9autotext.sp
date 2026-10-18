[PRE-APURACAO]
(PRE) aTotal := Array(42)
(PRE) aTotal[01] := 0 
(PRE) aTotal[02] := 0 
(PRE) aTotal[03] := 0
(PRE) aTotal[04] := .T.
(PRE) aTotal[05] := 0 
(PRE) aTotal[06] := 0 
(PRE) aTotal[07] := "161/162/163/164/165/1351/1352/1353/1354/1355/1356"
(PRE) aTotal[08] := GetNewPar("MV_APSPDEB","")
(PRE) aTotal[09] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[10] := 0
(PRE) aTotal[11] := .T.
(PRE) aTotal[12] := 0
(PRE) aTotal[13] := 0  
(PRE) aTotal[14] := GetNewPar("MV_ART117",.T.)
(PRE) aTotal[15] := .T.
(PRE) aTotal[16] := .T. 
(PRE) aTotal[20] := GetNewPar("MV_FUST",0)
(PRE) aTotal[21] := GetNewPar("MV_FUNTTEL",0)
(PRE) aTotal[27] := GetNewPar("MV_GERAUT",.T.)
(PRE) aTotal[22] := 0
(PRE) aTotal[23] := {}
(PRE) aTotal[24] := Iif(aTotal[20] > 0 .Or. aTotal[21] > 0,CalcRB(aTotal[9][1],aTotal[9][2],aTotal[22],.F.,aTotal[23],.T.),0)
(PRE) aTotal[25] := Iif(aTotal[27]==.T.,aTotal[24] * aTotal[20] / 100, 0)
(PRE) aTotal[26] := Iif(aTotal[27]==.T.,aTotal[24] * aTotal[21] / 100, 0)
(PRE) aTotal[27] := 0   
(PRE) aTotal[28] := 0   
(PRE) aTotal[30] := 0
(PRE) aTotal[31] := 0
(PRE) aTotal[32] := 0
(PRE) aTotal[33] := 0     
(PRE) aTotal[34] := .T.   
(PRE) aTotal[35] := 0     
(PRE) aTotal[36] := 0     
(PRE) aTotal[37] := 0  
(PRE) aTotal[38] := 0      
(PRE) aTotal[39] := 0      
(PRE) aTotal[40] := 0
(PRE) aTotal[41] := 0     
(PRE) aTotal[42] := 0     
(POS)     
[APURACAO ICMS]
(PRE) {|x| aTotal[01] += IIF(SuperGetMv('MV_ESTADO')=='SP'.And. aTotal[14] .And. x[10]>=0.And.AllTrim(x[1])$"291#297#2551#2556#2557#2552",Iif(x[4]==0,((x[11]-x[5]-Iif(X[134]>0,x[134],0))*SuperGetMv('MV_ICMPAD')/100),x[10]+x[4]),0)}
(PRE) {|x| aTotal[02] += IIF(SuperGetMv('MV_ESTADO')=='SP'.And. aTotal[14] .And. x[10]>=0.And.AllTrim(x[1])$"291#297#2551#2556#2557#2552",IIf(x[4]==0,((x[11]-x[5]-Iif(X[134]>0,x[134],0))*SuperGetmv('MV_ICMPAD')/100)-Iif(x[11]-x[5]<>0,x[10],0),x[4]),0)}
(PRE) {|x| aTotal[12] += IIF(SuperGetMv('MV_ESTADO')=='SP' .And. !aTotal[14].And.x[76]>=0,Iif(x[75]==0,((x[77]-x[78])*SuperGetMv('MV_ICMPAD')/100),x[76]+x[75]),0)}
(PRE) {|x| aTotal[13] +=IIF(SuperGetMv('MV_ESTADO')=='SP'.And. !aTotal[14] .And.x[76]>=0,IIf(x[75]==0,((x[77]-x[78])*SuperGetmv('MV_ICMPAD')/100)-x[76],x[75]),0)}
(PRE) {|x| Iif ((SuperGetMv('MV_ESTADO')=='SP' .And. SubStr(AllTrim(x[1]),1,1)$"567" .And. x[37]>0 .And. aTotal[04] ), aTotal[03] += x[37], aTotal[03] += 0)}
(PRE) {|x| aTotal[05] += Iif(SuperGetMv('MV_ESTADO')=='SP' .And. AllTrim(x[1])$aTotal[07],x[08],0)}
(PRE) {|x| Iif (SuperGetMv('MV_ESTADO')=='SP' .And. x[50]>0 .And. SubStr(AllTrim(x[1]),1,1)$"123", aTotal[27] += x[50], aTotal[27] += 0)}
(PRE) {|x| Iif (SuperGetMv('MV_ESTADO')=='SP' .And. x[50]>0 .And. x[23]>0 .And. SubStr(AllTrim(x[1]),1,1)$"123", aTotal[28] += (x[23]-x[50]), aTotal[28] += 0)}
(PRE) {|x| aTotal[06] += Iif(SuperGetMv('MV_ESTADO')=='SP' .And. AllTrim(x[1])$aTotal[08],x[08],0)}
(PRE) {|x| aTotal[10] += IIf((aTotal[11] .And. SuperGetMv("MV_ESTADO")=="SP" .And. x[34]>0), x[34], 0)}
(PRE) {|x| aTotal[30] := Iif(SuperGetMv('MV_ESTADO')=='SP' .And. x[65]>0,x[65],0)}
(PRE) {|x| aTotal[31] += IIf(SuperGetMv("MV_ESTADO")=="SP" .And. x[84]>0,x[84],0)} 
(PRE) {|x| aTotal[32] += IIf(( aTotal[15] .And. SuperGetMv("MV_ESTADO")=="SP" .And. x[79]>0),x[79],0)}
(PRE) {|x| aTotal[33] += IIf(( aTotal[16] .And. SuperGetMv("MV_ESTADO")=="SP" .And. x[82]>0),x[82],0)} 
(PRE) {|x| aTotal[35] += IIf((aTotal[34] .And. SuperGetMv("MV_ESTADO")=="SP" .And. SubStr(AllTrim (x[1]),1,1)$"1" .And. x[86]>0), x[86], 0)} 
(PRE) {|x| aTotal[36] := Iif(SuperGetMv('MV_ESTADO')=='SP' .And. x[96]>0,x[96],0)}
(PRE) {|x| aTotal[37] += IIf((aTotal[34] .And. SuperGetMv("MV_ESTADO")=="SP" .And. SubStr(AllTrim (x[1]),1,1)$"5" .And. x[97]>0), x[97], 0)}
(PRE) {|x| aTotal[38] += IIf((aTotal[34] .And. SuperGetMv("MV_ESTADO")=="SP" .And. SubStr(AllTrim (x[1]),1,1)$"5" .And. x[98]>0), x[98], 0)}
(PRE) {|x| aTotal[39] += IIf((aTotal[34] .And. SuperGetMv("MV_ESTADO")=="SP" .And. SubStr(AllTrim (x[1]),1,1)$"1" .And. x[99]>0), x[99], 0)} 
(PRE) {|x| aTotal[40] += Iif(SuperGetMv('MV_ESTADO')=='SP' .And. x[100]>0,x[100],0)}
(PRE) {|x| aTotal[42] += x[131]}
(PRE) {|x| Iif (SuperGetMv('MV_ESTADO')=='SP' .And. SubStr(AllTrim(x[1]),1,1)>="5" .And. x[102]>0, aTotal[41] += x[102], aTotal[41] += 0)}
(POS)
[POS-APURACAO]  
002=002.07;Inciso II do Artigo 117 do RICMS ;aTotal[01];;
002=002.07;Inciso II do Artigo 117 do RICMS ;aTotal[12];;
002=002.06;Artigo 116, I do RICMS/0;aTotal[05]+aTotal[06];;
002=002.12;Pagamento Antecipado - Art.277 do RICMS;aTotal[27];;
002=002.14;Entradas de Residuos de Materiais;aTotal[31];;
002=002.20;FUST    ;aTotal[25];            ;.F.;          ;
002=002.21;FUNTTEL ;aTotal[26];            ;.F.;          ;
002=002.22;Remessa para Venda Fora do Estabelecimento;aTotal[40];;
003=003.98;Estorno Crédito Presumido Decreto 52.381 de 19.11.2007;aTotal[42];;
003=003.99;Devolução de venda - estorno ref. Artº 271 do RICMS/00;aTotal[36];;
006=007.21;Cred. Relativ. Oper. Propria Substituto ;aTotal[30];;
006=007.18;Inciso I do Artigo 117 do RICMS ;aTotal[02];;
006=007.18;Inciso I do Artigo 117 do RICMS ;aTotal[13];;
006=007.32;Credito Outorgado - Art. 31 do Anexo III do RICMS;aTotal[35];; 
006=007.33;Credito Outorgado - Art. 32 do Anexo III do RICMS;aTotal[37];;
006=007.34;Credito Outorgado - Art. 33 do Anexo III do RICMS;aTotal[38];; 
006=007.35;Credito Outorgado - Art. 34 DO Anexo III DO RICMS;aTotal[39];;
006=007.36;Credito Outorgado - Art. 11 do ANEXO III DO RICMS;aTotal[41];; 
007=007.33;Remessa para Venda Fora do Estabelecimento;aTotal[40];;
006=007.99;Recolhimento Antecipado - Art.426-A do RICMS;aTotal[27];;
006=007.09;Credito Presumido - Servicos de Transporte ;IIf(aTotal[03]>0,aTotal[03],0);;
006=006.01;Credito Presumido - Decreto 52.381 de 19.11.2007;aTotal[10];;
006=006.02;Credito Presumido - Decreto 52.586 de 28.12.2007;aTotal[33];;   
ST 002=002.99;Pagamento Antecipado - Art.277 do RICMS;aTotal[28]+aTotal[32];;
ST 007=007.99;Recolhimento Antecipado - Art.426-A do RICMS;aTotal[28]+aTotal[32];;
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
