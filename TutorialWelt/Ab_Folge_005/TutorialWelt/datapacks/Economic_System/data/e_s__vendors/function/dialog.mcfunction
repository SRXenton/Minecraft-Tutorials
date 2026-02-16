# tellraw @s "Geklickt"

scoreboard players enable @s E_S.Vendor_Panda_Village_reset

scoreboard players enable @s E_S.Vendor_Panda_Village_buy_apple
scoreboard players enable @s E_S.Vendor_Panda_Village_sell_rotten_flesh



$dialog show @s {\
  "type": "minecraft:dialog_list",\
  "title": "Farmer - Händler",\
  "body": [],\
  "inputs": [],\
  "can_close_with_escape": true,\
  "pause": false,\
  "after_action": "close",\
  "exit_action": {\
    "label": "Schließen",\
    "action": {\
			"type": "minecraft:run_command",\
			"command": "trigger E_S.Vendor_Panda_Village_reset set 1"\
		}\
  },\
  "columns": 2,\
  "dialogs": [\
    {\
      "type": "minecraft:dialog_list",\
      "title": "Ankauf",\
      "external_title": "Verkauf an den Händler",\
      "can_close_with_escape": true,\
      "pause": false,\
      "exit_action": {\
        "label": "Schließen",\
		    "action": {\
    				"type": "minecraft:run_command",\
    				"command": "trigger E_S.Vendor_Panda_Village_reset set 1"\
 				}\
      },\
      "dialogs": [\
        {\
          "type": "minecraft:confirmation",\
          "title": "Verrottetes Fleisch",\
  				"body": [\
    				{\
      				"type": "minecraft:item",\
      				"item": {\
	        			"id": "minecraft:rotten_flesh"\
  	    			},\
    				},\
    				{\
      				"type": "minecraft:plain_message",\
              "contents": "An den Händler für $(price_sell) Credits pro Stück verkaufen"\
    				}\
  				],\
  				"inputs": [\
    				{\
      				"type": "minecraft:number_range",\
	      			"key": "sell1",\
  	    			"label": "Verkaufe",\
    	  			"start": 0,\
      				"end": $(max_sell),\
      				"step": 1,\
      				"initial": 0\
	    			}\
  				],\
          "yes": {\
            "label": "Verkaufen",\
				    "action": {\
      				"type": "minecraft:dynamic/run_command",\
      				"template": "trigger E_S.Vendor_Panda_Village_sell_rotten_flesh set \u0024(sell1)"\
    				}\
          },\
          "no": {\
            "label": "Schließen ohne Verkauf",\
				    "action": {\
      				"type": "minecraft:run_command",\
      				"command": "trigger E_S.Vendor_Panda_Village_reset set 1"\
    				}\
          }\
        }\
      ]\
    },\
    {\
      "type": "minecraft:dialog_list",\
      "title": "Verkauf",\
      "external_title": "Vom Händler kaufen",\
      "body": [],\
      "can_close_with_escape": true,\
      "pause": false,\
      "exit_action": {\
        "label": "Schließen",\
		    "action": {\
    				"type": "minecraft:run_command",\
    				"command": "trigger E_S.Vendor_Panda_Village_reset set 1"\
 				}\
      },\
      "dialogs": [\
				{\
  				"type": "minecraft:confirmation",\
  				"title": "Kauf / Verkaufen von X",\
  				"body": [\
    				{\
      				"type": "minecraft:item",\
      				"item": {\
	        			"id": "minecraft:apple"\
  	    			},\
    				},\
    				{\
      				"type": "minecraft:plain_message",\
      				"contents": "Kaufe für x Credits pro stück vom Händler"\
    				}\
  				],\
  				"inputs": [\
    				{\
      				"type": "minecraft:number_range",\
	      			"key": "buy1",\
  	    			"label": "Kaufe",\
    	  			"start": 0,\
      				"end": 64,\
      				"step": 1,\
      				"initial": 0\
	    			}\
  				],\
  				"can_close_with_escape": true,\
	  			"pause": false,\
  				"after_action": "close",\
  				"yes": {\
    				"label": "Kaufen",\
				    "action": {\
      				"type": "minecraft:run_command",\
      				"command": "trigger E_S.Vendor_Panda_Village_buy_apple set 1"\
    				}\
  				},\
	  			"no": {\
  	  			"label": "Schließen ohne Kaufen",\
				    "action": {\
      				"type": "minecraft:run_command",\
      				"command": "trigger E_S.Vendor_Panda_Village_reset set 1"\
    				}\
  				}\
				}\
      ]\
    }\
  ]\
}


