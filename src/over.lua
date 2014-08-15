over = Image.load("over.png")

while true do
	screen:clear()
	screen:blit(0,0,over)
	pad = Controls.read()

	if pad:cross() then dofile("menu.lua") end

	screen.waitVblankStart()
	screen.flip()
end