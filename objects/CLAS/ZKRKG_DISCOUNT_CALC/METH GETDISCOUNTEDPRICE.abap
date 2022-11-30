    METHOD getdiscountedprice.
    "WorkBench Demo Change Tes


    DATA: lv_cross_ref TYPE z_num2.
          "lv_indirect_dependency_check TYPE zindirect_dependency_check,
          "lv_indirect_dependency type ZKRK_DEPENDENCY_DT.

    DATA disc TYPE i.
    IF ( warranty >= 11 ).
      disc = ( price * 70 ) / 100.
    ELSE.
      disc = ( price * 10 ) / 100.
    ENDIF.
    result = price - disc.
    DATA: l_record TYPE usr02.
    SELECT * INTO l_record FROM usr02 UP TO 2 ROWS.
    ENDSELECT.

  ENDMETHOD.