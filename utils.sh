#!/bin/bash

# We search the path where utils.sh is allocated
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
NAME_IMAGE="hpp2umldocker"

function build_dev_image() {
    docker build -t ${NAME_IMAGE} "${DIR}"
}

function generate_uml() {
    # Parámetros de entrada: directorio de entrada y salida opcional
    local input_path="$1"
    local output_path="${2:-$(pwd)}" # Si no se especifica salida, será el directorio actual

    # Verificamos que se ha proporcionado el directorio de entrada
    if [[ -z "$input_path" ]]; then
        echo "Error: Debes proporcionar el directorio de entrada como primer argumento."
        return 1
    fi

    docker run -v "${input_path}:/usr/src/app/src" -v "${output_path}:/usr/output" -e INPUT_DIR="src/" ${NAME_IMAGE}
}
