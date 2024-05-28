Profile: TumorkonferenzSituation
Parent: Observation
Id: tumorkonferenz-situation
Title: "TumorkonferenzSituation"
Description: "Tumorkonferenz: Beschreibung der aktuelle Situation"
* status MS
* code MS
* code = $sct#276099005
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter 1.. MS
* encounter only Reference(Tumorkonferenz)
* value[x] MS
* value[x] only string
* valueString 1.. MS
