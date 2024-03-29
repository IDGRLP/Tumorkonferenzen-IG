Profile: Nebenwirkung
Parent: Condition
Id: nebenwirkung
Title: "Nebenwirkung"
Description: "Nebenwirkung Strahlentherapie und systemische Therapie nach CTCAE"
* id MS
  * ^short = "eindeutige ID der Ressource auf dem Server"
* clinicalStatus MS
  * coding 1.. MS
    * system 1.. MS
    * code 1.. MS
* verificationStatus MS
* verificationStatus.coding MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* verificationStatus.coding contains
    conditionVerificationStatus 1..1 MS and
    diagnosesicherung 0..1 MS
* verificationStatus.coding[conditionVerificationStatus] 1..1 MS
  * ^patternCoding.system = $csConditionVerificationStatus
  * system 1.. MS
  * code 1.. MS
* verificationStatus.coding[diagnosesicherung] 0..1 MS
  * ^patternCoding.system = "https://fix.me/FIXME"
  * system 1.. MS
  * code 1.. MS
* severity MS
  * coding MS
    * system 1.. MS
    * code 1.. MS
* code 1.. MS
  * coding MS
    * system MS
    * version MS
    * code MS
  * text MS
* subject only Reference(TumorPatient)
* subject 1.. MS
