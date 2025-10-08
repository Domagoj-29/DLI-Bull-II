-- Code partially taken from: https://steamcommunity.com/sharedfiles/filedetails/?id=1871351842
function onTick()
	steering=input.getNumber(1)
	steering=-steering
end
function onDraw()
	local w=screen.getWidth()
	local h=screen.getHeight()

	screen.setColor(255,0,0)
	screen.drawLine(4,h-4,w-4,h-4)

	screen.setColor(255,127,0)
	screen.drawLine(8+(steering*3),h-8,w-8+(steering*3),h-8)

	screen.setColor(255,255,255)
	screen.drawLine(0,h-1,3,h-4)
	screen.drawLine(w-1,h-1,w-4,h-4)

	screen.drawLine(3,h-4,7+(steering*3),h-8)
	screen.drawLine(w-4,h-4,w-8+(steering*3),h-8)

	screen.drawLine(7+(steering*3),h-8,10+(steering*8),h-11)
	screen.drawLine(w-8+(steering*3),h-8,w-11+(steering*8),h-11)

end
