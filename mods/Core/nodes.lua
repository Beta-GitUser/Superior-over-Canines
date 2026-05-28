local register_node = core.register_node
local register_alias = core.register_alias


register_node("soc:stone", {
    description = "Stone",
    tiles = { "soc_stone.png" },
    groups = { cracky = 1 },
    is_ground_content = true,
    stack_max = 64,
    drop = "soc:rock",
    
    after_dig_node = function(pos, oldnode)
        soc.replace_node(pos, oldnode, "soc:stonep1", false)
    end
})

register_node("soc:trunk", {
    description = "Trunk",
    tiles = {
        "soc_trunktop.png",
        "soc_trunktop.png",
        "soc_trunkside.png"
    },
    
    groups = { cracky = 3 },
    
    paramtype2 = "facedir",
    on_place = core.rotate_node,
    
    stack_max = 64
})

register_node("soc:leaves", {
	description = ("Leaves"),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"soc_leaves.png"},
	paramtype = "light",
	groups = { snappy = 3 },
	stack_max = 64
})

register_node("soc:grass", {
    description = "how did you even got it.",
    tiles = {
        "soc_grasstop.png",
        "soc_dirt.png",
        "soc_grassside.png"
    },
    
    groups = { crumbly = 2 },
    
    stack_max = 64,
    
    drop = "soc:dirt"
})

register_node("soc:dirt", {
    description = "Dirt",
    tiles = { "soc_dirt.png" },
    
    groups = { crumbly = 1 },
    
    stack_max = 64
})

register_node("soc:planks", {
    description = "Planks",
    tiles = { "soc_planks.png" },
    
    groups = { choppy = 2 },
    
    stack_max = 64
})

register_node("soc:foliage", {
	description = "Foliage",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"soc_foliage.png"},
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
    pointable = true,
	buildable_to = true,
	groups = {
        snappy = 3,
        attached_node = 1
    },
    selection_box = {
        type = "fixed",
        fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3},
    }
})

register_node("soc:water_source", {
    drawtype = "liquid",
    waving = 3,
    
    tiles = {"soc_water.png"},
    special_tiles = {"soc_water.png", "soc_water.png"},
    
    paramtype = "light",
    
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    use_texture_alpha = "blend",
    drowning = 1,
    
    liquidtype = "source",
    liquid_alternative_flowing = "soc:water_flowing",
    liquid_alternative_source = "soc:water_source",
    
    liquid_viscosity = 1,
    liquid_range = 8,
    
    groups = {liquid = 3}
})

register_node("soc:water_flowing", {
    drawtype = "flowingliquid",
    
    tiles = {"soc_water.png"},
    special_tiles = {"soc_water.png", "soc_water.png"},
    
    paramtype = "light",
    paramtype2 = "flowingliquid",
    
    walkable = false,
    pointable = false,
    diggable = false,
    buildable_to = true,
    
    liquidtype = "flowing",
    liquid_alternative_flowing = "soc:water_flowing",
    liquid_alternative_source = "soc:water_source",
    
    liquid_viscosity = 1,
    liquid_range = 8,
    
    groups = {liquid = 3}
})

register_alias("mapgen_stone", "soc:stone")
register_alias("mapgen_water_source", "soc:water_source")

-- here it comes, the "progression" breaking system...
-- if you're seeing this, then most likely i didn't made bajillion of variations of them. I know, i certainly could've just automate this using a system like minetest flowers. But i'm a lazy fuck so yeah'

register_node("soc:stonep1", {
    description = "Stone",
    tiles = { "soc_stone.png^soc_prog1.png" }, -- this modification thing is a W
    groups = { cracky = 1 },
    is_ground_content = true,
    stack_max = 64
})

-- rest is tbd im lazy
-- still tbd