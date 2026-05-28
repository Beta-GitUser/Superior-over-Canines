local register_tool = core.register_tool
local register_item = core.register_craftitem

register_item(':', {
    type = 'none',
    wield_image = 'soc_hand.png',
    wield_scale = {x = 0.5, y = 1, z = 4},
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 0,
        groupcaps = {
            crumbly = {
                times = {[1] = 10.00, [2] = 3.00, [3] = 0.70},
                uses = 0,
                maxlevel = 1,
            },
            snappy = {
                times = {[3] = 0.40},
                uses = 0,
                maxlevel = 1,
            },
            oddly_breakable_by_hand = {
                times = {[1] = 3.50, [2] = 2.00, [3] = 0.70},
                uses = 0,
            },
            cracky = {
                times = {[1] = 3.50, [2] = 2.00, [3] = 0.70},
                uses = 0,
            },
        },
        damage_groups = {fleshy = 1},
    }
})

register_item("soc:crude_stone_hatchet", {
    type = "tool",
    description = "Crude Stone Hatchet",
    inventory_image = "soc_crudestonehatchet.png",
    wield_scale = {x = 1, y = 1, z = 1},
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 0,
        groupcaps = {
            crumbly = {
                times = {[1] = 10.00, [2] = 3.00, [3] = 0.70},
                uses = 0,
                maxlevel = 1,
            },
            snappy = {
                times = {[3] = 0.40},
                uses = 0,
                maxlevel = 1,
            },
            oddly_breakable_by_hand = {
                times = {[1] = 3.50, [2] = 2.00, [3] = 0.70},
                uses = 0,
            },
            cracky = {
                times = {[1] = 3.50, [2] = 2.00, [3] = 0.10},
                uses = 50,
            },
        },
        damage_groups = {fleshy = 2},
    }
})

register_item("soc:rock", {
    type = "none",
    inventory_image = "soc_rock.png",
    stack_max = 64
})

register_tool("soc:sharp_rock", {
    description = "Sharp rock",
    inventory_image = "soc_sharprock.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=1.60, [2]=1.20, [3]=0.80 }
            },
            cracky = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=4.70, [2]=2.00, [3]=0.90 }
            },
        },
        damage_groups = {fleshy=2},
    },
})

register_item("soc:stick", {
    type = "none",
    inventory_image = "soc_stick.png",
    stack_max = 64
})

register_tool("soc:sharp_stick", {
    description = "Sharp stick",
    inventory_image = "soc_sharpstick.png",
    tool_capabilities = {
        full_punch_interval = 2,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 5,
                times = { [1]=1.60, [2]=1.20, [3]=0.80 }
            },
            cracky = {
                maxlevel = 2,
                uses = 5,
                times = { [1]=4.70, [2]=2.00, [3]=0.90 }
            },
        },
        damage_groups = {fleshy=2},
    },
})

register_item("soc:plant_fiber", {
    type = "none",
    inventory_image = "soc_plantfiber.png",
    stack_max = 64
})

register_item("soc:primitive_stone_hatchet", {
    type = "tool",
    description = "Primitive Stone Hatchet",
    inventory_image = "soc_primitivestonehatchet.png",
    wield_scale = {x = 1, y = 1, z = 1},
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 0,
        groupcaps = {
            crumbly = {
                times = {[1] = 10.00, [2] = 3.00, [3] = 0.70},
                uses = 0,
                maxlevel = 1,
            },
            snappy = {
                times = {[3] = 0.40},
                uses = 0,
                maxlevel = 1,
            },
            oddly_breakable_by_hand = {
                times = {[1] = 3.50, [2] = 2.00, [3] = 0.70},
                uses = 0,
            },
            cracky = {
                times = {[1] = 3.50, [2] = 2.00, [3] = 0.10},
                uses = 25,
            },
        },
        damage_groups = {fleshy = 2},
    }
})