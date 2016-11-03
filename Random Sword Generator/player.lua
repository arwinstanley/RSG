Character = {}

function Character:create()
	--LOAD SETTINGS/ATTRIBUTES FROM A FILE
	 char = {}
		char.img = love.graphics.newImage("character.png")
		char.x = 32
		char.y = 32
		char.w = char.img:getWidth()
		char.h = char.img:getHeight()
		char.facing = 0  --0 = up, 3.14/2 = right, down = 180, left = 270

	setmetatable(char, { __index = Character })
	return char
end 


function Character:draw()
	--Smaller player size 
	love.graphics.draw(self.img, self.x, self.y, self.facing, 1,1, self.w/2, self.h/2)
end

function Character:update(dt)
	
end 

function Character:keypressed(key)
	if key == "w" then
		myPlayer.y = myPlayer.y - 32
		myPlayer.facing = 0
	end

	if key == "a" then
		myPlayer.x = myPlayer.x - 32
		myPlayer.facing = (3*math.pi)/2
	end

	if key == "s" then
		myPlayer.y = myPlayer.y + 32
		myPlayer.facing = math.pi	
	end

	if key == "d" then
		myPlayer.x = myPlayer.x + 32
		myPlayer.facing = math.pi/2	
	end
end