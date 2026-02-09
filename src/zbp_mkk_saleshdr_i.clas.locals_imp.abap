CLASS lhc_SalesOrderHdr DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR SalesOrderHdr RESULT result.

    METHODS setDeliveryStatus FOR MODIFY
      IMPORTING keys FOR ACTION SalesOrderHdr~setDeliveryStatus RESULT result.

ENDCLASS.

CLASS lhc_SalesOrderHdr IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD setDeliveryStatus.
  ENDMETHOD.

ENDCLASS.
