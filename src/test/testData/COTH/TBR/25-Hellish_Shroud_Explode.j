function Trig_Hellish_Shroud_Explode_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0C4'))then
    return false
    endif
    return true
    endfunction
    function Trig_Hellish_Shroud_Explode_Func013002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==false)
    endfunction
    function Trig_Hellish_Shroud_Explode_Func013002003002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Hellish_Shroud_Explode_Func013002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Hellish_Shroud_Explode_Func013002003001(),Trig_Hellish_Shroud_Explode_Func013002003002())
    endfunction
    function Trig_Hellish_Shroud_Explode_Func015A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Npld_0527,GetEnumUnit(),udg_HellishShroudDamage,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Hellish_Shroud_Explode_Actions takes nothing returns nothing
    set udg_HellishShroudOn=false
    call SetTextTagTextBJ(udg_HellishShroudText,"",10)
    call DisableTrigger(gg_trg_Hellish_Shroud_Damage)
    call DisableTrigger(GetTriggeringTrigger())
    call AddSpecialEffectTargetUnitBJ("origin",gg_unit_Npld_0527,"Arcane Explosion.mdx")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call PlaySoundOnUnitBJ(gg_snd_SoulGem,100,gg_unit_Npld_0527)
    call UnitRemoveAbilityBJ('A0C4',gg_unit_Npld_0527)
    call PolledWait(0.20)
    set udg_HellishShroudDamage=((udg_HellishShroudDamage*((I2R(GetUnitAbilityLevelSwapped('A0C3',gg_unit_Npld_0527))*0.10)+0.40))+((I2R(GetUnitAbilityLevelSwapped('A0C3',gg_unit_Npld_0527))*75.00)+200.00))
    call SetTextTagTextBJ(udg_HellishShroudText,(I2S(R2I(udg_HellishShroudDamage))+"!"),15.00)
    set udg_TempPoint=GetUnitLoc(gg_unit_Npld_0527)
    set udg_HellishShroudGroup=GetUnitsInRangeOfLocMatching(330.00,udg_TempPoint,Condition(function Trig_Hellish_Shroud_Explode_Func013002003))
    call RemoveLocation(udg_TempPoint)
    call ForGroupBJ(udg_HellishShroudGroup,function Trig_Hellish_Shroud_Explode_Func015A)
    call UnitRemoveBuffBJ('B03T',gg_unit_Npld_0527)
    call DestroyGroup(udg_HellishShroudGroup)
    set udg_HellishShroud=0.00
    set udg_HellishShroudDamage=0.00
    call PolledWait(0.90)
    call SetTextTagTextBJ(udg_HellishShroudText,"",10)
    endfunction
    function InitTrig_Hellish_Shroud_Explode takes nothing returns nothing
    set gg_trg_Hellish_Shroud_Explode=CreateTrigger()
    call DisableTrigger(gg_trg_Hellish_Shroud_Explode)
    call TriggerRegisterUnitEvent(gg_trg_Hellish_Shroud_Explode,gg_unit_Npld_0527,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Hellish_Shroud_Explode,Condition(function Trig_Hellish_Shroud_Explode_Conditions))
    call TriggerAddAction(gg_trg_Hellish_Shroud_Explode,function Trig_Hellish_Shroud_Explode_Actions)
    endfunction