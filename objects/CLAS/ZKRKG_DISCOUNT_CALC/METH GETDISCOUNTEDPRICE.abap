    METHOD getdiscountedprice.
    "WorkBench Demo Change Tes in S4 2022, activation commit test BADI disabled test
    "task commit test

"    DATA: lv_cross_ref TYPE z_num2.
    DATA disc TYPE i.
    IF ( warranty >= 10 ).
      " fetch the details
      DATA lv_value TYPE i.
      lv_value = 45.
      disc = ( price * lv_value ) / 100.
    ELSE.
      disc = ( price * 30 ) / 100.
    ENDIF.
    DATA lv_value TYPE i.
    result = price - disc.
    DATA: l_record TYPE usr02.
    SELECT * INTO l_record FROM usr02 UP TO 2 ROWS.
    ENDSELECT.

  ENDMETHOD.
