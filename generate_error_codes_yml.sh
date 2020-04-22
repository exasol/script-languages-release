#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

find_error_codes_in_yaml(){
  if [ -f "error_codes.yml" ]
  then
      cat error_codes.yml \
        | yq --raw-output .[].error_code \
        | tr "\n" "|" \
        | sed "s/|$//g"
  fi
}

find_new_error_codes(){
  if [ -n "$error_codes_in_yaml" ]
  then
      delete_pattern="/$error_codes_in_yaml/d"
      echo $all_error_codes \
        | tr " " "\n" \
        | tr "|" " " \
        | awk '{print $0 " " $2 "-" $3 "-" $4}' \
        | sed -E "$delete_pattern" \
        | cut -f 1,2,3,4 -d " " \
        | sed "s/\s/|/g"
  else
    echo $all_error_codes
  fi
}

all_error_codes=$(bash find_error_codes.sh | sed "s/\s/|/g")
error_codes_in_yaml=$(find_error_codes_in_yaml)
new_error_codes=$(find_new_error_codes)

awkcommand='
function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s) { return rtrim(ltrim(s)); }
{
  file=$1
  line=$2
  error_code=$3 "-" $4 "-" $5
  level=""
  if($3=="F") {
      level="Fatal"
  } else if($3=="E") {
      level="Error"
  } else if($3=="W") {
      level="Warning"
  } else {
      exit 1
  }
  module=$4
  window=1
  min=$2-window
  if (min<1){
    min=1
  }
  cmd="sed -n " min "," $2+window "p " $1
  cmdout=""
  while( (cmd | getline cmdoutline) > 0 ){
      cmdout=cmdout " " trim(cmdoutline)
  }
  close(cmd)
  gsub(/["\\]/,"",cmdout)
  cmd="echo \"" cmdout "\" | md5sum | cut -f 1 -d \" \""
  cmd | getline hash
  close(cmd)
  print "- \"error_code\": \"" error_code "\""
  print "  \"module\": \"" module "\""
  print "  \"hash\": \"" hash "\""
  print "  \"level\": \"" level "\""
  print "  \"file\": \"" file "\"" 
  print "  \"line\": \"" line "\"" 
  print "  \"versions\":" 
  print "  - \"7.0 alpha 2\""
  print "  \"deprecated:\": \"false\"" 
  print "  \"description\":"
  print "  - \"" trim(cmdout) "\""
  print "  - \"\""
  print "  \"recommandations\":"
  print "  - \"\""
}
'

echo $new_error_codes \
  | tr " " "\n" \
  | tr "|" " " \
  | tr ":" " " \
  | awk "$awkcommand" \
#  | xargs -n 1 -I {} echo "bash -c '{}'"
