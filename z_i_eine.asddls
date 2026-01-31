@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchasing Organization Data'
@Metadata.ignorePropagatedAnnotations: true
define view entity z_i_eine
  as select from zdb_eine
  association to parent z_i_eina as _eina on $projection.Infnr = _eina.Infnr
{
  key infnr           as Infnr,
  key ekorg           as Ekorg,
      esokz           as Esokz,
      werks           as Werks,
      @Semantics.user.createdBy: true
      ernam           as Ernam,
      @Semantics.systemDateTime.createdAt: true
      erdat           as Erdat,
      ebeln           as Ebeln,
      ebelp           as Ebelp,
      meins           as Meins,
      @Semantics.quantity.unitOfMeasure: 'Meins'
      bstma           as Bstma,
      waers           as Waers,
      @Semantics.amount.currencyCode: 'Waers'
      netpr           as Netpr,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt,
      _eina
}
