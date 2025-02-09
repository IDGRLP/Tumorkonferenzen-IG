Profile: AnmeldeBundleMinimalFreitextProstata
Parent: Bundle
Id: AnmeldeBundleMinimalFreitextProstata
Title: "AnmeldeBundleMinimalFreitextProstata"
Description: "AnmeldeBundleMinimalFreitextProstata"
* type = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
  patient 1..1 MS and
  tumorBoardAnmeldung 1..1 MS and
  anmelder 1..1 MS and
  diagnoseFreitext 0..1 MS and
  diagnose-icd10 0..1 MS and
  allgemeinerLeistungszustandKarnofsky 0..1 MS and
  grading 0..1 MS and
  untersuchteLymphknoten 0..1 MS and
  befalleneLymphknoten 0..1 MS and
  untersuchteSentinelLymphknoten 0..1 MS and
  befalleneSentinelLymphknoten 0..1 MS and
  erstdiagnose 0..1 MS and
  tnmFreitext 0..1 MS and
  ecog 0..1 MS and
  familienanamneseDropDown 0..1 MS and
  fertilitaetsBehandlungEmpfohlen 0..1 MS and
  tumorsituation 0..1 MS and
  histologieMolPatFreitext 0..1 MS and
  operativeTherapieFreitext 0..1 MS and
  strahlenTherapieFreitext  0..1 MS and
  medikamentoeseTherapieFreitext 0..1 MS and
  verlaufFreitext 0..1 MS and
  psaVerlaufFreitext 0..1 MS and
  relevanteNebendiagnosenFreitext 0..1 MS and
  fragestellungTumorkonferenzFreitext 0..1 MS and
  fragestellungPathologieFreitext 0..1 MS and
  bemerkungFreitext 0..1 MS and
  radiologieBilderFreitext 0..1 MS and
  fragestellungRadiologieFreitext 0..1 MS and
  externeBilder 0..1 MS and
  gewuenschteTeilnehmer 0..* MS and
  weitereGewuenschteTeilnehmerFreitext 0..1 MS
* entry[patient]
  * resource only TumorPatient
* entry[tumorBoardAnmeldung]
  * resource only TumorBoardAnmeldung
* entry[anmelder]
  * resource only Anmelder
* entry[diagnoseFreitext]
  * resource only DiagnoseFreitext
* entry[diagnose-icd10]
  * resource only Condition // FIXME: should be: MII_PR_Onko_Diagnose_Primaertumor but this is throwing an error
* entry[allgemeinerLeistungszustandKarnofsky]
  * resource only MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky
* entry[grading]
  * resource only MII_PR_Onko_Grading
* entry[untersuchteLymphknoten]
  * resource only MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten
* entry[befalleneLymphknoten]
  * resource only MII_PR_Onko_Anzahl_Befallene_Lymphknoten
* entry[untersuchteSentinelLymphknoten]
  * resource only MII_PR_Onko_Anzahl_Untersuchte_Sentinel_Lymphknoten
* entry[befalleneSentinelLymphknoten]
  * resource only MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten
* entry[erstdiagnose]
  * resource only Erstdiagnose
* entry[tnmFreitext]
  * resource only TNMFreitext
* entry[ecog]
  * resource only ECOG
* entry[familienanamneseDropDown]
  * resource only FamilienanamneseDropDown  
* entry[fertilitaetsBehandlungEmpfohlen]
  * resource only FertilitaetsBehandlungEmpfohlen 
* entry[tumorsituation]
  * resource only Tumorsituation 
* entry[histologieMolPatFreitext]
  * resource only HistologieMolPatFreitext 
* entry[operativeTherapieFreitext]
  * resource only OperativeTherapieFreitext 
* entry[strahlenTherapieFreitext]
  * resource only StrahlenTherapieFreitext 
* entry[medikamentoeseTherapieFreitext]
  * resource only MedikamentoeseTherapieFreitext 
* entry[verlaufFreitext]
  * resource only VerlaufFreitext 
* entry[psaVerlaufFreitext]
  * resource only PsaVerlaufFreitext 
* entry[relevanteNebendiagnosenFreitext]
  * resource only RelevanteNebendiagnosenFreitext 
* entry[fragestellungTumorkonferenzFreitext]
  * resource only FragestellungTumorkonferenzFreitext 
* entry[fragestellungPathologieFreitext]
  * resource only FragestellungPathologieFreitext 
* entry[bemerkungFreitext]
  * resource only BemerkungFreitext 
* entry[radiologieBilderFreitext]
  * resource only RadiologieBilderFreitext 
* entry[fragestellungRadiologieFreitext]
  * resource only FragestellungRadiologieFreitext
* entry[externeBilder]
  * resource only ExterneBilder
* entry[gewuenschteTeilnehmer]
  * resource only GewuenschteTeilnehmer
* entry[weitereGewuenschteTeilnehmerFreitext]
  * resource only WeitereGewuenschteTeilnehmerFreitext

Profile: FamilienanamneseDropDown
Parent: MinimalObservation
Id: familienanamnese-drop-down
Title: "Familienanamnese DropDown"
Description: "Familienanamnese DropDown"
* code 1.. MS
* code = $customCodes#familienanamnese
* value[x] only CodeableConcept
* valueCodeableConcept from PosNegNaskVS

ValueSet: PosNegNaskVS
Id: pos-neg-nask-vs
Title: "PosNegNask"
Description: "PosNegNask"
* $sct#10828004 "Positive"
* $sct#260385009 "Negative"
* NullFlavor#NASK "This information has not been sought (e.g., patient was not asked)"