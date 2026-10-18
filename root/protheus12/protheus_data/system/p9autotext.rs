[PRE-APURACAO]
(PRE) aTotal := Array(34)
(PRE) aTotal[01] := 0
(PRE) aTotal[02] := 0   
(PRE) aTotal[03] := DetDatas(MV_PAR01,MV_PAR02,MV_PAR04,MV_PAR05)
(PRE) aTotal[20] := GetNewPar("MV_FUST",0)
(PRE) aTotal[21] := GetNewPar("MV_FUNTTEL",0)
(PRE) aTotal[27] := GetNewPar("MV_GERAUT",.T.)
(PRE) aTotal[22] := 0
(PRE) aTotal[23] := {}
(PRE) aTotal[24] := Iif(aTotal[20] > 0 .Or. aTotal[21] > 0,CalcRB(aTotal[3][1],aTotal[3][2],aTotal[22],.F.,aTotal[23],.T.),0)
(PRE) aTotal[25] := Iif(aTotal[27]==.T.,aTotal[24] * aTotal[20] / 100, 0)
(PRE) aTotal[26] := Iif(aTotal[27]==.T.,aTotal[24] * aTotal[21] / 100, 0)
(PRE) aTotal[27] := 0 
(PRE) aTotal[29] := 0 
(PRE) aTotal[30] := 0
(PRE) aTotal[31] := 0
(PRE) aTotal[32] := GetNewPar("MV_USASPED",.F.)
(PRE) aTotal[33] := 0
(PRE) aTotal[34] := Iif(FindFunction("ResICMSST"),ResICMSST(),{0,0,0,0,0})
(POS) 
[APURACAO ICMS]
(PRE) {|x| Iif(SuperGetMv('MV_ESTADO')=='RS' .And. x[50] > 0,aTotal[27] += x[50]	,aTotal[27] += 0)}
(PRE) {|x| IIf(SuperGetMv("MV_ESTADO")=='RS' .And. SubStr(AllTrim(x[1]),1,1)>="5" .AND. aTotal[32] .And. x[119]>0, aTotal[29] += x[119], aTotal[29] += 0)}
(PRE) {|x| Iif(SuperGetMv('MV_ESTADO')=='RS' .And. SubStr(x[1],1,1)$"12" .And. x[108] > 0,aTotal[30] += x[108],aTotal[30] += 0)}
(PRE) {|x| Iif(SuperGetMv('MV_ESTADO')=='RS' .And. SubStr(x[1],1,1)$"12" .And. x[112] > 0,aTotal[31] += x[112],aTotal[31] += 0)}
(POS)
[POS-APURACAO]
(PRE) aeval(acols5,{|x| iif(x[1]=='002' .and. x[4]>0 .and. empty(x[2]) .and. !empty(x[7]),atotal[33]+=x[4],0)})
002=002.20;FUST    ;aTotal[25];            ;.F.;          ;
002=002.21;Antecipação Tributaria - Livro II artigo 25 inciso X do RICMS RS ; iif((atotal[27]-atotal[33])<0,0,atotal[27]-atotal[33]);            ;.F.;          ;
(PRE)
006=006.01;Credito Estimulo;aTotal[1];;
006=006.02;Info;aTotal[2];; 
006=006.03;Credito Presumido Art.32 RICMS/RS;aTotal[29]+aTotal[31];; 
006=006.04;Credito aquisicao Optantes do Simples Nacional;aTotal[30];;
006=006.05;Credito Estoque - Parcelado - RS021920;aTotal[34][1];;
003=003.02;Estorno do saldo credor a restituir - RS011921;Iif(MV_PAR03 <> "*",aTotal[34][2],0);;
ST 007=007.01;Apropriação do valor a restituir - RS121921;Iif(MV_PAR03 == "*",aTotal[34][2],0);;
012=012.01;Estorno do valor a complementar - RS041921;Iif(MV_PAR03 <> "*",aTotal[34][3],0);;
ST 002=002.01;Apropriação do valor a complementar - RS101921;Iif(MV_PAR03 == "*",aTotal[34][3],0);;
(POS)
[OBSERVACAO]
(PRE)
OBS=""
(POS)
