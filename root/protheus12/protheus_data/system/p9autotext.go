[PRE-APURACAO]
(PRE) aTotal := Array(37)
(PRE) aTotal[01] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[02] := FsApCiap(aTotal[1][1],aTotal[1][2])
(PRE) aTotal[03] := 0
(PRE) aTotal[04] := 0
(PRE) aTotal[05] := 0
(PRE) aTotal[06] := 0
(PRE) aTotal[20] := GetNewPar("MV_FUST",0)
(PRE) aTotal[21] := GetNewPar("MV_FUNTTEL",0)
(PRE) aTotal[27] := GetNewPar("MV_GERAUT",.T.)
(PRE) aTotal[22] := 0
(PRE) aTotal[23] := {}
(PRE) aTotal[24] := Iif(aTotal[20] > 0 .Or. aTotal[21] > 0,CalcRB(aTotal[1][1],aTotal[1][2],aTotal[22],.F.,aTotal[23],.T.),0)
(PRE) aTotal[25] := Iif(aTotal[27]==.T.,aTotal[24] * aTotal[20] / 100, 0)
(PRE) aTotal[26] := Iif(aTotal[27]==.T.,aTotal[24] * aTotal[21] / 100, 0)
(PRE) aTotal[30] := 0
(PRE) aTotal[31] := .T.
(PRE) aTotal[32] := 0
003=0001;Estorno CIAP;aTotal[2][1]; ;
006=0001;Relativo a entrada de bem do Ativo Permanente;aTotal[2][2]; ;
(POS)
[APURACAO ICMS]
(PRE) {|x| aTotal[3]  += Iif(SubStr(x[1],1,1)$'123',x[22],0)}
(PRE) {|x| aTotal[4]  += Iif(SubStr(x[1],1,1)$'123',x[22],0)} 
(PRE) {|x| aTotal[5]  += Iif(x[51]>0,x[51]* 2/100,0)} 
(PRE) {|x| aTotal[6]  += Iif(x[52]>0,x[52]* 2/100,0)}
(PRE) {|x| aTotal[30] += Iif((SuperGetMv("MV_ESTADO")=="GO" .And. x[10]>0) .AND. !GetNewPar("MV_USASPED",.T.) , x[10], 0)}
(PRE) {|x| aTotal[32] += IIf((aTotal[31] .And. SuperGetMv("MV_ESTADO")=="GO" .And. SubStr(AllTrim (x[1]),1,1)$"6" .And. x[110]>0), x[110], 0)}
(POS)
[POS-APURACAO]
002=;Deb. Aquis. Merc. ST Art 4º,I,"a",IN 572/02-GSF;aTotal[3];;
002=002.01;Diferencial de Aliquotas;aTotal[30];; 
002=002.20;FUST    ;aTotal[25];            ;.F.;          ;
002=002.21;FUNTTEL ;aTotal[26];            ;.F.;          ;
002=045;Fundo de Protecao Social do Estado de GO;aTotal[5];;
006=;Cred. ICMS ST Art 4º,I,"a",IN 572/02-GSF;aTotal[4];;
006=006.02;Cred. Outorgado Inc.III - Art.11 Anexo IX RCTE-GO/97;aTotal[32];;
ST 002=046;Fundo de Protecao Social do Estado de GO;aTotal[6];;  
(POS)
[OBSERVACAO]
(PRE) aTotal := Array(4)
(PRE) aTotal[4] := GetNewPar("MV_IN572OBS",.T.)
(PRE) aTotal[1] :=0
(PRE) aTotal[2] :=0
(PRE) aTotal[3] :=0
(PRE) aTotal[1] := {{100,0,0},{20,0.20,20},{350,0.30,40},{500,0.40,75},{700,0.50,125},{900,0.60,195},{1200,0.70,285},{1500,0.80,405},{1800,0.90,555},{999999999999999,1,735}}
OBS=Iif(aTotal[4]==.T.,"IMPOSTO A PAGAR = VR.ICMS X TAXA DE EFETIVO - VR.A DEDUZIR","")
OBS=Iif(aTotal[4]==.T.,{|x| nValor:=x[aScan(x,{|x| x[1]=="013"})][4],_nX:=aScan(aTotal[1],{|x| x[1]>=nValor}),aTotal[2] := (nValor*aTotal[1][_nX][2])-aTotal[1][_nX][3],"IMPOSTO A PAGAR = "+TransForm(nValor,"@R 999,999,999.99")+" x "+TransForm(aTotal[1][_nX][2],"@r 99.99")+" - "+TransForm(aTotal[1][_nX][3],"@r 999,999.99")+" = "+TransForm(aTotal[2],"@r 999,999,999.99")},"")
OBS=Iif(aTotal[4]==.T.,"DE ACORDO COM A IN 572/02, O VALOR DO IMPOSTO PODE SER DEDUZIDO","")
OBS=Iif(aTotal[4]==.T.,"DO ICMS ST RETIDO + SALDO CREDOR PERIODO ANTERIOR.","")
OBS=Iif(aTotal[4]==.T.,"IMPOSTO A RECOLHER = IMPOSTO - ICMS ST RETIDO - SALDO CREDOR PER.ANTERIOR","")
OBS=Iif(aTotal[4]==.T.,{|x| nValor:=x[aScan(x,{|x| x[1]=="009"})][4],aTotal[3]:=aTotal[2]-nValor,"IMPOSTO A RECOLHER = "+TransForm(aTotal[2],"@r 999,999,999.99")+" - 0,00 - "+TransForm(nValor,"@r 999,999,999.99")+" = "+TransForm(aTotal[2]-nValor,"@r 999,999,999.99")},"")
OBS=Iif(aTotal[4]==.T.,{|x| "EMITIR DARE COD 124 NO VALOR DE "+TransForm(aTotal[3],"@r 999,999,999.99")},"")
(POS)
