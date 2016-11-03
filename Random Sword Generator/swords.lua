--Contains all information about swords
--SPLIT ALL THE COLORs INTO THEIR OWN FILE, ONLY USE THIS ONE TO CREATE/DRAW/UPDATE 


--Blade controls damage
--Hilt controls block/defense
--Handle controls attack speed or range
--Pommel controls wildcard (loot bonus...)  
	--Wildcard based on color?  Like the pommel is what makes "fire" swords do fire damage?

--Names 

--Colors is same as type, might rechange for comprehension




--Red (Fire?)
colors = {
	[1] = {header = "red", blades = {}}, -- THE CONTENTS OF ALL THESE TABLES WOULD FOLLOW THE FIRST ENTRY WHICH IS RESERVED FOR THE COLOR INDICAOTR HEADER
	[2] = {header = "yellow", blades = {}},
	[3] = {header = "green", blades = {}},
	[4] = {header = "blue", blades = {}},
	[5] = {header = "purple", blades = {}},
	[6] = {header = "black", blades = {"nutsack"}},
	[7] = {header = "white", blades = {}}
	}


--THIS DOESNT AFFECT WEAPON ATTRIBUTES
	colors[1].names = {} --names would load from a word list describing red type weapons (so fiery adjectives)
	---------------


	colors[1].blades = {	
		[1] = { img = "imgs/red/blades/thinSilver.png", dmg = 5}  --names... ult?
	}

	colors[1].hilts = { 	
		[1] = { img = "imgs/red/hilts/devil.png", defense = 5} 
	}

	colors[1].handles = {
		[1] = { img = "imgs/red/handles/yellowWrap.png", speed = 5}  --Speed -- Range wouldn't make much sense tbh
	}

	colors[1].pommels = {
		[1] = { img = "imgs/red/pommels/blue.png", speed = 5}
	}
	

--^^^ THe above code is sort of a rough formatting example

Sword = {}


function Sword:create()  --Take parameters like char.level?  or just grab globally bc probably only one player
	local swrd = {}
		swrd.color = colors[math.random(1,#colors)]

		 for k,v in pairs(swrd.color) do 
		 	--for j,h in pairs(h) do 
			--	print(j,h)
			--end

			print("v : "..tostring(v))
			if v  == blades then 
				print(v)
			end
		end 

		--swrd.dmg = swrd.color.blades.[math.random(1,#colors[swrd.color].blades)]

		--print(math.random(1,#colors))
	
		--print("swrd.color : "..swrd.color.header)
		--print("swrd.dmg : "..swrd.dmg)

	return swrd
end 







