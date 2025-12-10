scoreboard objectives remove Currency_Total
scoreboard objectives remove Currency_Taler
scoreboard objectives remove Currency_Groschen

scoreboard objectives add Currency_Total dummy
scoreboard objectives add Currency_Taler dummy
scoreboard objectives add Currency_Groschen dummy

scoreboard players set _100 Currency_Taler 100
scoreboard players set _100 Currency_Groschen 100