function compareTables(tblToCompare, tblToCompareTo)
    if (type(tblToCompareTo)=="table") and (type(tblToCompare)=="table") then
        for k, v in pairs(tblToCompareTo) do
            if not (type(tblToCompare[k])=="nil") then
                if (type(v)=="table") then
                    if not (compareTables(tblToCompare[k], v)) then return false, "Tables not matched at key"..tostring(k) end
                else
                    if not (type(v)==type(tblToCompare[k])) then return false, "Values not matched at key"..tostring(k) end
                end
            else
                return false, "nil value"
            end
        end
        return true
    else
        return false
    end
end
