#!/bin/bash

set -euo pipefail

template_flavor_name=$1
new_flavor_name=$2

templates_directories=($(find triggers/flavor-config -type d | tail -n +2))
for path in "${templates_directories[@]}"
do
  sed "s/$template_flavor_name/$new_flavor_name/g" $path/$template_flavor_name.yaml > $path/$new_flavor_name.yaml
done
