Profile: TumorDiagnose
Parent: Condition
Id: TumorDiagnose
Title: "Tumordiagnose"
Description: "Diagnoseinformationen (Primärtumor, frühere Tumore)"
* id MS
  * ^short = "eindeutige ID der Ressource auf dem Server"
* clinicalStatus MS
  * coding 1.. MS
    * system 1.. MS
    * code 1.. MS
* verificationStatus MS
* verificationStatus.coding MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* verificationStatus.coding contains
    conditionVerificationStatus 1..1 MS and
    diagnosesicherung 0..1 MS
* verificationStatus.coding[conditionVerificationStatus] 1..1 MS
  * ^patternCoding.system = $csConditionVerificationStatus
  * system 1.. MS
  * code 1.. MS
* verificationStatus.coding[diagnosesicherung] 0..1 MS
  * ^patternCoding.system = "https://fix.me/FIXME"
  * system 1.. MS
  * code 1.. MS
* code.coding only CodingICD10GM
* code 1.. MS
  * coding MS
    * extension[Seitenlokalisation] MS
      * valueCoding MS
        * system MS
        * code MS
    * system MS
    * version MS
    * code MS
  * text MS
* bodySite MS
  * coding MS
    * system 1.. MS
    * version 1.. MS
    * code 1.. MS
* subject only Reference(TumorPatient)
* subject 1.. MS
* onsetDateTime MS
* note MS
  * text MS

Instance: ExampleTumorDiagnose
InstanceOf: TumorDiagnose
Title: "Example Tumordiagnose"
Description: "Example instance of a Tumordiagnose resource"
* clinicalStatus = ConditionClinicalStatusCodes#active
* verificationStatus.coding[conditionVerificationStatus].system = $csConditionVerificationStatus
* verificationStatus.coding[conditionVerificationStatus].code = #confirmed
* verificationStatus.coding[diagnosesicherung].system = "https://fix.me/FIXME"
* verificationStatus.coding[diagnosesicherung].code = #provisional
* code.coding[0].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[0].version = "2024"
* code.coding[0].code = #C34.1
* code.coding[0].display = "Bösartige Neubildung: Oberlappen (-Bronchus)"
* code.coding[0].extension[0].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* code.coding[0].extension[0].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION"
* code.coding[0].extension[0].valueCoding.code = #L
* code.text = "Malignant neoplasm of upper lobe, bronchus or lung"
* bodySite.coding[0].system = "http://snomed.info/sct"
* bodySite.coding[0].version = "2023"
* bodySite.coding[0].code = #39607008
* subject = Reference(TumorPatient-example-1)
* onsetDateTime = "2023-05-20T00:00:00Z"
* note[0].text = "Primary tumor diagnosed with no previous history of tumors."
