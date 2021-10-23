--[[----------------------------------------------------------------------------
This file is part of Friday Night Funkin' Rewritten

Copyright (C) 2021  HTV04

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
------------------------------------------------------------------------------]]

local song, difficulty

local Sky, stageFront, buildings

local CrowdRight, CrowdLeft

--local Leftcrowd, Rightcrowd

return {
	enter = function(self, from, songNum, songAppend)
		weeks:enter()

		song = songNum
		difficulty = songAppend

		--firework1 = love.audio.newSource("sounds/week5/firework.ogg", "static")
		--firework2 = love.audio.newSource("sounds/week5/firework2.ogg", "static")
		Skyy = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/sky2")))
		stageFrontt = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/mainstagecorruption")))
		tables = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/maintablescorruption")))
		Sky = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/sky")))
		stageFront = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/mainstage")))
		buildings = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/buildings")))
		CrowdRight = love.filesystem.load("sprites/week5/CrowdRight.lua")()
		CrowdLeft = love.filesystem.load("sprites/week5/CrowdLeft.lua")() -- WHY ARE YOU A NIL VALUE BRUH????? -- Update on this, turns out I wrote week1 and not week5...
		CorruptCrowd = love.filesystem.load("sprites/week5/CorruptCrowd.lua")()
		fireworksNEO = love.filesystem.load("sprites/week5/fireworksNEO.lua")()
		fireworksPINK = love.filesystem.load("sprites/week5/fireworksPINK.lua")()


		black = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/swagnothing")))
		black.sizeX, black.sizeY = 2, 2

		CrowdRight.x, CrowdRight.y = 300, 150
		CrowdLeft.x, CrowdLeft.y = -550, 150

		--Leftcrowd = love.filesystem.load("sprites/week5/CrowdLeft.lua")()
		--Rightcrowd = love.filesystem.load("sprites/week5/CrowdRight.lua")()
		--Leftcrowd.x, Leftcrowd.y = -450, 0---90
		--Rightcrowd.x, Rightcrowd.y = 350, 0---90
		stageFront.sizeX, stageFront.sizeY = 0.9, 0.9

		buildings.sizeX, buildings.sizeY = 0.9, 0.9
		--stageFront.y = 400
		buildings.y = -100
		girlfriend = love.filesystem.load("sprites/gf.lua")()
		boyfriend = love.filesystem.load("sprites/bf.lua")()
		fakeboyfriend = love.filesystem.load("sprites/bf.lua")()

		--boyfriend.x, boyfriend.y = 275, 110
		boyfriend.x, boyfriend.y = 425, 400
		--boyfriend = love.filesystem.load("sprites/week5/bfDream.lua")() -- i swear to fucking god I keep forgeting the week5 part
		enemy = love.filesystem.load("sprites/week5/parents.lua")()

		girlfriend.x, girlfriend.y = 0, 120
		enemy.x, enemy.y = -510, 180
		

		enemyIcon:animate("dearest duo", false)

		self:load()
	end,

	load = function(self)
		weeks:load()
		--if song ~= 3 and song ~= 4 and musicThres ~= oldMusicThres and math.fmod(absMusicTime + 500, 480000 / bpm) < 75 then
		--	fireworksNEO:animate("anim", false)
		--	audio.playSound(firework1)
		--end
		--if song ~= 3 and song ~= 4 and musicThres ~= oldMusicThres and math.fmod(absMusicTime + 500, 480000 / bpm) < 25 then
		--	fireworksPINK:animate("anim", false)
		--	audio.playSound(firework2)
		--end
		--if song == 3 then
		--	
		--end
		if song == 4 then
			CorruptCrowd:animate("anim", true)
		else
			CrowdRight:animate("anim", true)
			CrowdLeft:animate("anim", true)
		end
		if song == 2 and musicTime == 116800 then
			weeks:safeAnimate(boyfriend, "passout", false) -- He fucking died lol
		end

		if song == 4 then
			inst = love.audio.newSource("music/week5/hallucination-inst.ogg", "stream")
			voices = love.audio.newSource("music/week5/hallucination-voices.ogg", "stream")
			
			--Crowd = love.filesystem.load("sprites/week5/Corrupted_bg_characters.lua")
			--CrowdRight = love.filesystem.load("sprites/week5/Pico_Corrupt.lua")()  -- lmao why pork have a file XD
			--CrowdLeft = love.filesystem.load("sprites/week5/Mommy_Corrupt.lua")()
			--Rightcrowd = love.filesystem.load("sprite/week5/Pico_Corrupt.lua")
			--Leftcrowd = love.filesystem.load("sprites/week5/Mommy_Corrupt.lua")
			
			enemy = love.filesystem.load("sprites/lemon.lua")()
			enemyIcon:animate("monster", false)
			boyfriend = love.filesystem.load("sprites/week5/bfDream.lua")()
			enemy.x, enemy.y = -510, 180
			boyfriend.x, boyfriend.y = 425, 400
			CorruptCrowd.y = 150

		elseif song == 3 then
			inst = love.audio.newSource("music/week5/eggnog-corrupt-inst.ogg", "stream")
			voices = love.audio.newSource("music/week5/eggnog-corrupt-voices.ogg", "stream")
			Sky = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/sky2")))
			stageFront = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/mainstagecorruption")))
			tables = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/maintablescorruption")))
			enemy = love.filesystem.load("sprites/week5/parentsDream.lua")()
			enemyIcon:animate("parentsDream", false)
			boyfriend = love.filesystem.load("sprites/bf.lua")()
			enemy.x, enemy.y = -510, 180
			boyfriend.x, boyfriend.y = 425, 400
		elseif song == 2 then
			inst = love.audio.newSource("music/week5/eggnog-inst.ogg", "stream")
			voices = love.audio.newSource("music/week5/eggnog-voices.ogg", "stream")
		else
			inst = love.audio.newSource("music/week5/cocoa-inst.ogg", "stream")
			voices = love.audio.newSource("music/week5/cocoa-voices.ogg", "stream")
		end

		self:initUI()
		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 4 then
			weeks:generateNotes(love.filesystem.load("charts/week5/hallucination" .. difficulty .. ".lua")())
		elseif song == 3 then
			week4corrupt:generateNotes(love.filesystem.load("charts/week5/eggnog-corrupt.lua")())
		elseif song == 2 then
			weeks:generateNotes(love.filesystem.load("charts/week5/eggnog" .. difficulty .. ".lua")())
		else
			weeks:generateNotes(love.filesystem.load("charts/week5/cocoa" .. difficulty .. ".lua")())
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		
		CrowdRight:update(dt)
		CrowdLeft:update(dt)
		CorruptCrowd:update(dt)
		fireworksNEO:update(dt)
		fireworksPINK:update(dt)

		if song == 3 and musicTime == 28000 then
			--boyfriend:animate("passout", false)
			weeks:safeAnimate(boyfriend, "passout", false)
		end
		

		--crowd:update(dt)
		--if song == 2 and musicTime >= 86800 then
			--enemy = love.filesystem.load("sprites/week5/parentsDream.lua")() -- please say I can atleast change the character :woeisme: -- nope :/
			--enemyIcon:animate("parentsDream", false)
			--enemy:update(dt)            
			--CrowdLeft.y = 1500
			--CrowdRight.y = 1500 -- just changes y value to high to hide them because undrawing them freezes the game
			--buildings.sizeX, buildings.sizeY = 0.1, 0.1 -- makes buildings smol
			--buildings.y = 1500 -- then hides it
			-- Hopefully this fixes the memory issue
		--end
		-- can't swap character due to memory issue


		--if song == 2 and musicTime >= 88000 then
		--	Sky = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/sky2")))
		--	stageFront = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/mainstagecorrupted")))
		--end       -- changing the stage midsong just kills the game like wtf
		--if song == 2 and musicTime == 117500 then
		--	boyfriend:animate("passout", false) -- He fucking died lol
		--end 
		--if song == 1 and musicThres ~= oldMusicThres and math.fmod(absMusicTime + 500, 480000 / bpm) < 100 then
		--	weeks:safeAnimate(boyfriend, "hey", false, 3)
		--end
		
		--if musicTime ~= oldMusicTime and math.fmod(absMusicTime, 60000 / bpm) < 100 then
			--Leftcrowd:animate("anim", false)
			--Rightcrowd:animate("anim", false)
			
		--end
		if song == 1 and song == 2 then
			if health >= 80 then
				if enemyIcon:getAnimName() == "dearest duo" then
					enemyIcon:animate("dearest duo losing", false)
				end
			else
				if enemyIcon:getAnimName() == "dearest duo losing" then
					enemyIcon:animate("dearest duo", false)
				end
			end
		elseif song == 3 then
			if health >= 80 then
				if enemyIcon:getAnimName() == "parentsDream" then
					enemyIcon:animate("parentsDream")
				end
			else
				if enemyIcon:getAnimName() == "parentsDream" then
					enemyIcon:animate("parentsDream")
				end
			end
		elseif song == 4 then
			if health >= 80 then
				if enemyIcon:getAnimName() == "monster" then
					enemyIcon:animate("monster losing", false)
				end
			else
				if enemyIcon:getAnimName() == "monster losing" then
					enemyIcon:animate("monster", false)
				end
			end
		end
		
		
		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) then
			if storyMode and song < 4 then
				song = song + 1

				self:load()
			else
				status.setLoading(true)

				graphics.fadeOut(
					0.5,
					function()
						Gamestate.switch(menu)

						status.setLoading(false)
					end
				)
			end
		end

		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			love.graphics.push()
				love.graphics.translate(cam.x * 0.9, cam.y * 0.9)
				-- another test
				if song ~= 4 then
					Sky:draw()
				end
				--stageFront:draw()
				if song ~= 3 and song ~= 4 then
					buildings:draw()
				end
				if song == 4 then
					Skyy:draw()
					stageFrontt:draw()
				end
				if song ~= 4 then
					stageFront:draw()
				end
				

				
				--Rightcrowd:draw()
				--Leftcrowd:draw()
				if song ~= 4 and song ~= 3 then
					girlfriend:draw()
					CrowdRight:draw()
					CrowdLeft:draw()
				elseif song == 4 then
					CorruptCrowd:draw()
					tables:draw()
				end

			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x, cam.y)

				enemy:draw()
				boyfriend:draw()
				--if song == 2 and musicTime >= 9700 then
				--	if music time <= 15000 then
				--		draw:black()
				--	end
				--end              -- Not gonna do the black
				--crowd:draw()
				
			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

				
			love.graphics.pop()
			weeks:drawRating(0.9)
		love.graphics.pop()

		weeks:drawUI()
	end,

	leave = function(self)
		Sky = nil
		stageFront = nil
		buildings = nil
		--Leftcrowd = nil
		--Rightcrowd = nil
		CrowdRight = nil
		CrowdLeft = nil
		CorruptCrowd = nil
		Skyy = nil
		stageFrontt = nil
		fireworksNEO = nil
		fireworksPINK = nil


		weeks:leave()
	end
}
