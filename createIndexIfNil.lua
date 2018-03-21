function createIndexIfNil(t, i, v)
    if not (type(i)=="nil") then
        if not (t[i]) then
            t[i] = v or {}
        end
    end
end