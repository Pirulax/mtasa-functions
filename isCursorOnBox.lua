function isCursorOnBox(x, y, w, h)
    if (cursorShowing) then   
        return (cursorX >= x and cursorX <= x+w and cursorY >= y and cursorY <= y+h)
    end	
end

--CursorX, CursorY-t renderben kiszámolni, ha pedig nem ott, akkor a funkció meghivása előtt 1x..Ha arra is lusta vagy, v máshova kell, akkor:
function isCursorOnBox(x, y, w, h)
    if (isCursorShowing()) then 
        local cx, cy = getCursorPosition()
        local sx, sy = guiGetScreenSize()
        cx, cy = cx*sy, cy*sy  
        return (cx >= x and cx <= x+w and cy >= y and cy <= y+h)
    end	
end