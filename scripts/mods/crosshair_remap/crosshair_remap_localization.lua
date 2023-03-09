local mod = get_mod("crosshair_remap")

-- Not part of localization. DO NOT CHANGE.

mod.vanilla_crosshair_names = {
	"assault",
	"bfg",
	"charge_up",
	"charge_up_ads",
	"cross",
	"dot",
	"ironsight",
	"projectile_drop",
	"shotgun",
	"spray_n_pray",
	"none",
}

mod.custom_dir = "crosshair_remap/custom_crosshairs/"

mod.custom_crosshair_names = Mods.file.dofile(mod.custom_dir .. "LIST")

mod.all_crosshair_names = {}
for _, name in ipairs(mod.vanilla_crosshair_names) do
	table.insert(mod.all_crosshair_names, name)
end
for _, name in ipairs(mod.custom_crosshair_names) do
	table.insert(mod.all_crosshair_names, name)
end

-- Localization starts here

local locres = {
	mod_name = {
		en = "Crosshair Remap",
		["zh-cn"] = "准星自定义",
	},
	mod_description = {
		en = "Remap crosshairs.",
		["zh-cn"] = "重新映射武器准星。",
	},

	assault_crosshair = {
		en = "Assault",
		["zh-cn"] = "突击",
	},
	bfg_crosshair = {
		en = "BFG",
		["zh-cn"] = "BFG",
	},
	charge_up_crosshair = {
		en = "Charge Up",
		["zh-cn"] = "充能",
	},
	charge_up_ads_crosshair = {
		en = "Charge Up ADS",
		["zh-cn"] = "充能机瞄",
	},
	cross_crosshair = {
		en = "Cross",
		["zh-cn"] = "十字",
	},
	dot_crosshair = {
		en = "Dot",
		["zh-cn"] = "单点",
	},
	ironsight_crosshair = {
		en = "Ironsight",
		["zh-cn"] = "机瞄",
	},
	projectile_drop_crosshair = {
		en = "Projectile Drop",
		["zh-cn"] = "弹道下坠",
	},
	shotgun_crosshair = {
		en = "Shotgun",
		["zh-cn"] = "霰弹",
	},
	spray_n_pray_crosshair = {
		en = "Spray-n-Pray",
		["zh-cn"] = "扫射",
	},
	none_crosshair = {
		en = "None",
		["zh-cn"] = "无准星",
	},
}

for _, name in ipairs(mod.custom_crosshair_names) do
	locres[name .. "_crosshair"] = {
		en = "> " .. name
	}
end

return locres
