-- This file is for use with Corona(R) SDK
--
-- This file is automatically generated with PhysicsEdtior (http://physicseditor.de). Do not edit
--
-- Usage example:
--			local scaleFactor = 1.0
--			local physicsData = (require "shapedefs").physicsData(scaleFactor)
--			local shape = display.newImage("objectname.png")
--			physics.addBody( shape, physicsData:get("objectname") )
--

-- copy needed functions to local scope
local unpack = unpack
local pairs = pairs
local ipairs = ipairs

module(...)

function physicsData(scale)
	local physics = { data =
	{ 
		
		["object"] = {
			
				{
					density = 10, friction = 25, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   7.5, -15.5  ,  6.5, 4.5  ,  -12.5, 15.5  ,  -7.5, 0.5  ,  -1, -13  ,  3, -19  }
				}  ,
				{
					density = 10, friction = 25, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   -1, -13  ,  -7.5, 0.5  ,  -8.5, -11.5  }
				}  ,
				{
					density = 10, friction = 25, bounce = 0, 
					filter = { categoryBits = 1, maskBits = 65535 },
					shape = {   11.5, 15.5  ,  6.5, 19.5  ,  -6, 21  ,  -12.5, 15.5  ,  6.5, 4.5  }
				}  
		}
		
	} }

	-- apply scale factor
	local s = scale or 1.0
	for bi,body in pairs(physics.data) do
		for fi,fixture in ipairs(body) do
			for ci,coordinate in ipairs(fixture.shape) do
				fixture.shape[ci] = s * coordinate
			end
		end
	end
	
	function physics:get(name)
		return unpack(self.data[name])
	end
	
	return physics;
end


