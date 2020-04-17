#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

error_codes=$(bash find_error_codes.sh | tr "\t" ";")
highest_error_codes_per_module=$(bash find_highest_error_codes_per_module.sh  | tr "\t" ";")

for highest_error_code_for_module in $highest_error_codes_per_module
do
  module=$(echo $highest_error_code_for_module | cut -f 1 -d ";")
  echo Module: $module
  error_codes_for_module=$(echo $error_codes | tr " " "\n" | grep "$module")
  # Change module format
  echo $error_codes_for_module \
    | tr " " "\n" \
    | tr ";" " " \
    | tr ":" " " \
    | cut -f 1,3,4,5 -d " " \
    | awk '{print $1 " " $2 "-" $3 "-" $4 " " $2 "-" $3 "-" $4}' \
    | awk '{printf("s/%s/%s/g %s\n",$2,$3,$1)}' \
    | awk '{print "sed -i -E -e ,,,," $1 ",,,, " $2 }' \
    | sed 's/,,,,/"/g' #\
    # | tr "\n" "\0" \
    # | xargs -0 -n 1 -I {} bash -c '{}'

  # Reorder error numbers
  echo $error_codes_for_module \
    | tr " " "\n" \
    | tr ";" " " \
    | tr ":" " " \
    | sort -k1,1r -k2,2n \
    | awk 'BEGIN{ line=1000 } { printf("%s %s\n", $0, line) ; line++}' \
    | awk '{print $1 " "  $3 "-" $4 "-" $5 " " $3 "-" $4 "-" $6}' \
    | awk '{printf("s/%s/%s/g %s\n",$2,$3,$1)}' \
    | awk '{print "sed -i -E -e ,,,," $1 ",,,, " $2 }' \
    | sed 's/,,,,/"/g' #\
    # | tr "\n" "\0" \
    # | xargs -0 -n 1 -I {} bash -c '{}'
done
