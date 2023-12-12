old_award = AchievmentManager.award
function AchievmentManager:award(id)
	if Global.game_settings and Global.game_settings.difficulty == 'sm_wish' then
		return
	end
	old_award(self, id)
end
