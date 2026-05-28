local function get_formspec()
    return table.concat({
        "formspec_version[6]",
        "size[10.5,8]",
        -- Version text
        "label[0.325,0.325;SoC indev 1]",
        -- Craft result
        "list[current_player;craftpreview;9.125,1.125;1,1;]",
        -- 2x2 crafting
        "list[current_player;craft;6.625,0.5;2,2;]",
        -- Main inventory
        "list[current_player;main;0.375,3;8,4;]",
        -- Hotbar highlight
        "listring[]",
    })
end

core.register_on_joinplayer(function(player)
    player:set_inventory_formspec(get_formspec())
end)