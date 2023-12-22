function Trig_Fireball_Damage_from_intellect_Conditions takes nothing returns boolean
    return GetSpellAbilityId() == 'A06I'
endfunction

function Fireball_Condition takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), Player(6))
endfunction

function Fireball_Damage takes nothing returns nothing
    local real Damage = GetHeroInt(gg_unit_Hkal_0491, true) * 1.25
    call UnitDamageTarget(gg_unit_Hkal_0491, GetEnumUnit(), Damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
endfunction

function Trig_Fireball_Damage_from_intellect_Actions takes nothing returns nothing
    local group FireballGroup = CreateGroup()
    call PolledWait(DistanceBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()) / 500 * 0.15)
    call GroupEnumUnitsInRangeOfLoc(FireballGroup, GetSpellTargetLoc(), 140, Condition( function Fireball_Condition ))
    call ForGroup(FireballGroup, function Fireball_Damage)
    call DestroyGroup(FireballGroup)
    set FireballGroup = null
endfunction

//===========================================================================
function InitTrig_Fireball_Damage_from_intellect takes nothing returns nothing
    set gg_trg_Fireball_Damage_from_intellect = CreateTrigger(  )
    call TriggerRegisterUnitEvent( gg_trg_Fireball_Damage_from_intellect, gg_unit_Hkal_0491, EVENT_UNIT_SPELL_EFFECT )
    call TriggerAddCondition( gg_trg_Fireball_Damage_from_intellect, Condition( function Trig_Fireball_Damage_from_intellect_Conditions ) )
    call TriggerAddAction( gg_trg_Fireball_Damage_from_intellect, function Trig_Fireball_Damage_from_intellect_Actions )
endfunction

