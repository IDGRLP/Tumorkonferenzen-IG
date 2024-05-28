Profile: AnmeldeBundleMinimal
Parent: Bundle
Id: AnmeldeBundleMinimal
Title: "AnmeldeBundleMinimal"
Description: "AnmeldeBundleMinimal"
* type = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
  patient 1..1 MS and
  diagnose 1..1 MS and
  tnm 1..1 MS and
  tnmPrimaryTumorCategory 1..1 MS and
  tnmRegionalNodesCategory 1..1 MS and
  tnmDistantMetastasesCategory 1..1 MS and
  tnm-y-symbol 1..1 MS and
  tnm-r-symbol 1..1 MS and
  tnm-a-symbol 1..1 MS and
  tnm-m-symbol 1..1 MS and
  tnm-l-kategorie 1..1 MS and
  tnm-v-kategorie 1..1 MS and
  tnm-pn-kategorie 1..1 MS and
  tnm-s-kategorie 1..1 MS and
  fragestellung 1..1 MS 
* entry[patient]
  * resource only TumorPatient
* entry[diagnose]
  * resource only TumorDiagnose
* entry[tnm]
  * resource only TNMStageGroup
* entry[tnmPrimaryTumorCategory]
  * resource only TNMPrimaryTumorCategory
* entry[tnmRegionalNodesCategory]
  * resource only TNMRegionalNodesCategory
* entry[tnmDistantMetastasesCategory]
  * resource only TNMDistantMetastasesCategory
* entry[tnm-y-symbol]
  * resource only TNMYSymbol
* entry[tnm-r-symbol]
  * resource only TNMRSymbol
* entry[tnm-a-symbol]
  * resource only TNMASymbol
* entry[tnm-m-symbol]
  * resource only TNMmSymbol
* entry[tnm-l-kategorie]
  * resource only TNMLKategorie
* entry[tnm-v-kategorie]
  * resource only TNMVKategorie
* entry[tnm-pn-kategorie]
  * resource only TNMPnKategorie
* entry[tnm-s-kategorie]
  * resource only TNMSKategorie
* entry[fragestellung]
  * resource only TumorkonferenzFragestellung

Instance: AnmeldeBundleMinimal
InstanceOf: AnmeldeBundleMinimal
Usage: #example
Title: "AnmeldeBundleMinimal"
Description: "AnmeldeBundleMinimal"
* entry[patient].resource = TumorPatient-example-1
* entry[diagnose].resource = ExampleTumorDiagnose
* entry[tnm].resource = TNMStageGroupClinicalExample
* entry[tnmPrimaryTumorCategory].resource = tnm-clinical-primary-tumor-category-cT3
* entry[tnmRegionalNodesCategory].resource = tnm-clinical-regional-nodes-category-cN3
* entry[tnmDistantMetastasesCategory].resource = tnm-clinical-distant-metastases-category-cM0
* entry[tnm-y-symbol].resource = TNMYSymbolExample
* entry[tnm-r-symbol].resource = TNMRSymbolExample
* entry[tnm-a-symbol].resource = TNMASymbolExample
* entry[tnm-m-symbol].resource = TNMmSymbolExample
* entry[tnm-l-kategorie].resource = TNMLKategorieExample
* entry[tnm-v-kategorie].resource = TNMVKategorieExample
* entry[tnm-pn-kategorie].resource = TNMPnKategorieExample
* entry[tnm-s-kategorie].resource = TNMSKategorieExample
* entry[fragestellung].resource = TumorkonferenzFragestellungExample