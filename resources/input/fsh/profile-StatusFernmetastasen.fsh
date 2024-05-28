Profile: StatusFernmetastasen
Parent: Observation
Id: status-fernmetastasen
Description: "Beurteilung des Fernmetastasen-Status"
* status MS
* code MS
* code = $lnc#42085-1
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
