Hooks:PostHook(CharacterTweakData,"init","mark_init",function(self)

--markable ZEAL sniper, also making him not be able to surrender
	self.heavy_swat_sniper.tags = {"law","sniper","special"}
	self.heavy_swat_sniper.priority_shout = "f34"
	self.heavy_swat_sniper.surrender = false
end)