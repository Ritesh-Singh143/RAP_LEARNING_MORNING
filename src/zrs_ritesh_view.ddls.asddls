@AbapCatalog.sqlViewName: 'ZGUI_RITESH_VIEW'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: false
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View'
@Metadata.ignorePropagatedAnnotations: true
define view zrs_ritesh_view
  with parameters
    p_fname : abap.char(100),
    p_lname : abap.char(100)
  as select from zrs_student_0826
{
  key id                    as Id,
      firstname             as Firstname1,
      lastname              as Lastname,
      age                   as Age,
      course                as Course,
      courseduration        as Courseduration,
      status                as Status,
      gender                as Gender,
      dob                   as Dob,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt
}
//where
//      firstname = $parameters.p_fname
//  and lastname  = :p_lname;
 // and dob       = $session.system_date;
