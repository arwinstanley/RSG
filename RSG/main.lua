require("settings")
require("conf")
function love.load()
 love.graphics.setBackgroundColor(168, 157, 97)
 colors = {}
 gamestate="playing"
 print(gamestate)
 width= love.graphics.getWidth()
 height = love.graphics.getHeight()
 
 cog={}
 	cog.img=love.graphics.newImage("imgs/cog.png")
 	cog.img2=love.graphics.newImage("imgs/cog2.png")
    cog.x= width/1.05960265
    cog.y= height/60
    cog.w=cog.img:getWidth()
    cog.h=cog.img:getHeight()
    cog.overlay=0
    settings_load()

 --
 -- colors
 --	 [1] = red
 --	 colors[1].blades = {
	--	 [1] = {img = "path", dmg = 5, buff = nil},
	--	 [2] = {img = "path", dmg = 5, buff = nil},
	--	 [3] = {img = "path", dmg = 5, buff = nil},
	--	 [4] = {img = "path", dmg = 5, buff = nil},
	---	 [5] = {img = "path", dmg = 5, buff = nil},
	--	 [6] = {img = "path", dmg = 5, buff = nil},
	-- }

 --Sword damage = blade.dmg * player's level * player's.dmg
 
 --descriptions
 --Black : shadow 	
 --White : light 
 --Yellow : loot bonus 
 --Green : speed
 --Blue : health 
 --Red : damage
 --Purple : defense 




 -- blade = dmg
 --hilt = block
 -- handle = speed 
 -- pommel = wildcard/ small buff  



 -- Crafting weapons ??? end game stuff

 --  Ult color comes from : Player skill tree, weapon 

 --say you have 4 weapon slots, does that mean 4 ults or 1 ult 

 --Skill tree 

 --Side Scrolling  
			--__________________________________-------____>       <-------------------- 
 --Top down dungeon

 --			###################				##########
 --			###################				|
 --			###################				|
 --			###################---------------------#######
 --													####### 




 --Sword = {}
 --Sword[dmg] = 20
end

--function Sword:create()
--	local colorNum = math.random(0,#colors)
--
--	local swrd = {}
--		swrd.blade = colors[colorNum].blades[math.random(0,#colors[colorNum].blades)]
--		swrd.hilt = colors[colorNum].hilts[math.random(0,#colors[colorNum].hilts)]
--		swrd.handle = colors[colorNum].handles[math.random(0,#colors[colorNum].handles)]
---		swrd.pommel = colors[colorNum].pommels[math.random(0,#colors[colorNum].pommels)]
--	return swrd 
--end 




---					B
---					B
---					B
---					B
---					B
---					B
---			hhhhhhhhhhhhhhhhh
--					H
--					H
--					H <-- Or around handle 
--					H
--				  P P P
--				  P P P
--  			  P P P
--					^ORIGIN NEEDS TO BE MEASURED FROM HERE FOR ALL WEAPONS
function love.draw()
 love.graphics.draw(cog.img, cog.x, cog.y)
  	if gamestate =="settings" then
	  settings_draw()
	elseif gamestate =="playing" then 
      love.graphics.setBackgroundColor(168, 157, 97)
	end
end



function love.update()

end 
function love.mousepressed(x, y, button, istouch)
    




	if insideBox(x, y, cog.x, cog.y, cog.w, cog.h) then
		if gamestate=="settings" then 
			gamestate = "playing"
		elseif gamestate =="playing" then 
			gamestate = "settings"
		end 
	end
   if insideBox(x, y, settings.rect3.x, settings.rect3.y, settings.rect3.w, settings.rect3.h) and gamestate =="settings" then 
   	     love.window.setMode(400, 300)        
        
         settings.size="small"--sets the size to small(default)
         settings.multiplier=0.5-- 1=small
    end 
     if insideBox(x, y, settings.rect2.x, settings.rect2.y, settings.rect2.w, settings.rect2.h) and gamestate =="settings" then 
   	     love.window.setMode(600, 450)        
        
         settings.size="medium"--sets the size to medium(default)
         settings.multiplier=0.75-- 1=medium
    if insideBox(x, y, settings.rect3.x, settings.rect3.y, settings.rect3.w, settings.rect3.h) and gamestate =="settings" then 
   	     love.window.setMode(800, 600)        
        
         settings.size="large"--sets the size to large(default)
         settings.multiplier=1-- 1=Large aka default 
    end 

end 
end 
function insideBox( px, py, x, y, wx, wy )
	if px > x and px < x + wx then
		if py > y and py < y + wy then
			return true
		end
	end
	return false
end