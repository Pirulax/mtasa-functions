function dxDrawRoundedRectangle(x, y, w, h, borderColor, bgColor, postGUI)
	if (x) and (y) and (w) and (h) then
		borderColor = borderColor or tocolor(0, 0, 0, 200)
		bgColor = bgColor or borderColor
	
		--> Background
		dxDrawRectangle(x, y, w, h, bgColor, postGUI);
		
		--> Border
		dxDrawRectangle(x - 1, y + 1, 1, h - 2, borderColor, postGUI)-- left
		dxDrawRectangle(x + w, y + 1, 1, h - 2, borderColor, postGUI)-- right
		dxDrawRectangle(x + 1, y - 1, w - 2, 1, borderColor, postGUI)-- top
		dxDrawRectangle(x + 1, y + h, w - 2, 1, borderColor, postGUI)-- bottom
		dxDrawRectangle(x, y, 1, 1, borderColor, postGUI)
		dxDrawRectangle(x + w - 1, y, 1, 1, borderColor, postGUI)
		dxDrawRectangle(x, y + h - 1, 1, 1, borderColor, postGUI)
		dxDrawRectangle(x + w - 1, y + h - 1, 1, 1, borderColor, postGUI)
	end
end