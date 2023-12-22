function Trig_Spirit_Wolf_Stomp_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ACfl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Spirit_Wolf_Stomp_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call IssueImmediateOrder(GetSpellAbilityUnit(),"stomp")
    endfunction
    function InitTrig_Spirit_Wolf_Stomp takes nothing returns nothing
    set gg_trg_Spirit_Wolf_Stomp=CreateTrigger()
    call DisableTrigger(gg_trg_Spirit_Wolf_Stomp)
    call TriggerAddCondition(gg_trg_Spirit_Wolf_Stomp,Condition(function Trig_Spirit_Wolf_Stomp_Conditions))
    call TriggerAddAction(gg_trg_Spirit_Wolf_Stomp,function Trig_Spirit_Wolf_Stomp_Actions)
    endfunction