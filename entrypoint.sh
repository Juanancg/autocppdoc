#!/bin/bash

# Ejecutar hpp2plantuml usando la plantilla template.puml
hpp2plantuml -i "$INPUT_DIR/**/*.h*" -o /usr/output/outputh.puml -t /usr/src/app/template.puml
