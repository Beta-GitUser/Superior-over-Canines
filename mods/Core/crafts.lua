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
    
    recipe = { "soc:sharp_rock" }
})

register_craft({
    type = "shapeless",
    
    output = "soc:planks 4",
    
    recipe = { "soc:trunk" }
})

register_craft({
    type = "shapeless",
    
    output = "soc:stick 4",
    
    recipe = { "soc:planks" }
})

register_craft({
    type = "shapeless",
    
    output = "soc:sharp_stick",
    
    recipe = { "soc:stick" }
})

register_craft({
    type = "shapeless",
    
    output = "soc:primitive_stone_hatchet",
    
    recipe = { "soc:stick", "soc:plant_fiber", "soc:rock" }
})

register_craft({
    type = "shapeless",
    
    output = "soc:plant_fiber",
    
    recipe = { "soc:foliage" }
})