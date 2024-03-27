Profile: Strahlentherapie
Parent: Procedure
Id: strahlentherapie
Title: "Strahlentherapie"
Description: "Strahlentherapie jeglicher Art (perkutan, Brachytherapie usw.) in ihrer Gesamtheit."
* extension contains
    mcode-procedure-intent named intention 0..1 and
    StrahlentherapieDetails named details 0..1
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
  * extension[strahlenart] MS
    * valueCoding MS
      * system MS
      * code MS
  * extension[gesamtdosis] MS
    * valueQuantity MS
      * value MS
      * system MS
      * code MS
  * extension[einzeldosis] MS
    * valueQuantity MS
      * value MS
      * system MS
      * code MS
  * extension[boostdosis] MS
    * valueQuantity MS
      * value MS
      * system MS
      * code MS
* status MS
* code 1.. MS
  * coding MS
    * system 1.. MS
    * code 1.. MS
    * version 1.. MS
* subject MS
* performed[x] MS
* performed[x] only Period
* performedPeriod MS
  * start MS
  * end MS
* bodySite MS
  * coding MS
    * system 1.. MS
    * code 1.. MS
* outcome MS
  * text MS
* complication MS
  * coding MS
    * system 1.. MS
    * code 1.. MS

Extension: StrahlentherapieDetails
Id: strahlentherapie-details
Title: "StrahlentherapieDetails"
Description: "Detailinformationen zur Strahlentherapie."
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Procedure"
* value[x] ..0
* extension contains
    stellungZuOp 0..1 MS and
    strahlenart 0..1 MS and
    gesamtdosis 0..1 MS and
    einzeldosis 0..1 MS and
    boostdosis 0..1 MS
* extension[stellungZuOp] ^short = "Stellung zu operativer Therapie"
* extension[stellungZuOp]
  * value[x] only Coding
  * valueCoding 1..
    * system 1..
    * code 1..
* extension[strahlenart] ^short = "Strahlenart"
* extension[strahlenart]
  * value[x] only Coding
  * valueCoding 1..
    * system 1..
    * code 1..
* extension[gesamtdosis] ^short = "Einzeldosis pro Tag"
* extension[gesamtdosis]
  * value[x] only Quantity
  * valueQuantity 1..
    * value 1..
    * system 1..
    * system = "http://unitsofmeasure.org"
    * code 1..
* extension[einzeldosis] ^short = "Gesamtdosis"
* extension[einzeldosis]
  * value[x] only Quantity
  * valueQuantity 1..
    * value 1..
    * system 1..
    * system = "http://unitsofmeasure.org"
    * code 1..
* extension[boostdosis] ^short = "Boost-Dosis"
* extension[boostdosis]
  * value[x] only Quantity
  * valueQuantity 1..
    * value 1..
    * system 1..
    * system = "http://unitsofmeasure.org"
    * code 1..
