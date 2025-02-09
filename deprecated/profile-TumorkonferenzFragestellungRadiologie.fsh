Profile: TumorkonferenzFragestellungRadiologie
Parent: Observation
Id: tumorkonferenz-fragestellung-radiologie
Title: "TumorkonferenzFragestellungRadiologie"
Description: "Tumorkonferenz: Fragestellung an die Radiologie"
* status MS
* code MS
* code = $sct#103320006:246061005=394914008
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter 1.. MS
* encounter only Reference(Tumorkonferenz)
* value[x] MS
* value[x] only string
* valueString 1.. MS
