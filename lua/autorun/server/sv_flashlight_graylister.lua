include("sv_flashlight_graylister_config.lua")

local function HookDisableFlashlights(ply, newState)
	return not newState
end

hook.Add("Initialize", "FlashlightGraylister", function()
	ServerLog("[FlashlightGraylister] Initialize hook called.\n")

	local curmap = game.GetMap()
	local maps = flgraylist.maps

	local map_in_disable = table.HasValue(maps.disable, curmap)
	local map_in_enable = table.HasValue(maps.enable, curmap)

	local val = (map_in_disable == map_in_enable) and (flgraylist.default_action) or
		(map_in_disable and FL_DISABLE or FL_ENABLE)

	if val == FL_DISABLE then
		ServerLog("[FlashlightGraylister] Disabling flashlights.\n")
		hook.Add("PlayerSwitchFlashlight", "DisableALLDALIGHTS", HookDisableFlashlights)
	end
end)
