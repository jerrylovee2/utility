#!/bin/bash
if [ "$1" == "" ]
then
        echo "Usage: $0 ip"
        exit
fi
res=$(curl http://ip-api.com/json/$1 -s)
#echo $res
status=$(echo $res | jq '.status' -r)
if [ "$status" == "success" ]
then
        city=$(echo $res | jq '.city' -r)
        echo "CITY: $city"
        country=$(echo $res | jq '.country' -r)
        echo "Country Name: $country"
        countrycode=$(echo $res | jq '.countryCode' -r)
        echo "Country Code: $coutrycode"
        region=$(echo $res | jq '.region' -r)
        echo "Region: $region"
        regionName=$(echo $res | jq '.regionName' -r)
        echo "Region: $regionName"
        zip=$(echo $res | jq '.zip' -r)
        echo "Zip: $zip"
        timezone=$(echo $res | jq '.timezone' -r)
        echo "Timezone: $timezone"
        isp=$(echo $res | jq '.isp' -r)
        echo "ISP provider: $isp"
        lon=$(echo $res | jq '.lon' -r)
        echo "Longitude: $lon"
        lat=$(echo $res | jq '.lat' -r)
        echo "Latitude: $lat"
        org=$(echo $res | jq '.org' -r)
        echo "Organization: $org"

        
fi
