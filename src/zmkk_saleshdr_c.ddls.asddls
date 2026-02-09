@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZMKK_SALESHDR_C
  provider contract transactional_query
  as projection on ZMKK_SALESHDR_I
{
  key SalesDocument,
      SalesDocumentType,
      OrderReason,
      SalesOrganization,
      DistributionChannel,
      Division,
      @Search.defaultSearchElement: true
      SalesOffice,            
      Delivered,
      SalesGroup,
      @Semantics.amount.currencyCode: 'Currency'
      NetPrice,
      Currency,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      /* Associations */
      _salesItem : redirected to composition child ZMKK_SALESITM_C
}
