function love.conf(t)
	local GAME_TITLE = "l2d template"

	t.identity = GAME_TITLE
	t.appendidentity = false
	t.version = "11.0"
	t.console = false
	t.accelerometerjoystick = true
	t.externalstorage = false
	t.gammacorrect = false

	t.audio.mic = false
	t.audio.mixwithsystem = true

	t.window.title = GAME_TITLE
	t.window.icon = nil


	t.window.width = 800
	t.window.height = 400
	t.window.fullscreen = true

	t.window.borderless = false
	t.window.resizable = false
	t.window.minwidth = 1
	t.window.minheight = 1
	t.window.fullscreentype = "desktop"
	t.window.vsync = 1
	t.window.msaa = 0
	t.window.depth = nil
	t.window.stencil = nil
	t.window.display = 1
	t.window.highdpi = false
	t.window.usedpiscale = true
	t.window.x = nil
	t.window.y = nil

	t.modules.audio = true
	t.modules.data = true
	t.modules.event = true
	t.modules.font = true
	t.modules.graphics = true
	t.modules.image = true
	t.modules.joystick = true
	t.modules.keyboard = true
	t.modules.math = true
	t.modules.mouse = true
	t.modules.physics = true
	t.modules.sound = true
	t.modules.system = true
	t.modules.thread = true
	t.modules.timer = true
	t.modules.touch = true
	t.modules.video = true
	t.modules.window = true
end
