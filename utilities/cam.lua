local camera = require "library.hump.camera"

--- global camera utilities
---@type hump.camera
cam = camera()
cam.smoother = camera.smooth.linear(100)
cam.mechanic = {}

cam.mechanic.springStrength = 0.045
cam.mechanic.damping = 0.5
cam.mechanic.velocity = { x = 0, y = 0 }
cam.mechanic.delta = { x = 0, y = 0 }

cam:zoomTo(1)
cam:lookAt(player.x, player.y)

function cam.mechanic:update()
	local targetX, targetY = player.x, player.y
	local camX = cam.x + self.velocity.x
	local camY = cam.y + self.velocity.y

	self.velocity.x = self.velocity.x + (targetX - camX) * self.springStrength
	self.velocity.y = self.velocity.y + (targetY - camY) * (self.springStrength)

	self.velocity.x = self.velocity.x * self.damping
	self.velocity.y = self.velocity.y * (self.damping - 0.3)

	self.delta.x = camX + self.velocity.x
	self.delta.y = camY + self.velocity.y

	-- local camTransitionY = gr.getHeight() / 2 + ((player.y - gr.getHeight() / 2) / 2)

	cam:lookAt(self.delta.x, self.delta.y)
end
