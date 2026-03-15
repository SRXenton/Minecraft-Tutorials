# Führe aus, wenn der Wert beim Fake Spieler _nextWeatherRain im Scoreboard WeatherCycle >= 1:
# Reduziere bei dem Fake Spieler _nextWeatherRain im Scoreboard WeatherCycle um 1
execute if score _nextWeatherRain WeatherCycle matches 1.. run scoreboard players remove _nextWeatherRain WeatherCycle 1
# Führe aus, wenn der Wert beim Fake Spieler _nextWeatherRain im Scoreboard WeatherCycle >= 1
# und wenn der Wert beim Fake Spieler _nextWeatherRain im Scoreboard WeatherCycle = 0:
# Reduziere bei dem Fake Spieler _nextWeatherClear im Scoreboard WeatherCycle um 1
execute if score _nextWeatherClear WeatherCycle matches 1.. if score _nextWeatherRain WeatherCycle matches 0 run scoreboard players remove _nextWeatherClear WeatherCycle 1


# Führe aus, wenn der Wert beim Fake Spieler _nextWeatherRain im Scoreboard WeatherCycle = 0
# und wenn der Wert beim Fake Spieler _isSwitch im Scoreboard WeatherCycle = 0:
# Rufe auf die Function to_rain
execute if score _nextWeatherRain WeatherCycle matches 0 if score _isSwitch WeatherCycle matches 0 run function weather:to_rain
# Führe aus, wenn der Wert beim Fake Spieler _nextWeatherRain im Scoreboard WeatherCycle = 0
# und wenn der Wert beim Fake Spieler _isSwitch im Scoreboard WeatherCycle = 1:
# Rufe auf die Function to_clear
execute if score _nextWeatherClear WeatherCycle matches 0 if score _isSwitch WeatherCycle matches 1 run function weather:to_clear


# Führe aus, wenn der Wert beim Fake Spieler _nextWeatherRain im Scoreboard WeatherCycle = 0
# und wenn der Wert beim Fake Spieler _nextWeatherRain im Scoreboard WeatherCycle = 0:
# Rufe auf die Function set_random
execute if score _nextWeatherClear WeatherCycle matches 0 if score _nextWeatherRain WeatherCycle matches 0 run function weather:set_random
