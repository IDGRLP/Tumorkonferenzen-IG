Profile: CancerStageGroup
Id: cancer-stage-group
Parent: Observation
Title: "Cancer Stage Group Profile"
Description: "An assessment of the extent of the cancer in the body, according to a given cancer staging classification system. This profile can be used with any staging system, but it is specifically targeted for non-TNM staging systems, since specialized TNM staging profiles are provided."
* method from CancerStagingMethodVS (extensible)
* code from CancerStagingTypeVS (preferred)
* code ^short = "The type of stage information reported."
* code ^definition = "The type of staging performed, e.g., clinically by oncologist, by a pathologist on a specimen, or other method. This information is required, although it may be redundant with the stage code recorded in Observation.valueCodeableConcept (for example, the 'c' in cN0 represents clinical staging)."
* value[x] only CodeableConcept
* value[x] from CancerStageVS (preferred)
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* focus only Reference(TumorDiagnose)
* focus ^short = "The cancer condition associated with staging assessment."
* focus ^definition = "Staging is associated with a particular primary cancer condition. Observation.focus is used to point back to that condition."
* hasMember ^short = "Prognostic factors contributing to stage determination."
* hasMember ^definition = "References to the prognostic factors affecting the stage, for example, the T, N, and M categories."
* subject only Reference(TumorPatient)
* subject ^definition = "The patient associated with staging assessment."
* status and code and subject and effective[x] and value[x] and method and focus MS


Profile: TNMStageGroup
Id: tnm-stage-group
Parent: CancerStageGroup
Title: "TNM Stage Group Profile"
Description: "The extent of cancer represented by the stage group, based on a TNM staging system."
* insert NotUsed(component)
* code from TNMStageGroupStagingTypeVS (required)
* value[x] from KrebsstadiumVS
* value[x] ^short = "The stage group"
* value[x] ^definition = "The overall cancer stage, such as stage group IIA."
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMStageGroupMaxVS)
* hasMember MS
* method 1..1
* method from TNMStagingMethodVS (extensible)
* focus 1..1
* insert SliceReferenceOnProfile(hasMember)
* hasMember contains
    tnmPrimaryTumorCategory 0..1 MS and
    tnmRegionalNodesCategory 0..1 MS and
    tnmDistantMetastasesCategory 0..1 MS and
    tnm-y-symbol 0..1 MS and
    tnm-r-symbol 0..1 MS and
    tnm-a-symbol 0..1 MS and
    tnm-m-symbol 0..1 MS and
    tnm-l-kategorie 0..1 MS and
    tnm-v-kategorie 0..1 MS and
    tnm-pn-kategorie 0..1 MS and
    tnm-s-kategorie 0..1 MS
* hasMember[tnmPrimaryTumorCategory] only Reference(TNMPrimaryTumorCategory)
* hasMember[tnmPrimaryTumorCategory] ^short = "TNM Primary Tumor Category"
* hasMember[tnmPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, and based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmPrimaryTumorCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmRegionalNodesCategory] only Reference(TNMRegionalNodesCategory)
* hasMember[tnmRegionalNodesCategory] ^short = "TNM  Regional Nodes Category"
* hasMember[tnmRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmRegionalNodesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmDistantMetastasesCategory] only Reference(TNMDistantMetastasesCategory)
* hasMember[tnmDistantMetastasesCategory] ^short = "TNM  Distant Metastases Category"
* hasMember[tnmDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmDistantMetastasesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnm-y-symbol] only Reference(TNMYSymbol)
* hasMember[tnm-r-symbol] only Reference(TNMRSymbol)
* hasMember[tnm-a-symbol] only Reference(TNMASymbol)
* hasMember[tnm-m-symbol] only Reference(TNMmSymbol)
* hasMember[tnm-l-kategorie] only Reference(TNMLKategorie)
* hasMember[tnm-v-kategorie] only Reference(TNMVKategorie)
* hasMember[tnm-pn-kategorie] only Reference(TNMPnKategorie)
* hasMember[tnm-s-kategorie] only Reference(TNMSKategorie)

Instance: TNMStageGroupClinicalExample
InstanceOf: TNMStageGroup
Title: "Example TNM Stage Group Observation"
Description: "An example of an Observation conforming to the TNMStageGroup profile."
* status = #final
* code = $lnc#21908-9 "Stage group.clinical Cancer"
* subject = Reference(TumorPatient-example-1)
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueCodeableConcept = KrebsstadiumCS#II "Stadium II"
* method.coding[+] = $sct#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* method.text = "Example TNM Staging Method"
* focus.reference = "Condition/example"
* hasMember[0].reference = "Observation/tnm-primary-tumor-category"
* hasMember[0].display = "TNM Primary Tumor Category"
* hasMember[1].reference = "Observation/tnm-regional-nodes-category"
* hasMember[1].display = "TNM Regional Nodes Category"
* hasMember[2].reference = "Observation/tnm-distant-metastases-category"
* hasMember[2].display = "TNM Distant Metastases Category"
* hasMember[3].reference = "Observation/tnm-y-symbol"
* hasMember[3].display = "TNM Y Symbol"
* hasMember[4].reference = "Observation/tnm-r-symbol"
* hasMember[4].display = "TNM R Symbol"
* hasMember[5].reference = "Observation/tnm-a-symbol"
* hasMember[5].display = "TNM A Symbol"
* hasMember[6].reference = "Observation/tnm-m-symbol"
* hasMember[6].display = "TNM M Symbol"
* hasMember[7].reference = "Observation/tnm-l-kategorie"
* hasMember[7].display = "TNM L Kategorie"
* hasMember[8].reference = "Observation/tnm-v-kategorie"
* hasMember[8].display = "TNM V Kategorie"
* hasMember[9].reference = "Observation/tnm-pn-kategorie"
* hasMember[9].display = "TNM Pn Kategorie"
* hasMember[10].reference = "Observation/tnm-s-kategorie"
* hasMember[10].display = "TNM S Kategorie"



Profile:  TNMPrimaryTumorCategory
Id: tnm-primary-tumor-category
Parent: CancerStageGroup
Title: "TNM Primary Tumor Category Profile"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMPrimaryTumorStagingTypeVS (required)
* value[x] from TNMPrimaryTumorCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMPrimaryTumorCategoryMaxVS)

Instance: tnm-clinical-primary-tumor-category-cT3
InstanceOf: TNMPrimaryTumorCategory
Usage: #example
* status = #final
* code = $sct#399504009 "cT category"
* subject = Reference(Patient/cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(Practitioner/us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = $sct#1228938002 "American Joint Committee on Cancer cT3 (qualifier value)"
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Profile:  TNMRegionalNodesCategory
Id: tnm-regional-nodes-category
Parent: CancerStageGroup
Title: "TNM Regional Nodes Category Profile"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMRegionalNodesStagingTypeVS (required)
* value[x] from TNMRegionalNodesCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMRegionalNodesCategoryMaxVS)

Instance: tnm-clinical-regional-nodes-category-cN3
InstanceOf: TNMRegionalNodesCategory
Usage: #example
* status = #final
* code = $sct#399534004 "cN category"
* subject = Reference(Patient/cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(Practitioner/us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = $sct#1229984001 "American Joint Committee on Cancer cN3 (qualifier value)"
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Profile:  TNMDistantMetastasesCategory
Id: tnm-distant-metastases-category
Parent: CancerStageGroup
Title: "TNM Distant Metastases Category Profile"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* insert NotUsed(hasMember)
* method 1..1
* method from TNMStagingMethodVS (extensible)
* code from TNMDistantMetastasesStagingTypeVS (required)
* value[x] from TNMDistantMetastasesCategoryVS (preferred)
* value[x] ^binding.extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet].valueCanonical = Canonical(TNMDistantMetastasesCategoryMaxVS)
* status MS
* code MS
* code = $lnc#33732-9 // aus MCODE: Histology grade [Identifier] in Cancer specimen  (could be 21858-6 Grade Cancer)
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
* valueCodeableConcept from HistoGradeVS

Instance: tnm-clinical-distant-metastases-category-cM0
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-distant-metastases-category"
* status = #final
* code = $sct#399387003 "cM category"
* subject = Reference(Patient/cancer-patient-john-anyperson)
* effectiveDateTime = "2019-04-01"
* performer = Reference(Practitioner/us-core-practitioner-kyle-anydoc)
* valueCodeableConcept = $sct#1229901006 "American Joint Committee on Cancer cM0 (qualifier value)"
* method = $sct#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Profile: TNMYSymbol
Parent: Observation
Id: TNMYSymbol
Title: "TNMYSymbol"
Description: "TNMYSymbol"
* status MS
* code MS
* code = $lnc#59479-6 //Collaborative staging post treatment extension Cancer
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* valueBoolean MS

Instance: TNMYSymbolExample
InstanceOf: TNMYSymbol
Title: "Example TNMYSymbol Observation"
Description: "An example of an Observation conforming to the TNMYSymbol profile."
* status = #final
* code = $lnc#59479-6 "Collaborative staging post treatment extension Cancer"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-verlauf"
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueBoolean = true

Profile: TNMRSymbol
Parent: Observation
Id: TNMRSymbol
Title: "TNMRSymbol"
Description: "TNMRSymbol"
* status MS
* code MS
* code = $lnc#21983-2 //Recurrence type first episode Cancer
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* value[x] only boolean
* valueBoolean MS

Instance: TNMRSymbolExample
InstanceOf: TNMRSymbol
Title: "Example TNMRSymbol Observation"
Description: "An example of an Observation conforming to the TNMRSymbol profile."
* status = #final
* code = $lnc#21983-2 "Recurrence type first episode Cancer"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-verlauf"
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueBoolean = true

Profile: TNMASymbol
Parent: Observation
Id: TNMASymbol
Title: "TNMASymbol"
Description: "TNMASymbol"
* status MS
* code MS
* code = $lnc#101660-9 //Cancer staging during autopsy
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* value[x] only boolean
* valueBoolean MS

Instance: TNMASymbolExample
InstanceOf: TNMASymbol
Title: "Example TNMASymbol Observation"
Description: "An example of an Observation conforming to the TNMASymbol profile."
* status = #final
* code = $lnc#101660-9 "Cancer staging during autopsy"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-verlauf"
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueBoolean = true

Profile: TNMmSymbol
Parent: Observation
Id: TNMmSymbol
Title: "TNMmSymbol"
Description: "TNMmSymbol"
* status MS
* code MS
// TODO: Loinc code?
* code = $sct#277650004 //m - Multiple tumors (tumor staging)
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MultiplePrimaerTumorenVS

Instance: TNMmSymbolExample
InstanceOf: TNMmSymbol
Title: "Example TNMmSymbol Observation"
Description: "An example of an Observation conforming to the TNMmSymbol profile."
* status = #final
* code = $sct#277650004 "m - Multiple tumors (tumor staging)"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-verlauf"
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueCodeableConcept = MultiplePrimaerTumorenCS#2 "(2) simultane Tumoren"

Profile: TNMLKategorie
Parent: Observation
Id: TNMLKategorie
Title: "TNMLKategorie"
Description: "TNMLKategorie"
* status MS
* code MS
* code = $lnc#33739-4 //Lymphatic.small vessel.invasion [Identifier] in Specimen by CAP cancer protocols
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from LymphgefaessinvasionVS

Instance: TNMLKategorieExample
InstanceOf: TNMLKategorie
Title: "Example TNMLKategorie Observation"
Description: "An example of an Observation conforming to the TNMLKategorie profile."
* status = #final
* code = $lnc#33739-4 "Lymphatic.small vessel.invasion [Identifier] in Specimen by CAP cancer protocols"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-verlauf"
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueCodeableConcept = LymphgefaessinvasionCS#L0 "Keine Lymphgefäßinvasion"

Profile: TNMVKategorie
Parent: Observation
Id: TNMVKategorie
Title: "TNMVKategorie"
Description: "TNMVKategorie"
* status MS
* code MS
* code = $lnc#33740-2 //Venous.large vessel.invasion [Identifier] in Specimen by CAP cancer protocols
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from VeneninvasionVS

Instance: TNMVKategorieExample
InstanceOf: TNMVKategorie
Title: "Example TNMVKategorie Observation"
Description: "An example of an Observation conforming to the TNMVKategorie profile."
* status = #final
* code = $lnc#33740-2 "Venous.large vessel.invasion [Identifier] in Specimen by CAP cancer protocols"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-verlauf"
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueCodeableConcept = VeneninvasionCS#V0 "Keine Veneninvasion"

Profile: TNMPnKategorie
Parent: Observation
Id: TNMPnKategorie
Title: "TNMPnKategorie"
Description: "TNMPnKategorie"
* status MS
* code MS
* code = $lnc#92837-4 //Perineural invasion [Presence] in Cancer specimen
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from PerineuraleInvasionVS

Instance: TNMPnKategorieExample
InstanceOf: TNMPnKategorie
Title: "Example TNMPnKategorie Observation"
Description: "An example of an Observation conforming to the TNMPnKategorie profile."
* status = #final
* code = $lnc#92837-4 "Perineural invasion [Presence] in Cancer specimen"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-verlauf"
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueCodeableConcept = PerineuraleInvasionCS#PN0 "Keine perineurale Invasion"

Profile: TNMSKategorie
Parent: Observation
Id: TNMSKategorie
Title: "TNMSKategorie"
Description: "TNMSKategorie"
* status MS
* code MS
* code = $sct#399424006 //Serum tumor marker category (observable entity)
* subject 1.. MS
* subject only Reference(TumorPatient)
* encounter MS
* encounter only Reference(Verlauf)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* value[x] MS
* value[x] only CodeableConcept
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from SerumTumorMarkerUICCVS

Instance: TNMSKategorieExample
InstanceOf: TNMSKategorie
Title: "Example TNMSKategorie Observation"
Description: "An example of an Observation conforming to the TNMSKategorie profile."
* status = #final
* code = $sct#399424006 "Serum tumor marker category (observable entity)"
* subject.reference = "Patient/example-tumor-patient"
* encounter.reference = "Encounter/example-verlauf"
* effectiveDateTime = "2024-05-27T12:00:00Z"
* valueCodeableConcept = SerumTumorMarkerUICCCS#S0 "S0"