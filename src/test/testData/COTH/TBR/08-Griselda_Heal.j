function Trig_Griselda_Heal_Func001Func007001003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Griselda_Heal_Func001Func007001003001002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_MECHANICAL)==false)
    endfunction
    function Trig_Griselda_Heal_Func001Func007001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Griselda_Heal_Func001Func007001003001001(),Trig_Griselda_Heal_Func001Func007001003001002())
    endfunction
    function Trig_Griselda_Heal_Func001Func007001003002 takes nothing returns boolean
    return(IsUnitAlly(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Griselda_Heal_Func001Func007001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Griselda_Heal_Func001Func007001003001(),Trig_Griselda_Heal_Func001Func007001003002())
    endfunction
    function Trig_Griselda_Heal_Func001Func007A takes nothing returns nothing
    call SetUnitLifeBJ(GetEnumUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetEnumUnit())+((GetUnitStateSwap(UNIT_STATE_MAX_LIFE,gg_unit_Ekee_0528)*(I2R(GetUnitAbilityLevelSwapped('A0FB',gg_unit_Ekee_0528))*0.01))+(I2R(GetHeroStatBJ(bj_HEROSTAT_AGI,gg_unit_Ekee_0528,true))*0.10))))
    endfunction
    function Trig_Griselda_Heal_Func001Func010C takes nothing returns boolean
    if(not(udg_EssenceCounter==7))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Heal_Func001C takes nothing returns boolean
    if(not(udg_EssenceCounter<8))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Heal_Actions takes nothing returns nothing
    if(Trig_Griselda_Heal_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Ekee_0528)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(400.00,udg_TempPoint,Condition(function Trig_Griselda_Heal_Func001Func007001003)),function Trig_Griselda_Heal_Func001Func007A)
    call RemoveLocation(udg_TempPoint)
    set udg_EssenceCounter=(udg_EssenceCounter+1)
    if(Trig_Griselda_Heal_Func001Func010C())then
    call DestroyEffect(udg_EssenceSE)
    else
    endif
    else
    call DisableTrigger(GetTriggeringTrigger())
    set udg_Essence=0
    set udg_EssenceCounter=0
    endif
    endfunction
    function InitTrig_Griselda_Heal takes nothing returns nothing
    set gg_trg_Griselda_Heal=CreateTrigger()
    call DisableTrigger(gg_trg_Griselda_Heal)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Griselda_Heal,1.00)
    call TriggerAddAction(gg_trg_Griselda_Heal,function Trig_Griselda_Heal_Actions)
    endfunction