Profile:        Tumorkonferenz
Parent:         Encounter
Id:             tumorkonferenz
Title:          "Tumorkonferenz"
Description:    "Dieses Profil repräsentiert die Tumorkonferenz zu einem Patienten. Fragestellungen und Informationen, die speziell im Kontext der Tumorkonferenz erstellt werden, referenzieren auf eine entsprechende Tumorkonferenz-Instanz."
* status 1.. MS
* type 1.. MS
* type = $sct#287051000000107
* subject 1.. MS
* subject only Reference(TumorPatient)
* episodeOfCare 1.. MS
* episodeOfCare only Reference(TumorErkrankung)
* appointment MS
* appointment only Reference(TumorkonferenzTermin)
* period MS
  * start 1.. MS
