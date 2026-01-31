@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchasing Organization Data'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity z_c_eine
  as projection on z_i_eine
{
  key     Infnr,
          @Search.defaultSearchElement: true
  key     Ekorg,
          Esokz,
          Werks,
          Ernam,
          Erdat,
          Ebeln,
          Ebelp,
          Meins,
          @Semantics.quantity.unitOfMeasure: 'Meins'
          Bstma,
          @Search.fuzzinessThreshold: 0.8
//          @ObjectModel.text.element: [ 'Waers' ]
          Waers,
          @Semantics.amount.currencyCode: 'Waers'
          Netpr,
          LastChangedAt,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL641'
          @EndUserText.label: 'Toatal Amount'
  virtual TotalAmount : abap.int2(5),
          /* Associations */
          _eina : redirected to parent z_c_eina
}
