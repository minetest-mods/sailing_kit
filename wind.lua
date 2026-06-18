local yaw = math.random() * math.pi * 2 - math.pi
local wind = vector.multiply(minetest.yaw_to_dir(yaw), 10)
local timer = 0
local ttime = math.random() * 5 * 60 + 1 * 60

minetest.register_globalstep(function(dtime)
	timer = timer + dtime
	if timer >= ttime then
		yaw = minetest.dir_to_yaw(wind) + math.random() - 0.5
		wind = vector.multiply(minetest.yaw_to_dir(yaw), 10)
		ttime = timer + math.random() * 5 * 60 + 1 * 60
	end
end)

return function()
	return wind
end
