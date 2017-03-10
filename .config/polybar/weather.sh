#!/bin/python

import urllib.request, json

city = "Vologda"
api_key = "70f61f3bdf754f840006e26a969b7e83" 

weather = eval(str(urllib.request.urlopen("http://api.openweathermap.org/data/2.5/weather?q={}&APPID={}".format(city, api_key)).read())[2:-1])

info = weather["weather"][0]["description"].capitalize()
temp = int(float(weather["main"]["temp"]) - 272.15)
icon = {
    '03n': '',
    '01d': '',
    '02n': '',
    '02d': '',
    '03n': '',
    '03d': '',
    '04n': '',
    '04d': '',
    '09n': '',
    '09d': '',
    '10n': '',
    '10d': '',
    '11n': '',
    '11d': '',
    '13n': '',
    '13d': '',
    '50n': '',
    '50d': ''
}.get(weather["weather"][0]["icon"], 0)

print("%s %s, %i °C" % (icon, info, temp))