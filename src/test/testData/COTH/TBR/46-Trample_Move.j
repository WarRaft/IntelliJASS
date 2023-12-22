function Trig_Trample_Move_Func001Func001Func008C takes nothing returns boolean
    if(not(GetUnitUserData(GetEnumUnit())==180))then
    return false
    endif
    return true
    endfunction
    function Trig_Trample_Move_Func001Func001C takes nothing returns boolean
    if(not(IsUnitInGroup(GetEnumUnit(),udg_TrampleAlreadySlide)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Trample_Move_Func001A takes nothing returns nothing
    if(Trig_Trample_Move_Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(GetEnumUnit())
    set udg_TempPoint2=GetUnitLoc(gg_unit_Nplh_0487)
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,15.00,(AngleBetweenPoints(udg_TempPoint,udg_TempPoint2)-180.00))
    call SetUnitPositionLoc(GetEnumUnit(),udg_TempPoint3)
    call AddSpecialEffectLocBJ(udg_TempPoint3,"Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call SetUnitUserData(GetEnumUnit(),(GetUnitUserData(GetEnumUnit())+15))
    if(Trig_Trample_Move_Func001Func001Func008C())then
    call GroupRemoveUnitSimple(GetEnumUnit(),udg_TrampleSlideGroup)
    call SetUnitUserData(GetEnumUnit(),0)
    else
    endif
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call RemoveLocation(udg_TempPoint3)
    else
    endif
    endfunction
    function Trig_Trample_Move_Actions takes nothing returns nothing
    call ForGroupBJ(udg_TrampleSlideGroup,function Trig_Trample_Move_Func001A)
    endfunction
    function InitTrig_Trample_Move takes nothing returns nothing
    set gg_trg_Trample_Move=CreateTrigger()
    call DisableTrigger(gg_trg_Trample_Move)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Trample_Move,0.04)
    call TriggerAddAction(gg_trg_Trample_Move,function Trig_Trample_Move_Actions)
    endfunction