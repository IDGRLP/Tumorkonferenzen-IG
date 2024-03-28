Profile: WatchfulWaiting
Parent: Procedure
Id: watchful-waiting
Title: "WatchfulWaiting"
Description: "Watchful Waiting (abwartende/beobachtende Maßnahme ohne Therapie)"
* extension contains
    mcode-procedure-intent named intention 0..1
* extension[intention] MS
  * valueCodeableConcept MS
    * coding 1.. MS
      * system 1.. MS
      * code 1.. MS
* status MS
* code 1.. MS
  * coding MS
    * system 1.. MS
    * code 1.. MS
* code = SCT#373818007
* subject MS
* subject only Reference(TumorPatient)
* performed[x] MS
* performed[x] only Period
* performedPeriod MS
  * start MS
  * end MS
* bodySite MS
  * coding MS
    * system 1.. MS
    * code 1.. MS
* outcome MS
  * text MS
