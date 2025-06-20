    METHOD getdiscountedprice.
    "WorkBench Demo Change Test in S4 2022, activation commit test BADI disabled invalid tr sfsdfsdfsf
    "gcts activate Timeout exception retest

"    DATA: lv_cross_ref TYPE z_num2.
    DATA disc TYPE i.
    DATA lv_val2 TYPE i.
    lv_val2 = 10.
    IF ( warranty >= 3 ).
      " fetch the details of number 10 and 23 and 67
      DATA lv_value TYPE I.
      disc = ( price * 34 ) / 100.
      lv_value = 23.
      disc = ( price * ( lv_value + 12 ) ) / 100.
    ELSE.
      disc = ( price * 5 ) / 100.
    ENDIF.
    result = price - disc.
    DATA: l_record TYPE usr02.
    SELECT * INTO l_record FROM usr02 UP TO 2 ROWS.
    ENDSELECT.
    "end method commnents. Jan 12 03 test
  ENDMETHOD.
