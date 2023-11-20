@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface of Cources'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_TB_COURCE as select from ztb_cources
association to parent ZI_TB_DEPARTMENT as _departments on _departments.DepartmentId = $projection.DepartmentId
{
    @ObjectModel.text.element: [ '_departments.DepartmentId' ]
    key department_id as DepartmentId,
    key cource_id as CourceId,
    cource_name as CourceName,
    qouta as Qouta,
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
//      @EndUserText.label: 'Document Type'

      @ObjectModel.text.element: [ '_departments.DepartmentName' ]
    
    department_name as DepartmentName,
//     @Consumption.filter.hidden: true
//      @Consumption.valueHelpDefault.display: false
//    _departments.DepartmentName as DepartmentN,
    duration as Duration,
   
    _departments
}
