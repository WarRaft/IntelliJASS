 function Trig_Teron_Learns_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A02N'))then
    return false
    endif
    return true
    endfunction
    function Trig_Teron_Learns_Actions takes nothing returns nothing
    debug call BJDebugMsg("init teron set lvl")
    call UnitAddAbilityBJ('A02O',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A02O',GetTriggerUnit(),GetUnitAbilityLevelSwapped('A02N',GetTriggerUnit()))
    call TriggerSleepAction(0.1)
    call TeronAuraTrigger()
    debug call BJDebugMsg("Teron aura called")
    endfunction
    function InitTrig_Teron_Learns takes nothing returns nothing
    set gg_trg_Teron_Learns=CreateTrigger()
    call TriggerAddCondition(gg_trg_Teron_Learns,Condition(function Trig_Teron_Learns_Conditions))
    call TriggerAddAction(gg_trg_Teron_Learns,function Trig_Teron_Learns_Actions)
    endfunction