dofile(minetest.get_modpath("aggressormob").."/api.lua")
--
mmobs:register_mob("aggressormob:aggressormob", {
	type = "monster",
	hp_max = 40,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "aggressormob.x",
	textures = {"aggressormob.png"},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 6,
	walk_velocity = 3.8,
	run_velocity = 9,
	damage = 0.5,

	drops = {
		{name = "default:mese",
		chance = 1,
		min = 3,
		max = 5,},
	},
	light_resistant = true,
	armor = 50,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 10,
	light_damage = 0,sounds = {
		attack = "mmobs_bullet",
	},
	attack_type = "shoot",
	arrow = "aggressormob:bullet",
	shoot_interval = 0.25,
	sounds = {
		attack = "mmobs_bullet",
	},
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	}
})
mmobs:register_spawn("aggressormob:aggressormob", {"default:dirt_with_grass","default:desert_stone", "default:mossycobble"}, 6, -1, 7000, 7, 30000)

mmobs:register_arrow("aggressormob:bullet", {
	visual = "sprite",
	visual_size = {x = 0.275, y = 0.275},
	textures = {"aggressormob_bullet.png"},
	velocity = 18,
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x =s.x-p.x, y =s.y-p.y, z =s.z-p.z}
		player:punch(self.object, 1.0,  {
			full_punch_interval= 1.0,
			damage_groups = {fleshy = 0.55},
		}, vec)
		local pos = self.object:getpos()
		for dx = -1, 1 do
			for dy = -1, 1 do
				for dz = -1, 1 do
					local p = {x = pos.x + dx, y = pos.y + dy, z = pos.z + dz}
					local n = minetest.get_node(pos).name
				end
			end
		end
	end,
	hit_node = function(self, pos, node)
		for dx = -1, 1 do
			for dy = -2, 1 do
				for dz = -1, 1 do
					local p = {x = pos.x + dx, y = pos.y + dy, z = pos.z + dz}
					local n = minetest.get_node(pos).name
				end
			end
		end
	end
})

mmobs:register_mob("aggressormob:aggressormob2", {
	type = "monster",
	hp_max = 50,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "aggressormob2.x",
	textures = {"aggressormob2.png"},
	visual_size = {x=1.42, y=1},
	makes_footstep_sound = true,
	view_range = 13,
	walk_velocity = 1.8,
	run_velocity = 5,
	damage = 2,

	drops = {
		{name = "default:mese",
		chance = 1,
		min = 0,
		max = 2,},
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,sounds = {
		attack = "mmobs_bullet2",
	},
	attack_type = "shoot",
	arrow = "aggressormob:bullet2",
	shoot_interval = 3,
	sounds = {
		attack = "mmobs_fireball_explode",
	},
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 150,
		punch_end = 160,
	}
})
mmobs:register_spawn("aggressormob:aggressormob2", {"default:dirt_with_grass","default:sand", "default:desert_stone", "default:mossycobble"}, 8, -1, 7000, 10, 30000)

mmobs:register_arrow("aggressormob:bullet2", {
	visual = "sprite",
	visual_size = {x = 0.75, y = 0.75},
	textures = {"aggressormob_bullet2.png"},
	velocity = 15,
	hit_player = function(self, player)
		local s = self.object:getpos()
		local p = player:getpos()
		local vec = {x =s.x-p.x, y =s.y-p.y, z =s.z-p.z}
		player:punch(self.object, 3.0,  {
			full_punch_interval= 3.0,
			damage_groups = {fleshy = 3},
		}, vec)
		local pos = self.object:getpos()
		for dx = -1, 1 do
			for dy = -1, 1 do
				for dz = -1, 1 do
					local p = {x = pos.x + dx, y = pos.y + dy, z = pos.z + dz}
					local n = minetest.get_node(pos).name
				end
			end
		end
	end,
	hit_node = function(self, pos, node)
		for dx = -1, 1 do
			for dy = -2, 1 do
				for dz = -1, 1 do
					local p = {x = pos.x + dx, y = pos.y + dy, z = pos.z + dz}
					local n = minetest.get_node(pos).name
				end
			end
		end
	end
})

mmobs:register_mob("aggressormob:applmons", {
	type = "monster",
	hp_max = 35,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.0, 0.4},
	visual = "mesh",
	mesh = "applmons.x",
	textures = {"applmons.png"},
	visual_size = {x=3.6, y=2.6},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1,
	run_velocity = 5,
	damage = 2,
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 3,
		max = 50,},
	},
	armor = 100,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 2,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 35,
		stand_start = 0,
		stand_end = 14,
		walk_start = 15,
		walk_end = 38,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	}
})
mmobs:register_spawn("aggressormob:applmons", { "default:stone", "default:desert_stone", "default:cobble", "default:mossycobble"}, 10, -1, 7000, 5, 30000)


if minetest.setting_get("log_mods") then
	minetest.log("action", "aggressormob loaded")
end
