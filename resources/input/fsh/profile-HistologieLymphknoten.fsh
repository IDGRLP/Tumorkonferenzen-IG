Profile: HistologieLymphknoten
Parent: Observation
Id: HistologieLymphknoten
Title: "HistologieLymphknoten"
Description: "HistologieLymphknoten"
//TODO: add extension to EpisodeOfCare
* status MS
* code MS
* code = $sct#364108009 // "Lymph node observable (observable entity)"
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] ..0
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains 
  untersuchte-lymphknoten 0..1 MS and
  befallene-lymphknoten 0..1 MS and
  untersuchte-sentinel-lymphknoten 0..1 MS and
  befallene-sentinel-lymphknoten 0..1 MS and
  befund 0..1 MS
* component[untersuchte-lymphknoten]
  * code = $lnc#21894-1 // "Regional lymph nodes examined [#] Specimen"
  * value[x] only integer
  * valueInteger 1.. MS
* component[befallene-lymphknoten]
  * code = $lnc#21893-3 // "Regional lymph nodes positive [#] Specimen"
  * value[x] only integer
  * valueInteger 1.. MS
* component[untersuchte-sentinel-lymphknoten]
  * code = $sct#444411008 // "Number of sentinel lymph nodes examined by microscopy in excised tissue specimen (observable entity)" //TODO: alles auf $sct umstellen?
  * value[x] only integer
  * valueInteger 1.. MS
* component[befallene-sentinel-lymphknoten]
  * code = $sct#1264491009 // "Number of sentinel lymph nodes containing metastatic neoplasm in excised specimen (observable entity)" //TODO: alles auf $sct umstellen?
  * value[x] only integer
  * valueInteger 1.. MS
* component[befund]
  * code = $sct#371524004 // "Clinical report (record artifact)" //TODO: alles auf $sct umstellen?
  * value[x] only string
  * valueString 1.. MS

Instance: HistologieLymphknotenExample
InstanceOf: HistologieLymphknoten
Usage: #example
//TODO: add extension to EpisodeOfCare
* status = #final
* code = $sct#364108009 "Lymph node observable"
* subject = Reference(TumorPatientExample)
* encounter = Reference(VerlaufExample)
* effectiveDateTime = "2023-04-05T14:30:00Z"
* component[untersuchte-lymphknoten].valueInteger = 15
* component[befallene-lymphknoten].valueInteger = 3
* component[untersuchte-sentinel-lymphknoten].valueInteger = 5
* component[befallene-sentinel-lymphknoten].valueInteger = 1
* component[befund].valueString = "Befundtext"