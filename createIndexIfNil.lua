function createIndexIfNil(t, i, v)
    if not (type(i)=="nil") then
        if (type(t[i])=="nil") then
            t[i] = v or {}
        end
    end
end