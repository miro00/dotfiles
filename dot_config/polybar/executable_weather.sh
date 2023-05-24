#!/usr/bin/env sh

lat=55.119310
lon=61.462489
key="key"

curl -s -L -X GET "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&lang=ru&appid=$key" | jq ".main.temp" | xargs printf "%.0f\n" "$@"
