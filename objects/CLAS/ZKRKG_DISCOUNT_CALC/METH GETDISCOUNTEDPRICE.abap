    METHOD getdiscountedprice.
    "WorkBench Demo Change Tes in S4 2022, activation commit test 2


"    DATA: lv_cross_ref TYPE z_num2.
    DATA disc TYPE i.
    IF ( warranty >= 7 ).
      disc = ( price * 70 ) / 100.
    ELSE.
      disc = ( price * 10 ) / 100.
    ENDIF.
    result = price - disc.
    DATA: l_record TYPE usr02.
    SELECT * INTO l_record FROM usr02 UP TO 2 ROWS.
    ENDSELECT.

  ENDMETHOD.