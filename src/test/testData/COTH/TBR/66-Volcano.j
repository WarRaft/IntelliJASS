function Trig_Volcano_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANrf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Volcano_Actions takes nothing returns nothing
    set udg_VolcanoPoint=GetSpellTargetLoc()
    call IssuePointOrderLoc(gg_unit_ospm_0254,"volcano",udg_VolcanoPoint)
    endfunction
    function InitTrig_Volcano takes nothing returns nothing
    set gg_trg_Volcano=CreateTrigger()
    call TriggerAddCondition(gg_trg_Volcano,Condition(function Trig_Volcano_Conditions))
    call TriggerAddAction(gg_trg_Volcano,function Trig_Volcano_Actions)
    endfunction