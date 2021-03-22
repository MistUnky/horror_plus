
--new corruption biome idea

minetest.register_biome({
	name = "horo_cor_biome",
	node_top = "horror:animflesh",
	depth_top = 1,
	node_stone = "horror:animflesh",
	node_water = "horror:bloodsource",
	node_river_water = "horror:bloodsource",
	node_riverbed = "horror:bloodsource",
	depth_riverbed = 2,
	y_min = -17,
	y_max = 31000,
	heat_point = 50,
	humidity_point = 50,
})




--plants"" ig

minetest.register_decoration({
	deco_type = "simple",
	place_on = "horror:animflesh",
	sidelen = 16,
	fill_ratio = 0.017,
	y_max = 30,
	y_min = 1,
	decoration = "horror:roach_spawner"
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "horror:animflesh",
	sidelen = 16,
	fill_ratio = 0.023,
	y_max = 30,
	y_min = 1,
	decoration = "horror:tree"
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "horror:animflesh",
	sidelen = 16,
	fill_ratio = 0.0069,
	y_max = 30,
	y_min = 1,
	decoration = "horror:cactus"
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "horror:animflesh",
	sidelen = 16,
	fill_ratio = 0.003,
	y_max = 30,
	y_min = 1,
	decoration = "horror:bottle"
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "horror:animflesh",
	sidelen = 16,
	fill_ratio = 0.003,
	y_max = 30,
	y_min = 1,
	decoration = "horror:jar"
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "horror:animflesh",
	sidelen = 16,
	fill_ratio = 0.003,
	y_max = 30,
	y_min = 1,
	decoration = "horror:head"
})
minetest.register_decoration({
	deco_type = "simple",
	place_on = "horror:animflesh",
	sidelen = 16,
	fill_ratio = 0.003,
	y_max = 30,
	y_min = 1,
	decoration = "horror:spiderweb"
})




--corruption slow abm with mod speed

horo_cor_speed = 5
horo_cor_spread = horo_cor_speed * horo_cor_speed

minetest.register_abm({
	nodenames = {"default:water_source", "default:river_water_source"},
	neighbors = {"horror:bloodsource", "horror:animflesh", "horror:smashed_glass", "horror:bookshelf", "horror:candlestick", "horror:lavastone", "horror:spiderweb", "horror:roach_spawner", "horror:tree", "horror:cactus", "horror:bottle", "horror:jar", "horror:head"},
	interval = horo_cor_speed,
	chance = horo_cor_spread,
	action = function(pos)
		minetest.set_node(pos, {name="horror:bloodsource"})
	end
})
minetest.register_abm({
	nodenames = {"default:dirt", "default:dirt_with_grass", "default:dirt_with_snow", "default:snow", "default:stone", "default:dirt_with_coniferous_litter", "default:snowblock", "default:ice", "default:dirt_with_rainforest_litter", "default:dirt_with_savanna_grass", "default:dry_dirt_with_dry_grass", "default:dirt_with_dry_grass", "default:desert_sand", "default:sand", "default:sandstone", "default:permafrost", "default:permafrost_with_moss", "default:permafrost_with_stones", "default:desert_stone", "default:desert_sandstone", "default:silver_sand", "default:silver_sandstone", "group:tree", "default:bush_stem", "default:acacia_bush_stem", "default:pine_bush_stem", "default:blueberry_bush_leaves", "default:blueberry_bush_leaves_with_berries", "default:cactus"},
	neighbors = {"horror:bloodsource", "horror:animflesh", "horror:smashed_glass", "horror:bookshelf", "horror:candlestick", "horror:lavastone", "horror:spiderweb", "horror:roach_spawner", "horror:tree", "horror:cactus", "horror:bottle", "horror:jar", "horror:head"},
	interval = horo_cor_speed,
	chance = horo_cor_spread,
	action = function(pos)
		minetest.set_node(pos, {name="horror:animflesh"})
	end
})
minetest.register_abm({
	nodenames = {"default:glass"},
	neighbors = {"horror:bloodsource", "horror:animflesh", "horror:smashed_glass", "horror:bookshelf", "horror:candlestick", "horror:lavastone", "horror:spiderweb", "horror:roach_spawner", "horror:tree", "horror:cactus", "horror:bottle", "horror:jar", "horror:head"},
	interval = horo_cor_speed,
	chance = horo_cor_spread,
	action = function(pos)
		minetest.set_node(pos, {name="horror:smashed_glass"})
	end
})
minetest.register_abm({
	nodenames = {"default:bookshelf"},
	neighbors = {"horror:bloodsource", "horror:animflesh", "horror:smashed_glass", "horror:bookshelf", "horror:candlestick", "horror:lavastone", "horror:spiderweb", "horror:roach_spawner", "horror:tree", "horror:cactus", "horror:bottle", "horror:jar", "horror:head"},
	interval = horo_cor_speed,
	chance = horo_cor_spread,
	action = function(pos)
		minetest.set_node(pos, {name="horror:bookshelf"})
	end
})
minetest.register_abm({
	nodenames = {"default:torch", "default:torch_wall", "default:torch_ceiling"},
	neighbors = {"horror:bloodsource", "horror:animflesh", "horror:smashed_glass", "horror:bookshelf", "horror:candlestick", "horror:lavastone", "horror:spiderweb", "horror:roach_spawner", "horror:tree", "horror:cactus", "horror:bottle", "horror:jar", "horror:head"},
	interval = horo_cor_speed,
	chance = horo_cor_spread,
	action = function(pos)
		minetest.set_node(pos, {name="horror:candlestick"})
	end
})
minetest.register_abm({
	nodenames = {"default:lava_source"},
	neighbors = {"horror:bloodsource", "horror:animflesh", "horror:smashed_glass", "horror:bookshelf", "horror:candlestick", "horror:lavastone", "horror:spiderweb", "horror:roach_spawner", "horror:tree", "horror:cactus", "horror:bottle", "horror:jar", "horror:head"},
	interval = horo_cor_speed,
	chance = horo_cor_spread,
	action = function(pos)
		minetest.set_node(pos, {name="horror:lavastone"})
	end
})
function horo_reg_deco_cor(nodedeco)
	minetest.register_abm({
		nodenames = {"carts:rail", "default:grass_2",  "default:grass_3",  "default:grass_4",  "default:grass_5",  "default:grass_1", "default:cotton_wild", "flowers:waterlily", "default:marram_grass_1", "default:marram_grass_2", "default:marram_grass_3", "flowers:dandelion_white", "flowers:tulip_black", "flowers:chrysanthemum_green", "flowers:dandelion_yellow", "flowers:tulip", "flowers:geranium", "flowers:viola", "flowers:rose", "default:fern_1", "default:fern_2", "default:fern_3", "default:dry_shrub", "flowers:mushroom_red", "flowers:mushroom_brown"},
		neighbors = {"horror:bloodsource", "horror:animflesh", "horror:smashed_glass", "horror:bookshelf", "horror:candlestick", "horror:lavastone", "horror:spiderweb", "horror:roach_spawner", "horror:tree", "horror:cactus", "horror:bottle", "horror:jar", "horror:head"},
		interval = horo_cor_speed,
		chance = horo_cor_spread,
		action = function(pos)
			minetest.set_node(pos, {name=nodedeco})
		end
	})
end
horo_reg_deco_cor("horror:roach_spawner")
horo_reg_deco_cor("horror:tree")
horo_reg_deco_cor("horror:cactus")
horo_reg_deco_cor("horror:bottle")
horo_reg_deco_cor("horror:jar")
horo_reg_deco_cor("horror:head")
horo_reg_deco_cor("horror:spiderweb")
horo_reg_deco_cor("horror:gfire")



--[[ --old instant horrirify abms replaced with new corruption biome
function horo_rep(node1s, node2)
	minetest.register_abm({
		nodenames = node1s,
		interval = 1,
		chance = 1,
		action = function(pos)
			minetest.set_node(pos, {name=node2})
		end
	})
end

horo_rep({"default:water_source"}, "horror:bloodsource")
horo_rep({"default:dirt", "default:dirt_with_grass"}, "horror:animflesh")
horo_rep({"default:glass"}, "horror:smashed_glass")
horo_rep({"default:bookshelf"}, "horror:bookshelf")
horo_rep({"default:torch", "default:torch_wall", "default:torch_ceiling"}, "horror:candlestick")
horo_rep({"default:lava_source"}, "horror:lavastone")
horo_rep({"carts:rail"}, "horror:spiderweb")
--]]




--crafts for certain items

minetest.register_craft({
	output="horror:speaker",
	recipe={
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
		{"default:steel_ingot","","default:steel_ingot"},
		{"default:steel_ingot","default:steel_ingot","default:steel_ingot"}
	}
})
minetest.register_craft({
	output="horror:keypad",
	recipe={
		{"default:gold_ingot","default:gold_ingot","default:gold_ingot"},
		{"default:gold_ingot","","default:gold_ingot"},
		{"default:gold_ingot","default:gold_ingot","default:gold_ingot"}
	}
})
minetest.register_craft({
	output="horror:phone",
	recipe={
		{"default:gold_ingot","default:steel_ingot","default:gold_ingot"},
		{"default:gold_ingot","","default:gold_ingot"},
		{"default:gold_ingot","","default:gold_ingot"}
	}
})
minetest.register_craft({
	output="horror:barrel",
	recipe={
		{"default:wood","","default:wood"},
		{"default:wood","","default:wood"},
		{"default:wood","default:wood","default:wood"}
	}
})
minetest.register_craft({
	output="horror:pentagram",
	recipe={
		{"","horror:bucket_blood",""},
		{"horror:bucket_blood","horror:bucket_blood","horror:bucket_blood"},
		{"horror:bucket_blood","","horror:bucket_blood"}
	}
})
minetest.register_craft({
	output="horror:glowsteel_block",
	recipe={
		{"horror:stone","horror:stone","horror:stone"},
		{"horror:stone","horror:stone","horror:stone"},
		{"horror:stone","horror:stone","horror:stone"}
	}
})
minetest.register_craft({
	output="horror:gloworb",
	recipe={
		{"horror:glowsteel_block","horror:glowsteel_block","horror:glowsteel_block"},
		{"horror:glowsteel_block","horror:glowsteel_block","horror:glowsteel_block"},
		{"horror:glowsteel_block","horror:glowsteel_block","horror:glowsteel_block"}
	}
})
minetest.register_craft({
	output="horror:sunorb",
	recipe={
		{"horror:gloworb","horror:gloworb","horror:gloworb"},
		{"horror:gloworb","horror:gloworb","horror:gloworb"},
		{"horror:gloworb","horror:gloworb","horror:gloworb"}
	}
})
minetest.register_craft({
	output="horror:ring",
	recipe={
		{"horror:sunorb","horror:sunorb","horror:sunorb"},
		{"horror:sunorb","horror:sunorb","horror:sunorb"},
		{"horror:sunorb","horror:sunorb","horror:sunorb"}
	}
})
