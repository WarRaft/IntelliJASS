
    function Trig_Nerzhul_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A07Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Nerzhul_Starts_Actions takes nothing returns nothing
    if(Trig_Nerzhul_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call SetUnitPositionLoc(gg_unit_o00J_0444,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetSpellTargetLoc()
    call IssuePointOrderLoc(gg_unit_o00J_0444,"clusterrockets",udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    else
    endif
    endfunction
    function InitTrig_Nerzhul_Starts takes nothing returns nothing
    set gg_trg_Nerzhul_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Nerzhul_Starts,function Trig_Nerzhul_Starts_Actions)
    endfunction