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
  fragestellung 1..1 MS
* entry[patient]
  * resource only TumorPatient
* entry[diagnose]
  * resource only TumorDiagnose
* entry[tnm]
  * resource only TNMStageGroup
* entry[fragestellung]
  * resource only TumorkonferenzFragestellung

// // Instance: AnmeldeBundleMinimal
// // InstanceOf: AnmeldeBundleMinimal
// // Usage: #example
// // Title: "AnmeldeBundleMinimal"
// // Description: "AnmeldeBundleMinimal"
// // * entry[patient].resource = TumorPatient-example-1
// // * entry[diagnose].resource = ExampleTumorDiagnose