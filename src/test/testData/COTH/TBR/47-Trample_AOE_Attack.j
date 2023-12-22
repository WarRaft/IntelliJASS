function Trig_Trample_AOE_Attack_Func002002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Trample_AOE_Attack_Func002002003001002 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Trample_AOE_Attack_Func002002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Trample_AOE_Attack_Func002002003001001(),Trig_Trample_AOE_Attack_Func002002003001002())
    endfunction
    function Trig_Trample_AOE_Attack_Func002002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING)==false)
    endfunction
    function Trig_Trample_AOE_Attack_Func002002003002002001 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_TrampleAlreadySlide)==false)
    endfunction
    function Trig_Trample_AOE_Attack_Func002002003002002002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='Nplh')
    endfunction
    function Trig_Trample_AOE_Attack_Func002002003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Trample_AOE_Attack_Func002002003002002001(),Trig_Trample_AOE_Attack_Func002002003002002002())
    endfunction
    function Trig_Trample_AOE_Attack_Func002002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Trample_AOE_Attack_Func002002003002001(),Trig_Trample_AOE_Attack_Func002002003002002())
    endfunction
    function Trig_Trample_AOE_Attack_Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Trample_AOE_Attack_Func002002003001(),Trig_Trample_AOE_Attack_Func002002003002())
    endfunction
    function Trig_Trample_AOE_Attack_Func003Func001C takes nothing returns boolean
    if(not(GetEnumUnit()==udg_TrampleTarget))then
    return false
    endif
    return true
    endfunction
    function Trig_Trample_AOE_Attack_Func003A takes nothing returns nothing
    if(Trig_Trample_AOE_Attack_Func003Func001C())then
    call UnitDamageTargetBJ(gg_unit_Nplh_0487,udg_TrampleTarget,(I2R(GetUnitAbilityLevelSwapped('A05U',gg_unit_Nplh_0487))*50.00),ATTACK_TYPE_CHAOS,DAMAGE_TYPE_NORMAL)
    call UnitDamageTargetBJ(gg_unit_Nplh_0487,udg_TrampleTarget,(I2R(GetUnitAbilityLevelSwapped('A05U',gg_unit_Nplh_0487))*50.00),ATTACK_TYPE_CHAOS,DAMAGE_TYPE_UNIVERSAL)
    call ConditionalTriggerExecute(gg_trg_Trample_Interrupted)
    else
    call UnitDamageTargetBJ(gg_unit_Nplh_0487,GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('A05U',gg_unit_Nplh_0487))*25),ATTACK_TYPE_CHAOS,DAMAGE_TYPE_NORMAL)
    call UnitDamageTargetBJ(gg_unit_Nplh_0487,GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('A05U',gg_unit_Nplh_0487))*25),ATTACK_TYPE_CHAOS,DAMAGE_TYPE_UNIVERSAL)
    call GroupAddUnitSimple(GetEnumUnit(),udg_TrampleSlideGroup)
    call GroupAddUnitSimple(GetEnumUnit(),udg_TrampleAlreadySlide)
    call UnitAddAbilityBJ('Aeth',GetEnumUnit())
    endif
    endfunction
    function Trig_Trample_AOE_Attack_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Nplh_0487)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(290.00,udg_TempPoint,Condition(function Trig_Trample_AOE_Attack_Func002002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Trample_AOE_Attack_Func003A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Trample_AOE_Attack takes nothing returns nothing
    set gg_trg_Trample_AOE_Attack=CreateTrigger()
    call DisableTrigger(gg_trg_Trample_AOE_Attack)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Trample_AOE_Attack,0.02)
    call TriggerAddAction(gg_trg_Trample_AOE_Attack,function Trig_Trample_AOE_Attack_Actions)
    endfunction