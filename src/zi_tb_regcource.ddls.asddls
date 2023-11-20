@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface of Registration Cource'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_TB_REGCOURCE as select from ztb_regcource
association to parent ZI_TB_STUDENTS as _students on _students.StudentId = $projection.StudentId
association [0..*] to ZI_TB_DEPARTMENT as _departments on _departments.DepartmentId = $projection.DepartmentId
{
    key registered_id as RegisteredId,
     department_id as DepartmentId,
     
     cource_id as CourceId,
     @ObjectModel.text.element: [ '_students.StudentId' ]
    student_id as StudentId,
     @Consumption.valueHelpDefinition: [{
                    entity: {
                                name: 'ZI_TB_COURCE',
                                element: 'CourceName'
                            },
                    additionalBinding: [{ localElement: 'CourceId' ,
                                          element: 'CourceId',
                                          usage: #FILTER_AND_RESULT,
                                          parameter: 'CourceId' }]
      }]
    cource_name as CourceName,
    @ObjectModel.text.element: [ '_students.FirstName' ]
    first_name as FirstName,
    @ObjectModel.text.element: [ '_students.LastName' ]
    last_name as LastName,
     @Consumption.valueHelpDefinition: [{
                    entity: {
                                name: 'ZI_TB_DEPARTMENT',
                                element: 'DepartmentName'
                            },
                    additionalBinding: [{ localElement: 'DepartmentId' ,
                                          element: 'DepartmentId',
                                          usage: #FILTER_AND_RESULT,
                                          parameter: 'DepartmentId' }]
      }]
    department_name as DepartmentName,
    registration_date as RegistrationDate,
    _students,
    _departments
}
