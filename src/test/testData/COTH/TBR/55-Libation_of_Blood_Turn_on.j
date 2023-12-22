function Trig_Libation_of_Blood_Turn_on_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A081'))then
    return false
    endif
    return true
    endfunction
    function Trig_Libation_of_Blood_Turn_on_Actions takes nothing returns nothing
    call EnableTrigger(gg_trg_Trophies_and_Libation_and_Teron_Reset)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Libation_of_Blood_Turn_on takes nothing returns nothing
    set gg_trg_Libation_of_Blood_Turn_on=CreateTrigger()
    call TriggerAddCondition(gg_trg_Libation_of_Blood_Turn_on,Condition(function Trig_Libation_of_Blood_Turn_on_Conditions))
    call TriggerAddAction(gg_trg_Libation_of_Blood_Turn_on,function Trig_Libation_of_Blood_Turn_on_Actions)
    endfunction