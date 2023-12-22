function Trig_Hellish_Projectile_Level_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A08U'))then
    return false
    endif
    return true
    endfunction
    function Trig_Hellish_Projectile_Level_Actions takes nothing returns nothing
    call SetUnitAbilityLevelSwapped('A08T',gg_unit_o00H_0443,GetUnitAbilityLevelSwapped('A08U',gg_unit_Ocbh_0511))
    endfunction
    function InitTrig_Hellish_Projectile_Level takes nothing returns nothing
    set gg_trg_Hellish_Projectile_Level=CreateTrigger()
    call TriggerAddCondition(gg_trg_Hellish_Projectile_Level,Condition(function Trig_Hellish_Projectile_Level_Conditions))
    call TriggerAddAction(gg_trg_Hellish_Projectile_Level,function Trig_Hellish_Projectile_Level_Actions)
    endfunction