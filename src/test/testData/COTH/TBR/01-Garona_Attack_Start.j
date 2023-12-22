function Trig_Garona_Attack_Start_Func002C takes nothing returns boolean
    if((GetSpellAbilityId()=='Afod'))then
    return true
    endif
    if((GetSpellAbilityId()=='A09D'))then
    return true
    endif
    return false
    endfunction
    function Trig_Garona_Attack_Start_Conditions takes nothing returns boolean
    if(not Trig_Garona_Attack_Start_Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Attack_Start_Actions takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Attack_Damage)
    endfunction
    function InitTrig_Garona_Attack_Start takes nothing returns nothing
    set gg_trg_Garona_Attack_Start=CreateTrigger()
    call TriggerAddCondition(gg_trg_Garona_Attack_Start,Condition(function Trig_Garona_Attack_Start_Conditions))
    call TriggerAddAction(gg_trg_Garona_Attack_Start,function Trig_Garona_Attack_Start_Actions)
    endfunction