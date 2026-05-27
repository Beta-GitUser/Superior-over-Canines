local register_craft = core.register_craft

register_craft({
    type = "shapeless",

    output = "soc:rock 4",

    recipe = { "soc:stone", }
})

register_craft({
type = "shapeless",

    output = "soc:sharp_rock",

    recipe = { "soc:rock", "soc:rock", }
})

register_craft({
    type = "shapeless",
    
    output = "soc:rock 2",
    
    recipe = { "soc:sharp_rock", }
})