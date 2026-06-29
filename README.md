# Continuous Integration Project

**Name:Stefan Zube

## Projektbeschreibung

Das Projekt wurde im Rahmen der Lehrveranstaltung Softwarequalität erstellt. Ziel war es, eine einfache Continuous-Integration-Pipeline für ein gemischtes C- und Python-Projekt aufzubauen.
Der Fokus liegt auf automatisierten Builds, Unit-Tests und statischer Codeanalyse.

## Projektstruktur

.
├── c_app
│   ├── src
│   └── tests
├── py_app
│   ├── src
│   ├── requirements.txt
│   └── ...
├── .github
│   └── workflows
└── Makefile


## Make-Targets
| Befehl       | Beschreibung                                                                |
| ------------ | --------------------------------------------------------------------------- |
| `make build` | Baut die C-Anwendung mit GCC.                                               |
| `make test`  | Führt die C-Unit-Tests und die Python-Tests aus.                            |
| `make check` | Führt die statische Codeanalyse für C (GCC-Warnings) und Python (Ruff) aus. |
| `make clean` | Löscht die erzeugten Build-Dateien.                                         |

## Projekt lokal ausführen

Repository klonen:
    git clone <repository-url>
    cd CI_project_SQ

Python-Abhängigkeiten installieren:
    pip install -r py_app/requirements.txt

Projekt bauen:
    make build  

Tests ausführen:
    make test

Statische Codeanalyse ausführen:
    make check

## Continuous Integration

Bei jedem Push oder Pull Request wird automatisch eine GitHub Actions Pipeline gestartet.

Dabei werden:
* das C-Projekt gebaut,
* alle Unit-Tests ausgeführt,
* die statische Codeanalyse durchgeführt.

Dadurch wird sichergestellt, dass fehlerhafte Änderungen früh erkannt werden.
