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
	images.notesneo,
	{
		{x = 474, y = 0, width = 160, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: arrowUP0000
		{x = 304, y = 235, width = 201, height = 195, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: green0000
		{x = 505, y = 235, width = 54, height = 67, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: green hold end0000
		{x = 559, y = 235, width = 54, height = 47, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: green hold piece0000
		{x = 0, y = 696, width = 236, height = 232, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 80: up confirm0000
		{x = 236, y = 696, width = 236, height = 232, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 81: up confirm0001
		{x = 472, y = 696, width = 236, height = 232, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 82: up confirm0002
		{x = 472, y = 696, width = 236, height = 232, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 83: up confirm0003
		{x = 708, y = 696, width = 156, height = 153, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 84: up press0000
		{x = 708, y = 696, width = 156, height = 153, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 85: up press0001
		{x = 864, y = 696, width = 156, height = 153, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 86: up press0002
		{x = 864, y = 696, width = 156, height = 153, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 87: up press0003
	},
	{
		["off"] = {start = 1, stop = 1, speed = 0, offsetX = 0, offsetY = 0},
		["on"] = {start = 2, stop = 2, speed = 0, offsetX = 0, offsetY = 0},
		["end"] = {start = 3, stop = 3, speed = 0, offsetX = 0, offsetY = 0},
		["hold"] = {start = 4, stop = 4, speed = 0, offsetX = 0, offsetY = 0},
		["confirm"] = {start = 5, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
		["press"] = {start = 9, stop = 12, speed = 24, offsetX = 0, offsetY = 0}
	},
	"off",
	false
)
