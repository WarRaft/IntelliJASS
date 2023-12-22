function Trig_Intoxicating_Pain_Start_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A07H'))then
    return false
    endif
    return true
    endfunction
    function Trig_Intoxicating_Pain_Start_Actions takes nothing returns nothing
    call EnableTrigger(gg_trg_Intoxicating_Pain)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Intoxicating_Pain_Start takes nothing returns nothing
    set gg_trg_Intoxicating_Pain_Start=CreateTrigger()
    call TriggerAddCondition(gg_trg_Intoxicating_Pain_Start,Condition(function Trig_Intoxicating_Pain_Start_Conditions))
    call TriggerAddAction(gg_trg_Intoxicating_Pain_Start,function Trig_Intoxicating_Pain_Start_Actions)
    endfunction