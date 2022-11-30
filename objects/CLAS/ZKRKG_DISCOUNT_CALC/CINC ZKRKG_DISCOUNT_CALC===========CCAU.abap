
CLASS ltc_unit_tests DEFINITION FOR TESTING
  FINAL
  DURATION SHORT
  RISK LEVEL HARMLESS.
  PRIVATE SECTION.
    DATA: disccalc TYPE REF TO ZKRKG_DISCOUNT_CALC.
    METHODS setup.
    METHODS testdiscountprice FOR TESTING.
ENDCLASS.



CLASS ltc_unit_tests IMPLEMENTATION.


  METHOD setup.
    "SAP Demo
    CREATE OBJECT disccalc.
    "write' This setup method for three'.

  ENDMETHOD.


  METHOD testdiscountprice.

    "OtmLabs Demo
    DATA :discountedprice TYPE i.
    disccalc->getdiscountedprice( price = 100
                 warranty = 9 ).
    cl_abap_unit_assert=>assert_equals( act = discountedprice
                        exp = 30
                        msg = 'Wrong Discounted Price').
  ENDMETHOD.
ENDCLASS.
*"* use this source file for your ABAP unit test classes