function Trig_Azgalor_Learns_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A0C3'))then
    return false
    endif
    return true
    endfunction
    function Trig_Azgalor_Learns_Actions takes nothing returns nothing
    call CreateTextTagUnitBJ("",gg_unit_Npld_0527,0,10,100.00,0.00,100.00,0)
    set udg_HellishShroudText=GetLastCreatedTextTag()
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Azgalor_Learns takes nothing returns nothing
    set gg_trg_Azgalor_Learns=CreateTrigger()
    call TriggerAddCondition(gg_trg_Azgalor_Learns,Condition(function Trig_Azgalor_Learns_Conditions))
    call TriggerAddAction(gg_trg_Azgalor_Learns,function Trig_Azgalor_Learns_Actions)
    endfunction