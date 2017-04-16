#!/bin/bash
api="def0446eef3c70e4f538d056fda0fdb1"
city="5206379"
unit="imperial" #(default,metric,imperial)

curl -s "api.openweathermap.org/data/2.5/forecast/daily?APPID=${api}&id=${city}&cnt=5&units=${unit}&lang=en" > ~/.cache/forecast.json

$high=$(jq -r .list[0].temp.max ~/.cache/forecast.json | awk '{print int($1+0.5)}')

echo "(${temp}"°F"
