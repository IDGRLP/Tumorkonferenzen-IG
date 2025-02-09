Profile: SystemischeTherapie
Parent: MedicationStatement
Id: systemische-therapie
Title: "SystemischeTherapie"
Description: "Systemische Therapie"
* extension contains
    mcode-procedure-intent named intention 0..1 and
    SystemischeTherapieDetails named details 0..1
* extension[intention] MS
  * valueCodeableConcept MS
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
* extension[details] MS
  * extension[stellungZuOp] MS
    * valueCoding MS
      * system MS
      * code MS
* status MS
* statusReason MS
* category 1.. MS
* medication[x] MS
* medication[x] only CodeableConcept
* medicationCodeableConcept 1.. MS
  * coding MS
    * system 1.. MS
    * code 1.. MS
  * text 1.. MS
* subject MS
* subject only Reference(TumorPatient)
* context 1.. MS
* context only Reference (TumorErkrankung)
* effective[x] MS
* effective[x] only Period
* effectivePeriod MS
  * start MS
  * end MS

Extension: SystemischeTherapieDetails
Id: systemische-therapie-details
Title: "SystemischeTherapieDetails"
Description: "Detailinformationen zur systemischen Therapie."
* ^experimental = false
* ^context.type = #element
* ^context.expression = "MedicationStatement"
* value[x] ..0
* extension contains
    stellungZuOp 0..1 MS
* extension[stellungZuOp] ^short = "Stellung zu operativer Therapie"
* extension[stellungZuOp]
  * value[x] only Coding
  * valueCoding 1..
    * system 1..
    * code 1..
