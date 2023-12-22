function Trig_Black_Aura_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='ACav'))then
    return false
    endif
    return true
    endfunction
    function Trig_Black_Aura_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A02S',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A02S',GetTriggerUnit(),GetUnitAbilityLevelSwapped('ACav',GetTriggerUnit()))
    endfunction
    function InitTrig_Black_Aura takes nothing returns nothing
    set gg_trg_Black_Aura=CreateTrigger()
    call TriggerAddCondition(gg_trg_Black_Aura,Condition(function Trig_Black_Aura_Conditions))
    call TriggerAddAction(gg_trg_Black_Aura,function Trig_Black_Aura_Actions)
    endfunction