      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT socios assign to nom-arch
                ORGANIZATION is line sequential.
       DATA DIVISION.
       FILE SECTION.
       fd  socios.
       01  soc-reg.
           03 soc-nro  pic 9(4).
           03 soc-nom  pic x(15).
           03 soc-saldo pic s9(8)v99.
       WORKING-STORAGE SECTION.
       01  nom-arch pic x(20) value "..\socio.dat".
       01  flag    pic 9   value zero.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           open input socios.
           read socios at end move 1 to flag.
           perform until flag = 1
               display soc-nro, soc-nom, soc-saldo
               read socios at end move 1 to flag
           END-PERFORM.
           close socios.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
