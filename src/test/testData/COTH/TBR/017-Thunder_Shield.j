function Trig_Thunder_Shield_Conditions takes nothing returns boolean
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Thunder_Shield_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetAttackedUnitBJ())
    call CreateNUnitsAtLoc(1,'e001',Player(0),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(2.00,'BTLF',GetLastCreatedUnit())
    call IssueTargetOrder(GetLastCreatedUnit(),"chainlightning",GetAttacker())
    call RemoveLocation(udg_TempPoint)
    call DisableTrigger(GetTriggeringTrigger())
    call PolledWait((30.00-(6.00*I2R(GetUnitAbilityLevelSwapped('A05L',GetAttackedUnitBJ())))))
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Thunder_Shield takes nothing returns nothing
    set gg_trg_Thunder_Shield=CreateTrigger()
    call DisableTrigger(gg_trg_Thunder_Shield)
    call TriggerAddCondition(gg_trg_Thunder_Shield,Condition(function Trig_Thunder_Shield_Conditions))
    call TriggerAddAction(gg_trg_Thunder_Shield,function Trig_Thunder_Shield_Actions)
    endfunction