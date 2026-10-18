[PRE-APURACAO]
(PRE) aTotal     := Array(31)
(PRE) aTotal[01] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[02] := FsApCiap(aTotal[1][1],aTotal[1][2])
(PRE) aTotal[03] := 0
(PRE) aTotal[04] := "Composicao do array aTotal[15] = [01]: Valor Minimo da Faixa, [02]: Valor Maximo da Faixa, [03]: Valor de Deducao da Base de Calculo, [04]: Aliquota da Faixa, [05]: Valor Calculado na Faixa Anterior, [06]: Valor Fixo da Faixa quando nao ha calculo"
(PRE) aTotal[05] := 0
(PRE) aTotal[06] := 0
(PRE) aTotal[07] := ""
(PRE) aTotal[08] := 0
(PRE) aTotal[09] := 0
(PRE) aTotal[10] := 0
(PRE) aTotal[11] := 0
(PRE) aTotal[12] := 0  
(PRE) aTotal[13] := 0
(PRE) aTotal[14] := 0  
(PRE) aTotal[15] := {{0,5000,0,0,0,25},{5000,8800,0,0.005,0,0},{8800,17700,8800,0.01,44,0},{17700,35600,17700,0.0195,133,0},{35600,71000,35600,0.0375,482.05,0},{71000,106800,71000,0.0485,1809.55,0},{106800,2000000,106800,0.0595,3545.85,0}}
(PRE) aTotal[16] := 0  
(PRE) aTotal[17] := 0  
(PRE) aTotal[18] := 0 
(PRE) aTotal[19] := 0  
(PRE) aTotal[20] := GetNewPar("MV_FUST",0)
(PRE) aTotal[21] := GetNewPar("MV_FUNTTEL",0)
(PRE) aTotal[22] := 0
(PRE) aTotal[23] := {}
(PRE) aTotal[24] := Iif(aTotal[20] > 0 .Or. aTotal[21] > 0,CalcRB(aTotal[1][1],aTotal[1][2],aTotal[22],.F.,aTotal[23],.T.),0)
(PRE) aTotal[25] := aTotal[24] * aTotal[20] / 100
(PRE) aTotal[26] := aTotal[24] * aTotal[21] / 100
(PRE) aTotal[27] := DetDatas(MV_PAR01,MV_PAR02,3,MV_PAR05)
(PRE) aTotal[28] := 0
(PRE) aTotal[28] := Iif(GetNewPar("MV_SCARRP9",.F.),CretArroz(aTotal[27][1],aTotal[27][2]),0)                   
(PRE) aTotal[29] := GetNewPar("MV_DTAFECP","")
(PRE) aTotal[30] := Iif(!Empty(aTotal[29]),Iif(Substr(aTotal[29],3,4)+ Substr(aTotal[29],1,2)<=Substr(Dtos(aTotal[01][1]),1,6),.T.,.F.),.F.)                    
(PRE) aTotal[31] := 0
003=003.01;Estorno CIAP;aTotal[02][01]; ;
006=006.01;Credito CIAP Parag. 2 Art 37 RICMS/SC;aTotal[02][02]; ;                          
(POS)
[APURACAO ICMS]
(PRE) {|x| aTotal[07] := &(GetNewPar("MV_GIASC01",{"",""}))}
(PRE) {|x| aTotal[06] += IiF(AllTrim(x[1])$aTotal[07][1],IIf(SubStr(x[1],1,1)$"123",-1*x[11],x[11]),0)}
(PRE) {|x| aTotal[09] += Iif (GetNewPar("MV_P9AUTO",.F.) .And. x[18]>0, x[18], 0)} 
(PRE) {|x| aTotal[10] += Iif (GetNewPar("MV_P9AUTO",.F.) .And. x[17]>0, x[17], 0)}	
(PRE) {|x| aTotal[03] += IIf(SubStr(x[1],1,1)$"123",-1*x[4],x[4])} 
(PRE) {|x| aTotal[11] += IIf(SubStr(x[1],1,1)$"123",x[4],0)} 
(PRE) {|x| aTotal[18] += IIf(x[48]>0,x[48],0)}
(PRE) {|x| aTotal[19] += IIf(x[34]>0,x[34],0)}
(PRE) {|x| aTotal[31] += Iif(SuperGetMv('MV_ESTADO')=='SC' .And. x[19]== "RJ" .And. SubStr(AllTrim(x[1]),1,1)=="6" .And. x[56]>0 .And. aTotal[30], x[56],0) }
002=25020;Deb. por dif. de aliq. de ativo permanente;aTotal[09];;
002=25030;Deb. por dif. de aliq. de mat. de uso de consumo;aTotal[10];;
(POS)
[POS-APURACAO]
(PRE) aTotal[13] := aScan(aTotal[15],{|x| aTotal[06] > x[1] .And. aTotal[06]<= x[2]})
(PRE) aTotal[14] := Iif(aTotal[13] > 0,((aTotal[06] - aTotal[15][aTotal[13]][3]) * aTotal[15][aTotal[13]][4]) + aTotal[15][aTotal[13]][5],0)
(PRE) aTotal[06] := Iif(aTotal[13] > 0,Iif(aTotal[15][aTotal[13]][6]>0,aTotal[15][aTotal[13]][6],aTotal[14]),0)
(PRE) aTotal[12] := aTotal[06] * GetNewPar("MV_FUNDSOC",0) / 100
(PRE) aTotal[16] := Iif(aTotal[03] > 0, aTotal[03] * GetNewPar("MV_FUNDSOC",0) / 100, 0)
(PRE) aTotal[17] := Iif(aTotal[12] > 0,aTotal[12],aTotal[16])
002=1303;Optante pelo Simples;NoRound(aTotal[06],2);;
002=002.20;FUST    ;aTotal[25];            ;.F.;          ;
002=002.21;FUNTTEL ;aTotal[26];            ;.F.;          ;
006=44130;Fundo Social;NoRound(aTotal[17],2);; 
006=44131;Credito 10% Fundo Social;NoRound(aTotal[17]*0.10,2);;
006=44190;Credito Presumido Simples Nacional;NoRound(aTotal[18],2);;
006=006.04;Credito Presumido;NoRound(aTotal[19],2);;
006=006.05;Credito Pres. Op. Interestaduais de Arroz;NoRound(aTotal[28],2);;
ST 014=014.01;Adicional relativo ao FECP;Iif (aTotal[31]>0, aTotal[31], 0);;  
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
