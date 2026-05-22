local yaw = math.random() * math.pi * 2 - math.pi
local wind = vector.multiply(core.yaw_to_dir(yaw), 10)
local timer = 0
local ttime = math.random() * 5 * 60 + 1 * 60

core.register_globalstep(function(dtime)
	timer = timer + dtime
	if timer >= ttime then
		yaw = core.dir_to_yaw(wind) + math.random() - 0.5
		wind = vector.multiply(core.yaw_to_dir(yaw), 10)
		ttime = timer + math.random() * 5 * 60 + 1 * 60
	end
end)

return function()
	return wind
end
