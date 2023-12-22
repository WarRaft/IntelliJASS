function Trig_Trueshot_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='AEar'))then
    return false
    endif
    return true
    endfunction
    function Trig_Trueshot_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A00T',gg_unit_Hamg_0499)
    call SetPlayerAbilityAvailableBJ(false,'A00T',Player(6))
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Trueshot takes nothing returns nothing
    set gg_trg_Trueshot=CreateTrigger()
    call TriggerAddCondition(gg_trg_Trueshot,Condition(function Trig_Trueshot_Conditions))
    call TriggerAddAction(gg_trg_Trueshot,function Trig_Trueshot_Actions)
    endfunction