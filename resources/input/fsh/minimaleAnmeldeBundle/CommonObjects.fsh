Instance: AnmelderExample
InstanceOf: Anmelder
Usage: #example
Title: "Beispiel eines Anmelders"
Description: "Person, die den Patienten anmeldet"
* name.text = "Dr. Erika Musterfrau"
* telecom.system = #phone
* telecom.value = "+49 987 654321"

Instance: AllgemeinerLeistungszustandKarnofskyExample
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky
Usage: #example
* code = $sct#761869008
* status = #final
* subject = Reference(TumorPatientExample)
* valueCodeableConcept = MII_CS_Onko_Allgemeiner_Leistungszustand_Karnofsky#30% "30%"

Instance: GradingExample
InstanceOf: MII_PR_Onko_Grading
Usage: #example
* code = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"
* status = #final
* effectiveDateTime = "2022-04-21"
* valueCodeableConcept = MII_CS_Onko_Grading#3
* subject = Reference(TumorPatientExample)

Instance: UntersuchteLymphknotenExample
InstanceOf: MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten
Usage: #example
* code = $loinc#21894-1 "Regional lymph nodes examined [#] Specimen"
* valueQuantity = 23 '1' "#"
* status = #final
* subject = Reference(TumorPatientExample)
* effectiveDateTime = "2024-01-11"

Instance: BefalleneLymphknotenExample
InstanceOf: MII_PR_Onko_Anzahl_Befallene_Lymphknoten
Usage: #example
* code = $loinc#21893-3 "Regional lymph nodes positive [#] Specimen"
* valueQuantity = 0 '1' "#"
* status = #final
* subject = Reference(TumorPatientExample)
* effectiveDateTime = "2024-01-11"

Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: UntersuchteSentinelLymphknotenExample
InstanceOf: MII_PR_Onko_Anzahl_Untersuchte_Sentinel_Lymphknoten
Usage: #example
* code = $loinc#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* valueQuantity = 2 '1' "#"
* status = #final
* subject = Reference(TumorPatientExample)
* effectiveDateTime = "2024-01-11"

Instance: BefalleneSentinelLymphknotenExample
InstanceOf: MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten
Usage: #example
* code = $loinc#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* valueQuantity = 0 '1' "#"
* status = #final
* subject = Reference(TumorPatientExample)
* effectiveDateTime = "2024-01-11"