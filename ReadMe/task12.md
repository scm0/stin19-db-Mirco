# EX12

## Aufgabenstellung:


DieFahrrad Müller GmbHvermietet Fahrräder. In ihrem Angebot finden sich verschiedene Typen wie zum  Beispiel Mountainbikes, Trekkingräder, Rennräderund E-Bikes.  Jede  Vermietung  erfasst  das Unternehmen in einer Software, die die Daten mit Hilfe einer relationalen Datenbank verwaltet.

*Beispiel:*

Am 11.08.2020schliesst Max Maier den Mietvertrag für ein Mountainbike und ein Trekkingrad. Es wird vereinbart, dass der Mietzeitraum am nächsten Tag beginnt und drei Tage dauert. Der Angestellte ruft über die Software eineListe aller Mountainbikes auf und ordnet dem Mietvertrag das Fahrrad mit der Kennung Cross#7zu. Anschliessend ruft er eine Liste aller Trekkingräderauf und ordnet dem Mietvertrag noch das Fahrrad mit der Kennung Mark#2zu.


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


![**ERD**](/image/ex12_Aufgabe3.JPG)


## Aufgabe4 Definition von Identifikationsschlüsseln:


ErgänzenSie das Entity Relationship Diagrammmit den Schlüsseln:


![**ERD**](/image/ex12_Aufgabe4.JPG)


## Aufgabe5 Globale Normalisierung:


Ergänzen Sie Ihr Entity-Relationship-Diagramm mit den Kardinalitäten:


![**ERD**](/image/ex12_Aufgabe5.JPG)

### Aufgabe5.2 Überführung eines ERM in ein Relationenmodell

![**ERD**](/image/ex12_Aufgabe5.2.JPG)

## Aufgabe6 Script:

Erstellen sie ein Script ex12:
[Script ex12](/Scripts/ex12.sql)


