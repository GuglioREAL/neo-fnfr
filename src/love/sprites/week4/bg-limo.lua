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

return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("week4/bg-limo")),
	-- Automatically generated from bgLimo.xml
	{
		{x = 0, y = 0, width = 1981, height = 777, offsetX = 0, offsetY = 0, offsetWidth = 2090, offsetHeight = 777}, -- 1: ROCKET0000
		{x = 1991, y = 0, width = 2024, height = 777, offsetX = 0, offsetY = 0, offsetWidth = 2090, offsetHeight = 777}, -- 2: ROCKET0001
		{x = 0, y = 787, width = 2010, height = 777, offsetX = 0, offsetY = 0, offsetWidth = 2090, offsetHeight = 777}, -- 3: ROCKET0002
		{x = 0, y = 1574, width = 2090, height = 777, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: ROCKET0003
		{x = 0, y = 1574, width = 2090, height = 777, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 5: ROCKET0004
	},
	{
		["anim"] = {start = 1, stop = 4, speed = 24, offsetX = 0, offsetY = 0}
	},
	"anim",
	true
)
