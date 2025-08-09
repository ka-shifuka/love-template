---@class wfCollision
---@field getLinearVelocity fun(self): vx:number, vy:number
---@field getX fun(self): x:number
---@field getY fun(self): y:number
---@field getFriction fun(self): friction:number
---@field getAngle fun(self): angle:number
---@field getEnterCollisionData fun(self,classNam:string): table
---
---@field enter fun(self, className:string): boolean
---@field exit fun(self, className:string): boolean
---@field stay fun(self, className:string): boolean
---
---@field destroy fun(self)
---
---@field applyLinearImpulse fun(self, x:number, y:number)
---@field applyForce fun(self, x:number, y:number)
---
---@field setType fun(self, type:string)
---@field setFixedRotation fun(self, bool:boolean)
---@field setLinearVelocity fun(self, x:number, y:number)
---@field setMass fun(self, mass:number)
---@field setFriction fun(self, friction:number) 0 - 1
---@field setPreSolve fun(self, fun:function) callback
---@field setCollisionClass fun(self, name:string)
---@field setPosition fun(self, x:number, y:number)
---@field setSensor fun(self, bool:boolean)
---@field setAngle fun(self, angle:number)
---@field setDensity fun(self, density:number)








---@class hump.camera
---@field attach fun(self)
---@field detach fun(self)
---
---@field position fun(self): x:number, y:number
---
---@field zoom fun(self, multiple:number): hump.camera
---@field zoomTo fun(self, zoom:number): hump.camera
---@field lookAt fun(self, x:number, y:number): hump.camera
---@field smoother any
---@field x number
---@field y number
---
---@field mechanic any
