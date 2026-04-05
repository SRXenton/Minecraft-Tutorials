data remove storage e_s__vendor:data prices

data merge storage e_s__vendor:data {\
    prices:{\
        "minecraft:rotten_flesh":{\
            sell:1,\
            buy:2\
        },\
        "minecraft:apple":{\
            sell:1,\
            buy:2\
        },\
    }\
}
