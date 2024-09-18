Instance: AnmeldeBundleMinimalFreitextLunge-Example
InstanceOf: AnmeldeBundleMinimalFreitextLunge
Usage: #example
Title: "AnmeldeBundleMinimalFreitextLunge Example"
Description: "Beispiel für ein minimalen Anmeldebundle für Lungenpatienten"
* type = #collection
* entry[+].resource = TumorPatientExample
* entry[+].resource = TumorBoardAnmeldungExample
* entry[+].resource = HistologischeTypisierungLungeExample
* entry[+].resource = DiagnoseFreitextExample
* entry[+].resource = ErstdiagnoseExample
* entry[+].resource = TNMFreitextExample
* entry[+].resource = ECOGExampleMinimal
* entry[+].resource = PraxisPathologischesInstitutFreitextExample
* entry[+].resource = HistologieMolPatFreitextExample
* entry[+].resource = VerlaufFreitextExample
* entry[+].resource = RelevanteNebendiagnosenFreitextExample
* entry[+].resource = FragestellungTumorkonferenzFreitextExample
* entry[+].resource = CTMRTSchaedelExample
* entry[+].resource = CTMRTAbdomenExample
* entry[+].resource = PetCTExample
* entry[+].resource = SkelettszintigraphieExample
* entry[+].resource = LungenfunktionstestExample
* entry[+].resource = FragestellungRadiologieFreitextExample
* entry[+].resource = ExterneBilderExample

Instance: TumorPatientExample
InstanceOf: TumorPatient
Usage: #inline
Title: "Beispiel eines Tumorpatienten"
Description: "Ein Patient mit Lungenkrebs"
* identifier[0].value = "123456789"
* name[0].family = "Mustermann"
* name[0].given[0] = "Max"
* gender = #male
* birthDate = "1960-05-01"

Instance: TumorBoardAnmeldungExample
InstanceOf: TumorBoardAnmeldung
Usage: #inline
Title: "Beispiel einer Tumorboard-Anmeldung"
Description: "Anmeldung des Patienten beim Tumorboard"
* component[tumorboard].valueCodeableConcept.coding[0].code = #tumorboard-lunge-mittwochs
* component[terminwunsch].valueString = "2023-10-01"
* component[zweitmeinung].valueCodeableConcept = $sct#373066001 "Ja"

Instance: HistologischeTypisierungLungeExample
InstanceOf: HistologischeTypisierungLunge
Usage: #inline
Title: "Beispiel einer histologischen Typisierung der Lunge"
Description: "Histologische Typisierung für den Lungenkrebs des Patienten"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept.coding[0].system = "http://snomed.info/sct"
* valueCodeableConcept.coding[0].code = #254637007
* valueCodeableConcept.coding[0].display = "NSCLC"

Instance: DiagnoseFreitextExample
InstanceOf: DiagnoseFreitext
Usage: #inline
Title: "Beispiel für eine Freitext-Diagnose"
Description: "Diagnose Freitext für den Patienten"
* subject = Reference(TumorPatientExample)
* valueString = "Lungenkrebs im fortgeschrittenen Stadium"

Instance: ErstdiagnoseExample
InstanceOf: Erstdiagnose
Usage: #inline
Title: "Beispiel einer Erstdiagnose"
Description: "Erstdiagnose des Lungenkrebses"
* subject = Reference(TumorPatientExample)
* component[datumED].valueDateTime = "2021-03-15"
* component[stadiumBeiED].valueString = "IIIb"
* component[cTNMbeiED].valueString = "T4 N3 M0"

Instance: TNMFreitextExample
InstanceOf: TNMFreitext
Usage: #inline
Title: "Beispiel eines TNM-Freitexts"
Description: "TNM-Klassifikation Freitext für den Patienten"
* subject = Reference(TumorPatientExample)
* valueString = "T4 N3 M0"

Instance: ECOGExampleMinimal
InstanceOf: ECOG
Usage: #inline
Title: "Beispiel einer ECOG-Bewertung"
Description: "ECOG-Leistungsstatus des Patienten"
* subject = Reference(TumorPatientExample)
* status = #final
* valueCodeableConcept = LOINC#LA9624-3 "ECOG 2: (Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50% der Wachzeit aufstehen)"

Instance: PraxisPathologischesInstitutFreitextExample
InstanceOf: PraxisPathologischesInstitutFreitext
Usage: #inline
Title: "Beispiel für das Pathologische Institut"
Description: "Freitext zur Dokumentation der Praxis oder des pathologischen Instituts"
* subject = Reference(TumorPatientExample)
* valueString = "Institut für Pathologie, Musterstadt"

Instance: HistologieMolPatFreitextExample
InstanceOf: HistologieMolPatFreitext
Usage: #inline
Title: "Beispiel für eine histologische und molekularpathologische Untersuchung"
Description: "Histologie und molekulare Pathologie Freitext"
* subject = Reference(TumorPatientExample)
* valueString = "Adenokarzinom der Lunge, EGFR-Mutation nachgewiesen"

Instance: VerlaufFreitextExample
InstanceOf: VerlaufFreitext
Usage: #inline
Title: "Beispiel für einen Freitext-Verlauf"
Description: "Freitext-Verlauf des Krankheitsfortschritts"
* subject = Reference(TumorPatientExample)
* valueString = "Stabiler Verlauf unter Immuntherapie"

Instance: RelevanteNebendiagnosenFreitextExample
InstanceOf: RelevanteNebendiagnosenFreitext
Usage: #inline
Title: "Beispiel für relevante Nebendiagnosen"
Description: "Freitext-Dokumentation relevanter Nebendiagnosen"
* subject = Reference(TumorPatientExample)
* valueString = "Diabetes mellitus Typ 2"

Instance: FragestellungTumorkonferenzFreitextExample
InstanceOf: FragestellungTumorkonferenzFreitext
Usage: #inline
Title: "Beispiel einer Fragestellung für die Tumorkonferenz"
Description: "Fragestellung für die Tumorkonferenz zur weiteren Therapieplanung"
* subject = Reference(TumorPatientExample)
* valueString = "Empfehlung für Chemo-Immuntherapie"

Instance: CTMRTSchaedelExample
InstanceOf: CTMRTSchaedel
Usage: #inline
Title: "Beispiel eines CT/MRT-Befunds Schädel"
Description: "Dokumentation des CT/MRT-Befunds des Schädels"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#auffaellig "auffällig"

Instance: CTMRTAbdomenExample
InstanceOf: CTMRTAbdomen
Usage: #inline
Title: "Beispiel eines CT/MRT-Befunds Abdomen"
Description: "Dokumentation des CT/MRT-Befunds des Abdomens"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#unauffaellig "unauffällig"

Instance: PetCTExample
InstanceOf: PetCT
Usage: #inline
Title: "Beispiel eines PET-CT-Befunds"
Description: "Dokumentation des PET-CT-Befunds"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#unauffaellig "unauffällig"

Instance: SkelettszintigraphieExample
InstanceOf: Skelettszintigraphie
Usage: #inline
Title: "Beispiel eines Skelettszintigraphie-Befunds"
Description: "Dokumentation des Skelettszintigraphie-Befunds"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#liegtNichtVor "liegt nicht vor"

Instance: LungenfunktionstestExample
InstanceOf: Lungenfunktionstest
Usage: #inline
Title: "Beispiel eines Lungenfunktionstests"
Description: "Dokumentation des Lungenfunktionstests"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#liegtNichtVor "liegt nicht vor"

Instance: FragestellungRadiologieFreitextExample
InstanceOf: FragestellungRadiologieFreitext
Usage: #inline
Title: "Beispiel einer Fragestellung an die Radiologie"
Description: "Spezifische Fragestellung für die Radiologie"
* subject = Reference(TumorPatientExample)
* valueString = "Abklärung möglicher Metastasen im Abdomen"

Instance: ExterneBilderExample
InstanceOf: ExterneBilder
Usage: #inline
Title: "Beispiel externer Bilder"
Description: "Dokumentation externer Bilder"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#elektronischUebermittelt "werden elektronisch übermittelt"