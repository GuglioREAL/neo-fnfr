return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("week2/TVL")),
    	-- Automatically generated from XO_TV_L.xml
	{
		{x = 0, y = 0, width = 802, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 806, offsetHeight = 600}, -- 1: BG SPEAKERS TVS0000
		{x = 0, y = 0, width = 802, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 806, offsetHeight = 600}, -- 2: BG SPEAKERS TVS0001
		{x = 812, y = 0, width = 806, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: BG SPEAKERS TVS0002
		{x = 812, y = 0, width = 806, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: BG SPEAKERS TVS0003
		{x = 0, y = 610, width = 802, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 806, offsetHeight = 600}, -- 5: BG SPEAKERS TVS0004
		{x = 0, y = 610, width = 802, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 806, offsetHeight = 600} -- 6: BG SPEAKERS TVS0005
	},
	{
        ["anim"] = {start = 1, stop = 6, speed = 24, offsetX = 0, offsetY = 0}
    },
    "anim",
    false
)