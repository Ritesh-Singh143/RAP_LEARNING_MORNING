CLASS lhc_Student DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS augment_create FOR MODIFY
       entities FOR CREATE Student.

ENDCLASS.

CLASS lhc_Student IMPLEMENTATION.

  METHOD augment_create.
  ENDMETHOD.

ENDCLASS.
