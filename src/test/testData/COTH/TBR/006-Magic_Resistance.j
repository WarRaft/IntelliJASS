function Trig_Magic_Resistance_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='AIsr'))then
    return false
    endif
    return true
    endfunction
    function Trig_Magic_Resistance_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A005',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A005',GetTriggerUnit(),GetUnitAbilityLevelSwapped('AIsr',GetTriggerUnit()))
    endfunction
    function InitTrig_Magic_Resistance takes nothing returns nothing
    set gg_trg_Magic_Resistance=CreateTrigger()
    call TriggerAddCondition(gg_trg_Magic_Resistance,Condition(function Trig_Magic_Resistance_Conditions))
    call TriggerAddAction(gg_trg_Magic_Resistance,function Trig_Magic_Resistance_Actions)
    endfunction