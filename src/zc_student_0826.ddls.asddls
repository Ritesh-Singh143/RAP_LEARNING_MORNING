@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View For Student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_STUDENT_0826
  as projection on ZI_STUDENT_0826
{
  key Id,
      Firstname,
      Lastname,
      Age,
      Course,
      Courseduration,
      Status,
      Gender,
      Dob,
      LastChangedAt,
      LocalLastChangedAt,
      GendDescription
}
