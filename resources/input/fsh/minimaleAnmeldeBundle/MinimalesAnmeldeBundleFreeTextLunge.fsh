Profile: AnmeldeBundleMinimalFreitextLunge
Parent: Bundle
Id: AnmeldeBundleMinimalFreitextLunge
Title: "AnmeldeBundleMinimalFreitextLunge"
Description: "AnmeldeBundleMinimalFreitextLunge"
* type = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
  anmelder 1..1 MS and
  patient 1..1 MS and
  tumorBoardAnmeldung 1..1 MS and
  histologischeTypisierungLunge 0..1 MS and
  diagnoseFreitext 0..1 MS and
  diagnose-icd10 0..1 MS and
  allgemeinerLeistungszustandKarnofsky 0..1 MS and
  grading 0..1 MS and
  erstdiagnose 0..1 MS and
  tnm 0..1 MS and
  tnm-t 0..1 MS and
  tnm-n 0..1 MS and
  tnm-m 0..1 MS and
  ecog 0..1 MS and
  praxisPathologischesInstitutFreitext 0..1 MS and
  histologieMolPatFreitext 0..1 MS and
  verlaufFreitext 0..1 MS and
  nebendiagnosen 0..* MS and
  fragestellungTumorkonferenzFreitext 0..1 MS and
  ctmrtSchaedel 0..1 MS and
  ctmrtAbdomen 0..1 MS and
  petCT 0..1 MS and
  skelettszintigraphie 0..1 MS and
  lungenfunktionstest 0..1 MS and
  fragestellungRadiologieFreitext 0..1 MS and
  ctmrtThorax 0..1 MS and
  bildBefundEKG 0..1 MS
* entry[anmelder]
  * resource only Anmelder
* entry[patient]
  * resource only TumorPatient
* entry[tumorBoardAnmeldung]
  * resource only TumorBoardAnmeldung
* entry[histologischeTypisierungLunge]
  * resource only HistologischeTypisierungLunge
* entry[diagnoseFreitext]
  * resource only DiagnoseFreitext
* entry[diagnose-icd10]
  * resource only DiagnoseLungenTumorMinimal
* entry[allgemeinerLeistungszustandKarnofsky]
  * resource only MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky
* entry[grading]
  * resource only MII_PR_Onko_Grading
* entry[erstdiagnose]
  * resource only Erstdiagnose
* entry[tnm]
  * resource only MII_PR_Onko_TNM_Klassifikation
* entry[tnm-t]
  * resource only MII_PR_Onko_TNM_T_Kategorie
* entry[tnm-n]
  * resource only MII_PR_Onko_TNM_N_Kategorie
* entry[tnm-m]
  * resource only MII_PR_Onko_TNM_M_Kategorie
* entry[ecog]
  * resource only ECOG
* entry[praxisPathologischesInstitutFreitext]
  * resource only PraxisPathologischesInstitutFreitext
* entry[histologieMolPatFreitext]
  * resource only HistologieMolPatFreitext
* entry[verlaufFreitext]
  * resource only VerlaufFreitext 
* entry[nebendiagnosen]
  * resource only Nebendiagnose 
* entry[fragestellungTumorkonferenzFreitext]
  * resource only FragestellungTumorkonferenzFreitext 
* entry[ctmrtSchaedel]
  * resource only CTMRTSchaedel 
* entry[ctmrtAbdomen]
  * resource only CTMRTAbdomen
* entry[petCT]
  * resource only PetCT
* entry[skelettszintigraphie]
  * resource only Skelettszintigraphie
* entry[lungenfunktionstest]
  * resource only Lungenfunktionstest
* entry[fragestellungRadiologieFreitext]
  * resource only FragestellungRadiologieFreitext
* entry[ctmrtThorax]
  * resource only BildBefundCTMRTThorax
* entry[bildBefundEKG]
  * resource only BildBefundEKG

Profile: Anmelder
Parent: Practitioner
Id: Anmelder
Title: "Anmelder"
Description: "Anmelder"
* name.text MS
* telecom MS

ValueSet: HistologischeTypisierungVS
Id: histologische-typisierung-vs
Title: "Histologische Typisierung ValueSet"
Description: "ValueSet für die histologische Typisierung mit den Antwortoptionen: Unbekannt, SCLC, NSCLC, Sonstige."
* $sct#261665006 "Unbekannt"
* $sct#254632001 "SCLC"
* $sct#254637007 "NSCLC"
* $sct#74964007 "Sonstige"

Profile: HistologischeTypisierungLunge
Parent: MinimalObservation
Id: histologische-typisierung-lunge
Title: "Histologische Typisierung Lunge"
Description: "Profil zur Dokumentation der histologischen Typisierung Lunge."
* code 1..1 MS
* code = $customCodes#histologischeTypisierung
* value[x] only CodeableConcept
* valueCodeableConcept from HistologischeTypisierungVS

Profile: DiagnoseFreitext
Parent: FreitextObservation
Id: DiagnoseFreitext
Title: "DiagnoseFreitext"
Description: "DiagnoseFreitext"
* code = $customCodes#diagnoseFreitext

Profile: Erstdiagnose
Parent: MinimalObservation
Id: Erstdiagnose
Title: "Erstdiagnose"
Description: "Erstdiagnose"
* code = $customCodes#erstdiagnose
* subject MS
* component 
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    datumED 0..1 MS and
    stadiumBeiED 0..1 MS and
    cTNMbeiED 0..1 MS
* component[datumED]
  * code = $customCodes#datumED
  * value[x] only dateTime
* component[stadiumBeiED]
  * code = $customCodes#stadiumBeiED
  * value[x] only string
* component[cTNMbeiED]
  * code = $customCodes#cTNMbeiED
  * value[x] only string

Profile: TNMFreitext
Parent: FreitextObservation
Id: TNMFreitext
Title: "TNMFreitext"
Description: "TNMFreitext"
* code = $customCodes#tnm-FreitextObservation

Profile: PraxisPathologischesInstitutFreitext
Parent: FreitextObservation
Id: praxis-pathologisches-institut-freitext
Title: "PraxisPathologischesInstitutFreitext"
Description: "Freitext zur Dokumentation der Praxis oder des pathologischen Instituts des Patienten."
* code = $customCodes#praxisPathologischesInstitutFreitext

Profile: FertilitaetsBehandlungEmpfohlen
Parent: MinimalObservation
Id: FertilitaetsBehandlungEmpfohlen
Title: "FertilitaetsBehandlungEmpfohlen"
Description: "FertilitaetsBehandlungEmpfohlen"
* code 1.. MS
* code = $customCodes#fertilitaetsBehandlungEmpfohlen
* value[x] only CodeableConcept
* valueCodeableConcept from JaNeinBeratungVS

ValueSet: JaNeinBeratungVS
Id: ja-nein-beratung-vs
Title: "Ja, Nein, Beratung schon erfolgt ValueSet"
Description: "Ein ValueSet mit den Codes für Ja, Nein und Beratung schon erfolgt."
* $sct#373066001 "Ja"
* $sct#373067005 "Nein"
* $customCodes#beratungSchonErfolgt "Beratung schon erfolgt"

Profile: Tumorsituation
Parent: MinimalObservation
Id: tumorsituation
Title: "Tumorsituation"
Description: "Profil zur Erfassung der Tumorsituation."
* code 1.. MS
* code = $customCodes#tumorsituation
* value[x] only CodeableConcept
* valueCodeableConcept from TumorsituationVS

CodeSystem: TumorsituationCS
Id: tumorsituation-cs
Title: "Tumorsituation CodeSystem"
Description: "Codesystem für die Tumorsituation mit den Codes ED, LR, M, TV, S."
* #ED "Erstdiagnose"
* #LR "Lokalregionales Rezidiv"
* #M "Metastasierung"
* #TV "Therapieverlauf"
* #S "Sonstige"

ValueSet: TumorsituationVS
Id: tumorsituation-vs
Title: "Tumorsituation ValueSet"
Description: "ValueSet für die Tumorsituation mit den Codes ED, LR, M, TV, S."
* include codes from system TumorsituationCS

Profile: HistologieMolPatFreitext
Parent: FreitextObservation
Id: HistologieMolPatFreitext
Title: "HistologieMolPatFreitext"
Description: "HistologieMolPatFreitext"
* code = $customCodes#histologieMolPatFreitext

Profile: OperativeTherapieFreitext
Parent: FreitextObservation
Id: OperativeTherapieFreitext
Title: "OperativeTherapieFreitext"
Description: "OperativeTherapieFreitext"
* code = $customCodes#operativeTherapieFreitext

Profile: StrahlenTherapieFreitext
Parent: FreitextObservation
Id: StrahlenTherapieFreitext
Title: "StrahlenTherapieFreitext"
Description: "StrahlenTherapieFreitext"
* code = $customCodes#strahlenTherapieFreitext

Profile: MedikamentoeseTherapieFreitext
Parent: FreitextObservation
Id: medikamentoese-therapie-freitext
Title: "MedikamentöseTherapieFreitext"
Description: "Freitext für die Beschreibung der medikamentösen Therapie"
* code = $customCodes#medikamentoeseTherapieFreitext

Profile: VerlaufFreitext
Parent: FreitextObservation
Id: verlauf-freitext
Title: "VerlaufFreitext"
Description: "Freitext für die Beschreibung des Verlaufs"
* code = $customCodes#verlaufFreitext

Profile: PsaVerlaufFreitext
Parent: FreitextObservation
Id: psa-verlauf-freitext
Title: "PsaVerlaufFreitext"
Description: "Freitext für die Beschreibung des PSA-Verlaufs"
* code = $customCodes#psaVerlaufFreitext

Profile: FragestellungTumorkonferenzFreitext
Parent: FreitextObservation
Id: fragestellung-tumorkonferenz-freitext
Title: "FragestellungTumorkonferenzFreitext"
Description: "Freitext für die Fragestellung im Kontext einer Tumorkonferenz"
* code = $customCodes#fragestellungTumorkonferenzFreitext

Profile: FragestellungPathologieFreitext
Parent: FreitextObservation
Id: fragestellung-pathologie-freitext
Title: "FragestellungPathologieFreitext"
Description: "Freitext für die spezifische Fragestellung an die Pathologie"
* code = $customCodes#fragestellungPathologieFreitext

Profile: BemerkungFreitext
Parent: FreitextObservation
Id: bemerkung-freitext
Title: "BemerkungFreitext"
Description: "Freitext für allgemeine Bemerkungen"
* code = $customCodes#bemerkungFreitext

Profile: RadiologieBilderFreitext
Parent: FreitextObservation
Id: radiologie-bilder-freitext
Title: "RadiologieBilderFreitext"
Description: "Freitext zur Beschreibung der an die Radiologie übermittelten Bilder"
* code = $customCodes#radiologieBilderFreitext

Profile: FragestellungRadiologieFreitext
Parent: FreitextObservation
Id: fragestellung-radiologie-freitext
Title: "FragestellungRadiologieFreitext"
Description: "Freitext für die spezifische Fragestellung an die Radiologie"
* code = $customCodes#fragestellungRadiologieFreitext

ValueSet: ExterneBilderVS
Id: externe-bilder-vs
Title: "Externe Bilder ValueSet"
Description: "ValueSet für externe Bilder mit den Antwortoptionen: sind eingelesen, werden elektronisch übermittelt, werden per Post gesendet."
* $customCodes#eingelesen "sind eingelesen"
* $customCodes#elektronischUebermittelt "werden elektronisch übermittelt"
* $customCodes#perPostGesendet "werden per Post gesendet"

ValueSet: StatusBildbefundVS
Id: StatusBildbefundVS
Title: "StatusBildbefundVS"
Description: "Status Bildbefund ValueSet"
* $customCodes#nicht-vorhanden "nicht vorhanden"
* $customCodes#eingelesen "sind eingelesen"
* $customCodes#noch-nicht-eingelesen "noch nicht eingelesen"
* $customCodes#ausstehend "ausstehend"

Profile: BildBefundCTMRTThorax
Parent: MinimalObservation
Id: ct-mrt-thorax
Title: "CT / MRT Thorax"
Description: "Abbildung der Verfügbarkeit von CT/MRT-Bildern des Thorax."
* code 1.. MS
* code = $customCodes#ct-mrt-thorax
* value[x] only CodeableConcept
* valueCodeableConcept from StatusBildbefundVS

Profile: BildBefundEKG
Parent: MinimalObservation
Id: ekg
Title: "EKG"
Description: "Abbildung der Verfügbarkeit von EKG-Befunden."
* code 1.. MS
* code = $loinc#11524-6 // EKG study
* value[x] only CodeableConcept
* valueCodeableConcept from StatusBildbefundVS

ValueSet: GewuenschteTeilnehmerVS
Id: gewuenschte-teilnehmer-vs
Title: "Gewünschte Teilnehmer ValueSet"
Description: "ValueSet mit den Antwortoptionen für gewünschte Teilnehmer in einem medizinischen Kontext."
* $customCodes#allgemeinchirurgie "Allgemeinchirurgie"
* $customCodes#dermatologie "Dermatologie"
* $customCodes#endokrinologie "Endokrinologie"
* $customCodes#gastroenterologie "Gastroenterologie"
* $customCodes#giOnkologie "GI-Onkologie"
* $customCodes#gynaekologie "Gynäkologie"
* $customCodes#haematologie "Hämatologie"
* $customCodes#hno "HNO"
* $customCodes#humangenetik "Humangenetik"
* $customCodes#internistischeOnkologie "Internistische Onkologie"
* $customCodes#kinderchirurgie "Kinderchirurgie"
* $customCodes#mkgChirurgie "MKG-Chirurgie"
* $customCodes#neurochirurgie "Neurochirurgie"
* $customCodes#neurologie "Neurologie"
* $customCodes#neuropathologie "Neuropathologie"
* $customCodes#neuroradiologie "Neuroradiologie"
* $customCodes#nuklearmedizin "Nuklearmedizin"
* $customCodes#orthopaedie "Orthopädie"
* $customCodes#paediatrie "Pädiatrie"
* $customCodes#palliativmedizin "Palliativmedizin"
* $customCodes#pneumologie "Pneumologie"
* $customCodes#psychoonkologie "Psychoonkologie/Psychosomatik"
* $customCodes#thoraxChirurgie "Thorax-Chirurgie"

Profile: GewuenschteTeilnehmer
Parent: MinimalObservation
Id: gewuenschte-teilnehmer
Title: "Gewünschte Teilnehmer"
Description: "Profil zur Dokumentation der gewünschten Teilnehmer für ein medizinisches Treffen oder Konsil."
* code 1.. MS
* code = $customCodes#gewuenschteTeilnehmer
* value[x] only CodeableConcept
* valueCodeableConcept from GewuenschteTeilnehmerVS

Profile: WeitereGewuenschteTeilnehmerFreitext
Parent: FreitextObservation
Id: weitere-gewuenschte-teilnehmer-freitext
Title: "WeitereGewuenschteTeilnehmerFreitext"
Description: "Freitext für die Beschreibung weiterer gewünschter Teilnehmer, die nicht in den vordefinierten Optionen enthalten sind."
* code = $customCodes#weitereGewuenschteTeilnehmerFreitext

Profile: TumorBoardAnmeldung
Parent: MinimalObservation
Id: tumor-board-anmeldung
Title: "TumorBoardAnmeldung"
Description: "TumorBoardAnmeldung"
* code 1.. MS
* code = $customCodes#tumorBoardAnmeldung
* value[x] 0..0
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    tumorboard 1..1 MS and
    terminwunsch 1..1 MS and
    zweitmeinung 1..1 MS
* component[tumorboard]
  * code = $customCodes#tumorboard
  * value[x] only CodeableConcept
* component[terminwunsch]
  * code = $customCodes#terminwunsch
  * value[x] only string
* component[zweitmeinung]
  * code = $customCodes#zweitmeinung
  * value[x] only CodeableConcept
  * valueCodeableConcept from  JaNeinUnbekanntVS

ValueSet: JaNeinUnbekanntVS
Id: ja-nein-unbekannt-vs
Title: "Expanded Yes/No Indicator ValueSet"
Description: "Ein ValueSet, das die Konzepte Yes, No und Unknown aus dem ExpandedYesNoIndicator CodeSystem enthält"
* $sct#373066001 "Ja"
* $sct#373067005 "Nein"
* $sct#261665006 "Unbekannt"

ValueSet: BefundstatusVS
Id: befundstatust-vs
Title: "Befundstatus ValueSet"
Description: "ValueSet für die CT/MRT Befund mit den Antwortoptionen: auffällig, unauffällig, liegt nicht vor, unbekannt."
* $customCodes#auffaellig "auffällig"
* $customCodes#unauffaellig "unauffällig"
* $customCodes#liegtNichtVor "liegt nicht vor"
* $customCodes#unbekannt "unbekannt"

Profile: CTMRTSchaedel
Parent: MinimalObservation
Id: ct-mrt-schaedel
Title: "CT/MRT Schädel"
Description: "Profil zur Dokumentation des CT/MRT Schädel-Befunds."
* code 1.. MS
* code = $customCodes#ctMRTSchaedel
* value[x] only CodeableConcept
* valueCodeableConcept from BefundstatusVS
* note 0..1 MS
  * text 1..1 MS

Profile: CTMRTAbdomen
Parent: MinimalObservation
Id: ct-mrt-abdomen
Title: "CT/MRT Abdomen"
Description: "Profil zur Dokumentation des CT/MRT Abdomen-Befunds."
* code 1.. MS
* code = $customCodes#ctMRTAbdomen
* value[x] only CodeableConcept
* valueCodeableConcept from BefundstatusVS
* note 0..1 MS
  * text 1..1 MS

Profile: PetCT
Parent: MinimalObservation
Id: pet-ct
Title: "PetCT"
Description: "Profil zur Dokumentation des PetCT Befunds."
* code 1.. MS
* code = $customCodes#petCT
* value[x] only CodeableConcept
* valueCodeableConcept from BefundstatusVS
* note 0..1 MS
  * text 1..1 MS

Profile: Skelettszintigraphie
Parent: MinimalObservation
Id: skelettszintigraphie
Title: "Skelettszintigraphie"
Description: "Profil zur Dokumentation des Skelettszintigraphie Befunds."
* code 1.. MS
* code = $customCodes#skelettszintigraphie
* value[x] only CodeableConcept
* valueCodeableConcept from BefundstatusVS
* note 0..1 MS
  * text 1..1 MS

Profile: Lungenfunktionstest
Parent: MinimalObservation
Id: lungenfunktionstest
Title: "Lungenfunktionstest"
Description: "Profil zur Dokumentation des Lungenfunktionstest Befunds."
* code 1.. MS
* code = $customCodes#lungenfunktionstest
* value[x] only CodeableConcept
* valueCodeableConcept from BefundstatusVS
* note 0..1 MS
  * text 1..1 MS
  
Profile: FreitextObservation
Parent: MinimalObservation
Id: FreitextObservation
Title: "FreitextObservation"
Description: "FreitextObservation"
* value[x] only string
* valueString MS

Profile: MinimalObservation
Parent: Observation
Id: MinimalObservation
Title: "MinimalObservation"
Description: "MinimalObservation zur Festlegung gemeinsamer fixen Werten"
* status = #final
* code 1.. MS
* subject MS