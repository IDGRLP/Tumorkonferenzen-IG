Profile:        Verlauf
Parent:         Encounter
Id:             verlauf
Title:          "Verlauf"
Description:    "Verlauf: Klammer für alle Informationen zu einer Verlaufsbeobachtung/Nachsorge."
* status 1.. MS
* type 1.. MS //TODO: auf final fixieren?
* type = $sct#185389009
* subject 1.. MS
* subject only Reference(TumorPatient)
* episodeOfCare 1.. MS
* episodeOfCare only Reference(TumorErkrankung)
* period MS
  * start 1.. MS

Instance: VerlaufExample
InstanceOf: Verlauf
Usage: #example
* status = #final
* class = v3.ActCode#VR //TODO: muss noch feiner catgorisiert werden
* type = $sct#185389009 "Cancer follow-up visit"
* subject = Reference(TumorPatient-example-1)
* episodeOfCare = Reference(TumorErkrankungExample)
* period.start = "2023-04-05T08:00:00Z"