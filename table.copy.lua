function table.copy(orig)
    local copy = {}
    for orig_key, orig_value in pairs(orig) do
        copy[orig_key] = ((type(orig_value)=="table") and table.copy(orig_value)) or orig_value
    end
    return copy
end
