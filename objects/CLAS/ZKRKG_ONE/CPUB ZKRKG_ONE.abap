CLASS zkrkg_one DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS executeWith IMPORTING price TYPE i
                  warranty TYPE Integer
    RETURNING value(result) TYPE i.