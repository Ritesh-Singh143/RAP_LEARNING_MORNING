@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Student'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_STUDENT_0826
  as select from zrs_student_0826
  association to zi_gender_0826 as _gender on $projection.Gender = _gender.Value
{
  key zrs_student_0826.id                    as Id,
      zrs_student_0826.firstname             as Firstname,
      zrs_student_0826.lastname              as Lastname,
      zrs_student_0826.age                   as Age,
      zrs_student_0826.course                as Course,
      zrs_student_0826.courseduration        as Courseduration,
      zrs_student_0826.status                as Status,
      zrs_student_0826.gender                as Gender,
      zrs_student_0826.dob                   as Dob,
      zrs_student_0826.last_changed_at       as LastChangedAt,
      zrs_student_0826.local_last_changed_at as LocalLastChangedAt,
      _gender,
      _gender.Description                    as GendDescription
}
