### Beispielrechnungen

## Startwerte:
# Wert1 = 0
# Wert2 = 123

## Modulo:
# Vorher:       0 = 123
# Operation:    Wert1 = Wert2 
# Nachher:      123 = 123
# Operation:    Wert1 %= _100
# Berechnung:   123 / 100 -> 1 Rest 23
# Nachher:      23
# Begründung: Die "1" wird ignoriert und die 23 in Wert 1 geschrieben

## Teilen:
# Vorher:       0 = 123
# Operation:    Wert1 = Wert2
# Nachher:      123 = 123
# Operation:    Wert1 /= _100 
# Berechnung:   123 / 100 -> 1.23
# Nachher:      1
# Begründung: Die 0.23 werden ignoriert und die 1 in Wert1 geschrieben, da Scoreboard Werde nur Integer speichern können

## Die Commands:
# Füge alle Spieler von Scoreboard Currency_Total in Currency_Taler ein
scoreboard players operation @a Currency_Taler = @a Currency_Total

# Füge alle Spieler von Scoreboard Currency_Total in Currency_Groschen ein
scoreboard players operation @a Currency_Groschen = @a Currency_Total

# Berechen den Modulo 100 bei allen Spielern in Scoreboard Currency_Groschen
scoreboard players operation @a Currency_Groschen %= _100 Currency_Groschen

# Berechen bei allen Spielern den Teiler 100 in Scoreboard Currency_Taler
scoreboard players operation @a Currency_Taler /= _100 Currency_Taler