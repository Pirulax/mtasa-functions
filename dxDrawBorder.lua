function dxDrawBorder(x, y, w, h, t, color, postaGECI)
    dxDrawRectangle(x, y, t, h, color, postaGECI)--// Left
    dxDrawRectangle(x-t+w, t, h, color, postaGECI)--// Right

    dxDrawRectangle(x, y, w, t, color, postaGECI)--// Top
    dxDrawRectangle(x, y-t+h, w, t, color, postaGECI)--// Bottom
end

--// Vector
function dxDrawBorder(x, y, w, h, t, color, postaGECI)
    dxDrawRectangle(pos.x, pos.y, t, pos.y, color, postaGECI)--// Left
    dxDrawRectangle(x-t+pos.x, pos.y, t, pos.y, color, postaGECI)--// Right

    dxDrawRectangle(pos.x, pos.y, pos.x, t, color, postaGECI)--// Top
    dxDrawRectangle(pos.x, pos.y-t+pos.y, pos.x, t, color, postaGECI)--// Bottom
end
