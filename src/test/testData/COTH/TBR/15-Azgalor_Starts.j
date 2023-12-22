function Trig_Azgalor_Starts_Func001Func001Func001Func001Func011C takes nothing returns boolean
    if(not(udg_HellishShroudOn==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Azgalor_Starts_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0C3'))then
    return false
    endif
    return true
    endfunction
    function Trig_Azgalor_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANta'))then
    return false
    endif
    return true
    endfunction
    function Trig_Azgalor_Starts_Func001Func003002003001001 takes nothing returns boolean
    return(IsUnitDeadBJ(GetFilterUnit())==false)
    endfunction
    function Trig_Azgalor_Starts_Func001Func003002003001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
    endfunction
    function Trig_Azgalor_Starts_Func001Func003002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Azgalor_Starts_Func001Func003002003001001(),Trig_Azgalor_Starts_Func001Func003002003001002())
    endfunction
    function Trig_Azgalor_Starts_Func001Func003002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Azgalor_Starts_Func001Func003002003002002 takes nothing returns boolean
    return(GetFilterUnit()!=gg_unit_Npld_0527)
    endfunction
    function Trig_Azgalor_Starts_Func001Func003002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Azgalor_Starts_Func001Func003002003002001(),Trig_Azgalor_Starts_Func001Func003002003002002())
    endfunction
    function Trig_Azgalor_Starts_Func001Func003002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Azgalor_Starts_Func001Func003002003001(),Trig_Azgalor_Starts_Func001Func003002003002())
    endfunction
    function Trig_Azgalor_Starts_Func001Func010002 takes nothing returns nothing
    call UnitRemoveAbilityBJ('A0CR',GetEnumUnit())
    endfunction
    function Trig_Azgalor_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0C1'))then
    return false
    endif
    return true
    endfunction
    function HowlOfTerrorDamage takes nothing returns nothing
        call UnitDamageTarget(gg_unit_Npld_0527, GetEnumUnit(), GetHeroStr(gg_unit_Npld_0527, true) * 0.3, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
    endfunction
    function Trig_Azgalor_Starts_Actions takes nothing returns nothing
    local group HowlGroupDamage = CreateGroup()
    if(Trig_Azgalor_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Npld_0527)
    set udg_HowlGroup=GetUnitsInRangeOfLocMatching(400.00,udg_TempPoint,Condition(function Trig_Azgalor_Starts_Func001Func003002003))
    call GroupEnumUnitsInRangeOfLoc(HowlGroupDamage, udg_TempPoint, 400, Condition( function Trig_Azgalor_Starts_Func001Func003002003 ))
    call ForGroup(HowlGroupDamage, function HowlOfTerrorDamage)
    call RemoveLocation(udg_TempPoint)
    call EnableTrigger(gg_trg_Howl_of_Terror_Move)
    call PolledWait(0.80)
    call DisableTrigger(gg_trg_Howl_of_Terror_Move)
    call DestroyGroup(udg_HowlGroup)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()),function Trig_Azgalor_Starts_Func001Func010002)
    else
    if(Trig_Azgalor_Starts_Func001Func001C())then
    call EnableTrigger(gg_trg_Scorched_Earth)
    call UnitAddAbilityBJ('A065',GetTriggerUnit())
    call UnitAddAbilityBJ('A0FN',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A0FN',GetTriggerUnit(),GetUnitAbilityLevelSwapped('ANta',GetTriggerUnit()))
    call PolledWait(6.00)
    call DisableTrigger(gg_trg_Scorched_Earth)
    call UnitRemoveAbilityBJ('A065',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A0FN',GetTriggerUnit())
    else
    if(Trig_Azgalor_Starts_Func001Func001Func001Func001C())then
    set udg_HellishShroudOn=true
    set udg_HellishShroud=(((I2R(GetUnitAbilityLevelSwapped('A0C3',gg_unit_Npld_0527))*100.00)+300.00)+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,gg_unit_Npld_0527)*0.20))
    call EnableTrigger(gg_trg_Hellish_Shroud_Damage)
    call EnableTrigger(gg_trg_Hellish_Shroud_Explode)
    call UnitAddAbilityBJ('A0C4',gg_unit_Npld_0527)
    call PlaySoundOnUnitBJ(gg_snd_DivineShield,100,gg_unit_Npld_0527)
    call SetTextTagPosUnitBJ(udg_HellishShroudText,gg_unit_Npld_0527,0)
    call SetTextTagTextBJ(udg_HellishShroudText,I2S(R2I(udg_HellishShroud)),10)
    call EnableTrigger(gg_trg_Shields_Move)
    call PolledWait(8.00)
    if(Trig_Azgalor_Starts_Func001Func001Func001Func001Func011C())then
    call TriggerExecute(gg_trg_Hellish_Shroud_Explode)
    else
    endif
    else
    endif
    endif
    endif
    call DestroyGroup(HowlGroupDamage)
    set HowlGroupDamage = null
    endfunction
    function InitTrig_Azgalor_Starts takes nothing returns nothing
    set gg_trg_Azgalor_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Azgalor_Starts,function Trig_Azgalor_Starts_Actions)
    endfunction