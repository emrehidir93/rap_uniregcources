@EndUserText.label: 'Consumption View Department'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZC_TB_DEPARTMENT provider contract transactional_query as projection on ZI_TB_DEPARTMENT
{
    @EndUserText.label: 'Department ID'
    @Search.defaultSearchElement: true
    key DepartmentId,
    @EndUserText.label: 'Department Name'
    DepartmentName,
    @EndUserText.label: 'Department Head'
    DepartmentHead,
    /* Associations */
    _cources : redirected to composition child ZC_TB_COURCES,
   _students : redirected to composition child ZC_TB_STUDENTS,
   _RegCources
}
