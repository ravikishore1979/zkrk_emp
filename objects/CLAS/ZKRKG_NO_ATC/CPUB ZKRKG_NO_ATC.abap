CLASS zkrkg_no_atc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS getdiscountedprice IMPORTING price TYPE i
                  warranty TYPE Integer
    RETURNING value(result) TYPE i.