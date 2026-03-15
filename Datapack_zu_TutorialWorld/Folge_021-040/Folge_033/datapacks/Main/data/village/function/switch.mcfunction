# Wird im Commandblock unterhalb des Dorfes ausgeführt
# Beispielaufruf sieht wie folgt aus: function village:switch {x:1726,y:69,z:241,d1:73,d2:120,max_villager:60,max_iron_golem:7}


# Rufe die Function mit den Macrowerten auf
$function village:villager_protect/function/check {x:$(x),y:$(y),z:$(z),d1:$(d1),d2:$(d2)}
#Führe aus, wenn Scoreboard Wert dem Wert 6 entspricht, dann die Function mit den Macrowerten
$execute if score _counter_0_to_20 Global_Variables matches 6 run function village:size/runner {d:$(d1),max_villager:$(max_villager),max_iron_golem:$(max_iron_golem)}
