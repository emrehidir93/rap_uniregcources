@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface of Students'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_TB_STUDENTS as select from ztb_students
composition [0..*] of ZI_TB_REGCOURCE as _RegCources
association to parent ZI_TB_DEPARTMENT as _departments on _departments.DepartmentId = $projection.DepartmentId

{
    key student_id as StudentId,
    department_id as DepartmentId,
    first_name as FirstName,
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
    _departments,
    _RegCources
    
}
