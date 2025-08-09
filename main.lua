local gr = love.graphics

function love.load()
	gr.setDefaultFilter("nearest", "nearest")
	timer = require("libraries.hump.timer")

	require "libraries.gooi"

	require "src.world"
	require "src.player"

	require "src.utilities.ui"
	require "src.utilities.cam"

	--- this is just a background
	universe = gr.newImage("sprites/universe-2742113_1280.jpg")
end

function love.update(dt)
	world:update(dt)
	player:update(dt)

	timer.update(dt)
	cam.mechanic:update()
	UI:update(dt)
end

function love.draw()
	cam:attach()
	--- draw background
	gr.draw(universe, 0, 0)

	player:draw()
	cam:detach()

	UI:draw()
end
