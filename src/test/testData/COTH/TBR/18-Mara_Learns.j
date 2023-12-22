function Trig_Mara_Learns_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='AIba'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mara_Learns_Actions takes nothing returns nothing
    set udg_HolyBulkwarkOn=true
    call CreateTextTagUnitBJ("",gg_unit_Edem_0550,0,10,49.00,75.00,100.00,0)
    set udg_MaraShieldText=GetLastCreatedTextTag()
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Mara_Learns takes nothing returns nothing
    set gg_trg_Mara_Learns=CreateTrigger()
    call TriggerAddCondition(gg_trg_Mara_Learns,Condition(function Trig_Mara_Learns_Conditions))
    call TriggerAddAction(gg_trg_Mara_Learns,function Trig_Mara_Learns_Actions)
    endfunction