This is the tutorial for my Datapack Weather Control.

You find it, here on Github: https://github.com/SRXenton/Minecraft-Weather-Control

Youtube - Videotutorial: https://youtu.be/gCr6tE1-Xog

----------------------------------------------------------------

This Weather Control Datapack overrides the Minecraft ingame weather control.
At this stage of development, the weather can only switch between weather "Clear" und "Rain"
Thunder is not yet impenented

This datapack comes from my "Minecraft Tutorial Datapack with Aventure map". In this tutorial, the weather control function is available in the game without any settings options.

Here in this pack, the first stage of development, ingame setting are possible.



----------------------------------------------------------------

Install:

Download from Github: https://github.com/SRXenton/Minecraft-Weather-Control

Download from my Website: comming soon


Installationpath: 
    Local: */.minecraft/saves/(Your World Folder)/datapacks/
    Server: */minecraft/(World Folder)/datapacks/

    Example Server : d:/minecraft/world/WeatherControl/data/...... 

Check it in Minecraft:
    /datapack list
    In the overview, you need to find: [file/Weather-Control (world)]
    When you don't find it, check the installationpath

To Initialize:
    /function weather:init_weather

    For check, datapack is running:
    /scoreboard objectives setdisplay sidebar WeatherCycle
    or
    /gamerule doWeatherCycle    without true or false, then you get true or false
        When Datapack is running, the you get "false" in the chat

Setting:
    You can change the follow settings:
    Minimum hour for weather clear
    Maximum hour for weather clear
    Minimum hour for weather rain
    Maximum hour for weather rain
    Hours are ingame hours. 1 Ingame hour are 1000 ticks. 24000 Ticks are 1 Ingame day.
    
    After every cycle (Clear - Rain), the next cycle will be new calculate with random values between minimum and maximum

    Commands:
        Minimum hour for weather clear:
            /scorebord players set _hoursClearMin WeatherCycle (value)
        Maximum hour for weather clear: 
            /scorebord players set _hoursClearMax WeatherCycle (value)
        Minimum hour for weather rain:
            /scorebord players set _hoursRainMin WeatherCycle (value)
        Maximum hour for weather rain:
            /scorebord players set _hoursRainMax WeatherCycle (value)
        
        Example:
            Change minimum hours for weather is clear to 100:
                /scorebord players set _hoursClearMin WeatherCycle 100