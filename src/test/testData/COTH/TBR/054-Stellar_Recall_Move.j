function Trig_Stellar_Recall_Move_Func001Func004C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetEnumUnit(),'Bams')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetEnumUnit(),'BOww')==false))then
    return false
    endif
    if(not(udg_StellarDistance>=15.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Stellar_Recall_Move_Func001A takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetEnumUnit())
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,10.00,AngleBetweenPoints(udg_TempPoint,udg_StellarPoint))
    set udg_StellarDistance=DistanceBetweenPoints(udg_TempPoint,udg_StellarPoint)
    if(Trig_Stellar_Recall_Move_Func001Func004C())then
    call SetUnitPositionLoc(GetEnumUnit(),udg_TempPoint3)
    else
    endif
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint3)
    endfunction
    function Trig_Stellar_Recall_Move_Actions takes nothing returns nothing
    call ForGroupBJ(udg_StellarGroup,function Trig_Stellar_Recall_Move_Func001A)
    endfunction
    function InitTrig_Stellar_Recall_Move takes nothing returns nothing
    set gg_trg_Stellar_Recall_Move=CreateTrigger()
    call DisableTrigger(gg_trg_Stellar_Recall_Move)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Stellar_Recall_Move,0.04)
    call TriggerAddAction(gg_trg_Stellar_Recall_Move,function Trig_Stellar_Recall_Move_Actions)
    endfunction