#
# Wert1 = 0
# Wert2 = 123
#
# 0 = 123
# Wert1 Sc1 = Wert2 Sc1
# 123 = 123
#
# Wert1 Sc1 %= _100 Sc1
# 123 / 100 -> 1 Rest 23
# 23

# 0 = 123
# Wert1 Sc1 = Wert2 Sc1
# 123 = 123
#
# Wert1 Sc1 /= _100 Sc1
# 123 / 100 -> 1
# 23


scoreboard players operation @a Currency_Taler = @a Currency_Total
scoreboard players operation @a Currency_Groschen = @a Currency_Total

scoreboard players operation @a Currency_Groschen %= _100 Currency_Groschen
scoreboard players operation @a Currency_Taler /= _100 Currency_Taler