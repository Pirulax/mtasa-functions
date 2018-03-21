function worldBreak(text, fScale, font, w)
    local finalText = ""
    for k, world in pairs(split(text, string.byte(" "))) do
        if (dxGetTextWidth(removeHex(finalText..world), fScale, font)>=w) then
            finalText = finalText.."\n"..world
        else
            finalText = finalText.." "..world
        end
    end
    return finalText
end