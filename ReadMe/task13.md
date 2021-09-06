# EX13

## Aufgabenstellung:

Die FirmaAtlanta GmbHhat einen Fuhrpark von Firmenwägen, die von Mitarbeitern für berufliche Zwecke genutzt werden können. Das Unternehmen möchte die Verwaltung des Fuhrparks, die bislang ausschliesslich in Papierform erfolgt, auf eine IT-gestützte Lösung umstellen.

- Reservierung:

    Die FirmaAtlanta GmbHhat einen Fuhrpark von Firmenwägen, die von Mitarbeitern für berufliche Zwecke genutzt werden können. Das Unternehmen möchte die Verwaltung des Fuhrparks, die bislang ausschliesslich in Papierform erfolgt, auf eine IT-gestützte Lösung umstellen.

- Instandhaltung:

    Bei Reparaturen beziehungsweise Wartungsarbeiten an Fahrzeugen sollen Datum, Kilometerstand, Kosten sowie eine kurze Beschreibung in der Datenbank festgehalten werden.

- Versicherung:

    Als zusätzliche Anforderung sollen auch einige Daten der Kfz-Versicherungen der Fahrzeuge in die Datenbank integriert werden.Verlangt  werden  jeweils  folgende  Informationen:  die  Versicherungsnummer,  ob zusätzlich   zur   Haftpflichtversicherung   eine   Vollkasko   bzw.   Teilkasko abgeschlossen  wurde,  die  Höhe  des  jährlichen  Beitrags  sowie  die  jeweilige Versicherungsgesellschaft, inklusive Postanschrift und Telefonnummer. Es soll auch möglich sein, die Kontaktdaten einer Versicherungsgesellschaft zu erfassen,  mit  der  bisher  noch  kein  Kfz-Versicherungsvertrag  abgeschlossen worden ist. Es reicht aus, wenn für jeden Firmenwagen jeweils der aktuelle Vertrag gespeichert werden kann. Eine Historie wird nicht verlangt.

## Aufgabe2 Bildung von Entitätsmengen:

Welche Informationsobjekte (Personen, Sachen, Vorgänge, ...) spielen in dem Geschäftsvorfall eine Rolle? Welche Daten stehen zu diesen Informationsobjekten zur Verfügung?

- Firmenwagen
    - Kennzeichen
    - Anschaffungsdatum
    - Anschaffungskosten


- Fahrzeugmodel
    - Hersteller
    - Model
    - Kraftstoff
    - Verbrauch


- Mitarbeiter
    - Name
    - Vorname
    - Personalnr.



- Reservierung
    - Beginn
    - Ende
    - Zweck


- Instandhaltung
    - Datum
    - Kilometerstand
    - Kosten
    - Beschreibung


- Versicherung Vertrag
    - Versicherungsnr.
    - Volkasko oder Teilkasko
    - Jahreskosten


- Versicherungsgeselschaft
    - Gesellschaft Name
    - Strasse
    - Ort
    - Land
    - Telefonnr.


## Aufgabe3 Entity Relationship Diagramm:

Erstellen Sie das Entity Relationship Diagrammmit Beziehungstypen und ID-Schlüsseln

![**ERM**](/image/ex13_Aufgabe3.JPG)

## Aufgabe4 Relationen und Lokalattribute:

Erstellen Sie die Relation

![**ERD**](/image/ex13_Aufgabe4.JPG)

## Aufgabe5 Datenbank

Erstellen Sie die Datenbank und befüllen diese mit sinnvollen Daten.
[Script ex13](/Scripts/ex13.sql)

***VIEWS***

**reservierungsview:**

![**reservierungsview**](/image/ex13_reservierungsview.JPG)

**instandhaltungsview:**

![**reservierungsview**](/image/ex13_instandhaltungsview.JPG)

**versicherungsview:**

![**reservierungsview**](/image/ex13_versiecherungsview.JPG)