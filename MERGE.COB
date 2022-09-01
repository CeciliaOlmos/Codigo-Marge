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
           SELECT socios1 assign to nom-arch1
                ORGANIZATION is line sequential.
           SELECT socios2 assign to nom-arch2
                ORGANIZATION is line sequential.
           SELECT socios3 assign to nom-arch3
                ORGANIZATION is line sequential.
           SELECT arch-sort ASSIGN to "sortwork".
           SELECT socios-act ASSIGN TO "..\SOC-ACT.txt".
       DATA DIVISION.
       FILE SECTION.
       fd  socios1.
       01  soc1-reg pic x(34).

       fd  socios2.
       01  soc2-reg pic x(34).

       fd  socios3.
       01  soc3-reg pic x(34).

       fd  socios-act.
       01  socios-act-reg pic x(34).

       SD  arch-sort.
       01  SRT-REG.
           03 SRT-nro  pic 9999.
           03 SRT-nom  pic x(20).
           03 SRT-SALDO PIC S9(8)V99.

       WORKING-STORAGE SECTION.
       01  nom-arch1 pic x(20) value "..\socio1.dat".
       01  nom-arch2 pic x(20) value "..\socio2.dat".
       01  nom-arch3 pic x(20) value "..\socio3.dat".

       01  flag    pic 9   value zero.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MERGE ARCH-SORT ASCENDING KEY SRT-nom
           USING SOCIOS1 SOCIOS2 SOCIOS3 GIVING SOCIOS-ACT
       STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
