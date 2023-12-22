function Trig_Wind_Shot_Move_Func001Func006002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Wind_Shot_Move_Func001Func006002003002001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Wind_Shot_Move_Func001Func006002003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(6))==true)
    endfunction
    function Trig_Wind_Shot_Move_Func001Func006002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Wind_Shot_Move_Func001Func006002003002001(),Trig_Wind_Shot_Move_Func001Func006002003002002())
    endfunction
    function Trig_Wind_Shot_Move_Func001Func006002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Wind_Shot_Move_Func001Func006002003001(),Trig_Wind_Shot_Move_Func001Func006002003002())
    endfunction
    function Trig_Wind_Shot_Move_Func001Func008Func004Func003C takes nothing returns boolean
    if(not(udg_Arrow_DistanceTravel[udg_Arrow_CusValue]>=1100.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Wind_Shot_Move_Func001Func008Func004C takes nothing returns boolean
    if(not(udg_Arrow_DistanceTravel[udg_Arrow_CusValue]>=550.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Wind_Shot_Move_Func001Func008A takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Hamg_0499)
    call CreateNUnitsAtLoc(1,'o008',Player(6),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A08N',GetLastCreatedUnit())
    if(Trig_Wind_Shot_Move_Func001Func008Func004C())then
    call SetUnitAbilityLevelSwapped('A08N',GetLastCreatedUnit(),2)
    else
    if(Trig_Wind_Shot_Move_Func001Func008Func004Func003C())then
    call SetUnitAbilityLevelSwapped('A08N',GetLastCreatedUnit(),3)
    else
    endif
    endif
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call IssueTargetOrder(GetLastCreatedUnit(),"thunderbolt",GetEnumUnit())
    call UnitDamageTargetBJ(gg_unit_Hamg_0499,GetEnumUnit(),((((I2R(GetUnitAbilityLevelSwapped('A08L',gg_unit_Hamg_0499))-1)*50.00)+20.00)+(udg_Arrow_DistanceTravel[udg_Arrow_CusValue]*0.25)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Wind_Shot_Move_Func001Func009Func001C takes nothing returns boolean
    if((udg_Arrow_DistanceTravel[udg_Arrow_CusValue]>=udg_Arrow_Distance[udg_Arrow_CusValue]))then
    return true
    endif
    if((CountUnitsInGroup(udg_Arrow_UnitGroup)>0))then
    return true
    endif
    return false
    endfunction
    function Trig_Wind_Shot_Move_Func001Func009C takes nothing returns boolean
    if(not Trig_Wind_Shot_Move_Func001Func009Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Wind_Shot_Move_Func001A takes nothing returns nothing
    set udg_Arrow_CusValue=GetUnitUserData(GetEnumUnit())
    set udg_Arrow_DummyLoc=GetUnitLoc(GetEnumUnit())
    set udg_Arrow_Movement=PolarProjectionBJ(udg_Arrow_DummyLoc,20.00,GetUnitFacing(GetEnumUnit()))
    call SetUnitPositionLoc(GetEnumUnit(),udg_Arrow_Movement)
    set udg_Arrow_DistanceTravel[udg_Arrow_CusValue]=(udg_Arrow_DistanceTravel[udg_Arrow_CusValue]+20.00)
    set udg_Arrow_UnitGroup=GetUnitsInRangeOfLocMatching(125.00,udg_Arrow_Movement,Condition(function Trig_Wind_Shot_Move_Func001Func006002003))
    set udg_Arrow_RandomUnit=GetRandomSubGroup(1,udg_Arrow_UnitGroup)
    call ForGroupBJ(udg_Arrow_RandomUnit,function Trig_Wind_Shot_Move_Func001Func008A)
    if(Trig_Wind_Shot_Move_Func001Func009C())then
    call KillUnit(GetEnumUnit())
    call GroupRemoveUnitSimple(GetEnumUnit(),udg_Arrow_StartGroup)
    else
    endif
    call RemoveLocation(udg_Arrow_DummyLoc)
    call RemoveLocation(udg_Arrow_Movement)
    call DestroyGroup(udg_Arrow_UnitGroup)
    call DestroyGroup(udg_Arrow_RandomUnit)
    endfunction
    function Trig_Wind_Shot_Move_Func002C takes nothing returns boolean
    if(not(CountUnitsInGroup(udg_Arrow_StartGroup)==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Wind_Shot_Move_Actions takes nothing returns nothing
    call ForGroupBJ(udg_Arrow_StartGroup,function Trig_Wind_Shot_Move_Func001A)
    if(Trig_Wind_Shot_Move_Func002C())then
    call DisableTrigger(GetTriggeringTrigger())
    else
    endif
    endfunction
    function InitTrig_Wind_Shot_Move takes nothing returns nothing
    set gg_trg_Wind_Shot_Move=CreateTrigger()
    call DisableTrigger(gg_trg_Wind_Shot_Move)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Wind_Shot_Move,0.02)
    call TriggerAddAction(gg_trg_Wind_Shot_Move,function Trig_Wind_Shot_Move_Actions)
    endfunction