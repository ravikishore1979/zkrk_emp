    METHOD getdiscountedprice.
    "WorkBench Demo Change Tes in S4 2022, activation commit test BADI disabled test
    "task commit test

"    DATA: lv_cross_ref TYPE z_num2.
    DATA disc TYPE i.
    IF ( warranty >= 10 ).
      " fetch the details
      DATA lv_value TYPE I.
      disc = ( price * 34 ) / 100.
      lv_value = 23.
      disc = ( price * ( lv_value + 10 ) ) / 100.
    ELSE.
      disc = ( price * 10 ) / 100.
    ENDIF.
    result = price - disc.
    DATA: l_record TYPE usr02.
    SELECT * INTO l_record FROM usr02 UP TO 2 ROWS.
    ENDSELECT.

  ENDMETHOD.