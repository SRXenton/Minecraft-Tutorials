### Wird aufgerufen aus: manuell

# Entferne Scorebord
# scoreboard objectives remove Villager_Klick_Dorf1
# Füge hinzu das Scoreboard mit der Automatischen Erkennung talked_to_villager
scoreboard objectives add Villager_Klick_Dorf1 minecraft.custom:talked_to_villager


# Entferne Scorebord
# scoreboard objectives remove Quest_Dorfvorsteher
# Füge hinzu das manuelle Scoreboard
scoreboard objectives add Quest_Dorfvorsteher trigger


scoreboard objectives add Quest.Panda_Village.Waechter trigger

# Debug
#scoreboard objectives setdisplay sidebar Quest_Dorfvorsteher