-- 22.5 is heavy damage and 6.75 is light swat dmg number to be multiplied by 10, 225 and 67.5
-- will be for light 75 at point blank
-- will be for heavy 100 at point blank
-- thanks Offyerrocker for crackdown damage infos

local old_PlayerDamage_damage_bullet = PlayerDamage.damage_bullet
log("MxPlayerDamage")
function PlayerDamage:damage_bullet(attack_data)
    local show_log = false
    if not self:_chk_can_take_dmg() then
        return
    end
    local distance = mvector3.distance(self._unit:position(), attack_data.attacker_unit:position()) / 100
    local new_damage = attack_data.damage
	
     if attack_data.attacker_unit:base()._tweak_table == "zeal_heavy_swat" then
        new_damage = self:heavy_swat_damage(distance)
    end
	
	--zeal sniper
	if attack_data.attacker_unit:base()._tweak_table == "heavy_swat_sniper" then
        new_damage = self:heavy_sniper_damage(distance)
    end

    if show_log then -- log disabler on enabler
        log(
            "ill be damaged from" ..
                tostring(distance) .. "by " .. tostring(new_damage) .. " instead of " .. tostring(attack_data.damage)
        )
    end
    attack_data.damage = new_damage
    old_PlayerDamage_damage_bullet(self, attack_data)
end

--heavy swat damage

function PlayerDamage:heavy_swat_damage(distance)
    local new_damage = 0
    if distance <= 5 then
        new_damage = 110
    elseif distance <= 10 then
        new_damage = 103
    elseif distance <= 20 then
        new_damage = 100
    elseif distance <= 25 then
        new_damage = 95
    elseif distance <= 30 then
        new_damage = 60
    elseif distance <= 60 then
        new_damage = 52
    else -- must be over 45 than
        new_damage = 48
    end
    return new_damage / 10
end

function PlayerDamage:heavy_sniper_damage(distance)
    local new_damage = 0
    if distance <= 5 then
        new_damage = 200
    elseif distance <= 10 then
        new_damage = 160
    elseif distance <= 20 then
        new_damage = 80
    elseif distance <= 30 then
        new_damage = 60
    else -- must be over 45 than
        new_damage = 48
    end
    return new_damage / 10
end
