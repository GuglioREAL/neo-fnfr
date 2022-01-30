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

		cam.sizeX, cam.sizeY = 0.8, 0.8
		camScale.x, camScale.y = 0.8, 0.8

		Skyy = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/sky2")))
		stageFrontt = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/mainstagecorruption")))
		tables = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/maintablescorruption")))
		CrowdLeft = love.filesystem.load("sprites/week5/CrowdLeft.lua")()
		CorruptCrowd = love.filesystem.load("sprites/week5/CorruptCrowd.lua")()
		Sky = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/sky")))
		stageFront = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/mainstage")))
		buildings = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/buildings")))
		CrowdRight = love.filesystem.load("sprites/week5/CrowdRight.lua")()
		
		fireworksNEO = love.filesystem.load("sprites/week5/fireworksNEO.lua")()
		fireworksPINK = love.filesystem.load("sprites/week5/fireworksPINK.lua")()

		sounds["fireworks"] = {
			love.audio.newSource("sounds/week5/firework1.ogg", "static"),
			love.audio.newSource("sounds/week5/firework2.ogg", "static")
		}

		black = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/swagnothing")))
		black.sizeX, black.sizeY = 2, 2

		CrowdRight.x, CrowdRight.y = 300, 180
		CrowdLeft.x, CrowdLeft.y = -550, 180
		stageFront.sizeX, stageFront.sizeY = 1.1, 1.1
		fireworksNEO.sizeX, fireworksNEO.sizeY = 1.2, 1.2
		fireworksPINK.sizeX, fireworksPINK.sizeY = 1.2, 1.2
		fireworksPINK.y, fireworksNEO.y = -75, -75

		buildings.sizeX, buildings.sizeY = 1.1, 1.1
		buildings.y = -100
		girlfriend = love.filesystem.load("sprites/gf.lua")()
		boyfriend = love.filesystem.load("sprites/bf.lua")()
		fakeboyfriend = love.filesystem.load("sprites/bf.lua")()

		boyfriend.x, boyfriend.y = 425, 400
		enemy = love.filesystem.load("sprites/week5/parents.lua")()

		girlfriend.x, girlfriend.y = 0, 120
		enemy.x, enemy.y = -510, 180
		

		enemyIcon:animate("dearest duo", false)

		self:load()
	end,

	load = function(self)
		weeks:load()
		
		CrowdRight:animate("anim", true)
		CrowdLeft:animate("anim", true)

		if song == 3 then
			inst = love.audio.newSource("music/week5/hallucination-inst.ogg", "stream")
			voices = love.audio.newSource("music/week5/hallucination-voices.ogg", "stream")
			
			enemy = love.filesystem.load("sprites/lemon.lua")()
			enemyIcon:animate("monster", false)
			boyfriend = love.filesystem.load("sprites/week5/bfDream.lua")()
			enemy.x, enemy.y = -510, 180
			boyfriend.x, boyfriend.y = 425, 400
			CorruptCrowd.y = 150
		elseif song == 2 then
			inst = love.audio.newSource("music/week5/eggnog-inst.ogg", "stream")
			voices = love.audio.newSource("music/week5/eggnog-voices.ogg", "stream")
			enemy2 = love.filesystem.load("sprites/week5/parentsDream.lua")()
			enemy2.x, enemy2.y = enemy.x - 65, enemy.y

			function enemy2Animate()
				if enemy:getAnimName() == "left" then
					enemy2:animate("left", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "right" then
					enemy2:animate("right", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "up" then
					enemy2:animate("up", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "down" then
					enemy2:animate("down", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "idle" then
					enemy2:animate("idle", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "left alt" then
					enemy2:animate("left alt", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "right alt" then
					enemy2:animate("right alt", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "up alt" then
					enemy2:animate("up alt", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "down alt" then
					enemy2:animate("down alt", false)
					enemy:animate("k", false)
				elseif enemy:getAnimName() == "idle" then
					enemy2:animate("idle", false)
					enemy:animate("k", false)
				end
			end
		else
			inst = love.audio.newSource("music/week5/cocoa-inst.ogg", "stream")
			voices = love.audio.newSource("music/week5/cocoa-voices.ogg", "stream")
		end

		self:initUI()
		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes(love.filesystem.load("charts/week5/hallucination" .. difficulty .. ".lua")())
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
		fireworksNEO:update(dt)
		fireworksPINK:update(dt)
		if song == 2 then
			enemy2:update(dt)
		end
		if song == 3 then
			CorruptCrowd:update(dt)
		end

		if song == 2 then
			if musicTime >= 115508 then
				if musicTime <= 115550 then
					boyfriend:animate("passout", false)
				end
			end
			if musicTime >= 89092 then
				enemy2Animate()
			end
		end

		if (song == 1 or song == 2) and musicThres ~= oldMusicThres and math.fmod(absMusicTime, 15000 * (love.math.random(17) + 7) / bpm) < 100 then
			randomNumber = math.random(1,2)
			if randomNumber == 1 then
				fireworksNEO:animate("anim", false)
			else
				fireworksPINK:animate("anim", false)
			end
			audio.playSound(sounds["fireworks"][love.math.random(2)])
			
		end
		
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
			if health >= 80 then
				if enemyIcon:getAnimName() == "parentsDream" then
					enemyIcon:animate("parentsDream")
				end
			else
				if enemyIcon:getAnimName() == "parentsDream" then
					enemyIcon:animate("parentsDream")
				end
			end
		elseif song == 3 then
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
			if storyMode and song < 3 then
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

				if song ~= 3 then
					Sky:draw()
					if song == 2 and musicTime <= 89092 then
						fireworksPINK:draw()
						fireworksNEO:draw()
					else
						fireworksPINK:draw()
						fireworksNEO:draw()
					end
				end

				if song ~= 3 then
					buildings:draw()
				end
				if song == 3 then
					Skyy:draw()
					stageFrontt:draw()
				end
				if song ~= 3 then
					if not corruptTime then
						stageFront:draw()
					end
				end
				if song == 2 then
					if musicTime >= 89092 then
						Skyy:draw()
						stageFrontt:draw()
					end
				end

				if song < 2 then
					girlfriend:draw()
					CrowdRight:draw()
					CrowdLeft:draw()
				elseif song == 2 then
					if musicTime <= 89092 then
						girlfriend:draw()
						CrowdRight:draw()
						CrowdLeft:draw()
					end
				elseif song == 3 then
					CorruptCrowd:draw()
					tables:draw()
				end

			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x, cam.y)
				if song ~= 2 then
					enemy:draw()
				elseif song == 2 then
					if musicTime <= 89092 then
						enemy:draw()
					elseif musicTime >= 89092 then
						enemy2:draw()
					end
				end
				boyfriend:draw()

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
