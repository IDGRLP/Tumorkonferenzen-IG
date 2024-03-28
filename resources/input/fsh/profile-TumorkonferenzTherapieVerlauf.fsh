Profile: TumorkonferenzTherapieVerlauf
Parent: Observation
Id: tumorkonferenz-therapie-verlauf
Title: "TumorkonferenzTherapieVerlauf"
Description: "Tumorkonferenz: Beschreibung von Therapie und Verlauf"
* status MS
* code MS
* code = SCT#308273005
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Tumorkonferenz)
* value[x] MS
* value[x] only string
* valueString 1.. MS
