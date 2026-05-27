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
    description = "it's sharp and it's rock",
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