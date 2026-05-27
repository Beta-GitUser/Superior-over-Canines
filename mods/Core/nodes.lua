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

register_node("soc:tree", {
    description = "trees...",
    tiles = {
        "soc_treetop.png",
        "soc_treetop.png",
        "soc_treeside.png"
    },
    
    groups = { cracky = 3 },
    
    paramtype2 = "facedir",
    on_place = core.rotate_node,
    
    stack_max = 64
})

register_node("soc:leaves", {
	description = ("leaves..."),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"soc_leaves.png"},
	special_tiles = {"default_leaves_simple.png"},
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
    
    stack_max = 64
})

register_node("soc:dirt", {
    description = "it's dirty",
    tiles = { "soc_dirt.png" },
    
    groups = { crumbly = 1 },
    
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
	buildable_to = true,
	groups = { snappy = 3 },
	selection_box = {
	    type = "fixed",
	    fixed = box
	}
})

register_alias('mapgen_stone', 'soc:stone')

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