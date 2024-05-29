cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  myocardial-infarction-charlson-primary-care-attack---primary:
    run: myocardial-infarction-charlson-primary-care-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  acute-myocardial-infarction-charlson-primary-care---primary:
    run: acute-myocardial-infarction-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-attack---primary/output
  myocardial-infarction-charlson-primary-care---primary:
    run: myocardial-infarction-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: acute-myocardial-infarction-charlson-primary-care---primary/output
  myocardial-infarction-charlson-primary-care-posterior---primary:
    run: myocardial-infarction-charlson-primary-care-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care---primary/output
  myocardial-infarction-charlson-primary-care-elevation---primary:
    run: myocardial-infarction-charlson-primary-care-elevation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-posterior---primary/output
  postoperative-myocardial-infarction-charlson-primary-care---primary:
    run: postoperative-myocardial-infarction-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-elevation---primary/output
  other-myocardial-infarction-charlson-primary-care---primary:
    run: other-myocardial-infarction-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: postoperative-myocardial-infarction-charlson-primary-care---primary/output
  subendocardial-myocardial-infarction-charlson-primary-care---primary:
    run: subendocardial-myocardial-infarction-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-myocardial-infarction-charlson-primary-care---primary/output
  myocardial-infarction-charlson-primary-care-unspecif---primary:
    run: myocardial-infarction-charlson-primary-care-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: subendocardial-myocardial-infarction-charlson-primary-care---primary/output
  myocardial-infarction-charlson-primary-care-inferior---primary:
    run: myocardial-infarction-charlson-primary-care-inferior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-unspecif---primary/output
  subsequent-myocardial-infarction-charlson-primary-care---primary:
    run: subsequent-myocardial-infarction-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-inferior---primary/output
  myocardial-infarction-charlson-primary-care-aborted---primary:
    run: myocardial-infarction-charlson-primary-care-aborted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: subsequent-myocardial-infarction-charlson-primary-care---primary/output
  silent-myocardial-infarction-charlson-primary-care---primary:
    run: silent-myocardial-infarction-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-aborted---primary/output
  myocardial-infarction-charlson-primary-care-anterior---primary:
    run: myocardial-infarction-charlson-primary-care-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: silent-myocardial-infarction-charlson-primary-care---primary/output
  coronary-myocardial-infarction-charlson-primary-care---primary:
    run: coronary-myocardial-infarction-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-anterior---primary/output
  myocardial-infarction-charlson-primary-care-streptokinase---primary:
    run: myocardial-infarction-charlson-primary-care-streptokinase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: coronary-myocardial-infarction-charlson-primary-care---primary/output
  myocardial-infarction-charlson-primary-care-unspecified---primary:
    run: myocardial-infarction-charlson-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-streptokinase---primary/output
  infarction---primary:
    run: infarction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-unspecified---primary/output
  myocardial-infarction-charlson-primary-care-thrombosis---primary:
    run: myocardial-infarction-charlson-primary-care-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: infarction---primary/output
  myocardial-infarction-charlson-primary-care-history---primary:
    run: myocardial-infarction-charlson-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-thrombosis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: myocardial-infarction-charlson-primary-care-history---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
