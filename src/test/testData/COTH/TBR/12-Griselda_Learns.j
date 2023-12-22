function Trig_Griselda_Learns_Func001Func001C takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='ACs8'))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Learns_Func001C takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A0DQ'))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Learns_Actions takes nothing returns nothing
    if(Trig_Griselda_Learns_Func001C())then
    call EnableTrigger(gg_trg_Blackhands_Orders_Death)
    call EnableTrigger(gg_trg_Griselda_Damage)
    call DisableTrigger(GetTriggeringTrigger())
    else
    if(Trig_Griselda_Learns_Func001Func001C())then
    call EnableTrigger(gg_trg_Griselda_Damage)
    else
    endif
    endif
    endfunction
    function InitTrig_Griselda_Learns takes nothing returns nothing
    set gg_trg_Griselda_Learns=CreateTrigger()
    call TriggerAddAction(gg_trg_Griselda_Learns,function Trig_Griselda_Learns_Actions)
    endfunction