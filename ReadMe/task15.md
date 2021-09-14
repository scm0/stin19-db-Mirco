# EX15

## Aufgabenstellung:

Es soll das folgende Schema erstellt werden. 

![**ERM Aufgabe 3**](/image/ex15_Aufgabenstellung.JPG)


Mit den Werten:

    person (pnr, name, vorname, fnr, lohnstufe)
    funktion (fnr, funktion)
    kurs (knr, kursbezeichnung, ktnr, kursort)
    kursthemen (ktnr, themengebiet)
    kursleiter (klnr, status)
    externe_kursleiter (klnr, ename, evorname, firma)
    interne_kursleiter (klnr, pnr, kurserfahrung)
    kursbesuche (pnr, knr, klnr, datum)
    kurskontrolle (fnr, knr)

## Aufgabe2 Daten in die Datenbank einfügen:

Mit den vorgegebenen Werten, werden die Tabellen befüllt.

## Aufgabe3 Abfrage besuchte Kurse einer Person:

View all_courses

![**all_courses_view**](/image/ex15_all_courses_view.JPG)

## Aufgabe4 Erstellen eines ERD's

![**ERD**](/image/ex15_Aufgabe4.JPG)

Script: [Script ex15](/Scripts/ex15.sql)