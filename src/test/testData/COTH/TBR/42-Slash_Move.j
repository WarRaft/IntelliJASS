function Trig_Slash_Move_Func001A takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetEnumUnit())
    set udg_TempPoint2=GetUnitLoc(gg_unit_Nsjs_0498)
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,15.00,(AngleBetweenPoints(udg_TempPoint,udg_TempPoint2)-180.00))
    call SetUnitPositionLoc(GetEnumUnit(),udg_TempPoint3)
    call AddSpecialEffectLocBJ(udg_TempPoint3,"Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call RemoveLocation(udg_TempPoint3)
    endfunction
    function Trig_Slash_Move_Actions takes nothing returns nothing
    call ForGroupBJ(udg_ScytheGroup,function Trig_Slash_Move_Func001A)
    endfunction
    function InitTrig_Slash_Move takes nothing returns nothing
    set gg_trg_Slash_Move=CreateTrigger()
    call DisableTrigger(gg_trg_Slash_Move)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Slash_Move,0.05)
    call TriggerAddAction(gg_trg_Slash_Move,function Trig_Slash_Move_Actions)
    endfunction