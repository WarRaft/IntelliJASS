function Trig_Navigation_Bonus_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='ACat'))then
    return false
    endif
    return true
    endfunction
    function Trig_Navigation_Bonus_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A05P',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A05P',GetTriggerUnit(),GetUnitAbilityLevelSwapped('ACat',GetTriggerUnit()))
    endfunction
    function InitTrig_Navigation_Bonus takes nothing returns nothing
    set gg_trg_Navigation_Bonus=CreateTrigger()
    call TriggerAddCondition(gg_trg_Navigation_Bonus,Condition(function Trig_Navigation_Bonus_Conditions))
    call TriggerAddAction(gg_trg_Navigation_Bonus,function Trig_Navigation_Bonus_Actions)
    endfunction