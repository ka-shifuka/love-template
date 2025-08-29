function startup()
	math.randomseed(os.time())
	love.graphics.setDefaultFilter("nearest", "nearest")

	---require
	require("source/startup/require")
end
