local mod = get_mod("crosshair_remap")

local function make_options()
	local options = {}
	for i, name in ipairs(mod.all_crosshair_names) do
		options[i] = {
			text = name .. "_crosshair",
			value = name
		}
	end
	return options
end

local function make_widgets()
	local widgets = {}
	for i, name in ipairs(mod.vanilla_crosshair_names) do
		widgets[i] = {
			setting_id = name .. "_crosshair",
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
