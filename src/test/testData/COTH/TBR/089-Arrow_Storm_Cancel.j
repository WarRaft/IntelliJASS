function Trig_Arrow_Storm_Cancel_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0D3'))then
    return false
    endif
    return true
    endfunction
    function Trig_Arrow_Storm_Cancel_Actions takes nothing returns nothing
    set udg_ArrowStormInt=1
    call SetUnitTimeScalePercent(gg_unit_Hvwd_0525,100.00)
    call RemoveLocation(udg_ArrowStormPoint[1])
    call RemoveLocation(udg_ArrowStormPoint[2])
    call RemoveLocation(udg_ArrowStormPoint[3])
    call RemoveLocation(udg_ArrowStormPoint[4])
    call RemoveLocation(udg_ArrowStormPoint[5])
    call RemoveLocation(udg_ArrowStormPoint[6])
    call RemoveLocation(udg_ArrowStormTarget[1])
    call RemoveLocation(udg_ArrowStormTarget[2])
    call RemoveLocation(udg_ArrowStormTarget[3])
    call RemoveLocation(udg_ArrowStormTarget[4])
    call RemoveLocation(udg_ArrowStormTarget[5])
    call RemoveLocation(udg_ArrowStormTarget[6])
    endfunction
    function InitTrig_Arrow_Storm_Cancel takes nothing returns nothing
    set gg_trg_Arrow_Storm_Cancel=CreateTrigger()
    call TriggerAddCondition(gg_trg_Arrow_Storm_Cancel,Condition(function Trig_Arrow_Storm_Cancel_Conditions))
    call TriggerAddAction(gg_trg_Arrow_Storm_Cancel,function Trig_Arrow_Storm_Cancel_Actions)
    endfunction