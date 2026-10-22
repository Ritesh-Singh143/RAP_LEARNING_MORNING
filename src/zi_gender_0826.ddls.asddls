@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Gender'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_gender_0826
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZRS_GENDER_DM_0826' )
{
       //key  domain_name,
       //key  value_position,
  key  language,
       @ObjectModel.text.element: [ 'Description' ]
       @ObjectModel.sort.enabled: true
       @UI.textArrangement: #TEXT_ONLY
  key  value_low as Value,
       text      as Description
}
