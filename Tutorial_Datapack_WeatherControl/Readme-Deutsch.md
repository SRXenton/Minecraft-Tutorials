Dieses ist mein Tutorial zum Datapack Weather Control.

Zu finden hier auf Github: https://github.com/SRXenton/Minecraft-Weather-Control

Youtube - Videotutorial: comming soon

----------------------------------------------------------------

Diese Datapack überschreibt die Ingame Minecaft Wettersteuerung
In dieser Entwicklungstufe, wird das Wetter nur zwischen "Schönem" und "Regen" Wetter gewechselt
Wechsel auf "Gewitter" ist zur Zeit nicht möglich, aber in Entwicklung

Ich habe dieses Datapack aus meinem "Tutorial Datapack in einer Adventuremap" ausgekoppelt. In der ursprünglichen Version ist es es nicht möglich, Ingame Entstellungen nicht möglich.

Hier in der Stufe der Entwicklung ist es möglich, ingame Einstellungen zu tätigen, ohne Programmierkenntnisse in Datapack zu haben



----------------------------------------------------------------

Install:

Download von Github: https://github.com/SRXenton/Minecraft-Weather-Control

Download von meiner Website: comming soon


Installationpfad: 
    Local: */.minecraft/saves/(Worldordner)/datapacks/
    Server: */minecraft/(Worldordner)/datapacks/

    Beispiel Server : d:/minecraft/world/WeatherControl/data/...... 

Überprüfen in Minecraft:
    /datapack list
    In der Übersicht muss diese zu finden sein: [file/Weather-Control (world)]
    Wenn nicht, den Installationspfad prüfen

Zum Initializiren:
    /function weather:init_weather

    Überprüfen, ob das Pack läuft
    /scoreboard objectives setdisplay sidebar WeatherCycle
    oder
    /gamerule doWeatherCycle    Ohne true oder false
        Wenn das Datapack läuft, bekommt man "false" im Chat ausgegeben

Einstellungen:
    Folgende Einstellungen können vorgenommen werden:
    Minimum Stunden für Wetter "klar"
    Maximum Stunden für Wetter "klar"
    Minimum Stunden für Wetter "regen"
    Maximum Stunden für Wetter "regen"
    Mit Stunden sind ingame Stunden gemeint. 1 Ingame Stunde sind 1000 Ticks. 24000 Ticks sind 1 Ingame Tag.
    
    Nach jeder Periode (Klar - Regen), wird die nächste Periode durch Zufallszahlen, die zwischen den minimalen und maximalen Stunden liegt, berechnet

    Commands:
        Minimum Stunden für Wetter "Klar":
            /scorebord players set _hoursClearMin WeatherCycle (value)
        Maximum Stunden für Wetter "Klar": 
            /scorebord players set _hoursClearMax WeatherCycle (value)
        Minimum Stunden für Wetter "Regen":
            /scorebord players set _hoursRainMin WeatherCycle (value)
        Maximum Stunden für Wetter "Regen": 
            /scorebord players set _hoursRainMax WeatherCycle (value)
        
        Beispiel:
            Ändert den Wert für Stunden Wetter "Klar" Minimum auf 100:
                /scorebord players set _hoursClearMin WeatherCycle 100

                