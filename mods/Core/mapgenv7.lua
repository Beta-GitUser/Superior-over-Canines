core.register_biome({
    name = "grassland",

    node_top = "soc:grass",
    depth_top = 1,

    node_filler = "soc:dirt",
    depth_filler = 3,

    node_stone = "soc:stone",

    node_water_top = "soc:water_source",
    depth_water_top = 5,

    y_min = 1,
    y_max = 31000,

    heat_point = 50,
    humidity_point = 50,
})

-- this works on hopes and dreams my fucking god
core.register_on_generated(function(minp, maxp, seed)
    local vm = core.get_voxel_manip()
    local emin, emax = vm:read_from_map(minp, maxp)
    local area = VoxelArea:new({ MinEdge = emin, MaxEdge = emax })
    local data = vm:get_data()
    local c_stone = core.get_content_id("mapgen_stone")
    local c_water = core.get_content_id("mapgen_water_source")
    local c_dirt  = core.get_content_id("soc:dirt")
    for z = minp.z, maxp.z do
        for y = minp.y, maxp.y - 1 do
            for x = minp.x, maxp.x do
                local vi = area:index(x, y, z)
                local vi_above = area:index(x, y + 1, z)
                if data[vi] == c_stone and data[vi_above] == c_water then
                    data[vi] = c_dirt
                end
            end
        end
    end
    vm:set_data(data)
    vm:write_to_map()
end)