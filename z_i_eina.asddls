@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view  General  Data'
@Metadata.ignorePropagatedAnnotations: true
@OData.publish: true
define root view entity z_i_eina
  as select from zdb_eina
  composition [0..*] of z_i_eine as _eine
  
{

      @ObjectModel.text.element: ['Ernam']
  key infnr           as Infnr,
      matnr           as Matnr,
      matkl           as Matkl,
      lifnr           as Lifnr,
      status          as Status,
      case
      when status = 'X' then 3
      else 1
      end             as Deliverystatus,
      @Semantics.user.createdBy: true
      ernam           as Ernam,
      @Semantics.systemDateTime.createdAt: true
      erdat           as Erdat,
      meins           as Meins,
      telf1           as Telf1,
      urzla           as Urzla,
      mfrnr           as Mfrnr,
      zimage          as Imagee,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt,
      _eine
}
