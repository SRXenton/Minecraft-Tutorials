# Führe aus, wenn der nächste Spieler, und wenn der Scoreboardwert bei Fake_Entity = 2, speichere das Ergebnis ins Scoreboard, bei Forceload an den Koordinaten
execute if entity @p if score _counter_0_to_20 Global_Variables matches 2 store result score _isForcelodedChunk Global_Variables run forceload query 1576 -168

#Führe aus, wenn nicht im Scoreboard bei Fake_Entity = 1, Forceload addiere den Chunk an den Koordinaten
execute unless score _isForcelodedChunk Global_Variables matches 1 run forceload add 1576 -168