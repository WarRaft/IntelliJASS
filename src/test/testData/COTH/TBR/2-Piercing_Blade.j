function Trig_Piercing_Blade_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='AIcb'))then
    return false
    endif
    return true
    endfunction
    function Trig_Piercing_Blade_Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('AIcb',GetTriggerUnit())>=2))then
    return false
    endif
    return true
    endfunction
    function Trig_Piercing_Blade_Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('AIcb',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Piercing_Blade_Actions takes nothing returns nothing
    if(Trig_Piercing_Blade_Func001C())then
    call UnitAddAbilityBJ('ACba',GetTriggerUnit())
    else
    if(Trig_Piercing_Blade_Func001Func001C())then
    call SetUnitAbilityLevelSwapped('ACba',GetTriggerUnit(),GetUnitAbilityLevelSwapped('AIcb',GetTriggerUnit()))
    else
    endif
    endif
    endfunction
    function InitTrig_Piercing_Blade takes nothing returns nothing
    set gg_trg_Piercing_Blade=CreateTrigger()
    call TriggerAddCondition(gg_trg_Piercing_Blade,Condition(function Trig_Piercing_Blade_Conditions))
    call TriggerAddAction(gg_trg_Piercing_Blade,function Trig_Piercing_Blade_Actions)
    endfunction