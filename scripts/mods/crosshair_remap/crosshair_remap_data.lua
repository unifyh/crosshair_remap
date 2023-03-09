local mod = get_mod("crosshair_remap")

local function make_options()
	local options = {}
	for i, name in ipairs(mod.all_names) do
		options[i] = {
			text = name .. "_loc_id",
			value = name
		}
	end
	return options
end

local function make_widgets()
	local widgets = {}
	for i, name in ipairs(mod.vanilla_names) do
		widgets[i] = {
			setting_id = name .. "_setting",
			type = "dropdown",
			default_value = name,
			options = make_options()
		}
	end
	return widgets
end

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = make_widgets()
	}
}
