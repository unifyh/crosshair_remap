local mod = get_mod("crosshair_remap")

-- Not part of localization. DO NOT CHANGE.

mod.vanilla_names = {
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

mod.custom_names = Mods.file.dofile(mod.custom_dir .. "LIST")

mod.all_names = {}
for _, name in ipairs(mod.vanilla_names) do
	table.insert(mod.all_names, name)
end
for _, name in ipairs(mod.custom_names) do
	table.insert(mod.all_names, name)
end

-- Localization starts here

local crosshair_name_loc = {
	assault = {
		en = "Assault",
		["zh-cn"] = "突击",
	},
	bfg = {
		en = "BFG",
		["zh-cn"] = "BFG",
	},
	charge_up = {
		en = "Charge Up",
		["zh-cn"] = "充能",
	},
	charge_up_ads = {
		en = "Charge Up ADS",
		["zh-cn"] = "充能机瞄",
	},
	cross = {
		en = "Cross",
		["zh-cn"] = "十字",
	},
	dot = {
		en = "Dot",
		["zh-cn"] = "单点",
	},
	ironsight = {
		en = "Ironsight",
		["zh-cn"] = "机瞄",
	},
	projectile_drop = {
		en = "Projectile Drop",
		["zh-cn"] = "弹道下坠",
	},
	shotgun = {
		en = "Shotgun",
		["zh-cn"] = "霰弹",
	},
	spray_n_pray = {
		en = "Spray-n-Pray",
		["zh-cn"] = "扫射",
	},
	none = {
		en = "None",
		["zh-cn"] = "无准星",
	},
}

local locres = {
	mod_name = {
		en = "Crosshair Remap",
		["zh-cn"] = "准星自定义",
	},
	mod_description = {
		en = "Remap crosshairs.",
		["zh-cn"] = "重新映射武器准星。",
	},
}

for k, v in pairs(crosshair_name_loc) do
	locres[k .. "_setting"] = v
	locres[k .. "_loc_id"] = v
end

for _, name in ipairs(mod.custom_names) do
	locres[name .. "_loc_id"] = {
		en = "> " .. name
	}
end

return locres
