Instance: AnmeldeBundleMinimalFreitextLunge-Example
InstanceOf: AnmeldeBundleMinimalFreitextLunge
Usage: #example
Title: "AnmeldeBundleMinimalFreitextLunge Example"
Description: "Beispiel für ein minimalen Anmeldebundle für Lungenpatienten"
* type = #collection
* entry[anmelder]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Practitioner/AnmelderExample"
  * resource = AnmelderExample
* entry[patient]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Patient/TumorPatientExample"
  * resource = TumorPatientExample
* entry[tumorBoardAnmeldung]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/TumorBoardAnmeldungExample"
  * resource = TumorBoardAnmeldungExample
* entry[histologischeTypisierungLunge]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/HistologischeTypisierungLungeExample"
  * resource = HistologischeTypisierungLungeExample
* entry[diagnoseFreitext]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/DiagnoseFreitextExample"
  * resource = DiagnoseFreitextExample
* entry[diagnose-icd10]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/ICD10GM-DiagnoseExample"
  * resource = ICD10GM-DiagnoseExample
* entry[allgemeinerLeistungszustandKarnofsky]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/AllgemeinerLeistungszustandKarnofskyExample"
  * resource = AllgemeinerLeistungszustandKarnofskyExample
* entry[grading]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/GradingExample"
  * resource = GradingExample
* entry[untersuchteLymphknoten]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/UntersuchteLymphknotenExample"
  * resource = UntersuchteLymphknotenExample
* entry[befalleneLymphknoten]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/BefalleneLymphknotenExample"
  * resource = BefalleneLymphknotenExample
* entry[untersuchteSentinelLymphknoten]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/UntersuchteSentinelLymphknotenExample"
  * resource = UntersuchteSentinelLymphknotenExample
* entry[befalleneSentinelLymphknoten]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/BefalleneSentinelLymphknotenExample"
  * resource = BefalleneSentinelLymphknotenExample
* entry[erstdiagnose]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/ErstdiagnoseExample"
  * resource = ErstdiagnoseExample
* entry[tnmFreitext]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/TNMFreitextExample"
  * resource = TNMFreitextExample
* entry[ecog]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/ECOGExampleMinimal"
  * resource = ECOGExampleMinimal
* entry[praxisPathologischesInstitutFreitext]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/PraxisPathologischesInstitutFreitextExample"
  * resource = PraxisPathologischesInstitutFreitextExample
* entry[histologieMolPatFreitext]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/HistologieMolPatFreitextExample"
  * resource = HistologieMolPatFreitextExample
* entry[verlaufFreitext]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/VerlaufFreitextExample"
  * resource = VerlaufFreitextExample
* entry[relevanteNebendiagnosenFreitext]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/RelevanteNebendiagnosenFreitextExample"
  * resource = RelevanteNebendiagnosenFreitextExample
* entry[fragestellungTumorkonferenzFreitext]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/FragestellungTumorkonferenzFreitextExample"
  * resource = FragestellungTumorkonferenzFreitextExample
* entry[ctmrtSchaedel]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/CTMRTSchaedelExample"
  * resource = CTMRTSchaedelExample
* entry[ctmrtAbdomen]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/CTMRTAbdomenExample"
  * resource = CTMRTAbdomenExample
* entry[petCT]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/PetCTExample"
  * resource = PetCTExample
* entry[skelettszintigraphie]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/SkelettszintigraphieExample"
  * resource = SkelettszintigraphieExample
* entry[lungenfunktionstest]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/LungenfunktionstestExample"
  * resource = LungenfunktionstestExample
* entry[fragestellungRadiologieFreitext]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/FragestellungRadiologieFreitextExample"
  * resource = FragestellungRadiologieFreitextExample
* entry[externeBilder]
  * fullUrl = "http://idg-rlp.de/fhir/tumorkonferenzen/Observation/ExterneBilderExample"
  * resource = ExterneBilderExample

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
* note.text = "Metastasen im Schädel"

Instance: CTMRTAbdomenExample
InstanceOf: CTMRTAbdomen
Usage: #inline
Title: "Beispiel eines CT/MRT-Befunds Abdomen"
Description: "Dokumentation des CT/MRT-Befunds des Abdomens"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#unauffaellig "unauffällig"
* note.text = "Keine pathologischen Befunde im Abdomen"

Instance: PetCTExample
InstanceOf: PetCT
Usage: #inline
Title: "Beispiel eines PET-CT-Befunds"
Description: "Dokumentation des PET-CT-Befunds"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#unauffaellig "unauffällig"
* note.text = "Keine pathologischen Befunde im PET-CT"

Instance: SkelettszintigraphieExample
InstanceOf: Skelettszintigraphie
Usage: #inline
Title: "Beispiel eines Skelettszintigraphie-Befunds"
Description: "Dokumentation des Skelettszintigraphie-Befunds"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#liegtNichtVor "liegt nicht vor"
* note.text = "Keine Skelettmetastasen"

Instance: LungenfunktionstestExample
InstanceOf: Lungenfunktionstest
Usage: #inline
Title: "Beispiel eines Lungenfunktionstests"
Description: "Dokumentation des Lungenfunktionstests"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#liegtNichtVor "liegt nicht vor"
* note.text = "Keine Lungenfunktionsstörungen"

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

Instance: ICD10GM-DiagnoseExample
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "Beispiel einer ICD-10-GM-Diagnose"
Description: "Beispiel einer ICD-10-GM-Diagnose"
* extension[Feststellungsdatum].valueDateTime = "2020-02-16"
* extension[morphology-behavior-icdo3].valueCodeableConcept = $icd-o-3#8070/3 "Plattenepithelkarzinom o.n.A."
* code.coding[icd10-gm] = $icd-10-gm#C34.0 "Bösartige Neubildung der Bronchien und der Lunge: Hauptbronchus"
  * version = "2025"
  * extension[Seitenlokalisation].valueCoding = $KBV_CS_SFHIR_ICD_SEITENLOKALISATION#R "rechts"
* clinicalStatus = $condition-clinical#active
* subject = Reference(TumorPatientExample)
* recordedDate = "2020-02-16"
* verificationStatus
  * coding[condition-ver-status] = ConditionVerificationStatus#confirmed "confirmed"
  * coding[primaertumorDiagnosesicherung] = MII_CS_Onko_Primaertumor_Diagnosesicherung#1 "klinisch"
* bodySite.coding[icd-o-3] = $icd-o-3#C34.0 "Hauptbronchus"
* bodySite.coding[snomed-ct] = $sct#245508000 "Entire main bronchus"
