function Trig_Tranquility_Level_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A0AY'))then
    return false
    endif
    return true
    endfunction
    function Trig_Tranquility_Level_Actions takes nothing returns nothing
    call SetUnitAbilityLevelSwapped('AEtq',gg_unit_o015_0212,GetUnitAbilityLevelSwapped('A0AY',gg_unit_Hant_0475))
    endfunction
    function InitTrig_Tranquility_Level takes nothing returns nothing
    set gg_trg_Tranquility_Level=CreateTrigger()
    call TriggerAddCondition(gg_trg_Tranquility_Level,Condition(function Trig_Tranquility_Level_Conditions))
    call TriggerAddAction(gg_trg_Tranquility_Level,function Trig_Tranquility_Level_Actions)
    endfunction