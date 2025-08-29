function love.load()
	require("source/startup")
	startup()
end

function love.update(dt)
end

function love.draw()
	local mem = collectgarbage("count")
	love.graphics.print(string.format("Mem Usage %d KB", mem), 50, 20)
	love.graphics.print("FPS " .. love.timer.getFPS(), 50, 40)
end
