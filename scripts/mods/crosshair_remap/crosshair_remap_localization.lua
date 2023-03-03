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
	},
	bfg = {
		en = "BFG",
	},
	charge_up = {
		en = "Charge Up",
	},
	charge_up_ads = {
		en = "Charge Up ADS",
	},
	cross = {
		en = "Cross",
	},
	dot = {
		en = "Dot",
	},
	ironsight = {
		en = "Ironsight",
	},
	projectile_drop = {
		en = "Projectile Drop",
	},
	shotgun = {
		en = "Shotgun",
	},
	spray_n_pray = {
		en = "Spray-n-Pray",
	},
	none = {
		en = "None",
	},
}

local locres = {
	mod_name = {
		en = "Crosshair Remap",
	},
	mod_description = {
		en = "Remap crosshairs.",
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
