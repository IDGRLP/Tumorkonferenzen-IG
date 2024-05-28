Profile: TumorkonferenzTherapieVerlauf
Parent: Observation
Id: tumorkonferenz-therapie-verlauf
Title: "TumorkonferenzTherapieVerlauf"
Description: "Tumorkonferenz: Beschreibung von Therapie und Verlauf"
* status MS
* code MS
* code = $sct#308273005
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter 1.. MS
* encounter only Reference(Tumorkonferenz)
* value[x] MS
* value[x] only string
* valueString 1.. MS
