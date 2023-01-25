class ZKRKG_DISCOUNT_CALC definition
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS getdiscountedprice IMPORTING price TYPE i
                  warranty TYPE Integer
    RETURNING value(result) TYPE i.