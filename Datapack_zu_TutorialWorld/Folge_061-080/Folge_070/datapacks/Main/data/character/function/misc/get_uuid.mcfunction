### Wird aufgerufen aus: detect_itm.mcfunction

$data modify storage main_charakter:player data.for_dialog_temp set from storage main_charakter:player data."$(UUID)"


#execute store result storage main_charakter:player data.for_dialog_temp.staerke int 1 run data get storage main_charakter:player data.for_dialog_temp.staerke

function character:misc/character_values_cut {value:"beweglichkeit"}
function character:misc/character_values_cut {value:"staerke"}
function character:misc/character_values_cut {value:"ausdauer"}
function character:misc/character_values_cut {value:"intelligenz"}


function character:dialogs/character_overview with storage main_charakter:player data.for_dialog_temp
