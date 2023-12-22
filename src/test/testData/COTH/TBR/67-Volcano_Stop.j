function Trig_Volcano_Stop_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANrf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Volcano_Stop_Actions takes nothing returns nothing
    call IssueImmediateOrder(gg_unit_ospm_0254,"stop")
    endfunction
    function InitTrig_Volcano_Stop takes nothing returns nothing
    set gg_trg_Volcano_Stop=CreateTrigger()
    call TriggerAddCondition(gg_trg_Volcano_Stop,Condition(function Trig_Volcano_Stop_Conditions))
    call TriggerAddAction(gg_trg_Volcano_Stop,function Trig_Volcano_Stop_Actions)
    endfunction