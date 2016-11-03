require("swords")
require("player")
require("map")

function love.load()	
	--WHAT IS THE LOVE2D RANDOM SEED
	love.math.setRandomSeed(os.time())

	templateImg = love.graphics.newImage("template.png")
	templateImgx2 = love.graphics.newImage("templatex2.png")
	--21x127
	templateImg4to3 = love.graphics.newImage("template4to3.png")
	
	blade = love.graphics.newImage("imgs/red/blades/thinSilver.png")
	hilt = love.graphics.newImage("imgs/red/hilts/devil.png")
	handle = love.graphics.newImage("imgs/red/handles/yellowWrap.png")
	pommel = love.graphics.newImage("imgs/red/pommels/blue.png")


	--No such thing as random numbers apparently 
	Sword:create()  -- Black
	Sword:create()	-- purple 
	Sword:create()	--purple
	Sword:create()	--black

	--Create Character
	myPlayer = Character:create()




	love.graphics.setBackgroundColor(200,220,210)
end 

function love.draw()
	love.graphics.rectangle("fill", 300,396, 80, 54 )
	love.graphics.draw(templateImg4to3, 340,300)

	love.graphics.draw(blade, 400, 300, 0, 1,1, blade:getWidth()/2 , blade:getHeight()/2)
	love.graphics.draw(hilt, 400, 300+blade:getHeight()/2, 0, 1,1, hilt:getWidth()/2 , hilt:getHeight()/2)
	love.graphics.draw(hilt, 400, 300+blade:getHeight()/2, 0, 1,1, hilt:getWidth()/2 , hilt:getHeight()/2)

	--Smaller sword
	love.graphics.setColor(255,0,0)
	love.graphics.rectangle("line", 432, 368, 4, 32)
	love.graphics.setColor(255,255,255)

	--Draw Player
	myPlayer:draw() 
end


function love.update(dt)
	myPlayer:update(dt)

end

function love.keypressed(key, isrepeat)
	myPlayer:keypressed(key)
	
end 


