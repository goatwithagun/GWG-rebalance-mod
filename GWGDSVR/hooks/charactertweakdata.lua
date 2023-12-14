Hooks:PostHook(CharacterTweakData,"init","mark_init",function(self)

--ZEAL jarate man tweaks
	self.heavy_swat_sniper.tags = {"law","sniper","special"}
	self.heavy_swat_sniper.priority_shout = "f34"
	self.heavy_swat_sniper.surrender = false
	self.heavy_swat_sniper.HEALTH_INIT = 30
	self.heavy_swat_sniper.suppression = false
	
	--medic dozer nerf
end)
