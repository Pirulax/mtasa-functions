cx, cy = 0, 0
bCursorShown = false

function isCursorOnBox(x, y, w, h)
    if (bCursorShown) then   
        return (cx >= x and cx <= x+w and cy >= y and cy <= y+h)
    end	
    return false
end

--[[
    into render:
    bCursorShown = isCursorShowing()
    if (bCursorShown) then
        cx, cy = getCursorPosition()
        cx, cy = cx*sx, cy*sy
    end
]]