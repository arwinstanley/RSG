
function settings_load()
	 --sets the font to an 8bit font i found
	settings={}-- table conataining settings
       settings.size="small"--sets the size to large(default)
       settings.multiplier=0.5-- 1=Large aka default
       settings.rect3= {}
       		settings.rect3.x= width/4
            settings.rect3.y=height/20             
            settings.rect3.w=100*settings.multiplier
            settings.rect3.h=30*settings.multiplier
        settings.rect2= {}
       		settings.rect2.x= width/1.9
            settings.rect2.y=height/20             
            settings.rect2.w=120*settings.multiplier
            settings.rect2.h=30*settings.multiplier
        settings.rect1= {}
       		settings.rect1.x= width/1.259
            settings.rect1.y=height/20             
            settings.rect1.w=90*settings.multiplier
            settings.rect1.h=30*settings.multiplier
      --settings.rect1=love.graphics.rectangle("line", 207, 25, 100, 30)
    --makes a table within a table for each "button"
bit8 = love.graphics.setNewFont("fonts/04B_03__0.TTF", 30*settings.multiplier)


end
function settings_draw()
	 love.graphics.draw(cog.img2, cog.x, cog.y)--draws the cog
     bit8 = love.graphics.setNewFont("fonts/04B_03__0.TTF", 30*settings.multiplier)
	 love.graphics.setBackgroundColor(0, 0, 0)--sets background to black
	 love.graphics.setColor(255, 255, 255)--sets the umbrella color
	 love.graphics.setFont(bit8) --sets font
	 love.graphics.print("size:", (width/15), height/20)--prints the text
	 love.graphics.print("small", (width/15)*4, height/20)--prints the small
	 love.graphics.print("medium", (width/15)*8, height/20)--prints the medium
	 love.graphics.print("large", (width/15)*12, height/20)--prints the large
	if settings.size == "small" then 
       love.graphics.rectangle("line", width/4, height/20, 100*settings.multiplier, 30*settings.multiplier)
	elseif settings.size == "medium" then                            
	   love.graphics.rectangle("line", width/1.9, height/20, 120*settings.multiplier, 30*settings.multiplier)
	elseif settings.size == "large" then
	   love.graphics.rectangle("line", width/1.259, height/20, 90*settings.multiplier, 30*settings.multiplier)
	end
	--The if statement for determining what size the screen is and where to put the highlight
end

function settings_update()









end

--DO A TABLE YOU DUMB