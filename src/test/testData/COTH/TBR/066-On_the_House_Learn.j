function Trig_On_the_House_Learn_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A08Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_On_the_House_Learn_Actions takes nothing returns nothing
    set udg_OnTheHouse=1
    call EnableTrigger(gg_trg_On_the_House)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_On_the_House_Learn takes nothing returns nothing
    set gg_trg_On_the_House_Learn=CreateTrigger()
    call TriggerAddCondition(gg_trg_On_the_House_Learn,Condition(function Trig_On_the_House_Learn_Conditions))
    call TriggerAddAction(gg_trg_On_the_House_Learn,function Trig_On_the_House_Learn_Actions)
    endfunction