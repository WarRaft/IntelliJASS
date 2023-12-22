function Trig_Stength_of_Stromgarde_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A02Q'))then
    return false
    endif
    return true
    endfunction
    function Trig_Stength_of_Stromgarde_Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A02Q',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Stength_of_Stromgarde_Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A02Q',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Stength_of_Stromgarde_Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A02Q',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Stength_of_Stromgarde_Actions takes nothing returns nothing
    if(Trig_Stength_of_Stromgarde_Func001C())then
    call UnitAddAbilityBJ('A01U',GetTriggerUnit())
    else
    if(Trig_Stength_of_Stromgarde_Func001Func001C())then
    call UnitAddAbilityBJ('A02T',GetTriggerUnit())
    else
    if(Trig_Stength_of_Stromgarde_Func001Func001Func001C())then
    call UnitAddAbilityBJ('A02R',GetTriggerUnit())
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Stength_of_Stromgarde takes nothing returns nothing
    set gg_trg_Stength_of_Stromgarde=CreateTrigger()
    call TriggerAddCondition(gg_trg_Stength_of_Stromgarde,Condition(function Trig_Stength_of_Stromgarde_Conditions))
    call TriggerAddAction(gg_trg_Stength_of_Stromgarde,function Trig_Stength_of_Stromgarde_Actions)
    endfunction