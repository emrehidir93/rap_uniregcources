CLASS lhc_ZI_TB_DEPARTMENT DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_tb_department RESULT result.

ENDCLASS.

CLASS lhc_ZI_TB_DEPARTMENT IMPLEMENTATION.

  METHOD get_global_authorizations.
  IF requested_authorizations-%update = if_abap_behv=>mk-on OR
       requested_authorizations-%create = if_abap_behv=>mk-on.
*       requested_authorizations-%action-edit = if_abap_behv=>mk-on.


      "Check if authorized
      IF 1 = 1.
      ELSE.
        result-%update = if_abap_behv=>auth-unauthorized.
*        result-%action-edit = if_abap_behv=>auth-unauthorized.
      ENDIF.

    ENDIF.
  ENDMETHOD.

ENDCLASS.
