function Trig_Dragonhide_Armor_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='AUts'))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragonhide_Armor_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('AUts',GetTriggerUnit())==4))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragonhide_Armor_Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('AUts',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragonhide_Armor_Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('AUts',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragonhide_Armor_Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('AUts',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragonhide_Armor_Actions takes nothing returns nothing
    if(Trig_Dragonhide_Armor_Func001C())then
    call UnitAddAbilityBJ('Arll',GetTriggerUnit())
    else
    if(Trig_Dragonhide_Armor_Func001Func001C())then
    call UnitAddAbilityBJ('A03A',GetTriggerUnit())
    else
    if(Trig_Dragonhide_Armor_Func001Func001Func001C())then
    call UnitAddAbilityBJ('A03B',GetTriggerUnit())
    else
    if(Trig_Dragonhide_Armor_Func001Func001Func001Func001C())then
    call UnitAddAbilityBJ('A03C',GetTriggerUnit())
    call DisableTrigger(GetTriggeringTrigger())
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Dragonhide_Armor takes nothing returns nothing
    set gg_trg_Dragonhide_Armor=CreateTrigger()
    call TriggerAddCondition(gg_trg_Dragonhide_Armor,Condition(function Trig_Dragonhide_Armor_Conditions))
    call TriggerAddAction(gg_trg_Dragonhide_Armor,function Trig_Dragonhide_Armor_Actions)
    endfunction