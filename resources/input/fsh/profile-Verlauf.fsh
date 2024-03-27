Profile:        Verlauf
Parent:         Encounter
Id:             verlauf
Title:          "Verlauf"
Description:    "Verlauf: Klammer für alle Informationen zu einer Verlaufsbeobachtung/Nachsorge."
* status 1.. MS
* type 1.. MS
* subject 1.. MS
* subject only Reference(TumorPatient)
* episodeOfCare 1.. MS
* episodeOfCare only Reference(TumorErkrankung)
* period MS
  * start 1.. MS
