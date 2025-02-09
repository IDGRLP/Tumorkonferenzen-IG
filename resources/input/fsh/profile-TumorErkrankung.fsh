Profile:        TumorErkrankung
Parent:         EpisodeOfCare
Id:             tumorErkrankung
Title:          "Tumorerkrankung"
Description:    "Tumorerkrankung/Fall, dient als Klammer der Krebserkrankung"
* status 1.. MS
* type 1..1 MS
* type = $NCIT#C16213 "Cancer Diagnosis"
* diagnosis MS
  * condition 1.. MS
  * role 1.. MS
  * role from $vsDiagnosisRole
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
* patient 1..1 MS
* patient only Reference(TumorPatient)

Instance: TumorErkrankungExample
InstanceOf: TumorErkrankung
Description: "Ein Beispiel für die Episode einer Tumorerkrankung."
* status = #active
* diagnosis.condition = Reference(ICD10GM-DiagnoseExample)
* diagnosis.role = $csDiagnosisRole#CC
* patient = Reference(TumorPatient-example-1)
