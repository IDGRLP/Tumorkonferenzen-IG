Instance: AnmeldeBundleMinimalFreitextProstata-Example
InstanceOf: AnmeldeBundleMinimalFreitextProstata
Usage: #example
Title: "AnmeldeBundleMinimalFreitextProstata Example"
Description: "Beispiel für ein minimalen Anmeldebundle für Prostatapatienten"
* type = #collection
* entry[+].resource = TumorPatientExample
* entry[+].resource = TumorBoardAnmeldungExample
* entry[+].resource = AnmelderExample
* entry[+].resource = DiagnoseFreitextExample
* entry[+].resource = ErstdiagnoseExample
* entry[+].resource = TNMFreitextExample
* entry[+].resource = ECOGExampleMinimal
* entry[+].resource = FamilienanamneseDropDownExample
* entry[+].resource = FertilitaetsBehandlungEmpfohlenExample
* entry[+].resource = TumorsituationExample
* entry[+].resource = HistologieMolPatFreitextExample
* entry[+].resource = OperativeTherapieFreitextExample
* entry[+].resource = StrahlenTherapieFreitextExample
* entry[+].resource = MedikamentoeseTherapieFreitextExample
* entry[+].resource = VerlaufFreitextExample
* entry[+].resource = PsaVerlaufFreitextExample
* entry[+].resource = RelevanteNebendiagnosenFreitextExample
* entry[+].resource = FragestellungTumorkonferenzFreitextExample
* entry[+].resource = FragestellungPathologieFreitextExample
* entry[+].resource = BemerkungFreitextExample
* entry[+].resource = RadiologieBilderFreitextExample
* entry[+].resource = FragestellungRadiologieFreitextExample
* entry[+].resource = ExterneBilderExample
* entry[+].resource = GewuenschteTeilnehmerExample
* entry[+].resource = WeitereGewuenschteTeilnehmerFreitextExample

Instance: AnmelderExample
InstanceOf: Anmelder
Usage: #inline
Title: "Beispiel eines Anmelders"
Description: "Person, die den Patienten anmeldet"
* name.text = "Dr. Erika Musterfrau"
* telecom.system = #phone
* telecom.value = "+49 987 654321"

Instance: FamilienanamneseDropDownExample
InstanceOf: FamilienanamneseDropDown
Usage: #inline
Title: "Beispiel für eine Familienanamnese"
Description: "Dokumentation der Familienanamnese des Patienten"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $sct#10828004 "Positive"

Instance: FertilitaetsBehandlungEmpfohlenExample
InstanceOf: FertilitaetsBehandlungEmpfohlen
Usage: #inline
Title: "Beispiel einer Fertilitätsbehandlungsempfehlung"
Description: "Fertilitätsbehandlung wurde dem Patienten empfohlen"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $sct#373066001 "Ja"

Instance: TumorsituationExample
InstanceOf: Tumorsituation
Usage: #inline
Title: "Beispiel einer Tumorsituation"
Description: "Erfassung der Tumorsituation des Patienten"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = #ED "Erstdiagnose"

Instance: OperativeTherapieFreitextExample
InstanceOf: OperativeTherapieFreitext
Usage: #inline
Title: "Beispiel einer operativen Therapie"
Description: "Freitext zur Dokumentation der operativen Therapie"
* subject = Reference(TumorPatientExample)
* valueString = "Radikale Prostatektomie"

Instance: StrahlenTherapieFreitextExample
InstanceOf: StrahlenTherapieFreitext
Usage: #inline
Title: "Beispiel einer Strahlentherapie"
Description: "Freitext zur Dokumentation der Strahlentherapie"
* subject = Reference(TumorPatientExample)
* valueString = "Externe Strahlentherapie"

Instance: MedikamentoeseTherapieFreitextExample
InstanceOf: MedikamentoeseTherapieFreitext
Usage: #inline
Title: "Beispiel einer medikamentösen Therapie"
Description: "Freitext zur Dokumentation der medikamentösen Therapie"
* subject = Reference(TumorPatientExample)
* valueString = "Hormontherapie"

Instance: PsaVerlaufFreitextExample
InstanceOf: PsaVerlaufFreitext
Usage: #inline
Title: "Beispiel eines PSA-Verlaufs"
Description: "Freitext zur Beschreibung des PSA-Verlaufs"
* subject = Reference(TumorPatientExample)
* valueString = "PSA-Wert stabil bei 0.2 ng/ml"

Instance: FragestellungPathologieFreitextExample
InstanceOf: FragestellungPathologieFreitext
Usage: #inline
Title: "Beispiel einer Fragestellung für die Pathologie"
Description: "Fragestellung an die Pathologie zur weiteren Analyse"
* subject = Reference(TumorPatientExample)
* valueString = "Mikroskopische Untersuchung des Tumorgewebes"

Instance: BemerkungFreitextExample
InstanceOf: BemerkungFreitext
Usage: #inline
Title: "Beispiel einer allgemeinen Bemerkung"
Description: "Allgemeine Bemerkungen zur Diagnose und Therapie"
* subject = Reference(TumorPatientExample)
* valueString = "Gute Therapietreue des Patienten"

Instance: RadiologieBilderFreitextExample
InstanceOf: RadiologieBilderFreitext
Usage: #inline
Title: "Beispiel für Radiologiebilder"
Description: "Freitext zur Beschreibung der an die Radiologie übermittelten Bilder"
* subject = Reference(TumorPatientExample)
* valueString = "CT und MRT Bilder gesendet"

Instance: GewuenschteTeilnehmerExample
InstanceOf: GewuenschteTeilnehmer
Usage: #inline
Title: "Beispiel gewünschter Teilnehmer"
Description: "Dokumentation der gewünschten Teilnehmer für das Tumorboard"
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = $customCodes#humangenetik "Humangenetik"

Instance: WeitereGewuenschteTeilnehmerFreitextExample
InstanceOf: WeitereGewuenschteTeilnehmerFreitext
Usage: #inline
Title: "Beispiel weiterer gewünschter Teilnehmer"
Description: "Freitext zur Dokumentation weiterer gewünschter Teilnehmer"
* subject = Reference(TumorPatientExample)
* valueString = "Onkologe"
