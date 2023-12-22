function Trig_Howl_of_Terror_Move_Func001Func014C takes nothing returns boolean
    if(not(udg_HowlDistance>=445.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Howl_of_Terror_Move_Func001A takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetEnumUnit())
    set udg_TempPoint2=GetUnitLoc(gg_unit_Npld_0527)
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,15.00,(AngleBetweenPoints(udg_TempPoint,udg_TempPoint2)-180.00))
    call UnitAddAbilityBJ('A0CR',GetEnumUnit())
    call SetUnitPositionLoc(GetEnumUnit(),udg_TempPoint3)
    call AddSpecialEffectLocBJ(udg_TempPoint3,"Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call RemoveLocation(udg_TempPoint3)
    set udg_TempPoint=GetUnitLoc(GetEnumUnit())
    set udg_TempPoint2=GetUnitLoc(gg_unit_Npld_0527)
    set udg_HowlDistance=DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2)
    if(Trig_Howl_of_Terror_Move_Func001Func014C())then
    call GroupRemoveUnitSimple(GetEnumUnit(),udg_HowlGroup)
    call UnitRemoveAbilityBJ('A0CR',GetEnumUnit())
    else
    endif
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call RemoveLocation(udg_TempPoint3)
    endfunction
    function Trig_Howl_of_Terror_Move_Actions takes nothing returns nothing
    call ForGroupBJ(udg_HowlGroup,function Trig_Howl_of_Terror_Move_Func001A)
    endfunction
    function InitTrig_Howl_of_Terror_Move takes nothing returns nothing
    set gg_trg_Howl_of_Terror_Move=CreateTrigger()
    call DisableTrigger(gg_trg_Howl_of_Terror_Move)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Howl_of_Terror_Move,0.05)
    call TriggerAddAction(gg_trg_Howl_of_Terror_Move,function Trig_Howl_of_Terror_Move_Actions)
    endfunction