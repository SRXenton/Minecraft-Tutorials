execute as @a[scores={Detect_RClick_Wallet=1..},nbt={SelectedItem:{"id":"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{"tag":"geldbeutel"}}}}] run \
tellraw @s \
[\
	{ "text":"\n" },\
	{ "bold":true,"color":"gold","text":"Geldbeutel:"},\
	{ "text":"\n" },\
	{ "color":"gold","bold":false,"text":"Taler: "},\
	{ "bold":false,"color":"yellow","score":{"name":"@s","objective":"Currency_Taler"}},\
	{ "text":"\n" },\
	{ "bold":false,"color":"gold","text":"Groschen: "},\
    { "bold":false,"color":"yellow","score":{"name":"@s","objective":"Currency_Groschen"}},\
	{ "text":"\n" }\
]

scoreboard players set @a Detect_RClick_Wallet 0