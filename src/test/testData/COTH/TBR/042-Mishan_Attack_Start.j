function Trig_Mishan_Attack_Start_Func002C takes nothing returns boolean
    if((GetSpellAbilityId()=='ACf3'))then
    return true
    endif
    if((GetSpellAbilityId()=='A00J'))then
    return true
    endif
    return false
    endfunction
    function Trig_Mishan_Attack_Start_Conditions takes nothing returns boolean
    if(not Trig_Mishan_Attack_Start_Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Attack_Start_Actions takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Attack_Damage)
    endfunction
    function InitTrig_Mishan_Attack_Start takes nothing returns nothing
    set gg_trg_Mishan_Attack_Start=CreateTrigger()
    call TriggerAddCondition(gg_trg_Mishan_Attack_Start,Condition(function Trig_Mishan_Attack_Start_Conditions))
    call TriggerAddAction(gg_trg_Mishan_Attack_Start,function Trig_Mishan_Attack_Start_Actions)
    endfunction