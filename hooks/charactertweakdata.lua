Hooks:PostHook(CharacterTweakData,"init","mark_init",function(self)

--ZEAL jarate man tweaks
	self.heavy_swat_sniper.tags = {"law","sniper","special"}
	self.heavy_swat_sniper.priority_shout = "f34"
	self.heavy_swat_sniper.surrender = false
	self.heavy_swat_sniper.HEALTH_INIT = 20
	
	--medic dozer nerf
	self.tank_medic.HEALTH_INIT = 1400
end)