function worldBreak(text, w, fontScale, font)
    local lastEnd, lastStart = 0, 0
    local currentEnd, currentStart
    local str = ""
    local currentWorld
    local sepFromLastWorld
    while true do
        currentStart, currentEnd = string.find(text, "%w+", lastEnd+1)
        if not (currentStart) then break end
        sepFromLastWorld = string.sub(text, lastEnd+1, currentStart-1)
        currentWorld = string.sub(text, currentStart, currentEnd)
        
        if (dxGetTextWidth(str, fontScale, font)<w) then
          str = str..sepFromLastWorld..currentWorld
        else
          str = str.."\n"..currentWorld
          print("Break at", currentStart)
        end
        lastEnd, lastStart = currentEnd, currentStart
    end
    return str
end