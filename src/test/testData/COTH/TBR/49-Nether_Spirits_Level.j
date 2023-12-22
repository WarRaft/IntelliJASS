function Trig_Nether_Spirits_Level_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A07Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Nether_Spirits_Level_Actions takes nothing returns nothing
    call SetUnitAbilityLevelSwapped('A04J',gg_unit_o00J_0444,GetUnitAbilityLevelSwapped('A07Y',gg_unit_Orkn_0516))
    endfunction
    function InitTrig_Nether_Spirits_Level takes nothing returns nothing
    set gg_trg_Nether_Spirits_Level=CreateTrigger()
    call TriggerAddCondition(gg_trg_Nether_Spirits_Level,Condition(function Trig_Nether_Spirits_Level_Conditions))
    call TriggerAddAction(gg_trg_Nether_Spirits_Level,function Trig_Nether_Spirits_Level_Actions)
    endfunction