local mod = get_mod("crosshair_remap")

mod.mapping = {}

local function collect_settings()
    for _, name in ipairs(mod.vanilla_names) do
        mod.mapping[name] = mod:get(name .. "_setting")
    end
end

mod.on_enabled = function()
    collect_settings()
end

mod.on_setting_changed = function()
    collect_settings()
end

mod:hook("HudElementCrosshair", "_get_current_crosshair_type", function(func, self)
    local crosshair_type = func(self)
    return mod.mapping[crosshair_type]
end)

mod:hook_safe("HudElementCrosshair", "init", function(self, ...)
    local scenegraph_id = "pivot"
    for _, name in ipairs(mod.custom_names) do
        local template = Mods.file.dofile(mod.custom_dir .. name)
        template.name = name
        self._crosshair_templates[name] = template
		self._crosshair_widget_definitions[name] = template:create_widget_defintion(scenegraph_id)
    end
end)
