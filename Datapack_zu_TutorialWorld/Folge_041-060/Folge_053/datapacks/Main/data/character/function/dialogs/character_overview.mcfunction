$dialog show @s {\
  "type": "minecraft:notice",\
  "title": "Charakter",\
  "body": [\
    {\
      type:"minecraft:plain_message",\
      contents:"CharakterBuild:"\
    },\
    {\
      type:"minecraft:plain_message",\
      contents:""\
    },\
    {\
      type:"minecraft:plain_message",\
      contents:{\
        "text":"Beweglichkeit: $(beweglichkeit)"\
      }\
    },\
    {\
      type:"minecraft:plain_message",\
      contents:{\
        "text":"Stärke: $(staerke)"\
      }\
    },\
    {\
      type:"minecraft:plain_message",\
      contents:{\
        "text":"Ausdauer: $(ausdauer)"\
      }\
    },\
    {\
      type:"minecraft:plain_message",\
      contents:{\
        "text":"Intelligenz: $(intelligenz)"\
      }\
    },\
    {\
      type:"minecraft:plain_message",\
      contents:{\
        "text":""\
      }\
    },\
  ],\
  "inputs": [],\
  "can_close_with_escape": true,\
  "pause": false,\
  "after_action": "close"\
}
