# Setze die Spielregel doWeatherCycle auf AUS
gamerule advance_weather false

# Entferne das Scoreboard
scoreboard objectives remove WeatherCycle
# Füge ein manuelles Scoreboard hinzu
scoreboard objectives add WeatherCycle dummy

# Setze die Fake Spieler _nextWeatherClear in dem Scoreboard WeatherCycle auf den Wert 0
scoreboard players set _nextWeatherClear WeatherCycle 0
# Setze die Fake Spieler _nextWeatherRain in dem Scoreboard WeatherCycle auf den Wert 0
scoreboard players set _nextWeatherRain WeatherCycle 0
# Setze die Fake Spieler _isSwitch in dem Scoreboard WeatherCycle auf den Wert 0
scoreboard players set _isSwitch WeatherCycle 0
