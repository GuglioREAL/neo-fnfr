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

local buildings, neonsigns, scaffolding

local crowd

return {
	enter = function(self, from, songNum, songAppend)
		weeks:enter()

		song = songNum
		difficulty = songAppend
		

		--crowd.x, crowd.y = -60, 375
		--neonsigns.y = 400
		--scaffolding.y = -100
		girlfriend = love.filesystem.load("sprites/gf.lua")()

		boyfriend = love.filesystem.load("sprites/bf.lua")()
		enemy = love.filesystem.load("sprites/week2/spookeez.lua")()

		girlfriend.x, girlfriend.y = 30, 10
		enemy.x, enemy.y = -300, 90
		boyfriend.x, boyfriend.y = 340, 180
		speakerp = love.filesystem.load("sprites/week2/SpeakerP.lua")()
		speakerb = love.filesystem.load("sprites/week2/SpeakerB.lua")()
		speakerb.x, speakerb.y = -450, 90
		speakerp.x, speakerp.y = 490, 90
		speakerp.sizeX, speakerp.sizeY = 0.4, 0.4
		speakerb.sizeX, speakerb.sizeY = 0.4, 0.4
		crowd = love.filesystem.load("sprites/week2/crowd.lua")()
		crowd.x, crowd.y = -60, 450

		enemyIcon:animate("skidmark and poop", false)

		self:load()
	end,

	load = function(self)
		weeks:load()
		crowd:animate("anim", true)
		speakerp:animate("anim", true)
		speakerb:animate("anim", true)
		if song ~= 3 then
			buildings = graphics.newImage(love.graphics.newImage(graphics.imagePath("week2/buildings")))
			neonsigns = graphics.newImage(love.graphics.newImage(graphics.imagePath("week2/neonsigns")))
			scaffolding = graphics.newImage(love.graphics.newImage(graphics.imagePath("week2/scaffolding")))
			buildings.y = -110
			neonsigns.y = 60
			neonsigns.sizeX, neonsigns.sizeY = 1.2, 1.2
			buildings.sizeX, buildings.sizeY = 1.3, 1.3
			


			
			crowd = love.filesystem.load("sprites/week2/crowd.lua")()
			crowd.x, crowd.y = -60, 350
		elseif song == 3 then
			buildings = graphics.newImage(love.graphics.newImage(graphics.imagePath("week2/buildingsevil")))
			neonsigns = graphics.newImage(love.graphics.newImage(graphics.imagePath("week2/floorevil")))
			scaffolding = graphics.newImage(love.graphics.newImage(graphics.imagePath("week2/scaffolding")))
			buildings.y = -170
			buildings.sizeX, buildings.sizeY = 0.9, 0.9
			speakerp = love.filesystem.load("sprites/week2/TVR.lua")()
			speakerb = love.filesystem.load("sprites/week2/TVL.lua")()
			speakerb.x, speakerb.y = -450, 90
			speakerp.x, speakerp.y = 490, 90
			speakerp.sizeX, speakerp.sizeY = 0.7, 0.7
			speakerb.sizeX, speakerb.sizeY = 0.7, 0.7
			

			enemy = love.filesystem.load("sprites/lemon.lua")()
			enemy.x, enemy.y = -400, -30
			girlfriend.x, girlfriend.y = 30, -20
			boyfriend.x, boyfriend.y = 380, 190
			enemyIcon:animate("monster", false)
		end

		if song == 3 then
			inst = love.audio.newSource("music/week2/illusion/Inst.ogg", "stream")
			voices = love.audio.newSource("music/week2/illusion/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("music/week2/south/Inst.ogg", "stream")
			voices = love.audio.newSource("music/week2/south/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("music/week2/spookeez/Inst.ogg", "stream")
			voices = love.audio.newSource("music/week2/spookeez/Voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()
		
		if song == 3 then
			weeks:generateNotes(love.filesystem.load("charts/week2/illusion" .. difficulty .. ".lua")())
		elseif song == 2 then
			weeks:generateNotes(love.filesystem.load("charts/week2/south" .. difficulty .. ".lua")())
		else
			weeks:generateNotes(love.filesystem.load("charts/week2/spookeez" .. difficulty .. ".lua")())
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		crowd:update(dt)
		speakerp:update(dt)
		speakerb:update(dt)

		--if song == 1 and musicThres ~= oldMusicThres and math.fmod(absMusicTime + 500, 480000 / bpm) < 100 then
		--	weeks:safeAnimate(boyfriend, "hey", false, 3)
		--end
		
		
		--crowd:animate("anim", false)
		if song ~= 3 then
			if health >= 80 then
				if enemyIcon:getAnimName() == "skidmark and poop" then
					enemyIcon:animate("skidmark and poop losing", false)
				end
			else
				if enemyIcon:getAnimName() == "skidmark and poop losing" then
					enemyIcon:animate("skidmark and poop", false)
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

				buildings:draw()
				neonsigns:draw()
				scaffolding:draw()
				speakerp:draw()
				speakerb:draw()
				
				

				girlfriend:draw()
			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x, cam.y)

				enemy:draw()
				boyfriend:draw()
				if song ~= 3 then
					crowd:draw()
				end
			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

				
			love.graphics.pop()
			weeks:drawRating(0.9)
		love.graphics.pop()

		weeks:drawUI()
	end,

	leave = function(self)
		buildings = nil
		neonsigns = nil
		scaffolding = nil

		weeks:leave()
	end
}
