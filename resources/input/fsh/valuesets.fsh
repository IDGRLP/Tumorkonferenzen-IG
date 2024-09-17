ValueSet: ICDO3Morphologie
Id: icd-o-3-morphologie
Title: "Morphologie Codes des ICD-O-3 CodeSystems."
* include codes from system ICDO3 where concept regex /^\d\S*$/

ValueSet: ECOGPerformanceStatusVS
Id: ecog-performance-status
Title: "ECOG"
Description: "ECOG Performance Status (Level 0-5)."
* LOINC#LA9622-7 "ECOG 0 (Normale, uneingeschränkte Aktivität wie vor der Erkrankung)"
* LOINC#LA9623-5 "ECOG 1: (Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen)"
* LOINC#LA9624-3 "ECOG 2: (Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50% der Wachzeit aufstehen)"
* LOINC#LA9625-0 "ECOG 3: (Nur begrenzte Selbstversorgung möglich; ist 50% oder mehr der Wachzeit an Bett oder Stuhl gebunden)"
* LOINC#LA9626-8 "ECOG 4: (Völlig pflegebedürftig, keinerlei Selbstversorgung möglich; völlig an Bett oder Stuhl gebunden)"
* LOINC#LA9627-6 "ECOG 5: (Tod)"
* LOINC#LA4489-6 "ECOG Status unbekannt"

ValueSet: ObdsStrahlentherapieIntentionVS
Id: obds-strahlentherapie-intention-vs
Title: "Intention der Strahlentherapie"
Description: "Die Intention der Strahlentherapie"
* include codes from system ObdsStrahlentherapieIntentionCS

ValueSet: HistoGradeVS
Id: HistoGradeVS
Title: "HistoGradeVS"
Description: "HistoGradeVS"
* include codes from system HistoGradeCS

ValueSet: MultiplePrimaerTumorenVS
Id: multiple-primaer-tumoren-vs
Title: "Multiple PrimärTumoren ValueSet"
Description: "MultiplePrimärTumorenVS"
* include codes from system MultiplePrimaerTumorenCS

ValueSet: LymphgefaessinvasionVS
Id: Lymphgefaessinvasion-vs
Title: "Lymphgefäßinvasion ValueSet"
Description: "LymphgefäßinvasionVS"
* include codes from system LymphgefaessinvasionCS

ValueSet: VeneninvasionVS
Id: veneninvasion-vs
Title: "Veneninvasion ValueSet"
Description: "VeneninvasionVS"
* include codes from system VeneninvasionCS

ValueSet: PerineuraleInvasionVS
Id: perineurale-invasion-vs
Title: "Perineurale Invasion ValueSet"
Description: "PerineuraleInvasionVS"
* include codes from system PerineuraleInvasionCS

ValueSet: SerumTumorMarkerUICCVS
Id: SerumTumorMarkerUICCVS
Title: "SerumTumorMarkerUICCVS"
Description: "SerumTumorMarkerUICCVS"
* include codes from system SerumTumorMarkerUICCCS

ValueSet: KrebsstadiumVS
Id: krebsstadium-vs
Title: "Krebsstadium ValueSet"
Description: "KrebsstadiumVS"
* include codes from system KrebsstadiumCS

ValueSet: ResidualstatusGesamtbeurteilungVS
Id: ResidualstatusGesamtbeurteilungVS
Title: "Gesamtbeurteilung des Residualstatus"
Description: "Value Set für oBDS-Codes für die Gesamtbeurteilung des Residualstatus"
* ResidualstatusCS#R0 "Kein Residualtumor"
* ResidualstatusCS#R1 "Mikroskopischer Residualtumor"
* ResidualstatusCS#R1(is) "In-Situ-Rest"
* ResidualstatusCS#R1(cy+) "Cytologischer Rest"
* ResidualstatusCS#R2 "Makroskopischer Residualtumor"
* ResidualstatusCS#RX "Vorhandensein von Residualtumor kann nicht beurteilt werden"