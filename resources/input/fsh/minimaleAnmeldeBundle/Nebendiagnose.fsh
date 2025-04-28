Alias: $condition-related = http://hl7.org/fhir/StructureDefinition/condition-related
Alias: $ISiKICD10GMCoding = https://gematik.de/fhir/isik/StructureDefinition/ISiKICD10GMCoding
Alias: $CodingAlphaID = http://fhir.de/StructureDefinition/CodingAlphaID
Alias: $ISiKSnomedCTCoding = https://gematik.de/fhir/isik/StructureDefinition/ISiKSnomedCTCoding
Alias: $lebensphase = http://fhir.de/StructureDefinition/lebensphase
Alias: $DiagnosesSCT = https://gematik.de/fhir/isik/ValueSet/DiagnosesSCT

Profile: Nebendiagnose
Parent: Condition
Id: Nebendiagnose
Description: "Nebendiagnose"
* extension MS
* extension contains ConditionRelated named related 0..1 MS
* extension[related] ^short = "Verknüpfte (Krebs)Diagnose"
* clinicalStatus MS
  * ^short = "klinischer Status"
* code 1.. MS
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      ICD-10-GM 0..1 MS 
  * coding[ICD-10-GM]
    * ^patternCoding.system = $icd-10-gm
    * system 1.. MS
    * code 1.. MS
    * version MS
* subject 1..1 MS   
* subject only Reference(Patient)
* recordedDate MS