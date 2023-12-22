function Trig_Trophies_of_the_Fallen_Turn_on_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A07V'))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_of_the_Fallen_Turn_on_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A01N',GetTriggerUnit())
    call EnableTrigger(gg_trg_Trophies_and_Libation_and_Teron_Reset)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Trophies_of_the_Fallen_Turn_on takes nothing returns nothing
    set gg_trg_Trophies_of_the_Fallen_Turn_on=CreateTrigger()
    call TriggerAddCondition(gg_trg_Trophies_of_the_Fallen_Turn_on,Condition(function Trig_Trophies_of_the_Fallen_Turn_on_Conditions))
    call TriggerAddAction(gg_trg_Trophies_of_the_Fallen_Turn_on,function Trig_Trophies_of_the_Fallen_Turn_on_Actions)
    endfunction