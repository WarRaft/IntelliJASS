function Trig_Gorehowl_Slow_Func002002003 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B04J')==true)
    endfunction
    function Trig_Gorehowl_Slow_Func003Func001C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetEnumUnit(),'B04I')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Gorehowl_Slow_Func003A takes nothing returns nothing
    if(Trig_Gorehowl_Slow_Func003Func001C())then
    else
    call CreateNUnitsAtLoc(1,'o00I',GetOwningPlayer(gg_unit_Opgh_0483),udg_TempPoint,bj_UNIT_FACING)
    call SetUnitAbilityLevelSwapped('ACsw',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0FL',gg_unit_Opgh_0483))
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssueTargetOrder(GetLastCreatedUnit(),"slow",GetEnumUnit())
    endif
    endfunction
    function Trig_Gorehowl_Slow_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Opgh_0483)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(1000.00,udg_TempPoint,Condition(function Trig_Gorehowl_Slow_Func002002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Gorehowl_Slow_Func003A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Gorehowl_Slow takes nothing returns nothing
    set gg_trg_Gorehowl_Slow=CreateTrigger()
    call DisableTrigger(gg_trg_Gorehowl_Slow)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Gorehowl_Slow,0.25)
    call TriggerAddAction(gg_trg_Gorehowl_Slow,function Trig_Gorehowl_Slow_Actions)
    endfunction