function Trig_Repair_Bots_Mana_Regen_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A08V'))then
    return false
    endif
    return true
    endfunction
    function Trig_Repair_Bots_Mana_Regen_Actions takes nothing returns nothing
    call SetUnitAbilityLevelSwapped('A0CE',gg_unit_Hpal_0463,GetUnitAbilityLevelSwapped('A08V',gg_unit_Hpal_0463))
    endfunction
    function InitTrig_Repair_Bots_Mana_Regen takes nothing returns nothing
    set gg_trg_Repair_Bots_Mana_Regen=CreateTrigger()
    call TriggerAddCondition(gg_trg_Repair_Bots_Mana_Regen,Condition(function Trig_Repair_Bots_Mana_Regen_Conditions))
    call TriggerAddAction(gg_trg_Repair_Bots_Mana_Regen,function Trig_Repair_Bots_Mana_Regen_Actions)
    endfunction