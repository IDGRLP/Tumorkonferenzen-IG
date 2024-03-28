Profile: TumorkonferenzSituation
Parent: Observation
Id: tumorkonferenz-situation
Title: "TumorkonferenzSituation"
Description: "Tumorkonferenz: Beschreibung der aktuelle Situation"
* status MS
* code MS
* code = SCT#276099005
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Tumorkonferenz)
* value[x] MS
* value[x] only string
* valueString 1.. MS
