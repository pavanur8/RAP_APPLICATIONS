@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchasing Info Record: General Data'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity z_c_eina
  provider contract transactional_query
  as projection on z_i_eina
  association [0..1] to ZQuickView as _ShipToPartyQuickView on $projection.Infnr = _ShipToPartyQuickView.Infnr
{
          @Search.defaultSearchElement: true
          //@ObjectModel.foreignKey.association: '_ShipToPartyQuickView'
  key     Infnr,
          Matnr,
          Matkl,
          Lifnr,
          Status,
          Deliverystatus,
          @Consumption.semanticObject: 'Ernam'
          @EndUserText.label : 'Intent Based Navigation'
          @EndUserText.quickInfo: 'QuickView'
          @ObjectModel.foreignKey.association: '_ShipToPartyQuickView'
          //@Semantics.eMail.address: true
          Ernam,
          Erdat,
          Meins,
          @Semantics.telephone.type: [ #CELL ]
          @Semantics.eMail.address: true
          Telf1,
          Urzla,
          //       @Consumption.semanticObject: 'Ernam'
          //       @ObjectModel.foreignKey.association: '_ShipToPartyQuickView'
          Mfrnr,
          @Semantics.imageUrl: true
          Imagee,
          LastChangedAt,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRT_HIDE641'
          @EndUserText.label: 'isHide'
  virtual ishide : abap_boolean,
          /* Associations */
          _ShipToPartyQuickView,
          _eine : redirected to composition child z_c_eine
}
