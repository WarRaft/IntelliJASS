function Trig_Tornado_Func002002003 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Basl')==true)
    endfunction
    function Trig_Tornado_Func003A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_o00I_0153,"cyclone",GetEnumUnit())
    endfunction
    function Trig_Tornado_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Hgam_0513)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(1300.00,udg_TempPoint,Condition(function Trig_Tornado_Func002002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Tornado_Func003A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Tornado takes nothing returns nothing
    set gg_trg_Tornado=CreateTrigger()
    call DisableTrigger(gg_trg_Tornado)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Tornado,0.05)
    call TriggerAddAction(gg_trg_Tornado,function Trig_Tornado_Actions)
    endfunction