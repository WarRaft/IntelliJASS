
    function Trig_Griselda_Starts_Func001Func001Func006001003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Griselda_Starts_Func001Func001Func006001003001002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_MECHANICAL)==false)
    endfunction
    function Trig_Griselda_Starts_Func001Func001Func006001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Griselda_Starts_Func001Func001Func006001003001001(),Trig_Griselda_Starts_Func001Func001Func006001003001002())
    endfunction
    function Trig_Griselda_Starts_Func001Func001Func006001003002 takes nothing returns boolean
    return(IsUnitAlly(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Griselda_Starts_Func001Func001Func006001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Griselda_Starts_Func001Func001Func006001003001(),Trig_Griselda_Starts_Func001Func001Func006001003002())
    endfunction
    function Trig_Griselda_Starts_Func001Func001Func006A takes nothing returns nothing
    call SetUnitLifeBJ(GetEnumUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetEnumUnit())+((I2R(GetUnitAbilityLevelSwapped('A0FB',gg_unit_Ekee_0528))*15.00)+5.00)))
    endfunction
    function Trig_Griselda_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0FB'))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0DL'))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Starts_Actions takes nothing returns nothing
    if(Trig_Griselda_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Ekee_0528)
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A0DK',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A0DK',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0DL',gg_unit_Ekee_0528))
    call IssueTargetOrder(GetLastCreatedUnit(),"innerfire",GetSpellTargetUnit())
    call PlaySoundAtPointBJ(gg_snd_RestorationPotion,100,udg_TempPoint,0)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Griselda_Starts_Func001Func001C())then
    call EnableTrigger(gg_trg_Griselda_Heal)
    call AddSpecialEffectTargetUnitBJ("origin",gg_unit_Ekee_0528,"GriseldaHeal.mdx")
    set udg_EssenceSE=GetLastCreatedEffectBJ()
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(400.00,udg_TempPoint,Condition(function Trig_Griselda_Starts_Func001Func001Func006001003)),function Trig_Griselda_Starts_Func001Func001Func006A)
    call RemoveLocation(udg_TempPoint)
    set udg_Essence=1
    else
    endif
    endif
    endfunction
    function InitTrig_Griselda_Starts takes nothing returns nothing
    set gg_trg_Griselda_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Griselda_Starts,function Trig_Griselda_Starts_Actions)
    endfunction