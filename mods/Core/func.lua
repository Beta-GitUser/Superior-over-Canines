soc = {}

function soc.replace_node(pos, oldnode, newnodename, keep_param2)
    if not pos or not oldnode or not newnodename then
        return
    end
    local newnode = {
        name = newnodename
    }
    if keep_param2 then
        newnode.param2 = oldnode.param2 or 0
    end
    core.set_node(pos, newnode)
end