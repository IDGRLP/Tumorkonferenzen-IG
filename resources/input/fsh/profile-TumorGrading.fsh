Profile: Grading
Parent: Observation
Id: grading
Description: "Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an."
//TODO: add extension to EpisodeOfCare
* status MS
* code MS
* code = LNC#33732-9 // aus MCODE: Histology grade [Identifier] in Cancer specimen  (could be 21858-6 Grade Cancer)
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept 1.. MS
  * coding 1.. MS
    * system 1.. MS
    * code 1.. MS
* valueCodeableConcept from HistoGradeVS

Instance: GradingExample
InstanceOf: Grading
Usage: #example
* status = #final
* code = LNC#33732-9 "Histology grade [Identifier] in Cancer specimen"
* subject = Reference(TumorPatient-example-1)
* encounter = Reference(VerlaufExample)
* effectiveDateTime = "2023-04-05T14:30:00Z"
* valueCodeableConcept = HistoGradeCS#2 "Mäßig differenziert"