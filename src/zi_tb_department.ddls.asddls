@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface of Deparments'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_TB_DEPARTMENT as select from ztb_departments
composition [0..*] of ZI_TB_COURCE as _cources
composition [0..*] of ZI_TB_STUDENTS as _students
association [0..*] to ZI_TB_REGCOURCE as _RegCources on _RegCources.DepartmentId = $projection.DepartmentId
{
    key department_id as DepartmentId,
    department_name as DepartmentName,
    department_head as DepartmentHead,
    _cources,
    _students,
    _RegCources
}
