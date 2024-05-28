Profile: TumorkonferenzFragestellung
Parent: Observation
Id: tumorkonferenz-fragestellung
Title: "TumorkonferenzFragestellung"
Description: "Tumorkonferenz: Fragestellung"
* status MS
* code MS
* code = $sct#103320006 // "Request for"
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter 1.. MS
* encounter only Reference(Tumorkonferenz)
* value[x] MS
* value[x] only string
* valueString 1.. MS

Instance: TumorkonferenzFragestellungExample
InstanceOf: TumorkonferenzFragestellung
Title: "Example TumorkonferenzFragestellung Observation"
Description: "An example of an Observation conforming to the TumorkonferenzFragestellung profile."
* status = #final
* code = $sct#103320006 "Request for"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-tumorkonferenz"
* valueString = "Request for discussion in tumor board regarding treatment options."
