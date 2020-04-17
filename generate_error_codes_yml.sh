#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

# Usage
# show_code_arround_error_codes.sh <regex-pattern1> <regex-pattern2>
# pattern filter line of <filename>:<linenumber>|<error-code>
# multiple pattern get merged with | to an or construction

error_codes=$(bash find_error_codes.sh | awk '{print $1 "|" $2 "-" $3 "-" $4}')

awkcommand='
function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s) { return rtrim(ltrim(s)); }
{
  file=$1
  line=$2
  code=$3
  cmd="sed -n " $2 "p " $1
  cmd | getline cmdout
  close(cmd)
  print "- \"" code "\":"
  print "  \"file\": \"" file "\"" 
  print "  \"line\": \"" line "\"" 
  print "  \"description\":"
  print "  - \"" trim(cmdout) "\""
  print "  - \"\""
  print "  \"recommandations\":"
  print "  - \"\""
}
'

echo $error_codes \
  | tr " " "\n" \
  | tr "|" " " \
  | tr ":" " " \
  | awk "$awkcommand" \
#  | xargs -n 1 -I {} echo "bash -c '{}'"
