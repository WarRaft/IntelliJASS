function Trig_Life_Rip_Move_Func001C takes nothing returns boolean
    if(not(IsUnitAliveBJ(udg_LifeRipTarget)==true))then
    return false
    endif
    if(not(DistanceBetweenPoints(GetUnitLoc(udg_LifeRipTarget),GetUnitLoc(gg_unit_Orex_0465))>95.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Life_Rip_Move_Actions takes nothing returns nothing
    if(Trig_Life_Rip_Move_Func001C())then
    set udg_LifeRipMove=AngleBetweenPoints(GetUnitLoc(udg_LifeRipTarget),GetUnitLoc(gg_unit_Orex_0465))
    set udg_TempPoint=GetUnitLoc(udg_LifeRipTarget)
    call SetUnitPositionLoc(udg_LifeRipTarget,PolarProjectionBJ(udg_TempPoint,15.00,udg_LifeRipMove))
    call RemoveLocation(udg_TempPoint)
    else
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitPathing(udg_LifeRipTarget,true)
    endif
    endfunction
    function InitTrig_Life_Rip_Move takes nothing returns nothing
    set gg_trg_Life_Rip_Move=CreateTrigger()
    call DisableTrigger(gg_trg_Life_Rip_Move)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Life_Rip_Move,0.05)
    call TriggerAddAction(gg_trg_Life_Rip_Move,function Trig_Life_Rip_Move_Actions)
    endfunction