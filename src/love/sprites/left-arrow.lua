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
		{x = 160, y = 0, width = 157, height = 160, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: arrowLEFT0000
		{x = 613, y = 235, width = 228, height = 231, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: left confirm0000
		{x = 841, y = 235, width = 228, height = 231, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: left confirm0001
		{x = 1069, y = 235, width = 228, height = 231, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: left confirm0002
		{x = 1069, y = 235, width = 228, height = 231, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: left confirm0003
		{x = 1297, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: left press0000
		{x = 1297, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: left press0001
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: left press0002
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: left press0003
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: left press0004
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: left press0005
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: left press0006
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: left press0007
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: left press0008
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: left press0009
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: left press0010
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: left press0011
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: left press0012
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: left press0013
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: left press0014
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: left press0015
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: left press0016
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: left press0017
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: left press0018
		{x = 1446, y = 235, width = 149, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: left press0019
		{x = 1595, y = 235, width = 54, height = 67, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 43: pruple end hold0000
		{x = 0, y = 466, width = 204, height = 195, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 44: purple0000
		{x = 204, y = 466, width = 54, height = 47, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 45: purple hold piece0000
	},
	{
		["off"] = {start = 1, stop = 1, speed = 0, offsetX = 0, offsetY = 0},
		["confirm"] = {start = 2, stop = 5, speed = 24, offsetX = 0, offsetY = 0},
		["press"] = {start = 6, stop = 25, speed = 24, offsetX = 0, offsetY = 0},
		["end"] = {start = 26, stop = 26, speed = 0, offsetX = 0, offsetY = 0},
		["on"] = {start = 27, stop = 27, speed = 0, offsetX = 0, offsetY = 0},
		["hold"] = {start = 28, stop = 28, speed = 0, offsetX = 0, offsetY = 0}
	},
	"off",
	false
)