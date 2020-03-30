#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

error_codes=$(bash find_error_codes.sh | tr "\t" "|")
highest_error_codes_per_module=$(bash find_highest_error_codes_per_module.sh)

for highest_error_code_for_module in $highest_error_codes_per_module
do
  module=$(echo $highest_error_code_for_module | cut -f 1 -d ",")
  echo Module: $module
  error_codes_for_module=$(echo $error_codes | tr " " "\n" | grep "$module")
  # Reorder error numbers
  # echo $error_codes_for_module \
  #   | tr " " "\n" \
  #   | tr "|" " " \
  #   | tr ":" " " \
  #   | tr "-" " " \
  #   | sort -k1,1r -k2,2n \
  #   | awk 'BEGIN{ line=1000 } { printf("%s %s\n", $0, line) ; line++}' \
  #   | awk '{print $1 " "  $3 "-" $4 "-" $5 " " $3 "-" $4 "-" $6}' \
  #   | awk '{printf("s/%s([^0-9])/%s\\1/g %s\n",$2,$3,$1)}' \
  #   | awk '{print "sed -i -E -e ,,,," $1 ",,,, " $2 }' \
  #   | sed 's/,,,,/"/g' > tmp_replace_error_codes.sh
  # bash tmp_replace_error_codes.sh
  # echo $error_codes_for_module | tr " " "\n" | tr "|" " " | tr ":" " " | tr "-" " " | cut -f 1 -d " " | sort | uniq | xargs -n 1 -I {} sed -i -e "s/UDF\\.CL\\.L/UDF.CL.LIB/g" -e "s/UDF\\.CL\\.R/UDF.CL.SL.R/g" -e "s/UDF\\.CL\\.J/UDF.CL.SL.JAVA/g"  -e "s/UDF\\.CL\\.PY/UDF.CL.SL.PYTHON/g" {}
done
