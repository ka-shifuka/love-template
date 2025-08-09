local wf = require("libraries.windfield")

local gravityXForce = 0
local gravityYForce = 0
world = wf.newWorld(gravityXForce, gravityYForce)

--- class enum
world.class = {
    player = "player"
}

world:addCollisionClass(world.class.player)
