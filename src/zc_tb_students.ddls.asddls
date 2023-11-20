@EndUserText.label: 'Consumption View Students'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZC_TB_STUDENTS as projection on ZI_TB_STUDENTS

{
    @EndUserText.label: 'Student ID'
    @Search.defaultSearchElement: true
    key StudentId,
    @EndUserText.label: 'DepartmentId'
    DepartmentId,
    @EndUserText.label: 'First Name'
    FirstName,
    @EndUserText.label: 'Last Name'
    LastName,
    @EndUserText.label: 'Department Name'
    DepartmentName,
    _departments : redirected to parent ZC_TB_DEPARTMENT,
    _RegCources : redirected to composition child ZC_TB_REGCOURCE
}
