function Trig_Thunder_Shield_Start_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A05L'))then
    return false
    endif
    return true
    endfunction
    function Trig_Thunder_Shield_Start_Actions takes nothing returns nothing
    call EnableTrigger(gg_trg_Thunder_Shield)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Thunder_Shield_Start takes nothing returns nothing
    set gg_trg_Thunder_Shield_Start=CreateTrigger()
    call TriggerAddCondition(gg_trg_Thunder_Shield_Start,Condition(function Trig_Thunder_Shield_Start_Conditions))
    call TriggerAddAction(gg_trg_Thunder_Shield_Start,function Trig_Thunder_Shield_Start_Actions)
    endfunction