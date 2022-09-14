#!/bin/bash

url="https://kepler-beta.itu.edu.tr/api/TaslakKontrolAPI/v1/" # use this url while you are testing

# url="https://kepler-beta.itu.edu.tr/api/ders-kayit/v21/"     # uncomment this line when you are ready

# get this token from course enrollment page as shown in the screenshot and paste it here
token="Authorization: Bearer eyJhbGciO..." 

# write the crn numbers of the lectures you want to take. crn's should be separated by space.
crn_list=("20034" "20289") 

# Done! Now you can run and test the script. 
# It should return a JSON response if you made everything correct.


json_array() {
  echo -n '['
  while [ $# -gt 0 ]; do
    x=${1//\\/\\\\}
    echo -n \"${x//\"/\\\"}\"
    [ $# -gt 1 ] && echo -n ', '
    shift
  done
  echo ']'
}

arr=`json_array "${crn_list[@]}"`

curl -H "$token" -H "Content-Type: application/json" \
  --request POST --data-raw "{\"ECRN\": $arr, \"SCRN\":[]}"\
  $url | json_pp
