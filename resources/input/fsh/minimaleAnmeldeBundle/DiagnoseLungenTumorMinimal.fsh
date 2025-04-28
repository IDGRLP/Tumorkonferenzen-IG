Profile: DiagnoseLungenTumorMinimal
Parent: Condition
Id: DiagnoseLungenTumorMinimal
Title: "Diagnose Lungen-Tumor Minimal"
Description: "Diagnose Lungen-Tumor Minimal"
* extension MS
* extension contains MII_EX_Onko_Histology_Morphology_Behavior_ICDO3 named morphology-behavior-icdo3 0..1 MS
* extension[morphology-behavior-icdo3] ^short.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* extension[morphology-behavior-icdo3] ^short.extension.extension[0].url = "lang"
* extension[morphology-behavior-icdo3] ^short.extension.extension[=].valueCode = #de-DE
* extension[morphology-behavior-icdo3] ^short.extension.extension[+].url = "content"
* extension[morphology-behavior-icdo3] ^short.extension.extension[=].valueString = "ICD-O-Morphologie"
* extension[morphology-behavior-icdo3] ^definition.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* extension[morphology-behavior-icdo3] ^definition.extension.extension[0].url = "lang"
* extension[morphology-behavior-icdo3] ^definition.extension.extension[=].valueCode = #de-DE
* extension[morphology-behavior-icdo3] ^definition.extension.extension[+].url = "content"
* extension[morphology-behavior-icdo3] ^definition.extension.extension[=].valueString = "Morphologie des Primärtumors nach ICD-O-3 nach 6.3 oBDS"
* extension[morphology-behavior-icdo3]
  * valueCodeableConcept MS
    * coding MS    
      * display 1.. MS
* code
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains icd10-gm 1.. MS
  * coding[icd10-gm] only CodingICD10GM
  * coding[icd10-gm] from C34_BronchusLunge_NeoplasienVS
    * system 1.. MS
    * version 1.. MS
    * code 1.. MS
    * display 1.. MS
* subject only Reference(Patient)
* bodySite.coding MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* bodySite.coding contains
    primaertumorSeitenlokalisation 0..1 MS and
    icd-o-3 0..1 MS
* bodySite.coding[primaertumorSeitenlokalisation] from $mii-vs-onko-seitenlokalisation (required)
* bodySite.coding[primaertumorSeitenlokalisation] ^short = "Seitenlokalisation des Primärtumors gemäß oBDS"
* bodySite.coding[primaertumorSeitenlokalisation] ^short.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* bodySite.coding[primaertumorSeitenlokalisation] ^short.extension.extension[0].url = "lang"
* bodySite.coding[primaertumorSeitenlokalisation] ^short.extension.extension[=].valueCode = #de-DE
* bodySite.coding[primaertumorSeitenlokalisation] ^short.extension.extension[+].url = "content"
* bodySite.coding[primaertumorSeitenlokalisation] ^short.extension.extension[=].valueString = "Seitenlokalisation des Primärtumors gemäß oBDS"
* bodySite.coding[primaertumorSeitenlokalisation] ^definition = "Seitenlokalisation des Primärtumors nach 5.8 oBDS 2021"
* bodySite.coding[primaertumorSeitenlokalisation] ^definition.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* bodySite.coding[primaertumorSeitenlokalisation] ^definition.extension.extension[0].url = "lang"
* bodySite.coding[primaertumorSeitenlokalisation] ^definition.extension.extension[=].valueCode = #de-DE
* bodySite.coding[primaertumorSeitenlokalisation] ^definition.extension.extension[+].url = "content"
* bodySite.coding[primaertumorSeitenlokalisation] ^definition.extension.extension[=].valueString = "Seitenlokalisation des Primärtumors nach 5.8 oBDS 2021"
* bodySite.coding[primaertumorSeitenlokalisation] ^patternCoding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation"
* bodySite.coding[primaertumorSeitenlokalisation].system 1.. MS
* bodySite.coding[primaertumorSeitenlokalisation].code 1.. MS
* bodySite.coding[icd-o-3] ^short = "ICD-O-Topographie"
* bodySite.coding[icd-o-3] ^short.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* bodySite.coding[icd-o-3] ^short.extension.extension[0].url = "lang"
* bodySite.coding[icd-o-3] ^short.extension.extension[=].valueCode = #de-DE
* bodySite.coding[icd-o-3] ^short.extension.extension[+].url = "content"
* bodySite.coding[icd-o-3] ^short.extension.extension[=].valueString = "ICD-O-Topographie"
* bodySite.coding[icd-o-3] ^definition = "Topographie des Primärtumors nach ICD-O-3 nach 5.4 oBDS 2021"
* bodySite.coding[icd-o-3] ^definition.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* bodySite.coding[icd-o-3] ^definition.extension.extension[0].url = "lang"
* bodySite.coding[icd-o-3] ^definition.extension.extension[=].valueCode = #de-DE
* bodySite.coding[icd-o-3] ^definition.extension.extension[+].url = "content"
* bodySite.coding[icd-o-3] ^definition.extension.extension[=].valueString = "Topographie des Primärtumors nach ICD-O-3 nach 5.4 oBDS 2021"
* bodySite.coding[icd-o-3] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* bodySite.coding[icd-o-3].system 1.. MS
* bodySite.coding[icd-o-3].code 1.. MS
* bodySite.coding[icd-o-3].code from C34_BronchusLunge_ICDO3TopoVS (required)

Mapping: oBDS
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: DiagnoseLungenTumorMinimal
* -> "5" "Diagnose"
* -> "5.9" "Frühere Tumorerkrankungen"
* extension[morphology-behavior-icdo3].value[x].coding.version -> "6.4" "Morphologie ICD-O/Blue Book Version"
* extension[morphology-behavior-icdo3].value[x].coding.code -> "6.3" "Morphologie-Code"
* extension[morphology-behavior-icdo3].value[x].text -> "6.5" "Morphologie-Freitext"
* code.coding[icd10-gm].version -> "5.2" "Primärtumor Tumordiagnose ICD-Version"
* code.coding[icd10-gm].code -> "5.1" "Primärtumor Tumordiagnose ICD Code"
* code.text -> "5.3" "Primärtumor Tumordiagnose Text"
* bodySite.coding[primaertumorSeitenlokalisation].code -> "5.8" "Primärtumor Seitenlokalisation"
* bodySite.coding[icd-o-3].version -> "5.5" "Primärtumor Topographie ICD-O-Version"
* bodySite.coding[icd-o-3].code -> "5.4" "Primärtumor Topographie ICD-O"