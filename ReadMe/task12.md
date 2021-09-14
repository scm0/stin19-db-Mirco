# EX12

## Aufgabenstellung:


Die Fahrrad Müller GmbH vermietet Fahrräder. In ihrem Angebot finden sich verschiedene Typen wie zum  Beispiel Mountainbikes, Trekkingräder, Rennräder und E-Bikes.  Jede  Vermietung  erfasst  das Unternehmen in einer Software, die die Daten mit Hilfe einer relationalen Datenbank verwaltet.

*Beispiel:*

Am 11.08.2020 schliesst Max Maier den Mietvertrag für ein Mountainbike und ein Trekkingrad ab. Es wird vereinbart, dass der Mietzeitraum am nächsten Tag beginnt und drei Tage dauert. Der Angestellte ruft über die Software eine Liste aller Mountainbikes auf und ordnet dem Mietvertrag das Fahrrad mit der Kennung Cross#7 zu. Anschliessend ruft er eine Liste aller Trekkingräderauf und ordnet dem Mietvertrag noch das Fahrrad mit der Kennung Mark#2zu.


## Aufgabe2 Bildung von Entitätsmengen:


Welche Informationsobjekte (Personen, Sachen, Vorgänge, ...) spielen in dem Geschäftsvorfall eine Rolle?

- Fahrrad
    - Typ
    - Kennung
- Kunde
    - Vorname
    - Name
- Mietvertrag
    - Mietbeginn
    - Mietdauer
    - Abschlussdatum
    - Kunde


##  Aufgabe3 Festlegen der Beziehungen:


Erstellen Sie das Entity Relationship Diagramm:


![**ERM Aufgabe 3**](/image/ex12_Aufgabe3.JPG)


## Aufgbe4 Definition von Identifikationsschlüsseln:


ErgänzenSie das Entity Relationship Diagram mit den Schlüsseln:


![**ERM Aufgabe 4**](/image/ex12_Aufgabe4.JPG)


## Aufgabe5 Globale Normalisierung:


Ergänzen Sie Ihr Entity-Relationship-Diagramm mit den Kardinalitäten:


![ERM Aufgabe 5](/image/ex12_Aufgabe5.JPG)

### Aufgabe5.2 Überführung eines ERM in ein Relationenmodell

Relationsmodel:

![ERM Aufgabe 5.2](/image/ex12_relationenmodel.JPG)


Die Entität Fahradtyp wurde hinzugefügt.


![ERM Aufgabe 5.2.1](/image/ex12_Aufgabe5.2.JPG)

## Aufgabe6 Script:

Erstellen sie ein Script ex12:
[Script ex12](/Scripts/ex12.sql)


