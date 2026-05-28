local register_decoration = core.register_decoration

register_decoration({
    deco_type = "schematic",
    place_on = {"soc:grass"},
    sidelen = 16,
    fill_ratio = 0.01,
    y_min = 1,
    y_max = 31000,
    schematic = corepath .. "/schematics/tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})

register_decoration({
    deco_type = "simple",
    place_on = {"soc:grass"},
    sidelen = 16,
    fill_ratio = 0.3,
    decoration = "soc:foliage"
})