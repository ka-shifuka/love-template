local gr = love.graphics

player = {}
player.x = gr.getWidth() / 2 - 25
player.y = gr.getHeight() / 2 - 25
player.speed = 300
player.angle = 0
player.direction = "right"

player.image = gr.newImage("sprites/kanada.png")
player.scy = 0.3

local tween = require("libraries.tween")
player.tween = tween.new(1, player, { scy = 0.25 })
player.tweendir = true

function player:update(dt)
	self.x = self.x + (UIControl.joystick:xValue() * self.speed * dt)
	self.y = self.y + (UIControl.joystick:yValue() * self.speed * dt)

	local jx = UIControl.joystick:xValue()
	local jy = UIControl.joystick:yValue()

	if jx > 0 then self.direction = "right" end
	if jx < 0 then self.direction = "left" end

	if jx ~= 0 or jx ~= 0 then
		self.angle = ((jy + 1) * math.rad(90)) - math.rad(90)
	end
end

function player:draw()
	gr.push()
	gr.translate(self.x, self.y)

	local scaling = 0.3

	if self.direction == "right" then
		gr.scale(scaling, self.scy)
		gr.rotate(self.angle)
		gr.draw(self.image, -(self.image:getWidth() / 2), -(self.image:getHeight() / 2))
	else
		gr.scale(-(scaling), self.scy)
		gr.rotate(self.angle)
		gr.draw(self.image, -(self.image:getWidth() / 2), -(self.image:getHeight() / 2))
	end

	gr.pop()
end
