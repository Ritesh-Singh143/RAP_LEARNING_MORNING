CLASS lhc_Student DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Student RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR student RESULT result.

    METHODS acceptadmission FOR MODIFY
      IMPORTING keys FOR ACTION student~acceptadmission RESULT result.
    METHODS getdefaultsforcreate FOR READ
       keys FOR FUNCTION student~getdefaultsforcreate RESULT result.

ENDCLASS.

CLASS lhc_Student IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_instance_features.

    DATA(lv_accept_admission) = requested_features-%action-acceptAdmission.

    IF lv_accept_admission EQ if_abap_behv=>mk-on.

      READ ENTITIES OF zi_student_0826 IN LOCAL MODE
      ENTITY Student
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_student).

      result = VALUE #( FOR ls_student IN lt_student
                        LET lv_status = COND #( WHEN ls_student-Status = abap_true THEN if_abap_behv=>fc-o-enabled
                                                ELSE if_abap_behv=>fc-o-disabled )
                                                IN
                                                ( %tky = ls_student-%tky
                                                  %action-acceptAdmission = lv_status ) ).

    ENDIF.


  ENDMETHOD.

  METHOD acceptAdmission.

  ENDMETHOD.

  METHOD GetDefaultsForCreate.
    result = VALUE #( FOR key IN keys (
            %cid = key-%cid
            %param = VALUE #( Firstname = 'Ritesh'
                              Lastname = 'Singh' "cl_abap_context_info=>get_system_date( )
                              Status = 'X' ) ) ).
  ENDMETHOD.

ENDCLASS.
