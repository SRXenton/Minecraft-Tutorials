# Wird im Commandblock unterhalb des Dorfes ausgeführt

# Rufe die Function mit den Macrowerten auf
$function village:villager_protect/function/check {x:$(x),y:$(y),z:$(z),d1:$(d1),d2:$(d2)}
#Führe aus, wenn Scoreboard Wert dem Wert 6 entspricht, dann die Function mit den Macrowerten
$execute if score _counter_0_to_20 Global_Variables matches 6 run function village:size/runner {d:$(d1),max:$(max)}

