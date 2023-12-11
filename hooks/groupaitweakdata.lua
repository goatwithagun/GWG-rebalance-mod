local old_init = GroupAITweakData.init
function GroupAITweakData:init(tweak_data)
	old_init(self, tweak_data)
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	if difficulty == "sm_wish" then
		--better way to do it than overriding the function and messing up all the spawn groups
		--this way avoids updates breaking things, such as adding a new ai type like zombie during halloween
		table.remove(self.unit_categories.marshal_marksman.unit_types.america, 1)
		table.insert(self.unit_categories.marshal_marksman.unit_types.america, Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"))
	end

end