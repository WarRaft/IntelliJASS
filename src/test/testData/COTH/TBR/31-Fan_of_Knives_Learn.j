function Trig_Fan_of_Knives_Learn_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A099'))then
    return false
    endif
    return true
    endfunction
    function Trig_Fan_of_Knives_Learn_Actions takes nothing returns nothing
    call EnableTrigger(gg_trg_Fan_of_Knives_Reset)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Fan_of_Knives_Learn takes nothing returns nothing
    set gg_trg_Fan_of_Knives_Learn=CreateTrigger()
    call TriggerAddCondition(gg_trg_Fan_of_Knives_Learn,Condition(function Trig_Fan_of_Knives_Learn_Conditions))
    call TriggerAddAction(gg_trg_Fan_of_Knives_Learn,function Trig_Fan_of_Knives_Learn_Actions)
    endfunction