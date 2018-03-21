function dxDrawRoundedBorder(x, y, w, h, borderColor, postGUI)
	if (x) and (y) and (w) and (h) then
		borderColor = borderColor or tocolor(255, 255, 255, 230)

		dxDrawRectangle(x - 1, y + 1, 1, h - 2, borderColor, postGUI) -- left
		dxDrawRectangle(x + w, y + 1, 1, h - 2, borderColor, postGUI)-- right
		dxDrawRectangle(x + 1, y - 1, w - 2, 1, borderColor, postGUI) -- top
		dxDrawRectangle(x + 1, y + h, w - 2, 1, borderColor, postGUI) -- bottom

		dxDrawRectangle(x, y, 1, 1, borderColor, postGUI)
		dxDrawRectangle(x + w - 1, y, 1, 1, borderColor, postGUI)
		dxDrawRectangle(x, y + h - 1, 1, 1, borderColor, postGUI)
		dxDrawRectangle(x + w - 1, y + h - 1, 1, 1, borderColor, postGUI)
	end
end