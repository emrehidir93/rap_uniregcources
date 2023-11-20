@EndUserText.label: 'Consumption View Cource'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZC_TB_COURCES as projection on ZI_TB_COURCE
{
    @EndUserText.label: 'Department ID'
    @Search.defaultSearchElement: true
    
    key DepartmentId,
    @EndUserText.label: 'Cource ID'
    key CourceId,
    @EndUserText.label: 'Cource Name'
    CourceName,
    @EndUserText.label: 'Qouta'
    Qouta,
    @EndUserText.label: 'Department Name'
    DepartmentName,
    @EndUserText.label: 'Duration'
    Duration,
    /* Associations */
    _departments : redirected to parent ZC_TB_DEPARTMENT
}
