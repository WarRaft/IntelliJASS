function Trig_Explosive_Barrel_Move_Func001Func011C takes nothing returns boolean
    if(not(udg_BarrelDistance>=400.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Explosive_Barrel_Move_Func001A takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetEnumUnit())
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,15.00,(AngleBetweenPoints(udg_TempPoint,udg_BarrelPoint)-180.00))
    call UnitAddAbilityBJ('A0FF',GetEnumUnit())
    call SetUnitPositionLoc(GetEnumUnit(),udg_TempPoint3)
    call AddSpecialEffectLocBJ(udg_TempPoint3,"Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint3)
    set udg_TempPoint=GetUnitLoc(GetEnumUnit())
    set udg_BarrelDistance=DistanceBetweenPoints(udg_TempPoint,udg_BarrelPoint)
    if(Trig_Explosive_Barrel_Move_Func001Func011C())then
    call GroupRemoveUnitSimple(GetEnumUnit(),udg_BarrelGroup)
    call UnitRemoveAbilityBJ('A0FF',GetEnumUnit())
    else
    endif
    call RemoveLocation(udg_TempPoint)
    endfunction
    function Trig_Explosive_Barrel_Move_Actions takes nothing returns nothing
    call ForGroupBJ(udg_BarrelGroup,function Trig_Explosive_Barrel_Move_Func001A)
    endfunction
    function InitTrig_Explosive_Barrel_Move takes nothing returns nothing
    set gg_trg_Explosive_Barrel_Move=CreateTrigger()
    call DisableTrigger(gg_trg_Explosive_Barrel_Move)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Explosive_Barrel_Move,0.05)
    call TriggerAddAction(gg_trg_Explosive_Barrel_Move,function Trig_Explosive_Barrel_Move_Actions)
    endfunction