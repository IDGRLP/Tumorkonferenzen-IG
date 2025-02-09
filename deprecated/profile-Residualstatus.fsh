// Profile: MII_PR_Onko_Residualstatus
// Parent: Observation
// Id: mii-pr-onko-residualstatus
// Title: "MII PR Onkologie Residualstatus"
// Description: "Umfang eines Residualtumors nach einer Therapie"
// * code MS
// * code.coding 1.. MS
// * code.coding ^slicing.discriminator.type = #pattern
// * code.coding ^slicing.discriminator.path = "$this"
// * code.coding ^slicing.rules = #open
// * code.coding contains
//     obds 1..1 MS and
//     loinc 0..1 MS and
//     snomed 0..1
// * code.coding[obds] = $lnc#84892-9    
// * code.coding[loinc] = $lnc#84892-9
// * code.coding[loinc].system 1.. MS
// * code.coding[loinc].code 1.. MS
// * code.coding[snomed] = $sct#445200009
// * code.coding[snomed].system 1..
// * code.coding[snomed].code 1..
// * subject 1.. MS
// * subject only Reference(Patient)
// * focus only Reference(TumorDiagnose)
// * focus MS
// * encounter MS
// * value[x] 1.. MS
// * value[x] only CodeableConcept
// * valueCodeableConcept from ResidualstatusGesamtbeurteilungVS
// * valueCodeableConcept.coding.system 1.. MS
// * valueCodeableConcept.coding.code 1.. MS
// * derivedFrom ..1 MS
// * derivedFrom only Reference($mii-pr-onko-verlauf)

// Mapping: oBDS
// Id: oBDS
// Title: "Mapping FHIR zu oBDS"
// Source: MII_PR_Onko_Residualstatus
// * -> "10" "Residualstatus"
// * value[x].coding.code -> "10.2" "Gesamtbeurteilung des Residualstatus"