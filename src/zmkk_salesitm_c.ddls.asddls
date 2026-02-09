@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Items Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity ZMKK_SALESITM_C
  as projection on ZMKK_SALESITM_I
{
  key SalesDocument,
  key SalesItemnumber,
      @Search.defaultSearchElement: true
      Material,
      Plant,
      @Semantics.quantity.unitOfMeasure: 'Quantityunits'
      Quantity,
      Quantityunits,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      /* Associations */
      _salesHeader : redirected to parent ZMKK_SALESHDR_C
}
