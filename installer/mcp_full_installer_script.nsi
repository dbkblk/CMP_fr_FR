; Installation script
;--------------------------------

SetCompressor /SOLID LZMA

; Modern UI
;--------------------------------

  !include "MUI.nsh"
  !define REVISION "1.7"
  !define /date DATE "%Y-%m"
  
; Unzip FPK module
;--------------------------------
!include "ZipDLL.nsh"

; General information
;--------------------------------

; The name of the installer
Name "Civilization IV: A New Dawn - Mega civ. pack"

; The file to write
OutFile "rand_mcp_full_installer_${DATE}_${REVISION}.exe"

; The default installation directory
InstallDir "$DOCUMENTS\My Games\Beyond the sword\Mods\Rise of Mankind - A New Dawn\"

; Request application privileges
RequestExecutionLevel user

;Variables
;--------------------------------

; Layout
;--------------------------------
!define MUI_ICON "AND_icon.ico"
!define MUI_WELCOMEFINISHPAGE_BITMAP "installer_left_image.bmp"

; Page definition
;--------------------------------
!define MUI_WELCOMEPAGE_TITLE $(WELCOME_TITLE)
!define MUI_WELCOMEPAGE_TEXT $(WELCOME)

!define MUI_DIRECTORYPAGE_TEXT_TOP $(DIRECTORY)

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
RequestExecutionLevel admin
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES

; Language
;--------------------------------
!insertmacro MUI_LANGUAGE "English"
;!insertmacro MUI_LANGUAGE "Arabic"
;!insertmacro MUI_LANGUAGE "Bulgarian"
;!insertmacro MUI_LANGUAGE "Catalan"
;!insertmacro MUI_LANGUAGE "SimpChinese"
;!insertmacro MUI_LANGUAGE "TradChinese"
;!insertmacro MUI_LANGUAGE "Czech"
;!insertmacro MUI_LANGUAGE "Danish"
;!insertmacro MUI_LANGUAGE "Dutch"
;!insertmacro MUI_LANGUAGE "Finnish"
!insertmacro MUI_LANGUAGE "French"
;!insertmacro MUI_LANGUAGE "German"
;!insertmacro MUI_LANGUAGE "Greek"
;!insertmacro MUI_LANGUAGE "Hungarian"
;!insertmacro MUI_LANGUAGE "Italian"
;!insertmacro MUI_LANGUAGE "Japanese"
;!insertmacro MUI_LANGUAGE "Korean"
;!insertmacro MUI_LANGUAGE "Polish"
;!insertmacro MUI_LANGUAGE "Portuguese"
;!insertmacro MUI_LANGUAGE "PortugueseBR"
;!insertmacro MUI_LANGUAGE "Russian"
;!insertmacro MUI_LANGUAGE "Spanish"
;!insertmacro MUI_LANGUAGE "Turkish"
;!insertmacro MUI_LANGUAGE "Ukrainian"


Function .onInit
        !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Function .onInstSuccess
Exec "$INSTDIR\and2_checker.exe"
FunctionEnd

AutoCloseWindow true 

; Translations
;--------------------------------

; English

LangString WELCOME_TITLE ${LANG_ENGLISH} "Civilization IV: A New Dawn - Mega Civ Pack"
LangString WELCOME ${LANG_ENGLISH} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
LangString REQUIRED ${LANG_ENGLISH} "required"
LangString DIRECTORY ${LANG_ENGLISH} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
LangString FINISH ${LANG_ENGLISH} "The new civilizations are now installed. Enjoy."

; Arabic

; LangString WELCOME_TITLE ${LANG_ARABIC} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_ARABIC} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_ARABIC} "مطلوب"
; LangString DIRECTORY ${LANG_ARABIC} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_ARABIC} "The new civilizations are now installed. Enjoy."

; Bulgarian

; LangString WELCOME_TITLE ${LANG_BULGARIAN} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_BULGARIAN} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_BULGARIAN} "изисква"
; LangString DIRECTORY ${LANG_BULGARIAN} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_BULGARIAN} "The new civilizations are now installed. Enjoy."

; Catalan

; LangString WELCOME_TITLE ${LANG_CATALAN} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_CATALAN} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_CATALAN} "necessari"
; LangString DIRECTORY ${LANG_CATALAN} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_CATALAN} "The new civilizations are now installed. Enjoy."

; Simplified Chinese

; LangString WELCOME_TITLE ${LANG_SIMPCHINESE} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_SIMPCHINESE} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_SIMPCHINESE} "前提"
; LangString DIRECTORY ${LANG_SIMPCHINESE} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_SIMPCHINESE} "The new civilizations are now installed. Enjoy."

; Traditional Chinese

; LangString WELCOME_TITLE ${LANG_TRADCHINESE} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_TRADCHINESE} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_TRADCHINESE} "required"
; LangString DIRECTORY ${LANG_TRADCHINESE} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_TRADCHINESE} "The new civilizations are now installed. Enjoy."

; Czech

; LangString WELCOME_TITLE ${LANG_CZECH} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_CZECH} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_CZECH} "požadováno"
; LangString DIRECTORY ${LANG_CZECH} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_CZECH} "The new civilizations are now installed. Enjoy."

; Danish

; LangString WELCOME_TITLE ${LANG_DANISH} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_DANISH} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_DANISH} "kræves"
; LangString DIRECTORY ${LANG_DANISH} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_DANISH} "The new civilizations are now installed. Enjoy."

; Dutch

; LangString WELCOME_TITLE ${LANG_DUTCH} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_DUTCH} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_DUTCH} "required"
; LangString DIRECTORY ${LANG_DUTCH} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_DUTCH} "The new civilizations are now installed. Enjoy."

; Finnish

; LangString WELCOME_TITLE ${LANG_FINNISH} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_FINNISH} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_FINNISH} "required"
; LangString DIRECTORY ${LANG_FINNISH} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_FINNISH} "The new civilizations are now installed. Enjoy."

; French

LangString WELCOME_TITLE ${LANG_FRENCH} "Civilization IV: A New Dawn - Mega Civ Pack"
LangString WELCOME ${LANG_FRENCH} "Révision : ${REVISION}\n\n Cet assistant d'installation vous guidera dans l'installation de plus de 100 nouvelles civilisations pour Civilization IV: A New Dawn.\n\n Le module sera extrait dans le dossier de votre installation de Civilization IV: A New Dawn.\n\n Note : L'installation peut prendre quelques minutes, soyez patient."
LangString REQUIRED ${LANG_FRENCH} "requis"
LangString DIRECTORY ${LANG_FRENCH} "Le programme d'installation va installer le pack d'extension où Civilization IV: A New Dawn est installé.$\nSi l'extension originale est installée dans un autre dossier, sélectionnez-le s'il vous plaît avant de continuer."
LangString FINISH ${LANG_FRENCH} "Les nouvelles civilisations sont maintenant installées. Profitez."

; German

; LangString WELCOME_TITLE ${LANG_GERMAN} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_GERMAN} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_GERMAN} "benötigt"
; LangString DIRECTORY ${LANG_GERMAN} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_GERMAN} "The new civilizations are now installed. Enjoy."

; Greek

; LangString WELCOME_TITLE ${LANG_GREEK} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_GREEK} "Αναθεώρηση: ${REVISION}\n\n Ο οδηγός εγκατάστασης θα σας βοηθήσει στη διαδικασία εγκατάστασης περισσότερων από 100 νέων πολιτισμών για τοCivilization IV: A New Dawn.\n\n Το mod θα εγκατασταθεί στην τωρινή θέση εγκατάστασης του Civilization IV: A New Dawn.\n\n Σημείωση: Η εγκατάσταση μπορεί να διαρκέσει μερικά λεπτά, παρακαλώ περιμένετε."
; LangString REQUIRED ${LANG_GREEK} "απαιτείται"
; LangString DIRECTORY ${LANG_GREEK} "Ο οδηγός θα εγκαταστήσει το πακέτο επέκτασης στην τοποθεσία εγκατάστασης του Civilization IV: A New Dawn is installed.$\n Αν η επέκταση είχε προηγουμένως διαφορετική τοποθεσία εγκατάστασης, παρακαλώ επιλέξτε ανάλογα πριν προχωρήσετε."
; LangString FINISH ${LANG_GREEK} "Οι νέοι πολιτισμοί έχουν πλέον εγκατασταθεί. Καλή διασκέδαση."

; Hungarian

; LangString WELCOME_TITLE ${LANG_HUNGARIAN} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_HUNGARIAN} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_HUNGARIAN} "szükséges"
; LangString DIRECTORY ${LANG_HUNGARIAN} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_HUNGARIAN} "The new civilizations are now installed. Enjoy."

; Italian

; LangString WELCOME_TITLE ${LANG_ITALIAN} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_ITALIAN} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_ITALIAN} "richiesto"
; LangString DIRECTORY ${LANG_ITALIAN} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_ITALIAN} "Adesso le nuove civiltà sono installate. Divertiti."

; Japanese

; LangString WELCOME_TITLE ${LANG_JAPANESE} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_JAPANESE} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_JAPANESE} "required"
; LangString DIRECTORY ${LANG_JAPANESE} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_JAPANESE} "The new civilizations are now installed. Enjoy."

; Korean

; LangString WELCOME_TITLE ${LANG_KOREAN} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_KOREAN} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_KOREAN} "required"
; LangString DIRECTORY ${LANG_KOREAN} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_KOREAN} "The new civilizations are now installed. Enjoy."

; Polish

; LangString WELCOME_TITLE ${LANG_POLISH} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_POLISH} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_POLISH} "wymagane"
; LangString DIRECTORY ${LANG_POLISH} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_POLISH} "The new civilizations are now installed. Enjoy."

; Portuguese

; LangString WELCOME_TITLE ${LANG_PORTUGUESE} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_PORTUGUESE} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_PORTUGUESE} "requerido"
; LangString DIRECTORY ${LANG_PORTUGUESE} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_PORTUGUESE} "The new civilizations are now installed. Enjoy."

; PortugueseBR

; LangString WELCOME_TITLE ${LANG_PORTUGUESEBR} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_PORTUGUESEBR} "Revisão: ${REVISION}\n\n Este assistente de configuração irá guiá-lo através da instalação de mais de 100 novas civilizações para Civilization IV: A New Dawn.\n\n O mod será extraído dentro da instalação atual de Civilization IV: A New Dawn.\n\n Nota: A instalação pode levar alguns minutos, por favor, seja paciente."
; LangString REQUIRED ${LANG_PORTUGUESEBR} "requerido"
; LangString DIRECTORY ${LANG_PORTUGUESEBR} "O instalador irá instalar o pacote de expansão onde Civilization IV: A New Dawn estiver instalado. $\nIf o mod original está instalado em outra pasta, por favor, selecione a pasta correta antes de continuar."
; LangString FINISH ${LANG_PORTUGUESEBR} "As novas civilizações estão instaladas agora. Aproveite."

; Russian

; LangString WELCOME_TITLE ${LANG_RUSSIAN} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_RUSSIAN} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_RUSSIAN} "требуется"
; LangString DIRECTORY ${LANG_RUSSIAN} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_RUSSIAN} "The new civilizations are now installed. Enjoy."

; Spanish

; LangString WELCOME_TITLE ${LANG_SPANISH} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_SPANISH} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_SPANISH} "necesario"
; LangString DIRECTORY ${LANG_SPANISH} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_SPANISH} "The new civilizations are now installed. Enjoy."

; Turkish

; LangString WELCOME_TITLE ${LANG_TURKISH} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_TURKISH} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_TURKISH} "gerekli"
; LangString DIRECTORY ${LANG_TURKISH} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_TURKISH} "The new civilizations are now installed. Enjoy."

; Ukrainian

; LangString WELCOME_TITLE ${LANG_UKRAINIAN} "Civilization IV: A New Dawn - Mega Civ Pack"
; LangString WELCOME ${LANG_UKRAINIAN} "Revision: ${REVISION}\n\n This setup wizard will guide you through the installation of more than 100 new civilizations for Civilization IV: A New Dawn.\n\n The mod will be extracted into your Civilization IV: A New Dawn current installation.\n\n Note: The installation can take some minutes, please be patient."
; LangString REQUIRED ${LANG_UKRAINIAN} "required"
; LangString DIRECTORY ${LANG_UKRAINIAN} "Setup will install the expansion pack where Civilization IV: A New Dawn is installed.$\nIf the original mod is installed in another folder, please select it before to continue."
; LangString FINISH ${LANG_UKRAINIAN} "The new civilizations are now installed. Enjoy."



; Installation
;--------------------------------

Section "Mega civ. Pack" ;No components page, name is not important
SectionIn RO
AddSize 1180000

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  ; Put file there
  File /r "..\files\*"
  
  ZipDLL::extractall "$INSTDIR\Assets\MCP0.zip" "$INSTDIR\Assets\"
  Delete "$INSTDIR\Assets\MCP0.zip"

;Create uninstaller
  WriteUninstaller "$INSTDIR\mcp_uninstall.exe"
 
SectionEnd ; end the section

; Uninstallation
;--------------------------------


Section "Uninstall"

; Delete files

RMDir /r "$INSTDIR\Assets\Modules\Custom_Civilizations_MCP"
Delete "$INSTDIR\Assets\MCP0.FPK"
Delete "$INSTDIR\Assets\XML\Text\MCP_BUILDINGS.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_BUILDINGS_PEDIA.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_CITIES.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_CIVILIZATIONS.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_CIVILIZATIONS_PEDIA.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_DIPLOMACY.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_LEADERS.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_LEADERS_PEDIA.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_MISC.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_UNITS.xml"
Delete "$INSTDIR\Assets\XML\Text\MCP_UNITS_PEDIA.xml"
Delete "$INSTDIR\mcp_uninstall.exe"

SectionEnd


