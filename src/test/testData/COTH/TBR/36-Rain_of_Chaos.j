function Trig_Rain_of_Chaos_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0AH'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rain_of_Chaos_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    set udg_TempPoint2=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(GetTriggerUnit()),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('ANrc',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('ANrc',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0AH',GetTriggerUnit()))
    call IssuePointOrderLoc(GetLastCreatedUnit(),"rainofchaos",udg_TempPoint2)
    call UnitApplyTimedLifeBJ(6.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    endfunction
    function InitTrig_Rain_of_Chaos takes nothing returns nothing
    set gg_trg_Rain_of_Chaos=CreateTrigger()
    call TriggerAddCondition(gg_trg_Rain_of_Chaos,Condition(function Trig_Rain_of_Chaos_Conditions))
    call TriggerAddAction(gg_trg_Rain_of_Chaos,function Trig_Rain_of_Chaos_Actions)
    endfunction