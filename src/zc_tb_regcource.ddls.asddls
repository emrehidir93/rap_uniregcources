@EndUserText.label: 'Consumption View Registration Cource'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZC_TB_REGCOURCE as projection on ZI_TB_REGCOURCE
{
    @EndUserText.label: 'Registered ID'
    @Search.defaultSearchElement: true
    key RegisteredId,
    @EndUserText.label: 'Department ID'
    DepartmentId,
    @EndUserText.label: 'Cource ID'
    CourceId,
    @EndUserText.label: 'Student ID'
    StudentId,
    @EndUserText.label: 'Cource Name'
    CourceName,
    @EndUserText.label: 'First Name'
    FirstName,
    @EndUserText.label: 'Last Name'
    LastName,
    @EndUserText.label: 'Department Name'
    DepartmentName,
    @EndUserText.label: 'Registration Date'
    RegistrationDate,
    /* Associations */
    _students : redirected to parent ZC_TB_STUDENTS,
    _departments : redirected to ZC_TB_DEPARTMENT
}
