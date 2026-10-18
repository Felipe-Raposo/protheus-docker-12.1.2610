#INCLUDE "protheus.ch"
#INCLUDE "apwebsrv.ch"

/* ===============================================================================
WSDL Location    http://10.195.4.139:8089/NFECFGLOC.apw?WSDL
Generado en        07/13/21 09:11:15
Observaciones      Codigo Fuente generado por ADVPL WSDL Client 1.120703
                 Modificaciones en este archivo pueden causar funcionamiento incorrecto
                 y se perderan en caso de que se genere nuevamente el codigo fuente.
=============================================================================== */

User Function _BWKNRNP ; Return  // "dummy" function - Internal Use 

/* -------------------------------------------------------------------------------
WSDL Service WSNFECFGLOC
------------------------------------------------------------------------------- */

WSCLIENT WSNFECFGLOC

	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD RESET
	WSMETHOD CLONE
	WSMETHOD ADMEMPLOC
	WSMETHOD CFGAMBLOC
	WSMETHOD CFGLOCCERTPFX
	WSMETHOD CFGPARAMLOC
	WSMETHOD CFGTSSVERSAOLOC
	WSMETHOD CFGVERLOC
	WSMETHOD GETADMEMPLOCID
	WSMETHOD LOCCFGREADY
	WSMETHOD LOCCONNECT

	WSDATA   _URL                      AS String
	WSDATA   _HEADOUT                  AS Array of String
	WSDATA   _COOKIES                  AS Array of String
	WSDATA   cUSERTOKEN                AS string
	WSDATA   oWSEMPRESA                AS NFECFGLOC_NFELOCENTIDADE
	WSDATA   cADMEMPLOCRESULT          AS string
	WSDATA   cID_ENT                   AS string
	WSDATA   nAMBIENTE                 AS integer
	WSDATA   cMODELO                   AS string
	WSDATA   cCFGAMBLOCRESULT          AS string
	WSDATA   cCERTIFICATE              AS base64Binary
	WSDATA   cPASSWORD                 AS base64Binary
	WSDATA   cCFGLOCCERTPFXRESULT      AS string
	WSDATA   cPUERTA                   AS string
	WSDATA   cPLANTA                   AS string
	WSDATA   cUSER                     AS string
	WSDATA   cPASS                     AS base64Binary
	WSDATA   cCFGPARAMLOCRESULT        AS string
	WSDATA   cCFGTSSVERSAOLOCRESULT    AS string
	WSDATA   cVERSAO                   AS string
	WSDATA   cCFGVERLOCRESULT          AS string
	WSDATA   cCUIT                     AS string
	WSDATA   cCODFIL                   AS string
	WSDATA   cCODPROV                  AS string
	WSDATA   cGETADMEMPLOCIDRESULT     AS string
	WSDATA   cLOCCFGREADYRESULT        AS string
	WSDATA   cLOCCONNECTRESULT         AS string

	// Estruturas mantidas por compatibilidade - NÃO USAR
	WSDATA   oWSNFELOCENTIDADE         AS NFECFGLOC_NFELOCENTIDADE

ENDWSCLIENT

WSMETHOD NEW WSCLIENT WSNFECFGLOC
::Init()
If !FindFunction("XMLCHILDEX")
	UserException("O Código-Fonte Client atual requer os executáveis do Protheus Build [7.00.191205P-20210114] ou superior. Atualize o Protheus ou gere o Código-Fonte novamente utilizando o Build atual.")
EndIf
Return Self

WSMETHOD INIT WSCLIENT WSNFECFGLOC
	::oWSEMPRESA         := NFECFGLOC_NFELOCENTIDADE():New()

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSNFELOCENTIDADE  := ::oWSEMPRESA
Return

WSMETHOD RESET WSCLIENT WSNFECFGLOC
	::cUSERTOKEN         := NIL 
	::oWSEMPRESA         := NIL 
	::cADMEMPLOCRESULT   := NIL 
	::cID_ENT            := NIL 
	::nAMBIENTE          := NIL 
	::cMODELO            := NIL 
	::cCFGAMBLOCRESULT   := NIL 
	::cCERTIFICATE       := NIL 
	::cPASSWORD          := NIL 
	::cCFGLOCCERTPFXRESULT := NIL 
	::cPUERTA            := NIL 
	::cPLANTA            := NIL 
	::cUSER              := NIL 
	::cPASS              := NIL 
	::cCFGPARAMLOCRESULT := NIL 
	::cCFGTSSVERSAOLOCRESULT := NIL 
	::cVERSAO            := NIL 
	::cCFGVERLOCRESULT   := NIL 
	::cCUIT              := NIL 
	::cCODFIL            := NIL 
	::cCODPROV           := NIL 
	::cGETADMEMPLOCIDRESULT := NIL 
	::cLOCCFGREADYRESULT := NIL 
	::cLOCCONNECTRESULT  := NIL 

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSNFELOCENTIDADE  := NIL
	::Init()
Return

WSMETHOD CLONE WSCLIENT WSNFECFGLOC
Local oClone := WSNFECFGLOC():New()
	oClone:_URL          := ::_URL 
	oClone:cUSERTOKEN    := ::cUSERTOKEN
	oClone:oWSEMPRESA    :=  IIF(::oWSEMPRESA = NIL , NIL ,::oWSEMPRESA:Clone() )
	oClone:cADMEMPLOCRESULT := ::cADMEMPLOCRESULT
	oClone:cID_ENT       := ::cID_ENT
	oClone:nAMBIENTE     := ::nAMBIENTE
	oClone:cMODELO       := ::cMODELO
	oClone:cCFGAMBLOCRESULT := ::cCFGAMBLOCRESULT
	oClone:cCERTIFICATE  := ::cCERTIFICATE
	oClone:cPASSWORD     := ::cPASSWORD
	oClone:cCFGLOCCERTPFXRESULT := ::cCFGLOCCERTPFXRESULT
	oClone:cPUERTA       := ::cPUERTA
	oClone:cPLANTA       := ::cPLANTA
	oClone:cUSER         := ::cUSER
	oClone:cPASS         := ::cPASS
	oClone:cCFGPARAMLOCRESULT := ::cCFGPARAMLOCRESULT
	oClone:cCFGTSSVERSAOLOCRESULT := ::cCFGTSSVERSAOLOCRESULT
	oClone:cVERSAO       := ::cVERSAO
	oClone:cCFGVERLOCRESULT := ::cCFGVERLOCRESULT
	oClone:cCUIT         := ::cCUIT
	oClone:cCODFIL       := ::cCODFIL
	oClone:cCODPROV      := ::cCODPROV
	oClone:cGETADMEMPLOCIDRESULT := ::cGETADMEMPLOCIDRESULT
	oClone:cLOCCFGREADYRESULT := ::cLOCCFGREADYRESULT
	oClone:cLOCCONNECTRESULT := ::cLOCCONNECTRESULT

	// Estruturas mantidas por compatibilidade - NÃO USAR
	oClone:oWSNFELOCENTIDADE := oClone:oWSEMPRESA
Return oClone

// WSDL Method ADMEMPLOC of Service WSNFECFGLOC

WSMETHOD ADMEMPLOC WSSEND cUSERTOKEN,oWSEMPRESA WSRECEIVE cADMEMPLOCRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<ADMEMPLOC xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("EMPRESA", ::oWSEMPRESA, oWSEMPRESA , "NFELOCENTIDADE", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</ADMEMPLOC>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/ADMEMPLOC",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cADMEMPLOCRESULT   :=  WSAdvValue( oXmlRet,"_ADMEMPLOCRESPONSE:_ADMEMPLOCRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method CFGAMBLOC of Service WSNFECFGLOC

WSMETHOD CFGAMBLOC WSSEND cUSERTOKEN,cID_ENT,nAMBIENTE,cMODELO WSRECEIVE cCFGAMBLOCRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<CFGAMBLOC xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("AMBIENTE", ::nAMBIENTE, nAMBIENTE , "integer", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MODELO", ::cMODELO, cMODELO , "string", .F. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</CFGAMBLOC>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/CFGAMBLOC",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cCFGAMBLOCRESULT   :=  WSAdvValue( oXmlRet,"_CFGAMBLOCRESPONSE:_CFGAMBLOCRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method CFGLOCCERTPFX of Service WSNFECFGLOC

WSMETHOD CFGLOCCERTPFX WSSEND cUSERTOKEN,cID_ENT,cCERTIFICATE,cPASSWORD WSRECEIVE cCFGLOCCERTPFXRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<CFGLOCCERTPFX xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CERTIFICATE", ::cCERTIFICATE, cCERTIFICATE , "base64Binary", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("PASSWORD", ::cPASSWORD, cPASSWORD , "base64Binary", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</CFGLOCCERTPFX>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/CFGLOCCERTPFX",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cCFGLOCCERTPFXRESULT :=  WSAdvValue( oXmlRet,"_CFGLOCCERTPFXRESPONSE:_CFGLOCCERTPFXRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method CFGPARAMLOC of Service WSNFECFGLOC

WSMETHOD CFGPARAMLOC WSSEND cUSERTOKEN,cID_ENT,cMODELO,cPUERTA,cPLANTA,cUSER,cPASS WSRECEIVE cCFGPARAMLOCRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<CFGPARAMLOC xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MODELO", ::cMODELO, cMODELO , "string", .F. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("PUERTA", ::cPUERTA, cPUERTA , "string", .F. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("PLANTA", ::cPLANTA, cPLANTA , "string", .F. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("USER", ::cUSER, cUSER , "string", .F. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("PASS", ::cPASS, cPASS , "base64Binary", .F. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</CFGPARAMLOC>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/CFGPARAMLOC",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cCFGPARAMLOCRESULT :=  WSAdvValue( oXmlRet,"_CFGPARAMLOCRESPONSE:_CFGPARAMLOCRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method CFGTSSVERSAOLOC of Service WSNFECFGLOC

WSMETHOD CFGTSSVERSAOLOC WSSEND cUSERTOKEN,cID_ENT WSRECEIVE cCFGTSSVERSAOLOCRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<CFGTSSVERSAOLOC xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</CFGTSSVERSAOLOC>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/CFGTSSVERSAOLOC",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cCFGTSSVERSAOLOCRESULT :=  WSAdvValue( oXmlRet,"_CFGTSSVERSAOLOCRESPONSE:_CFGTSSVERSAOLOCRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method CFGVERLOC of Service WSNFECFGLOC

WSMETHOD CFGVERLOC WSSEND cUSERTOKEN,cID_ENT,cVERSAO,cMODELO WSRECEIVE cCFGVERLOCRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<CFGVERLOC xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("VERSAO", ::cVERSAO, cVERSAO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("MODELO", ::cMODELO, cMODELO , "string", .F. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</CFGVERLOC>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/CFGVERLOC",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cCFGVERLOCRESULT   :=  WSAdvValue( oXmlRet,"_CFGVERLOCRESPONSE:_CFGVERLOCRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GETADMEMPLOCID of Service WSNFECFGLOC

WSMETHOD GETADMEMPLOCID WSSEND cUSERTOKEN,cCUIT,cCODFIL,cCODPROV WSRECEIVE cGETADMEMPLOCIDRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GETADMEMPLOCID xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CUIT", ::cCUIT, cCUIT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CODFIL", ::cCODFIL, cCODFIL , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("CODPROV", ::cCODPROV, cCODPROV , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GETADMEMPLOCID>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/GETADMEMPLOCID",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cGETADMEMPLOCIDRESULT :=  WSAdvValue( oXmlRet,"_GETADMEMPLOCIDRESPONSE:_GETADMEMPLOCIDRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method LOCCFGREADY of Service WSNFECFGLOC

WSMETHOD LOCCFGREADY WSSEND cUSERTOKEN,cID_ENT WSRECEIVE cLOCCFGREADYRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<LOCCFGREADY xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</LOCCFGREADY>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/LOCCFGREADY",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cLOCCFGREADYRESULT :=  WSAdvValue( oXmlRet,"_LOCCFGREADYRESPONSE:_LOCCFGREADYRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method LOCCONNECT of Service WSNFECFGLOC

WSMETHOD LOCCONNECT WSSEND cUSERTOKEN,cID_ENT WSRECEIVE cLOCCONNECTRESULT WSCLIENT WSNFECFGLOC
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<LOCCONNECT xmlns="http://webservices.totvs.com.br/nfsearg.apw">'
cSoap += WSSoapValue("USERTOKEN", ::cUSERTOKEN, cUSERTOKEN , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += WSSoapValue("ID_ENT", ::cID_ENT, cID_ENT , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</LOCCONNECT>"

oXmlRet := SvcSoapCall(ObjSelf(Self),cSoap,; 
	"http://webservices.totvs.com.br/nfsearg.apw/LOCCONNECT",; 
	"DOCUMENT","http://webservices.totvs.com.br/nfsearg.apw",,"1.031217",; 
	"http://10.195.4.139:8089/NFECFGLOC.apw")

::Init()
::cLOCCONNECTRESULT  :=  WSAdvValue( oXmlRet,"_LOCCONNECTRESPONSE:_LOCCONNECTRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.


// WSDL Data Structure NFELOCENTIDADE

WSSTRUCT NFECFGLOC_NFELOCENTIDADE
	WSDATA   cBAIRRO                   AS string OPTIONAL
	WSDATA   cCIDADE                   AS string OPTIONAL
	WSDATA   cCOD_PAIS                 AS string
	WSDATA   cCODFIL                   AS string OPTIONAL
	WSDATA   cCODPROVINC               AS string
	WSDATA   cCOMPL                    AS string OPTIONAL
	WSDATA   cCP                       AS string
	WSDATA   cCUIT                     AS string OPTIONAL
	WSDATA   cDDN                      AS string OPTIONAL
	WSDATA   cDESCPROVINC              AS string OPTIONAL
	WSDATA   cEMAIL                    AS string OPTIONAL
	WSDATA   cENDERECO                 AS string
	WSDATA   cFANTASIA                 AS string OPTIONAL
	WSDATA   cFAX                      AS string OPTIONAL
	WSDATA   cFONE                     AS string OPTIONAL
	WSDATA   cINSCRPROVI               AS string OPTIONAL
	WSDATA   cNOME                     AS string
	WSDATA   cNUM                      AS string OPTIONAL
	WSDATA   cREGMUN                   AS string OPTIONAL
	WSDATA   cRUC                      AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT NFECFGLOC_NFELOCENTIDADE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT NFECFGLOC_NFELOCENTIDADE
Return

WSMETHOD CLONE WSCLIENT NFECFGLOC_NFELOCENTIDADE
	Local oClone := NFECFGLOC_NFELOCENTIDADE():NEW()
	oClone:cBAIRRO              := ::cBAIRRO
	oClone:cCIDADE              := ::cCIDADE
	oClone:cCOD_PAIS            := ::cCOD_PAIS
	oClone:cCODFIL              := ::cCODFIL
	oClone:cCODPROVINC          := ::cCODPROVINC
	oClone:cCOMPL               := ::cCOMPL
	oClone:cCP                  := ::cCP
	oClone:cCUIT                := ::cCUIT
	oClone:cDDN                 := ::cDDN
	oClone:cDESCPROVINC         := ::cDESCPROVINC
	oClone:cEMAIL               := ::cEMAIL
	oClone:cENDERECO            := ::cENDERECO
	oClone:cFANTASIA            := ::cFANTASIA
	oClone:cFAX                 := ::cFAX
	oClone:cFONE                := ::cFONE
	oClone:cINSCRPROVI          := ::cINSCRPROVI
	oClone:cNOME                := ::cNOME
	oClone:cNUM                 := ::cNUM
	oClone:cREGMUN              := ::cREGMUN
	oClone:cRUC                 := ::cRUC
Return oClone

WSMETHOD SOAPSEND WSCLIENT NFECFGLOC_NFELOCENTIDADE
	Local cSoap := ""
	cSoap += WSSoapValue("BAIRRO", ::cBAIRRO, ::cBAIRRO , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("CIDADE", ::cCIDADE, ::cCIDADE , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("COD_PAIS", ::cCOD_PAIS, ::cCOD_PAIS , "string", .T. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("CODFIL", ::cCODFIL, ::cCODFIL , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("CODPROVINC", ::cCODPROVINC, ::cCODPROVINC , "string", .T. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("COMPL", ::cCOMPL, ::cCOMPL , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("CP", ::cCP, ::cCP , "string", .T. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("CUIT", ::cCUIT, ::cCUIT , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("DDN", ::cDDN, ::cDDN , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("DESCPROVINC", ::cDESCPROVINC, ::cDESCPROVINC , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("EMAIL", ::cEMAIL, ::cEMAIL , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("ENDERECO", ::cENDERECO, ::cENDERECO , "string", .T. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("FANTASIA", ::cFANTASIA, ::cFANTASIA , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("FAX", ::cFAX, ::cFAX , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("FONE", ::cFONE, ::cFONE , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("INSCRPROVI", ::cINSCRPROVI, ::cINSCRPROVI , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("NOME", ::cNOME, ::cNOME , "string", .T. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("NUM", ::cNUM, ::cNUM , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("REGMUN", ::cREGMUN, ::cREGMUN , "string", .F. , .F., 0 , NIL, .F.,.F.) 
	cSoap += WSSoapValue("RUC", ::cRUC, ::cRUC , "string", .F. , .F., 0 , NIL, .F.,.F.) 
Return cSoap


