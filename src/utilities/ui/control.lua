local gr = love.graphics

UIControl = {}
UIControl.group = "ui_control"

--- init style for this ui
gooi.setStyle({
	bgColor = hRGBA("#111111bb"),
	radius = 20
})

UIControl.joystick = gooi.newJoy({
		x = gr.getWidth() - 140,
		y = gr.getHeight() - 120,
		size = 100,

		group = UIControl.group
	})
	:anyPoint()

--- make style back to default so other ui can have thier style
gooi.setStyle(component.style)
