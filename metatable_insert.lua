local Base_Meta = {}

Base_Meta.__index = Base_Meta

local function list_creation(name_of_list,value)
    local tab = name_of_list
    local statss = {'Attack', 'Speed', 'Defense', 'Intelligence'}
    for i, stuff in pairs(statss)do
        tab[stuff] = value
    end
    return tab
end

function Base_Meta.statschange_item(tabled, attack, speed, defense, intel)
    local tab = tabled
    tab['Attack'] = attack
    tab['Speed'] = speed
    tab['Defense'] = defense
    tab['Intelligence'] = intel
end

function Base_Meta.AddItems(name_of_item, name_of_list, value, value2)
    if value2 ~= nil then
        local name = name_of_item
        local tab = name_of_list
        tab[name] = value
        list_creation(name_of_list[name_of_item],value2)
        return tab
    else
        local name = name_of_item
        local tab = name_of_list
        tab[name] = value
        return tab
    end
end

function Base_Meta:NewChild()
    local n_t = setmetatable({}, self)
    n_t.__index = n_t
    
    return n_t
end

return Base_Meta
