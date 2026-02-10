# Führe aus, speichere das Ergebnis beim Fake Spieler _nextWeatherRain im Scoreboard, aus dem Command Zufallszahl zwischen >= 120000 und <= 192000
execute store result score _nextWeatherRain WeatherCycle run random value 120000..192000
# Führe aus, speichere das Ergebnis beim Fake Spieler _nextWeatherClear im Scoreboard, aus dem Command Zufallszahl zwischen >= 1000 und <= 6000
execute store result score _nextWeatherClear WeatherCycle run random value 1000..6000