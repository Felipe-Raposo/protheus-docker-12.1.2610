#INCLUDE "PROTHEUS.CH"  
#INCLUDE "APWEBSRV.CH" 

/* ===============================================================================
WSDL Location    http://localhost:8070/NFESLOC.apw?WSDL
Generado en        10/08/12 14:18:40
Observaciones      Codigo Fuente generado por ADVPL WSDL Client 1.111215
                 Modificaciones en este archivo pueden causar funcionamiento incorrecto
                 y se perderan en caso de que se genere nuevamente el codigo fuente.
=============================================================================== */

User Function _SYGJEMX ; Return  // "dummy" function - Internal Use 

/* -------------------------------------------------------------------------------
WSDL Service WSNFESLOC
------------------------------------------------------------------------------- */

WSCLIENT WSNFESLOC

	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD RESET
	WSMETHOD CLONE
	WSMETHOD CHECKPERMISOARG
	WSMETHOD COMPROBANTECONSTATAR
	WSMETHOD DUMMYARG
	WSMETHOD GETAUTHREM
	WSMETHOD GETCMPARG
	WSMETHOD GETDSTCUITARG
	WSMETHOD GETDSTPAISARG
	WSMETHOD GETIDIOMASARG
	WSMETHOD GETINCOTERMSARG
	WSMETHOD GETLASTCMPARG
	WSMETHOD GETLASTIDARG
	WSMETHOD GETPARCTZARG
	WSMETHOD GETPARMONARG
	WSMETHOD GETPARUMEDARG
	WSMETHOD GETPTOVENTAARG
	WSMETHOD GETTIPOCBTEARG
	WSMETHOD GETTIPOEXPOARG
	WSMETHOD MONITORLOC
	WSMETHOD MONITORREMITO
	WSMETHOD REMESSAARG
	WSMETHOD REMESSAREMITO
	WSMETHOD RETARQLOTEREMITO

	WSDATA   _URL                      AS String
	WSDATA   _HEADOUT                  AS Array of String
	WSDATA   _COOKIES                  AS Array of String
	WSDATA   cUSERTOKEN                AS string
	WSDATA   cID_ENT                   AS string
	WSDATA   cIDPERMISO                AS string
	WSDATA   nDST_MERC                 AS integer
	WSDATA   oWSCHECKPERMISOARGRESULT  AS NFESLOC_LCOPERMISSPAIS
	WSDATA   cCUIT                     AS string
	WSDATA   cCBTEMODO                 AS string
	WSDATA   cCUITEMISOR               AS string
	WSDATA   cPTOVTA                   AS string
	WSDATA   cCBTETIPO                 AS string
	WSDATA   cCBTENRO                  AS string
	WSDATA   cCBTEFCH                  AS string
	WSDATA   cCIMPTOTAL                AS string
	WSDATA   cCODAUTORIZACION          AS string
	WSDATA   cDOCTIPORECEPTOR          AS string
	WSDATA   cDOCNRORECEPTOR           AS string
	WSDATA   cMODCONSULT               AS string
	WSDATA   oWSCOMPROBANTECONSTATARRESULT AS NFESLOC_RESCOMPROVANTE
	WSDATA   oWSDUMMYARGRESULT         AS NFESLOC_DUMMYRESULT
	WSDATA   cDATETIMEEXP              AS string
	WSDATA   cDATETIMEGER              AS string
	WSDATA   cCWSSERVICE               AS string
	WSDATA   oWSGETAUTHREMRESULT       AS NFESLOC_LOCRESPAUTH
	WSDATA   oWSGETCMP                 AS NFESLOC_CMP
	WSDATA   oWSGETCMPARGRESULT        AS NFESLOC_RESCMP
	WSDATA   oWSGETDSTCUITARGRESULT    AS NFESLOC_DSTCUITS
	WSDATA   oWSGETDSTPAISARGRESULT    AS NFESLOC_DSTPAISES
	WSDATA   oWSGETIDIOMASARGRESULT    AS NFESLOC_GETPARIDIOMAS
	WSDATA   oWSGETINCOTERMSARGRESULT  AS NFESLOC_RESPINCONTERMS
	WSDATA   cPTO_VENTA                AS string
	WSDATA   cTIPO_CBTE                AS string
	WSDATA   oWSGETLASTCMPARGRESULT    AS NFESLOC_RETLASTCMP
	WSDATA   cMODELOWS                 AS string
	WSDATA   oWSGETLASTIDARGRESULT     AS NFESLOC_LASTIDESTR
	WSDATA   cMON_ID                   AS string
	WSDATA   oWSGETPARCTZARGRESULT     AS NFESLOC_GETPARCTZ
	WSDATA   oWSGETPARMONARGRESULT     AS NFESLOC_RESPMON
	WSDATA   oWSGETPARUMEDARGRESULT    AS NFESLOC_RESUMED
	WSDATA   oWSGETPTOVENTAARGRESULT   AS NFESLOC_RESVENTA
	WSDATA   oWSGETTIPOCBTEARGRESULT   AS NFESLOC_TIPOCBTE
	WSDATA   oWSGETTIPOEXPOARGRESULT   AS NFESLOC_TIPOEX
	WSDATA   cIDINICIAL                AS string
	WSDATA   cIDFINAL                  AS string
	WSDATA   oWSMONITORLOCRESULT       AS NFESLOC_ARRAYOFMONITORFAC
	WSDATA   cMODELO                   AS string
	WSDATA   oWSMONITORREMITORESULT    AS NFESLOC_RESPMONITOR
	WSDATA   oWSLOCNFE                 AS NFESLOC_NOTASLOCARR
	WSDATA   oWSREMESSAARGRESULT       AS NFESLOC_LOCID
	WSDATA   oWSREMESSAREMITORESULT    AS NFESLOC_LOCXMLID
	WSDATA   cNAMEARQ                  AS string
	WSDATA   oWSRETARQLOTEREMITORESULT AS NFESLOC_RETARQLOTE

	// Estruturas mantidas por compatibilidade - NÃO USAR
	WSDATA   oWSCMP                    AS NFESLOC_CMP
	WSDATA   oWSNOTASLOCARR            AS NFESLOC_NOTASLOCARR

ENDWSCLIENT

WSMETHOD NEW WSCLIENT WSNFESLOC 
::Init()
If !FindFunction("XMLCHILDEX")
	UserException("O Código-Fonte Client atual requer os executáveis do Protheus Build [7.00.090818P-20100401] ou superior. Atualize o Protheus ou gere o Código-Fonte novamente utilizando o Build atual.")
EndIf
Return Self

WSMETHOD INIT WSCLIENT WSNFESLOC
	::oWSCHECKPERMISOARGRESULT := NFESLOC_LCOPERMISSPAIS():New()
	::oWSCOMPROBANTECONSTATARRESULT := NFESLOC_RESCOMPROVANTE():New()
	::oWSDUMMYARGRESULT  := NFESLOC_DUMMYRESULT():New()
	::oWSGETAUTHREMRESULT := NFESLOC_LOCRESPAUTH():New()
	::oWSGETCMP          := NFESLOC_CMP():New()
	::oWSGETCMPARGRESULT := NFESLOC_RESCMP():New()
	::oWSGETDSTCUITARGRESULT := NFESLOC_DSTCUITS():New()
	::oWSGETDSTPAISARGRESULT := NFESLOC_DSTPAISES():New()
	::oWSGETIDIOMASARGRESULT := NFESLOC_GETPARIDIOMAS():New()
	::oWSGETINCOTERMSARGRESULT := NFESLOC_RESPINCONTERMS():New()
	::oWSGETLASTCMPARGRESULT := NFESLOC_RETLASTCMP():New()
	::oWSGETLASTIDARGRESULT := NFESLOC_LASTIDESTR():New()
	::oWSGETPARCTZARGRESULT := NFESLOC_GETPARCTZ():New()
	::oWSGETPARMONARGRESULT := NFESLOC_RESPMON():New()
	::oWSGETPARUMEDARGRESULT := NFESLOC_RESUMED():New()
	::oWSGETPTOVENTAARGRESULT := NFESLOC_RESVENTA():New()
	::oWSGETTIPOCBTEARGRESULT := NFESLOC_TIPOCBTE():New()
	::oWSGETTIPOEXPOARGRESULT := NFESLOC_TIPOEX():New()
	::oWSMONITORLOCRESULT := NFESLOC_ARRAYOFMONITORFAC():New()
	::oWSMONITORREMITORESULT := NFESLOC_RESPMONITOR():New()
	::oWSLOCNFE          := NFESLOC_NOTASLOCARR():New()
	::oWSREMESSAARGRESULT := NFESLOC_LOCID():New()
	::oWSREMESSAREMITORESULT := NFESLOC_LOCXMLID():New()
	::oWSRETARQLOTEREMITORESULT := NFESLOC_RETARQLOTE():New()

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSCMP             := ::oWSGETCMP
	::oWSNOTASLOCARR     := ::oWSLOCNFE
Return

WSMETHOD RESET WSCLIENT WSNFESLOC
	::cUSERTOKEN         := NIL 
	::cID_ENT            := NIL 
	::cIDPERMISO         := NIL 
	::nDST_MERC          := NIL
	::oWSCHECKPERMISOARGRESULT := NIL
	::cCUIT              := NIL 
	::cCBTEMODO          := NIL 
	::cCUITEMISOR        := NIL 
	::cPTOVTA            := NIL 
	::cCBTETIPO          := NIL 
	::cCBTENRO           := NIL 
	::cCBTEFCH           := NIL 
	::cCIMPTOTAL         := NIL 
	::cCODAUTORIZACION   := NIL 
	::cDOCTIPORECEPTOR   := NIL 
	::cDOCNRORECEPTOR    := NIL 
	::cMODCONSULT        := NIL 
	::oWSCOMPROBANTECONSTATARRESULT := NIL 
	::oWSDUMMYARGRESULT  := NIL 
	::cDATETIMEEXP       := NIL 
	::cDATETIMEGER       := NIL 
	::cCWSSERVICE        := NIL 
	::oWSGETAUTHREMRESULT := NIL 
	::oWSGETCMP          := NIL 
	::oWSGETCMPARGRESULT := NIL 
	::oWSGETDSTCUITARGRESULT := NIL 
	::oWSGETDSTPAISARGRESULT := NIL 
	::oWSGETIDIOMASARGRESULT := NIL 
	::oWSGETINCOTERMSARGRESULT := NIL 
	::cPTO_VENTA         := NIL 
	::cTIPO_CBTE         := NIL 
	::oWSGETLASTCMPARGRESULT := NIL 
	::cMODELOWS          := NIL 
	::oWSGETLASTIDARGRESULT := NIL 
	::cMON_ID            := NIL 
	::oWSGETPARCTZARGRESULT := NIL 
	::oWSGETPARMONARGRESULT := NIL 
	::oWSGETPARUMEDARGRESULT := NIL 
	::oWSGETPTOVENTAARGRESULT := NIL 
	::oWSGETTIPOCBTEARGRESULT := NIL 
	::oWSGETTIPOEXPOARGRESULT := NIL 
	::cIDINICIAL         := NIL 
	::cIDFINAL           := NIL 
	::oWSMONITORLOCRESULT := NIL 
	::cMODELO            := NIL 
	::oWSMONITORREMITORESULT := NIL 
	::oWSLOCNFE          := NIL 
	::oWSREMESSAARGRESULT := NIL 
	::oWSREMESSAREMITORESULT := NIL 
	::cNAMEARQ           := NIL 
	::oWSRETARQLOTEREMITORESULT := NIL 

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSCMP             := NIL
	::oWSNOTASLOCARR     := NIL
	::Init()
Return

WSMETHOD CLONE WSCLIENT WSNFESLOC
Local oClone := WSNFESLOC():New()
	oClone:_URL          := ::_URL 
	oClone:cUSERTOKEN    := ::cUSERTOKEN
	oClone:cID_ENT       := ::cID_ENT
	oClone:cIDPERMISO    := ::cIDPERMISO
	oClone:nDST_MERC     := ::nDST_MERC
	oClone:oWSCHECKPERMISOARGRESULT :=  IIF(::oWSCHECKPERMISOARGRESULT = NIL , NIL ,::oWSCHECKPERMISOARGRESULT:Clone() )
	oClone:cCUIT         := ::cCUIT
	oClone:cCBTEMODO     := ::cCBTEMODO
	oClone:cCUITEMISOR   := ::cCUITEMISOR
	oClone:cPTOVTA       := ::cPTOVTA
	oClone:cCBTETIPO     := ::cCBTETIPO
	oClone:cCBTENRO      := ::cCBTENRO
	oClone:cCBTEFCH      := ::cCBTEFCH
	oClone:cCIMPTOTAL    := ::cCIMPTOTAL
	oClone:cCODAUTORIZACION := ::cCODAUTORIZACION
	oClone:cDOCTIPORECEPTOR := ::cDOCTIPORECEPTOR
	oClone:cDOCNRORECEPTOR := ::cDOCNRORECEPTOR
	oClone:cMODCONSULT   := ::cMODCONSULT
	oClone:oWSCOMPROBANTECONSTATARRESULT :=  IIF(::oWSCOMPROBANTECONSTATARRESULT = NIL , NIL ,::oWSCOMPROBANTECONSTATARRESULT:Clone() )
	oClone:oWSDUMMYARGRESULT :=  IIF(::oWSDUMMYARGRESULT = NIL , NIL ,::oWSDUMMYARGRESULT:Clone() )
	oClone:cDATETIMEEXP  := ::cDATETIMEEXP
	oClone:cDATETIMEGER  := ::cDATETIMEGER
	oClone:cCWSSERVICE   := ::cCWSSERVICE
	oClone:oWSGETAUTHREMRESULT :=  IIF(::oWSGETAUTHREMRESULT = NIL , NIL ,::oWSGETAUTHREMRESULT:Clone() )
	oClone:oWSGETCMP     :=  IIF(::oWSGETCMP = NIL , NIL ,::oWSGETCMP:Clone() )
	oClone:oWSGETCMPARGRESULT :=  IIF(::oWSGETCMPARGRESULT = NIL , NIL ,::oWSGETCMPARGRESULT:Clone() )
	oClone:oWSGETDSTCUITARGRESULT :=  IIF(::oWSGETDSTCUITARGRESULT = NIL , NIL ,::oWSGETDSTCUITARGRESULT:Clone() )
	oClone:oWSGETDSTPAISARGRESULT :=  IIF(::oWSGETDSTPAISARGRESULT = NIL , NIL ,::oWSGETDSTPAISARGRESULT:Clone() )
	oClone:oWSGETIDIOMASARGRESULT :=  IIF(::oWSGETIDIOMASARGRESULT = NIL , NIL ,::oWSGETIDIOMASARGRESULT:Clone() )
	oClone:oWSGETINCOTERMSARGRESULT :=  IIF(::oWSGETINCOTERMSARGRESULT = NIL , NIL ,::oWSGETINCOTERMSARGRESULT:Clone() )
	oClone:cPTO_VENTA    := ::cPTO_VENTA
	oClone:cTIPO_CBTE    := ::cTIPO_CBTE
	oClone:oWSGETLASTCMPARGRESULT :=  IIF(::oWSGETLASTCMPARGRESULT = NIL , NIL ,::oWSGETLASTCMPARGRESULT:Clone() )
	oClone:cMODELOWS     := ::cMODELOWS
	oClone:oWSGETLASTIDARGRESULT :=  IIF(::oWSGETLASTIDARGRESULT = NIL , NIL ,::oWSGETLASTIDARGRESULT:Clone() )
	oClone:cMON_ID       := ::cMON_ID
	oClone:oWSGETPARCTZARGRESULT :=  IIF(::oWSGETPARCTZARGRESULT = NIL , NIL ,::oWSGETPARCTZARGRESULT:Clone() )
	oClone:oWSGETPARMONARGRESULT :=  IIF(::oWSGETPARMONARGRESULT = NIL , NIL ,::oWSGETPARMONARGRESULT:Clone() )
	oClone:oWSGETPARUMEDARGRESULT :=  IIF(::oWSGETPARUMEDARGRESULT = NIL , NIL ,::oWSGETPARUMEDARGRESULT:Clone() )
	oClone:oWSGETPTOVENTAARGRESULT :=  IIF(::oWSGETPTOVENTAARGRESULT = NIL , NIL ,::oWSGETPTOVENTAARGRESULT:Clone() )
	oClone:oWSGETTIPOCBTEARGRESULT :=  IIF(::oWSGETTIPOCBTEARGRESULT = NIL , NIL ,::oWSGETTIPOCBTEARGRESULT:Clone() )
	oClone:oWSGETTIPOEXPOARGRESULT :=  IIF(::oWSGETTIPOEXPOARGRESULT = NIL , NIL ,::oWSGETTIPOEXPOARGRESULT:Clone() )
	oClone:cIDINICIAL    := ::cIDINICIAL
	oClone:cIDFINAL      := ::cIDFINAL
	oClone:oWSMONITORLOCRESULT :=  IIF(::oWSMONITORLOCRESULT = NIL , NIL ,::oWSMONITORLOCRESULT:Clone() )
	oClone:cMODELO       := ::cMODELO
	oClone:oWSMONITORREMITORESULT :=  IIF(::oWSMONITORREMITORESULT = NIL , NIL ,::oWSMONITORREMITORESULT:Clone() )
	oClone:oWSLOCNFE     :=  IIF(::oWSLOCNFE = NIL , NIL ,::oWSLOCNFE:Clone() )
	oClone:oWSREMESSAARGRESULT :=  IIF(::oWSREMESSAARGRESULT = NIL , NIL ,::oWSREMESSAARGRESULT:Clone() )
	oClone:oWSREMESSAREMITORESULT :=  IIF(::oWSREMESSAREMITORESULT = NIL , NIL ,::oWSREMESSAREMITORESULT:Clone() )
	oClone:cNAMEARQ      := ::cNAMEARQ
	oClone:oWSRETARQLOTEREMITORESULT :=  IIF(::oWSRETARQLOTEREMITORESULT = NIL , NIL ,::oWSRETARQLOTEREMITORESULT:Clone() )

	// Estruturas mantidas por compatibilidade - NÃO USAR
	oClone:oWSCMP        := oClone:oWSGETCMP
	oClone:oWSNOTASLOCARR := oClone:oWSLOCNFE
Return oClone

// WSDL Method CHECKPERMISOARG of Service WSNFESLOC

WSMETHOD CHECKPERMISOARG WSSEND cUSERTOKEN,cID_ENT,cIDPERMISO,nDST_MERC WSRECEIVE oWSCHECKPERMISOARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<CHECKPERMISOARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("IDPERMISO", ::cIDPERMISO, cIDPERMISO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("DST_MERC", ::nDST_MERC, nDST_MERC , "integer", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</CHECKPERMISOARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/CHECKPERMISOARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSCHECKPERMISOARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_CHECKPERMISOARGRESPONSE:_CHECKPERMISOARGRESULT","LCOPERMISSPAIS",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method COMPROBANTECONSTATAR of Service WSNFESLOC

WSMETHOD COMPROBANTECONSTATAR WSSEND cUSERTOKEN,cID_ENT,cCUIT,cCBTEMODO,cCUITEMISOR,cPTOVTA,cCBTETIPO,cCBTENRO,cCBTEFCH,cCIMPTOTAL,cCODAUTORIZACION,cDOCTIPORECEPTOR,cDOCNRORECEPTOR,cMODCONSULT WSRECEIVE oWSCOMPROBANTECONSTATARRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<COMPROBANTECONSTATAR xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CUIT", ::cCUIT, cCUIT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CBTEMODO", ::cCBTEMODO, cCBTEMODO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CUITEMISOR", ::cCUITEMISOR, cCUITEMISOR , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("PTOVTA", ::cPTOVTA, cPTOVTA , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CBTETIPO", ::cCBTETIPO, cCBTETIPO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CBTENRO", ::cCBTENRO, cCBTENRO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CBTEFCH", ::cCBTEFCH, cCBTEFCH , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CIMPTOTAL", ::cCIMPTOTAL, cCIMPTOTAL , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CODAUTORIZACION", ::cCODAUTORIZACION, cCODAUTORIZACION , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("DOCTIPORECEPTOR", ::cDOCTIPORECEPTOR, cDOCTIPORECEPTOR , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("DOCNRORECEPTOR", ::cDOCNRORECEPTOR, cDOCNRORECEPTOR , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MODCONSULT", ::cMODCONSULT, cMODCONSULT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</COMPROBANTECONSTATAR>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/COMPROBANTECONSTATAR",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8087/NFESLOC.apw")   

::Init()
::oWSCOMPROBANTECONSTATARRESULT:SoapRecv( WSAdvValue( oXmlRet,"_COMPROBANTECONSTATARRESPONSE:_COMPROBANTECONSTATARRESULT","RESCOMPROVANTE",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method DUMMYARG of Service WSNFESLOC

WSMETHOD DUMMYARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSDUMMYARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<DUMMYARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</DUMMYARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/DUMMYARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSDUMMYARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_DUMMYARGRESPONSE:_DUMMYARGRESULT","DUMMYRESULT",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETAUTHREM of Service WSNFESLOC

WSMETHOD GETAUTHREM WSSEND cUSERTOKEN,cID_ENT,cDATETIMEEXP,cDATETIMEGER,cCWSSERVICE WSRECEIVE oWSGETAUTHREMRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETAUTHREM xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("DATETIMEEXP", ::cDATETIMEEXP, cDATETIMEEXP , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("DATETIMEGER", ::cDATETIMEGER, cDATETIMEGER , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CWSSERVICE", ::cCWSSERVICE, cCWSSERVICE , "string", .F. , .F., 0 , NIL, .F.,.F.)  
cSoap += "</GETAUTHREM>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETAUTHREM",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8087/NFESLOC.apw")

::Init()
::oWSGETAUTHREMRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETAUTHREMRESPONSE:_GETAUTHREMRESULT","LOCRESPAUTH",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETCMPARG of Service WSNFESLOC

WSMETHOD GETCMPARG WSSEND cUSERTOKEN,cID_ENT,oWSGETCMP WSRECEIVE oWSGETCMPARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETCMPARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("GETCMP", ::oWSGETCMP, oWSGETCMP , "CMP", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETCMPARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETCMPARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETCMPARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETCMPARGRESPONSE:_GETCMPARGRESULT","RESCMP",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETDSTCUITARG of Service WSNFESLOC

WSMETHOD GETDSTCUITARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETDSTCUITARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETDSTCUITARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETDSTCUITARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETDSTCUITARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETDSTCUITARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETDSTCUITARGRESPONSE:_GETDSTCUITARGRESULT","DSTCUITS",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETDSTPAISARG of Service WSNFESLOC

WSMETHOD GETDSTPAISARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETDSTPAISARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETDSTPAISARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETDSTPAISARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETDSTPAISARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETDSTPAISARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETDSTPAISARGRESPONSE:_GETDSTPAISARGRESULT","DSTPAISES",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETIDIOMASARG of Service WSNFESLOC

WSMETHOD GETIDIOMASARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETIDIOMASARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETIDIOMASARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETIDIOMASARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETIDIOMASARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETIDIOMASARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETIDIOMASARGRESPONSE:_GETIDIOMASARGRESULT","GETPARIDIOMAS",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETINCOTERMSARG of Service WSNFESLOC

WSMETHOD GETINCOTERMSARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETINCOTERMSARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETINCOTERMSARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETINCOTERMSARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETINCOTERMSARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETINCOTERMSARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETINCOTERMSARGRESPONSE:_GETINCOTERMSARGRESULT","RESPINCONTERMS",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETLASTCMPARG of Service WSNFESLOC

WSMETHOD GETLASTCMPARG WSSEND cUSERTOKEN,cID_ENT,cPTO_VENTA,cTIPO_CBTE WSRECEIVE oWSGETLASTCMPARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETLASTCMPARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("PTO_VENTA", ::cPTO_VENTA, cPTO_VENTA , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("TIPO_CBTE", ::cTIPO_CBTE, cTIPO_CBTE , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETLASTCMPARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETLASTCMPARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETLASTCMPARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETLASTCMPARGRESPONSE:_GETLASTCMPARGRESULT","RETLASTCMP",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETLASTIDARG of Service WSNFESLOC

WSMETHOD GETLASTIDARG WSSEND cUSERTOKEN,cID_ENT,cMODELOWS WSRECEIVE oWSGETLASTIDARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETLASTIDARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MODELOWS", ::cMODELOWS, cMODELOWS , "string", .F. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETLASTIDARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETLASTIDARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETLASTIDARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETLASTIDARGRESPONSE:_GETLASTIDARGRESULT","LASTIDESTR",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETPARCTZARG of Service WSNFESLOC

WSMETHOD GETPARCTZARG WSSEND cUSERTOKEN,cID_ENT,cMON_ID WSRECEIVE oWSGETPARCTZARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETPARCTZARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MON_ID", ::cMON_ID, cMON_ID , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETPARCTZARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETPARCTZARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETPARCTZARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETPARCTZARGRESPONSE:_GETPARCTZARGRESULT","GETPARCTZ",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETPARMONARG of Service WSNFESLOC

WSMETHOD GETPARMONARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETPARMONARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETPARMONARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETPARMONARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETPARMONARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETPARMONARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETPARMONARGRESPONSE:_GETPARMONARGRESULT","RESPMON",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETPARUMEDARG of Service WSNFESLOC

WSMETHOD GETPARUMEDARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETPARUMEDARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETPARUMEDARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETPARUMEDARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETPARUMEDARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETPARUMEDARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETPARUMEDARGRESPONSE:_GETPARUMEDARGRESULT","RESUMED",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETPTOVENTAARG of Service WSNFESLOC

WSMETHOD GETPTOVENTAARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETPTOVENTAARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETPTOVENTAARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETPTOVENTAARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETPTOVENTAARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETPTOVENTAARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETPTOVENTAARGRESPONSE:_GETPTOVENTAARGRESULT","RESVENTA",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETTIPOCBTEARG of Service WSNFESLOC

WSMETHOD GETTIPOCBTEARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETTIPOCBTEARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETTIPOCBTEARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETTIPOCBTEARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETTIPOCBTEARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETTIPOCBTEARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETTIPOCBTEARGRESPONSE:_GETTIPOCBTEARGRESULT","TIPOCBTE",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETTIPOEXPOARG of Service WSNFESLOC

WSMETHOD GETTIPOEXPOARG WSSEND cUSERTOKEN,cID_ENT WSRECEIVE oWSGETTIPOEXPOARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETTIPOEXPOARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETTIPOEXPOARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/GETTIPOEXPOARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSGETTIPOEXPOARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GETTIPOEXPOARGRESPONSE:_GETTIPOEXPOARGRESULT","TIPOEX",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method MONITORLOC of Service WSNFESLOC

WSMETHOD MONITORLOC WSSEND cUSERTOKEN,cID_ENT,cIDINICIAL,cIDFINAL WSRECEIVE oWSMONITORLOCRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<MONITORLOC xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("IDINICIAL", ::cIDINICIAL, cIDINICIAL , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("IDFINAL", ::cIDFINAL, cIDFINAL , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</MONITORLOC>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/MONITORLOC",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSMONITORLOCRESULT:SoapRecv( WSAdvValue( oXmlRet,"_MONITORLOCRESPONSE:_MONITORLOCRESULT","ARRAYOFMONITORFAC",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method MONITORREMITO of Service WSNFESLOC

WSMETHOD MONITORREMITO WSSEND cUSERTOKEN,cID_ENT,cMODELO,cIDINICIAL,cIDFINAL WSRECEIVE oWSMONITORREMITORESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<MONITORREMITO xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MODELO", ::cMODELO, cMODELO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("IDINICIAL", ::cIDINICIAL, cIDINICIAL , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("IDFINAL", ::cIDFINAL, cIDFINAL , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</MONITORREMITO>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/MONITORREMITO",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8090/NFESLOC.apw")

::Init()
::oWSMONITORREMITORESULT:SoapRecv( WSAdvValue( oXmlRet,"_MONITORREMITORESPONSE:_MONITORREMITORESULT","RESPMONITOR",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method REMESSAARG of Service WSNFESLOC

WSMETHOD REMESSAARG WSSEND cUSERTOKEN,cID_ENT,oWSLOCNFE WSRECEIVE oWSREMESSAARGRESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<REMESSAARG xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("LOCNFE", ::oWSLOCNFE, oWSLOCNFE , "NOTASLOCARR", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</REMESSAARG>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/REMESSAARG",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8070/NFESLOC.apw")

::Init()
::oWSREMESSAARGRESULT:SoapRecv( WSAdvValue( oXmlRet,"_REMESSAARGRESPONSE:_REMESSAARGRESULT","LOCID",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method REMESSAREMITO of Service WSNFESLOC

WSMETHOD REMESSAREMITO WSSEND cUSERTOKEN,cID_ENT,oWSLOCNFE,cMODELO WSRECEIVE oWSREMESSAREMITORESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<REMESSAREMITO xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("LOCNFE", ::oWSLOCNFE, oWSLOCNFE , "NOTASLOCARR", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MODELO", ::cMODELO, cMODELO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</REMESSAREMITO>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/REMESSAREMITO",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8090/NFESLOC.apw")

::Init()
::oWSREMESSAREMITORESULT:SoapRecv( WSAdvValue( oXmlRet,"_REMESSAREMITORESPONSE:_REMESSAREMITORESULT","LOCXMLID",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method RETARQLOTEREMITO of Service WSNFESLOC

WSMETHOD RETARQLOTEREMITO WSSEND cUSERTOKEN,cID_ENT,cMODELO,cNAMEARQ WSRECEIVE oWSRETARQLOTEREMITORESULT WSCLIENT WSNFESLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<RETARQLOTEREMITO xmlns="http://webservices.totvs.com.br/nfsebra.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MODELO", ::cMODELO, cMODELO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("NAMEARQ", ::cNAMEARQ, cNAMEARQ , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</RETARQLOTEREMITO>"

oXmlRet := SvcSoapCall( ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsebra.apw/RETARQLOTEREMITO",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsebra.apw",,"1.031217",; 
	"http://localhost:8090/NFESLOC.apw")

::Init()
::oWSRETARQLOTEREMITORESULT:SoapRecv( WSAdvValue( oXmlRet,"_RETARQLOTEREMITORESPONSE:_RETARQLOTEREMITORESULT","RETARQLOTE",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.


// WSDL Data Structure LCOPERMISSPAIS

WSSTRUCT NFESLOC_LCOPERMISSPAIS
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS
	WSDATA   cSTATUS                   AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LCOPERMISSPAIS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LCOPERMISSPAIS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LCOPERMISSPAIS
	Local oClone := NFESLOC_LCOPERMISSPAIS():NEW()
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
	oClone:cSTATUS              := ::cSTATUS
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LCOPERMISSPAIS
	Local oNode1
	Local oNode2
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,"Property oWSERROS as s0:LOCFEXERR on SOAP Response not found.",NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,"Property oWSEVENTS as s0:LOCFEXEVENTS on SOAP Response not found.",NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode2)
	EndIf
	::cSTATUS            :=  WSAdvValue( oResponse,"_STATUS","string",NIL,"Property cSTATUS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure RESCOMPROVANTE

WSSTRUCT NFESLOC_RESCOMPROVANTE
	WSDATA   cCBTEMODO                 AS string
	WSDATA   cCBTENRO                  AS string
	WSDATA   cCODAUTORIZACION          AS string
	WSDATA   cDOCNRORECEPTOR           AS string
	WSDATA   cERROCODIGO               AS string
	WSDATA   cERROMSG                  AS string
	WSDATA   cRESULTADO                AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESCOMPROVANTE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESCOMPROVANTE
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESCOMPROVANTE
	Local oClone := NFESLOC_RESCOMPROVANTE():NEW()
	oClone:cCBTEMODO            := ::cCBTEMODO
	oClone:cCBTENRO             := ::cCBTENRO
	oClone:cCODAUTORIZACION     := ::cCODAUTORIZACION
	oClone:cDOCNRORECEPTOR      := ::cDOCNRORECEPTOR
	oClone:cERROCODIGO          := ::cERROCODIGO
	oClone:cERROMSG             := ::cERROMSG
	oClone:cRESULTADO           := ::cRESULTADO
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESCOMPROVANTE
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCBTEMODO          :=  WSAdvValue( oResponse,"_CBTEMODO","string",NIL,"Property cCBTEMODO as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cCBTENRO           :=  WSAdvValue( oResponse,"_CBTENRO","string",NIL,"Property cCBTENRO as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cCODAUTORIZACION   :=  WSAdvValue( oResponse,"_CODAUTORIZACION","string",NIL,"Property cCODAUTORIZACION as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cDOCNRORECEPTOR    :=  WSAdvValue( oResponse,"_DOCNRORECEPTOR","string",NIL,"Property cDOCNRORECEPTOR as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cERROCODIGO        :=  WSAdvValue( oResponse,"_ERROCODIGO","string",NIL,"Property cERROCODIGO as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cERROMSG           :=  WSAdvValue( oResponse,"_ERROMSG","string",NIL,"Property cERROMSG as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cRESULTADO         :=  WSAdvValue( oResponse,"_RESULTADO","string",NIL,"Property cRESULTADO as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure DUMMYRESULT

WSSTRUCT NFESLOC_DUMMYRESULT
	WSDATA   cAPPSERVER                AS string
	WSDATA   cAUTHSERVER               AS string
	WSDATA   cDBSERVER                 AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_DUMMYRESULT
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_DUMMYRESULT
Return

WSMETHOD CLONE WSCLIENT NFESLOC_DUMMYRESULT
	Local oClone := NFESLOC_DUMMYRESULT():NEW()
	oClone:cAPPSERVER           := ::cAPPSERVER
	oClone:cAUTHSERVER          := ::cAUTHSERVER
	oClone:cDBSERVER            := ::cDBSERVER
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_DUMMYRESULT
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cAPPSERVER         :=  WSAdvValue( oResponse,"_APPSERVER","string",NIL,"Property cAPPSERVER as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cAUTHSERVER        :=  WSAdvValue( oResponse,"_AUTHSERVER","string",NIL,"Property cAUTHSERVER as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cDBSERVER          :=  WSAdvValue( oResponse,"_DBSERVER","string",NIL,"Property cDBSERVER as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure LOCRESPAUTH

WSSTRUCT NFESLOC_LOCRESPAUTH
	WSDATA   cDESTINATION              AS string
	WSDATA   cEXPIRATION               AS string
	WSDATA   cGENERATION               AS string
	WSDATA   cSIGN                     AS string
	WSDATA   cSOURCE                   AS string
	WSDATA   cTOKEN                    AS string
	WSDATA   cUNIQUEID                 AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LOCRESPAUTH
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LOCRESPAUTH
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LOCRESPAUTH
	Local oClone := NFESLOC_LOCRESPAUTH():NEW()
	oClone:cDESTINATION         := ::cDESTINATION
	oClone:cEXPIRATION          := ::cEXPIRATION
	oClone:cGENERATION          := ::cGENERATION
	oClone:cSIGN                := ::cSIGN
	oClone:cSOURCE              := ::cSOURCE
	oClone:cTOKEN               := ::cTOKEN
	oClone:cUNIQUEID            := ::cUNIQUEID
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LOCRESPAUTH
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cDESTINATION       :=  WSAdvValue( oResponse,"_DESTINATION","string",NIL,"Property cDESTINATION as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cEXPIRATION        :=  WSAdvValue( oResponse,"_EXPIRATION","string",NIL,"Property cEXPIRATION as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cGENERATION        :=  WSAdvValue( oResponse,"_GENERATION","string",NIL,"Property cGENERATION as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cSIGN              :=  WSAdvValue( oResponse,"_SIGN","string",NIL,"Property cSIGN as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cSOURCE            :=  WSAdvValue( oResponse,"_SOURCE","string",NIL,"Property cSOURCE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cTOKEN             :=  WSAdvValue( oResponse,"_TOKEN","string",NIL,"Property cTOKEN as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cUNIQUEID          :=  WSAdvValue( oResponse,"_UNIQUEID","string",NIL,"Property cUNIQUEID as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure CMP

WSSTRUCT NFESLOC_CMP
	WSDATA   nCBTE_NRO                 AS integer
	WSDATA   nPUNTO_VTA                AS integer
	WSDATA   nTIPO_CBTE                AS integer
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_CMP
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_CMP
Return

WSMETHOD CLONE WSCLIENT NFESLOC_CMP
	Local oClone := NFESLOC_CMP():NEW()
	oClone:nCBTE_NRO            := ::nCBTE_NRO
	oClone:nPUNTO_VTA           := ::nPUNTO_VTA
	oClone:nTIPO_CBTE           := ::nTIPO_CBTE
Return oClone

WSMETHOD SOAPSEND WSCLIENT NFESLOC_CMP
	Local cSoap := ""
	cSoap += WSSoapValue("CBTE_NRO", ::nCBTE_NRO, ::nCBTE_NRO , "integer", .T. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("PUNTO_VTA", ::nPUNTO_VTA, ::nPUNTO_VTA , "integer", .T. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("TIPO_CBTE", ::nTIPO_CBTE, ::nTIPO_CBTE , "integer", .T. , .F., 0 , NIL, .F.,.F.) 
Return cSoap

// WSDL Data Structure RESCMP

WSSTRUCT NFESLOC_RESCMP
	WSDATA   cCOMPAUTH                 AS string OPTIONAL
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESCMP
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESCMP
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESCMP
	Local oClone := NFESLOC_RESCMP():NEW()
	oClone:cCOMPAUTH            := ::cCOMPAUTH
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESCMP
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCOMPAUTH          :=  WSAdvValue( oResponse,"_COMPAUTH","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode2 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure DSTCUITS

WSSTRUCT NFESLOC_DSTCUITS
	WSDATA   oWSDSTCUIT                AS NFESLOC_ARRAYOFLISTACUIT OPTIONAL
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_DSTCUITS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_DSTCUITS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_DSTCUITS
	Local oClone := NFESLOC_DSTCUITS():NEW()
	oClone:oWSDSTCUIT           := IIF(::oWSDSTCUIT = NIL , NIL , ::oWSDSTCUIT:Clone() )
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_DSTCUITS
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_DSTCUIT","ARRAYOFLISTACUIT",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSDSTCUIT := NFESLOC_ARRAYOFLISTACUIT():New()
		::oWSDSTCUIT:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure DSTPAISES

WSSTRUCT NFESLOC_DSTPAISES
	WSDATA   oWSDSTPAIS                AS NFESLOC_ARRAYOFLISTAPAIS
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_DSTPAISES
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_DSTPAISES
Return

WSMETHOD CLONE WSCLIENT NFESLOC_DSTPAISES
	Local oClone := NFESLOC_DSTPAISES():NEW()
	oClone:oWSDSTPAIS           := IIF(::oWSDSTPAIS = NIL , NIL , ::oWSDSTPAIS:Clone() )
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_DSTPAISES
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_DSTPAIS","ARRAYOFLISTAPAIS",NIL,"Property oWSDSTPAIS as s0:ARRAYOFLISTAPAIS on SOAP Response not found.",NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSDSTPAIS := NFESLOC_ARRAYOFLISTAPAIS():New()
		::oWSDSTPAIS:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure GETPARIDIOMAS

WSSTRUCT NFESLOC_GETPARIDIOMAS
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSDATA   oWSRESP                   AS NFESLOC_ARRAYOFRESPGETIDIOMA OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_GETPARIDIOMAS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_GETPARIDIOMAS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_GETPARIDIOMAS
	Local oClone := NFESLOC_GETPARIDIOMAS():NEW()
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
	oClone:oWSRESP              := IIF(::oWSRESP = NIL , NIL , ::oWSRESP:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_GETPARIDIOMAS
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_RESP","ARRAYOFRESPGETIDIOMA",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSRESP := NFESLOC_ARRAYOFRESPGETIDIOMA():New()
		::oWSRESP:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure RESPINCONTERMS

WSSTRUCT NFESLOC_RESPINCONTERMS
	WSDATA   oWSARRINCON               AS NFESLOC_ARRAYOFRESPINCO OPTIONAL
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESPINCONTERMS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESPINCONTERMS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESPINCONTERMS
	Local oClone := NFESLOC_RESPINCONTERMS():NEW()
	oClone:oWSARRINCON          := IIF(::oWSARRINCON = NIL , NIL , ::oWSARRINCON:Clone() )
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESPINCONTERMS
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ARRINCON","ARRAYOFRESPINCO",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSARRINCON := NFESLOC_ARRAYOFRESPINCO():New()
		::oWSARRINCON:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure RETLASTCMP

WSSTRUCT NFESLOC_RETLASTCMP
	WSDATA   nCBTE_FECHA               AS integer
	WSDATA   nCBTE_NRO                 AS integer
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RETLASTCMP
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RETLASTCMP
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RETLASTCMP
	Local oClone := NFESLOC_RETLASTCMP():NEW()
	oClone:nCBTE_FECHA          := ::nCBTE_FECHA
	oClone:nCBTE_NRO            := ::nCBTE_NRO
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RETLASTCMP
	Local oNode3
	Local oNode4
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nCBTE_FECHA        :=  WSAdvValue( oResponse,"_CBTE_FECHA","integer",NIL,"Property nCBTE_FECHA as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::nCBTE_NRO          :=  WSAdvValue( oResponse,"_CBTE_NRO","integer",NIL,"Property nCBTE_NRO as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	oNode3 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode3)
	EndIf
	oNode4 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode4 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode4)
	EndIf
Return

// WSDL Data Structure LASTIDESTR

WSSTRUCT NFESLOC_LASTIDESTR
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSDATA   nID                       AS integer OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LASTIDESTR
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LASTIDESTR
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LASTIDESTR
	Local oClone := NFESLOC_LASTIDESTR():NEW()
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
	oClone:nID                  := ::nID
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LASTIDESTR
	Local oNode1
	Local oNode2
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode2)
	EndIf
	::nID                :=  WSAdvValue( oResponse,"_ID","integer",NIL,NIL,NIL,"N",NIL,NIL) 
Return

// WSDL Data Structure GETPARCTZ

WSSTRUCT NFESLOC_GETPARCTZ
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSDATA   cMON_CTZ                  AS string OPTIONAL
	WSDATA   cMON_FECHA                AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_GETPARCTZ
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_GETPARCTZ
Return

WSMETHOD CLONE WSCLIENT NFESLOC_GETPARCTZ
	Local oClone := NFESLOC_GETPARCTZ():NEW()
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
	oClone:cMON_CTZ             := ::cMON_CTZ
	oClone:cMON_FECHA           := ::cMON_FECHA
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_GETPARCTZ
	Local oNode1
	Local oNode2
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode2)
	EndIf
	::cMON_CTZ           :=  WSAdvValue( oResponse,"_MON_CTZ","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cMON_FECHA         :=  WSAdvValue( oResponse,"_MON_FECHA","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure RESPMON

WSSTRUCT NFESLOC_RESPMON
	WSDATA   oWSARRMON                 AS NFESLOC_ARRAYOFRESMONS OPTIONAL
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESPMON
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESPMON
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESPMON
	Local oClone := NFESLOC_RESPMON():NEW()
	oClone:oWSARRMON            := IIF(::oWSARRMON = NIL , NIL , ::oWSARRMON:Clone() )
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESPMON
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ARRMON","ARRAYOFRESMONS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSARRMON := NFESLOC_ARRAYOFRESMONS():New()
		::oWSARRMON:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure RESUMED

WSSTRUCT NFESLOC_RESUMED
	WSDATA   oWSARRUMED                AS NFESLOC_ARRAYOFRESUMEDS OPTIONAL
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESUMED
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESUMED
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESUMED
	Local oClone := NFESLOC_RESUMED():NEW()
	oClone:oWSARRUMED           := IIF(::oWSARRUMED = NIL , NIL , ::oWSARRUMED:Clone() )
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESUMED
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ARRUMED","ARRAYOFRESUMEDS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSARRUMED := NFESLOC_ARRAYOFRESUMEDS():New()
		::oWSARRUMED:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure RESVENTA

WSSTRUCT NFESLOC_RESVENTA
	WSDATA   oWSARRPVE                 AS NFESLOC_ARRAYOFRESVENTAS OPTIONAL
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESVENTA
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESVENTA
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESVENTA
	Local oClone := NFESLOC_RESVENTA():NEW()
	oClone:oWSARRPVE            := IIF(::oWSARRPVE = NIL , NIL , ::oWSARRPVE:Clone() )
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESVENTA
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ARRPVE","ARRAYOFRESVENTAS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSARRPVE := NFESLOC_ARRAYOFRESVENTAS():New()
		::oWSARRPVE:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure TIPOCBTE

WSSTRUCT NFESLOC_TIPOCBTE
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSDATA   oWSTIPOCB                 AS NFESLOC_ARRAYOFTIPO_CBTE
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_TIPOCBTE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_TIPOCBTE
Return

WSMETHOD CLONE WSCLIENT NFESLOC_TIPOCBTE
	Local oClone := NFESLOC_TIPOCBTE():NEW()
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
	oClone:oWSTIPOCB            := IIF(::oWSTIPOCB = NIL , NIL , ::oWSTIPOCB:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_TIPOCBTE
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_TIPOCB","ARRAYOFTIPO_CBTE",NIL,"Property oWSTIPOCB as s0:ARRAYOFTIPO_CBTE on SOAP Response not found.",NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSTIPOCB := NFESLOC_ARRAYOFTIPO_CBTE():New()
		::oWSTIPOCB:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure TIPOEX

WSSTRUCT NFESLOC_TIPOEX
	WSDATA   oWSERROS                  AS NFESLOC_LOCFEXERR OPTIONAL
	WSDATA   oWSEVENTS                 AS NFESLOC_LOCFEXEVENTS OPTIONAL
	WSDATA   oWSTIPOTEX                AS NFESLOC_ARRAYOFTIPO_EXPO
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_TIPOEX
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_TIPOEX
Return

WSMETHOD CLONE WSCLIENT NFESLOC_TIPOEX
	Local oClone := NFESLOC_TIPOEX():NEW()
	oClone:oWSERROS             := IIF(::oWSERROS = NIL , NIL , ::oWSERROS:Clone() )
	oClone:oWSEVENTS            := IIF(::oWSEVENTS = NIL , NIL , ::oWSEVENTS:Clone() )
	oClone:oWSTIPOTEX           := IIF(::oWSTIPOTEX = NIL , NIL , ::oWSTIPOTEX:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_TIPOEX
	Local oNode1
	Local oNode2
	Local oNode3
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ERROS","LOCFEXERR",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSERROS := NFESLOC_LOCFEXERR():New()
		::oWSERROS:SoapRecv(oNode1)
	EndIf
	oNode2 :=  WSAdvValue( oResponse,"_EVENTS","LOCFEXEVENTS",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSEVENTS := NFESLOC_LOCFEXEVENTS():New()
		::oWSEVENTS:SoapRecv(oNode2)
	EndIf
	oNode3 :=  WSAdvValue( oResponse,"_TIPOTEX","ARRAYOFTIPO_EXPO",NIL,"Property oWSTIPOTEX as s0:ARRAYOFTIPO_EXPO on SOAP Response not found.",NIL,"O",NIL,NIL) 
	If oNode3 != NIL
		::oWSTIPOTEX := NFESLOC_ARRAYOFTIPO_EXPO():New()
		::oWSTIPOTEX:SoapRecv(oNode3)
	EndIf
Return

// WSDL Data Structure ARRAYOFMONITORFAC

WSSTRUCT NFESLOC_ARRAYOFMONITORFAC
	WSDATA   oWSMONITORFAC             AS NFESLOC_MONITORFAC OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFMONITORFAC
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFMONITORFAC
	::oWSMONITORFAC        := {} // Array Of  NFESLOC_MONITORFAC():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFMONITORFAC
	Local oClone := NFESLOC_ARRAYOFMONITORFAC():NEW()
	oClone:oWSMONITORFAC := NIL
	If ::oWSMONITORFAC <> NIL 
		oClone:oWSMONITORFAC := {}
		aEval( ::oWSMONITORFAC , { |x| aadd( oClone:oWSMONITORFAC , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFMONITORFAC
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_MONITORFAC","MONITORFAC",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSMONITORFAC , NFESLOC_MONITORFAC():New() )
			::oWSMONITORFAC[len(::oWSMONITORFAC)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure RESPMONITOR

WSSTRUCT NFESLOC_RESPMONITOR
	WSDATA   oWSRETIDARRAY             AS NFESLOC_ARRAYOFMONITORRET OPTIONAL
	WSDATA   cULTIMOIDRET              AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESPMONITOR
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESPMONITOR
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESPMONITOR
	Local oClone := NFESLOC_RESPMONITOR():NEW()
	oClone:oWSRETIDARRAY        := IIF(::oWSRETIDARRAY = NIL , NIL , ::oWSRETIDARRAY:Clone() )
	oClone:cULTIMOIDRET         := ::cULTIMOIDRET
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESPMONITOR
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_RETIDARRAY","ARRAYOFMONITORRET",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSRETIDARRAY := NFESLOC_ARRAYOFMONITORRET():New()
		::oWSRETIDARRAY:SoapRecv(oNode1)
	EndIf
	::cULTIMOIDRET       :=  WSAdvValue( oResponse,"_ULTIMOIDRET","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure NOTASLOCARR

WSSTRUCT NFESLOC_NOTASLOCARR
	WSDATA   oWSNOTASLOC               AS NFESLOC_ARRAYOFLOCNFES
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_NOTASLOCARR
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_NOTASLOCARR
Return

WSMETHOD CLONE WSCLIENT NFESLOC_NOTASLOCARR
	Local oClone := NFESLOC_NOTASLOCARR():NEW()
	oClone:oWSNOTASLOC          := IIF(::oWSNOTASLOC = NIL , NIL , ::oWSNOTASLOC:Clone() )
Return oClone

WSMETHOD SOAPSEND WSCLIENT NFESLOC_NOTASLOCARR
	Local cSoap := ""
	cSoap += WSSoapValue("NOTASLOC", ::oWSNOTASLOC, ::oWSNOTASLOC , "ARRAYOFLOCNFES", .T. , .F., 0 , NIL, .F.,.F.) 
Return cSoap

// WSDL Data Structure LOCID

WSSTRUCT NFESLOC_LOCID
	WSDATA   oWSID                     AS NFESLOC_ARRAYOFSTRING OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LOCID
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LOCID
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LOCID
	Local oClone := NFESLOC_LOCID():NEW()
	oClone:oWSID                := IIF(::oWSID = NIL , NIL , ::oWSID:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LOCID
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_ID","ARRAYOFSTRING",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSID := NFESLOC_ARRAYOFSTRING():New()
		::oWSID:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure LOCXMLID

WSSTRUCT NFESLOC_LOCXMLID
	WSDATA   oWSXMLID                  AS NFESLOC_ARRAYOFBASE64BINARY OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LOCXMLID
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LOCXMLID
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LOCXMLID
	Local oClone := NFESLOC_LOCXMLID():NEW()
	oClone:oWSXMLID             := IIF(::oWSXMLID = NIL , NIL , ::oWSXMLID:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LOCXMLID
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_XMLID","ARRAYOFBASE64BINARY",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSXMLID := NFESLOC_ARRAYOFBASE64BINARY():New()
		::oWSXMLID:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure RETARQLOTE

WSSTRUCT NFESLOC_RETARQLOTE
	WSDATA   cARQNAME                  AS string
	WSDATA   dDATEENVLOTE              AS date OPTIONAL
	WSDATA   dDATEGERLOTE              AS date OPTIONAL
	WSDATA   cTIMEENVLOTE              AS string OPTIONAL
	WSDATA   cTIMEGERLOTE              AS string OPTIONAL
	WSDATA   cTXTLOTE                  AS base64Binary OPTIONAL
	WSDATA   cXMLAUT                   AS base64Binary OPTIONAL
	WSDATA   cXMLERR                   AS base64Binary OPTIONAL
	WSDATA   cXMLRET                   AS base64Binary OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RETARQLOTE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RETARQLOTE
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RETARQLOTE
	Local oClone := NFESLOC_RETARQLOTE():NEW()
	oClone:cARQNAME             := ::cARQNAME
	oClone:dDATEENVLOTE         := ::dDATEENVLOTE
	oClone:dDATEGERLOTE         := ::dDATEGERLOTE
	oClone:cTIMEENVLOTE         := ::cTIMEENVLOTE
	oClone:cTIMEGERLOTE         := ::cTIMEGERLOTE
	oClone:cTXTLOTE             := ::cTXTLOTE
	oClone:cXMLAUT              := ::cXMLAUT
	oClone:cXMLERR              := ::cXMLERR
	oClone:cXMLRET              := ::cXMLRET
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RETARQLOTE
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cARQNAME           :=  WSAdvValue( oResponse,"_ARQNAME","string",NIL,"Property cARQNAME as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::dDATEENVLOTE       :=  WSAdvValue( oResponse,"_DATEENVLOTE","date",NIL,NIL,NIL,"D",NIL,NIL) 
	::dDATEGERLOTE       :=  WSAdvValue( oResponse,"_DATEGERLOTE","date",NIL,NIL,NIL,"D",NIL,NIL) 
	::cTIMEENVLOTE       :=  WSAdvValue( oResponse,"_TIMEENVLOTE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cTIMEGERLOTE       :=  WSAdvValue( oResponse,"_TIMEGERLOTE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cTXTLOTE           :=  WSAdvValue( oResponse,"_TXTLOTE","base64Binary",NIL,NIL,NIL,"SB",NIL,NIL) 
	::cXMLAUT            :=  WSAdvValue( oResponse,"_XMLAUT","base64Binary",NIL,NIL,NIL,"SB",NIL,NIL) 
	::cXMLERR            :=  WSAdvValue( oResponse,"_XMLERR","base64Binary",NIL,NIL,NIL,"SB",NIL,NIL) 
	::cXMLRET            :=  WSAdvValue( oResponse,"_XMLRET","base64Binary",NIL,NIL,NIL,"SB",NIL,NIL) 
Return

// WSDL Data Structure LOCFEXERR

WSSTRUCT NFESLOC_LOCFEXERR
	WSDATA   nERRCODE                  AS integer
	WSDATA   cERRMSG                   AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LOCFEXERR
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LOCFEXERR
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LOCFEXERR
	Local oClone := NFESLOC_LOCFEXERR():NEW()
	oClone:nERRCODE             := ::nERRCODE
	oClone:cERRMSG              := ::cERRMSG
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LOCFEXERR
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nERRCODE           :=  WSAdvValue( oResponse,"_ERRCODE","integer",NIL,"Property nERRCODE as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cERRMSG            :=  WSAdvValue( oResponse,"_ERRMSG","string",NIL,"Property cERRMSG as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure LOCFEXEVENTS

WSSTRUCT NFESLOC_LOCFEXEVENTS
	WSDATA   nEVENTCODE                AS integer
	WSDATA   cEVENTMSG                 AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LOCFEXEVENTS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LOCFEXEVENTS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LOCFEXEVENTS
	Local oClone := NFESLOC_LOCFEXEVENTS():NEW()
	oClone:nEVENTCODE           := ::nEVENTCODE
	oClone:cEVENTMSG            := ::cEVENTMSG
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LOCFEXEVENTS
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nEVENTCODE         :=  WSAdvValue( oResponse,"_EVENTCODE","integer",NIL,"Property nEVENTCODE as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cEVENTMSG          :=  WSAdvValue( oResponse,"_EVENTMSG","string",NIL,"Property cEVENTMSG as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure ARRAYOFLISTACUIT

WSSTRUCT NFESLOC_ARRAYOFLISTACUIT
	WSDATA   oWSLISTACUIT              AS NFESLOC_LISTACUIT OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFLISTACUIT
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFLISTACUIT
	::oWSLISTACUIT         := {} // Array Of  NFESLOC_LISTACUIT():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFLISTACUIT
	Local oClone := NFESLOC_ARRAYOFLISTACUIT():NEW()
	oClone:oWSLISTACUIT := NIL
	If ::oWSLISTACUIT <> NIL 
		oClone:oWSLISTACUIT := {}
		aEval( ::oWSLISTACUIT , { |x| aadd( oClone:oWSLISTACUIT , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFLISTACUIT
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_LISTACUIT","LISTACUIT",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSLISTACUIT , NFESLOC_LISTACUIT():New() )
			::oWSLISTACUIT[len(::oWSLISTACUIT)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFLISTAPAIS

WSSTRUCT NFESLOC_ARRAYOFLISTAPAIS
	WSDATA   oWSLISTAPAIS              AS NFESLOC_LISTAPAIS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFLISTAPAIS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFLISTAPAIS
	::oWSLISTAPAIS         := {} // Array Of  NFESLOC_LISTAPAIS():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFLISTAPAIS
	Local oClone := NFESLOC_ARRAYOFLISTAPAIS():NEW()
	oClone:oWSLISTAPAIS := NIL
	If ::oWSLISTAPAIS <> NIL 
		oClone:oWSLISTAPAIS := {}
		aEval( ::oWSLISTAPAIS , { |x| aadd( oClone:oWSLISTAPAIS , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFLISTAPAIS
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_LISTAPAIS","LISTAPAIS",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSLISTAPAIS , NFESLOC_LISTAPAIS():New() )
			::oWSLISTAPAIS[len(::oWSLISTAPAIS)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFRESPGETIDIOMA

WSSTRUCT NFESLOC_ARRAYOFRESPGETIDIOMA
	WSDATA   oWSRESPGETIDIOMA          AS NFESLOC_RESPGETIDIOMA OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFRESPGETIDIOMA
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFRESPGETIDIOMA
	::oWSRESPGETIDIOMA     := {} // Array Of  NFESLOC_RESPGETIDIOMA():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFRESPGETIDIOMA
	Local oClone := NFESLOC_ARRAYOFRESPGETIDIOMA():NEW()
	oClone:oWSRESPGETIDIOMA := NIL
	If ::oWSRESPGETIDIOMA <> NIL 
		oClone:oWSRESPGETIDIOMA := {}
		aEval( ::oWSRESPGETIDIOMA , { |x| aadd( oClone:oWSRESPGETIDIOMA , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFRESPGETIDIOMA
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_RESPGETIDIOMA","RESPGETIDIOMA",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSRESPGETIDIOMA , NFESLOC_RESPGETIDIOMA():New() )
			::oWSRESPGETIDIOMA[len(::oWSRESPGETIDIOMA)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFRESPINCO

WSSTRUCT NFESLOC_ARRAYOFRESPINCO
	WSDATA   oWSRESPINCO               AS NFESLOC_RESPINCO OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFRESPINCO
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFRESPINCO
	::oWSRESPINCO          := {} // Array Of  NFESLOC_RESPINCO():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFRESPINCO
	Local oClone := NFESLOC_ARRAYOFRESPINCO():NEW()
	oClone:oWSRESPINCO := NIL
	If ::oWSRESPINCO <> NIL 
		oClone:oWSRESPINCO := {}
		aEval( ::oWSRESPINCO , { |x| aadd( oClone:oWSRESPINCO , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFRESPINCO
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_RESPINCO","RESPINCO",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSRESPINCO , NFESLOC_RESPINCO():New() )
			::oWSRESPINCO[len(::oWSRESPINCO)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFRESMONS

WSSTRUCT NFESLOC_ARRAYOFRESMONS
	WSDATA   oWSRESMONS                AS NFESLOC_RESMONS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFRESMONS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFRESMONS
	::oWSRESMONS           := {} // Array Of  NFESLOC_RESMONS():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFRESMONS
	Local oClone := NFESLOC_ARRAYOFRESMONS():NEW()
	oClone:oWSRESMONS := NIL
	If ::oWSRESMONS <> NIL 
		oClone:oWSRESMONS := {}
		aEval( ::oWSRESMONS , { |x| aadd( oClone:oWSRESMONS , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFRESMONS
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_RESMONS","RESMONS",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSRESMONS , NFESLOC_RESMONS():New() )
			::oWSRESMONS[len(::oWSRESMONS)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFRESUMEDS

WSSTRUCT NFESLOC_ARRAYOFRESUMEDS
	WSDATA   oWSRESUMEDS               AS NFESLOC_RESUMEDS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFRESUMEDS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFRESUMEDS
	::oWSRESUMEDS          := {} // Array Of  NFESLOC_RESUMEDS():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFRESUMEDS
	Local oClone := NFESLOC_ARRAYOFRESUMEDS():NEW()
	oClone:oWSRESUMEDS := NIL
	If ::oWSRESUMEDS <> NIL 
		oClone:oWSRESUMEDS := {}
		aEval( ::oWSRESUMEDS , { |x| aadd( oClone:oWSRESUMEDS , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFRESUMEDS
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_RESUMEDS","RESUMEDS",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSRESUMEDS , NFESLOC_RESUMEDS():New() )
			::oWSRESUMEDS[len(::oWSRESUMEDS)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFRESVENTAS

WSSTRUCT NFESLOC_ARRAYOFRESVENTAS
	WSDATA   oWSRESVENTAS              AS NFESLOC_RESVENTAS OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFRESVENTAS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFRESVENTAS
	::oWSRESVENTAS         := {} // Array Of  NFESLOC_RESVENTAS():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFRESVENTAS
	Local oClone := NFESLOC_ARRAYOFRESVENTAS():NEW()
	oClone:oWSRESVENTAS := NIL
	If ::oWSRESVENTAS <> NIL 
		oClone:oWSRESVENTAS := {}
		aEval( ::oWSRESVENTAS , { |x| aadd( oClone:oWSRESVENTAS , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFRESVENTAS
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_RESVENTAS","RESVENTAS",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSRESVENTAS , NFESLOC_RESVENTAS():New() )
			::oWSRESVENTAS[len(::oWSRESVENTAS)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFTIPO_CBTE

WSSTRUCT NFESLOC_ARRAYOFTIPO_CBTE
	WSDATA   oWSTIPO_CBTE              AS NFESLOC_TIPO_CBTE OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFTIPO_CBTE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFTIPO_CBTE
	::oWSTIPO_CBTE         := {} // Array Of  NFESLOC_TIPO_CBTE():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFTIPO_CBTE
	Local oClone := NFESLOC_ARRAYOFTIPO_CBTE():NEW()
	oClone:oWSTIPO_CBTE := NIL
	If ::oWSTIPO_CBTE <> NIL 
		oClone:oWSTIPO_CBTE := {}
		aEval( ::oWSTIPO_CBTE , { |x| aadd( oClone:oWSTIPO_CBTE , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFTIPO_CBTE
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_TIPO_CBTE","TIPO_CBTE",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSTIPO_CBTE , NFESLOC_TIPO_CBTE():New() )
			::oWSTIPO_CBTE[len(::oWSTIPO_CBTE)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFTIPO_EXPO

WSSTRUCT NFESLOC_ARRAYOFTIPO_EXPO
	WSDATA   oWSTIPO_EXPO              AS NFESLOC_TIPO_EXPO OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFTIPO_EXPO
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFTIPO_EXPO
	::oWSTIPO_EXPO         := {} // Array Of  NFESLOC_TIPO_EXPO():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFTIPO_EXPO
	Local oClone := NFESLOC_ARRAYOFTIPO_EXPO():NEW()
	oClone:oWSTIPO_EXPO := NIL
	If ::oWSTIPO_EXPO <> NIL 
		oClone:oWSTIPO_EXPO := {}
		aEval( ::oWSTIPO_EXPO , { |x| aadd( oClone:oWSTIPO_EXPO , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFTIPO_EXPO
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_TIPO_EXPO","TIPO_EXPO",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSTIPO_EXPO , NFESLOC_TIPO_EXPO():New() )
			::oWSTIPO_EXPO[len(::oWSTIPO_EXPO)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure MONITORFAC

WSSTRUCT NFESLOC_MONITORFAC
	WSDATA   nAMBIENTE                 AS integer
	WSDATA   oWSERRO                   AS NFESLOC_ARRAYOFLOTELOC OPTIONAL
	WSDATA   cID                       AS string
	WSDATA   cPROTOCOLO                AS string OPTIONAL
	WSDATA   cRECOMENDACAO             AS string
	WSDATA   cXMLRET                   AS base64Binary OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_MONITORFAC
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_MONITORFAC
Return

WSMETHOD CLONE WSCLIENT NFESLOC_MONITORFAC
	Local oClone := NFESLOC_MONITORFAC():NEW()
	oClone:nAMBIENTE            := ::nAMBIENTE
	oClone:oWSERRO              := IIF(::oWSERRO = NIL , NIL , ::oWSERRO:Clone() )
	oClone:cID                  := ::cID
	oClone:cPROTOCOLO           := ::cPROTOCOLO
	oClone:cRECOMENDACAO        := ::cRECOMENDACAO
	oClone:cXMLRET              := ::cXMLRET
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_MONITORFAC
	Local oNode2
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nAMBIENTE          :=  WSAdvValue( oResponse,"_AMBIENTE","integer",NIL,"Property nAMBIENTE as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	oNode2 :=  WSAdvValue( oResponse,"_ERRO","ARRAYOFLOTELOC",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSERRO := NFESLOC_ARRAYOFLOTELOC():New()
		::oWSERRO:SoapRecv(oNode2)
	EndIf
	::cID                :=  WSAdvValue( oResponse,"_ID","string",NIL,"Property cID as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cPROTOCOLO         :=  WSAdvValue( oResponse,"_PROTOCOLO","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cRECOMENDACAO      :=  WSAdvValue( oResponse,"_RECOMENDACAO","string",NIL,"Property cRECOMENDACAO as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cXMLRET            :=  WSAdvValue( oResponse,"_XMLRET","base64Binary",NIL,NIL,NIL,"SB",NIL,NIL) 
Return

// WSDL Data Structure ARRAYOFMONITORRET

WSSTRUCT NFESLOC_ARRAYOFMONITORRET
	WSDATA   oWSMONITORRET             AS NFESLOC_MONITORRET OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFMONITORRET
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFMONITORRET
	::oWSMONITORRET        := {} // Array Of  NFESLOC_MONITORRET():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFMONITORRET
	Local oClone := NFESLOC_ARRAYOFMONITORRET():NEW()
	oClone:oWSMONITORRET := NIL
	If ::oWSMONITORRET <> NIL 
		oClone:oWSMONITORRET := {}
		aEval( ::oWSMONITORRET , { |x| aadd( oClone:oWSMONITORRET , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFMONITORRET
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_MONITORRET","MONITORRET",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSMONITORRET , NFESLOC_MONITORRET():New() )
			::oWSMONITORRET[len(::oWSMONITORRET)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ARRAYOFLOCNFES

WSSTRUCT NFESLOC_ARRAYOFLOCNFES
	WSDATA   oWSLOCNFES                AS NFESLOC_LOCNFES OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFLOCNFES
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFLOCNFES
	::oWSLOCNFES           := {} // Array Of  NFESLOC_LOCNFES():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFLOCNFES
	Local oClone := NFESLOC_ARRAYOFLOCNFES():NEW()
	oClone:oWSLOCNFES := NIL
	If ::oWSLOCNFES <> NIL 
		oClone:oWSLOCNFES := {}
		aEval( ::oWSLOCNFES , { |x| aadd( oClone:oWSLOCNFES , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPSEND WSCLIENT NFESLOC_ARRAYOFLOCNFES
	Local cSoap := ""
	aEval( ::oWSLOCNFES , {|x| cSoap := cSoap  +  WSSoapValue("LOCNFES", x , x , "LOCNFES", .F. , .F., 0 , NIL, .F.,.F.)  } ) 
Return cSoap

// WSDL Data Structure ARRAYOFSTRING

WSSTRUCT NFESLOC_ARRAYOFSTRING
	WSDATA   cSTRING                   AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFSTRING
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFSTRING
	::cSTRING              := {} // Array Of  ""
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFSTRING
	Local oClone := NFESLOC_ARRAYOFSTRING():NEW()
	oClone:cSTRING              := IIf(::cSTRING <> NIL , aClone(::cSTRING) , NIL )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFSTRING
	Local oNodes1 :=  WSAdvValue( oResponse,"_STRING","string",{},NIL,.T.,"S",NIL,"a") 
	::Init()
	If oResponse = NIL ; Return ; Endif 
	aEval(oNodes1 , { |x| aadd(::cSTRING ,  x:TEXT  ) } )
Return

// WSDL Data Structure ARRAYOFBASE64BINARY

WSSTRUCT NFESLOC_ARRAYOFBASE64BINARY
	WSDATA   cBASE64BINARY             AS base64Binary OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFBASE64BINARY
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFBASE64BINARY
	::cBASE64BINARY        := {} // Array Of  ""
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFBASE64BINARY
	Local oClone := NFESLOC_ARRAYOFBASE64BINARY():NEW()
	oClone:cBASE64BINARY        := IIf(::cBASE64BINARY <> NIL , aClone(::cBASE64BINARY) , NIL )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFBASE64BINARY
	Local oNodes1 :=  WSAdvValue( oResponse,"_BASE64BINARY","base64Binary",{},NIL,.T.,"SB",NIL,"a") 
	::Init()
	If oResponse = NIL ; Return ; Endif 
	aEval(oNodes1 , { |x| aadd(::cBASE64BINARY ,  Decode64(x:TEXT)  ) } )
Return

// WSDL Data Structure LISTACUIT

WSSTRUCT NFESLOC_LISTACUIT
	WSDATA   nDST_CUIT                 AS integer
	WSDATA   cDST_DS                   AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LISTACUIT
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LISTACUIT
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LISTACUIT
	Local oClone := NFESLOC_LISTACUIT():NEW()
	oClone:nDST_CUIT            := ::nDST_CUIT
	oClone:cDST_DS              := ::cDST_DS
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LISTACUIT
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nDST_CUIT          :=  WSAdvValue( oResponse,"_DST_CUIT","integer",NIL,"Property nDST_CUIT as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cDST_DS            :=  WSAdvValue( oResponse,"_DST_DS","string",NIL,"Property cDST_DS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure LISTAPAIS

WSSTRUCT NFESLOC_LISTAPAIS
	WSDATA   cDST_COD                  AS string
	WSDATA   cDST_DS                   AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LISTAPAIS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LISTAPAIS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LISTAPAIS
	Local oClone := NFESLOC_LISTAPAIS():NEW()
	oClone:cDST_COD             := ::cDST_COD
	oClone:cDST_DS              := ::cDST_DS
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LISTAPAIS
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cDST_COD           :=  WSAdvValue( oResponse,"_DST_COD","string",NIL,"Property cDST_COD as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cDST_DS            :=  WSAdvValue( oResponse,"_DST_DS","string",NIL,"Property cDST_DS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure RESPGETIDIOMA

WSSTRUCT NFESLOC_RESPGETIDIOMA
	WSDATA   cIDI_DS                   AS string
	WSDATA   nIDI_ID                   AS integer
	WSDATA   cIDI_VIG_DESDE            AS string
	WSDATA   cIDI_VIG_HASTA            AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESPGETIDIOMA
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESPGETIDIOMA
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESPGETIDIOMA
	Local oClone := NFESLOC_RESPGETIDIOMA():NEW()
	oClone:cIDI_DS              := ::cIDI_DS
	oClone:nIDI_ID              := ::nIDI_ID
	oClone:cIDI_VIG_DESDE       := ::cIDI_VIG_DESDE
	oClone:cIDI_VIG_HASTA       := ::cIDI_VIG_HASTA
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESPGETIDIOMA
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cIDI_DS            :=  WSAdvValue( oResponse,"_IDI_DS","string",NIL,"Property cIDI_DS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::nIDI_ID            :=  WSAdvValue( oResponse,"_IDI_ID","integer",NIL,"Property nIDI_ID as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cIDI_VIG_DESDE     :=  WSAdvValue( oResponse,"_IDI_VIG_DESDE","string",NIL,"Property cIDI_VIG_DESDE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cIDI_VIG_HASTA     :=  WSAdvValue( oResponse,"_IDI_VIG_HASTA","string",NIL,"Property cIDI_VIG_HASTA as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure RESPINCO

WSSTRUCT NFESLOC_RESPINCO
	WSDATA   cINC_DS                   AS string
	WSDATA   cINC_ID                   AS string
	WSDATA   cINC_VIG_DESDE            AS string
	WSDATA   cINC_VIG_HASTA            AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESPINCO
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESPINCO
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESPINCO
	Local oClone := NFESLOC_RESPINCO():NEW()
	oClone:cINC_DS              := ::cINC_DS
	oClone:cINC_ID              := ::cINC_ID
	oClone:cINC_VIG_DESDE       := ::cINC_VIG_DESDE
	oClone:cINC_VIG_HASTA       := ::cINC_VIG_HASTA
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESPINCO
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cINC_DS            :=  WSAdvValue( oResponse,"_INC_DS","string",NIL,"Property cINC_DS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cINC_ID            :=  WSAdvValue( oResponse,"_INC_ID","string",NIL,"Property cINC_ID as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cINC_VIG_DESDE     :=  WSAdvValue( oResponse,"_INC_VIG_DESDE","string",NIL,"Property cINC_VIG_DESDE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cINC_VIG_HASTA     :=  WSAdvValue( oResponse,"_INC_VIG_HASTA","string",NIL,"Property cINC_VIG_HASTA as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure RESMONS

WSSTRUCT NFESLOC_RESMONS
	WSDATA   cMON_DS                   AS string
	WSDATA   cMON_ID                   AS string
	WSDATA   cMON_VIG_DESDE            AS string
	WSDATA   cMON_VIG_HASTA            AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESMONS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESMONS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESMONS
	Local oClone := NFESLOC_RESMONS():NEW()
	oClone:cMON_DS              := ::cMON_DS
	oClone:cMON_ID              := ::cMON_ID
	oClone:cMON_VIG_DESDE       := ::cMON_VIG_DESDE
	oClone:cMON_VIG_HASTA       := ::cMON_VIG_HASTA
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESMONS
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cMON_DS            :=  WSAdvValue( oResponse,"_MON_DS","string",NIL,"Property cMON_DS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cMON_ID            :=  WSAdvValue( oResponse,"_MON_ID","string",NIL,"Property cMON_ID as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cMON_VIG_DESDE     :=  WSAdvValue( oResponse,"_MON_VIG_DESDE","string",NIL,"Property cMON_VIG_DESDE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cMON_VIG_HASTA     :=  WSAdvValue( oResponse,"_MON_VIG_HASTA","string",NIL,"Property cMON_VIG_HASTA as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure RESUMEDS

WSSTRUCT NFESLOC_RESUMEDS
	WSDATA   cUMED_DS                  AS string
	WSDATA   nUMED_ID                  AS integer
	WSDATA   cUMED_VIG_DESDE           AS string
	WSDATA   cUMED_VIG_HASTA           AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESUMEDS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESUMEDS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESUMEDS
	Local oClone := NFESLOC_RESUMEDS():NEW()
	oClone:cUMED_DS             := ::cUMED_DS
	oClone:nUMED_ID             := ::nUMED_ID
	oClone:cUMED_VIG_DESDE      := ::cUMED_VIG_DESDE
	oClone:cUMED_VIG_HASTA      := ::cUMED_VIG_HASTA
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESUMEDS
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cUMED_DS           :=  WSAdvValue( oResponse,"_UMED_DS","string",NIL,"Property cUMED_DS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::nUMED_ID           :=  WSAdvValue( oResponse,"_UMED_ID","integer",NIL,"Property nUMED_ID as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cUMED_VIG_DESDE    :=  WSAdvValue( oResponse,"_UMED_VIG_DESDE","string",NIL,"Property cUMED_VIG_DESDE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cUMED_VIG_HASTA    :=  WSAdvValue( oResponse,"_UMED_VIG_HASTA","string",NIL,"Property cUMED_VIG_HASTA as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure RESVENTAS

WSSTRUCT NFESLOC_RESVENTAS
	WSDATA   cPVE_BLOQUEADO            AS string
	WSDATA   cPVE_FCHBAJA              AS string
	WSDATA   nPVE_NRO                  AS integer
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_RESVENTAS
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_RESVENTAS
Return

WSMETHOD CLONE WSCLIENT NFESLOC_RESVENTAS
	Local oClone := NFESLOC_RESVENTAS():NEW()
	oClone:cPVE_BLOQUEADO       := ::cPVE_BLOQUEADO
	oClone:cPVE_FCHBAJA         := ::cPVE_FCHBAJA
	oClone:nPVE_NRO             := ::nPVE_NRO
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_RESVENTAS
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cPVE_BLOQUEADO     :=  WSAdvValue( oResponse,"_PVE_BLOQUEADO","string",NIL,"Property cPVE_BLOQUEADO as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cPVE_FCHBAJA       :=  WSAdvValue( oResponse,"_PVE_FCHBAJA","string",NIL,"Property cPVE_FCHBAJA as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::nPVE_NRO           :=  WSAdvValue( oResponse,"_PVE_NRO","integer",NIL,"Property nPVE_NRO as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
Return

// WSDL Data Structure TIPO_CBTE

WSSTRUCT NFESLOC_TIPO_CBTE
	WSDATA   cCBTE_DS                  AS string
	WSDATA   nCBTE_ID                  AS integer
	WSDATA   cVIG_DESDE                AS string
	WSDATA   cVIG_HASTA                AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_TIPO_CBTE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_TIPO_CBTE
Return

WSMETHOD CLONE WSCLIENT NFESLOC_TIPO_CBTE
	Local oClone := NFESLOC_TIPO_CBTE():NEW()
	oClone:cCBTE_DS             := ::cCBTE_DS
	oClone:nCBTE_ID             := ::nCBTE_ID
	oClone:cVIG_DESDE           := ::cVIG_DESDE
	oClone:cVIG_HASTA           := ::cVIG_HASTA
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_TIPO_CBTE
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCBTE_DS           :=  WSAdvValue( oResponse,"_CBTE_DS","string",NIL,"Property cCBTE_DS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::nCBTE_ID           :=  WSAdvValue( oResponse,"_CBTE_ID","integer",NIL,"Property nCBTE_ID as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cVIG_DESDE         :=  WSAdvValue( oResponse,"_VIG_DESDE","string",NIL,"Property cVIG_DESDE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cVIG_HASTA         :=  WSAdvValue( oResponse,"_VIG_HASTA","string",NIL,"Property cVIG_HASTA as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure TIPO_EXPO

WSSTRUCT NFESLOC_TIPO_EXPO
	WSDATA   cTEX_DESDE                AS string
	WSDATA   cTEX_DS                   AS string
	WSDATA   cTEX_HASTA                AS string
	WSDATA   nTEX_ID                   AS integer
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_TIPO_EXPO
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_TIPO_EXPO
Return

WSMETHOD CLONE WSCLIENT NFESLOC_TIPO_EXPO
	Local oClone := NFESLOC_TIPO_EXPO():NEW()
	oClone:cTEX_DESDE           := ::cTEX_DESDE
	oClone:cTEX_DS              := ::cTEX_DS
	oClone:cTEX_HASTA           := ::cTEX_HASTA
	oClone:nTEX_ID              := ::nTEX_ID
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_TIPO_EXPO
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cTEX_DESDE         :=  WSAdvValue( oResponse,"_TEX_DESDE","string",NIL,"Property cTEX_DESDE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cTEX_DS            :=  WSAdvValue( oResponse,"_TEX_DS","string",NIL,"Property cTEX_DS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cTEX_HASTA         :=  WSAdvValue( oResponse,"_TEX_HASTA","string",NIL,"Property cTEX_HASTA as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::nTEX_ID            :=  WSAdvValue( oResponse,"_TEX_ID","integer",NIL,"Property nTEX_ID as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
Return

// WSDL Data Structure ARRAYOFLOTELOC

WSSTRUCT NFESLOC_ARRAYOFLOTELOC
	WSDATA   oWSLOTELOC                AS NFESLOC_LOTELOC OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_ARRAYOFLOTELOC
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_ARRAYOFLOTELOC
	::oWSLOTELOC           := {} // Array Of  NFESLOC_LOTELOC():New()
Return

WSMETHOD CLONE WSCLIENT NFESLOC_ARRAYOFLOTELOC
	Local oClone := NFESLOC_ARRAYOFLOTELOC():NEW()
	oClone:oWSLOTELOC := NIL
	If ::oWSLOTELOC <> NIL 
		oClone:oWSLOTELOC := {}
		aEval( ::oWSLOTELOC , { |x| aadd( oClone:oWSLOTELOC , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_ARRAYOFLOTELOC
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_LOTELOC","LOTELOC",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSLOTELOC , NFESLOC_LOTELOC():New() )
			::oWSLOTELOC[len(::oWSLOTELOC)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure MONITORRET

WSSTRUCT NFESLOC_MONITORRET
	WSDATA   nAMBIENTE                 AS integer
	WSDATA   cARQNAME                  AS string OPTIONAL
	WSDATA   cAUT                      AS string OPTIONAL
	WSDATA   cCHV_REMITO               AS string OPTIONAL
	WSDATA   cCOMP                     AS string OPTIONAL
	WSDATA   cID                       AS string
	WSDATA   cRECOMENDACAO             AS string
	WSDATA   cSTATUS                   AS string
	WSDATA   cXMLRETAUTH               AS base64Binary OPTIONAL
	WSDATA   cXMLRETERRO               AS base64Binary OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_MONITORRET
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_MONITORRET
Return

WSMETHOD CLONE WSCLIENT NFESLOC_MONITORRET
	Local oClone := NFESLOC_MONITORRET():NEW()
	oClone:nAMBIENTE            := ::nAMBIENTE
	oClone:cARQNAME             := ::cARQNAME
	oClone:cAUT                 := ::cAUT
	oClone:cCHV_REMITO          := ::cCHV_REMITO
	oClone:cCOMP                := ::cCOMP
	oClone:cID                  := ::cID
	oClone:cRECOMENDACAO        := ::cRECOMENDACAO
	oClone:cSTATUS              := ::cSTATUS
	oClone:cXMLRETAUTH          := ::cXMLRETAUTH
	oClone:cXMLRETERRO          := ::cXMLRETERRO
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_MONITORRET
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nAMBIENTE          :=  WSAdvValue( oResponse,"_AMBIENTE","integer",NIL,"Property nAMBIENTE as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cARQNAME           :=  WSAdvValue( oResponse,"_ARQNAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAUT               :=  WSAdvValue( oResponse,"_AUT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCHV_REMITO        :=  WSAdvValue( oResponse,"_CHV_REMITO","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCOMP              :=  WSAdvValue( oResponse,"_COMP","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cID                :=  WSAdvValue( oResponse,"_ID","string",NIL,"Property cID as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cRECOMENDACAO      :=  WSAdvValue( oResponse,"_RECOMENDACAO","string",NIL,"Property cRECOMENDACAO as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cSTATUS            :=  WSAdvValue( oResponse,"_STATUS","string",NIL,"Property cSTATUS as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cXMLRETAUTH        :=  WSAdvValue( oResponse,"_XMLRETAUTH","base64Binary",NIL,NIL,NIL,"SB",NIL,NIL) 
	::cXMLRETERRO        :=  WSAdvValue( oResponse,"_XMLRETERRO","base64Binary",NIL,NIL,NIL,"SB",NIL,NIL) 
Return

// WSDL Data Structure LOCNFES

WSSTRUCT NFESLOC_LOCNFES
	WSDATA   cID                       AS string
	WSDATA   cXML                      AS base64Binary
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LOCNFES
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LOCNFES
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LOCNFES
	Local oClone := NFESLOC_LOCNFES():NEW()
	oClone:cID                  := ::cID
	oClone:cXML                 := ::cXML
Return oClone

WSMETHOD SOAPSEND WSCLIENT NFESLOC_LOCNFES
	Local cSoap := ""
	cSoap += WSSoapValue("ID", ::cID, ::cID , "string", .T. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("XML", ::cXML, ::cXML , "base64Binary", .T. , .F., 0 , NIL, .F.,.F.) 
Return cSoap

// WSDL Data Structure LOTELOC

WSSTRUCT NFESLOC_LOTELOC
	WSDATA   cAUTH_ID                  AS string
	WSDATA   nCODENVLOTE               AS integer
	WSDATA   cFHC_CBTE                 AS string
	WSDATA   cFHC_VENC                 AS string
	WSDATA   nLOTE                     AS integer
	WSDATA   cMOTI_OBS                 AS string OPTIONAL
	WSDATA   cMSGENVLOTE               AS string
	WSDATA   cREPROCESSO               AS string OPTIONAL
	WSDATA   cRESULTADO                AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFESLOC_LOTELOC
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFESLOC_LOTELOC
Return

WSMETHOD CLONE WSCLIENT NFESLOC_LOTELOC
	Local oClone := NFESLOC_LOTELOC():NEW()
	oClone:cAUTH_ID             := ::cAUTH_ID
	oClone:nCODENVLOTE          := ::nCODENVLOTE
	oClone:cFHC_CBTE            := ::cFHC_CBTE
	oClone:cFHC_VENC            := ::cFHC_VENC
	oClone:nLOTE                := ::nLOTE
	oClone:cMOTI_OBS            := ::cMOTI_OBS
	oClone:cMSGENVLOTE          := ::cMSGENVLOTE
	oClone:cREPROCESSO          := ::cREPROCESSO
	oClone:cRESULTADO           := ::cRESULTADO
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT NFESLOC_LOTELOC
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cAUTH_ID           :=  WSAdvValue( oResponse,"_AUTH_ID","string",NIL,"Property cAUTH_ID as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::nCODENVLOTE        :=  WSAdvValue( oResponse,"_CODENVLOTE","integer",NIL,"Property nCODENVLOTE as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cFHC_CBTE          :=  WSAdvValue( oResponse,"_FHC_CBTE","string",NIL,"Property cFHC_CBTE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cFHC_VENC          :=  WSAdvValue( oResponse,"_FHC_VENC","string",NIL,"Property cFHC_VENC as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::nLOTE              :=  WSAdvValue( oResponse,"_LOTE","integer",NIL,"Property nLOTE as s:integer on SOAP Response not found.",NIL,"N",NIL,NIL) 
	::cMOTI_OBS          :=  WSAdvValue( oResponse,"_MOTI_OBS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cMSGENVLOTE        :=  WSAdvValue( oResponse,"_MSGENVLOTE","string",NIL,"Property cMSGENVLOTE as s:string on SOAP Response not found.",NIL,"S",NIL,NIL) 
	::cREPROCESSO        :=  WSAdvValue( oResponse,"_REPROCESSO","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cRESULTADO         :=  WSAdvValue( oResponse,"_RESULTADO","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return


