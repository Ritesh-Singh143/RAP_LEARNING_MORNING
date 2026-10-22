@AbapCatalog.sqlViewName: 'ZGUI_RITESH_VIE1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View'
@Metadata.ignorePropagatedAnnotations: true

define view zrs_ritesh_view1
  with parameters
    p_date : dats
  as select from zrs_ritesh_view( p_fname : 'Ritesh', p_lname : 'Singh' )
{
  key Id,
      Firstname1,
      Lastname,
      concat(Firstname1,Lastname)                              as FULLNAME,
      concat_with_space(Firstname1,Lastname,1)                 as FULLNAME_WITH_SPACE,
      ltrim(Firstname1,'R')                                    as LTRIM,
      rtrim(Firstname1,'H')                                    as RTRIM,
      lpad(Firstname1,10,'S')                                  as LPAD,
      rpad(Firstname1,10,'S')                                  as RPAD,
      lower(Firstname1)                                        as lower_CASE,
      upper(Firstname1)                                        as upper_CASE,
      substring(Firstname1,2,3)                                as substring_CASE,
      replace(Firstname1,'it','TI')                            as replace_CASE,
      length(Firstname1)                                       as length,
      // Lastname,
      Age,
      //cast( 2026-10-11 as abap.datn )                          as datn_is,
      Course,
      //Courseduration,
      Status,
      Gender,
      //count(*) as TotalStudents
      Dob,
      dats_add_days(Dob, 2, 'INITIAL' )                        as add_days,
      dats_add_months(Dob,2,'INITIAL')                         as add_months,
      dats_is_valid('20261015')                                as dats_is_valid,
      //datn_add_days( ( cast( Dob as abap.datn ) ),2) as add_days_datn
      dats_days_between(Dob,'20261010')                        as days_between_1,
      dats_days_between(Dob,:p_date)                           as days_between_2,
      dats_days_between(Dob,dats_add_days(Dob, 2, 'INITIAL' )) as days_between_3,
      $session.client                                          as System_client,
      $session.system_date                                     as System_Date,
      $session.system_language                                 as System_Language,
      $session.user                                            as SystemUser,
      $session.user_date                                       as User_Date,
      $session.user_timezone                                   as UserTimeZone
      //      LastChangedAt,
      //      LocalLastChangedAt
}
//where
//  $parameters.p_date = $session.system_date;
//group by
//  Gender
//having
//  Gender = 'M';
