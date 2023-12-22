function Trig_Daelin_Learns_Func001Func003Func002001 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('ACfd',GetTriggerUnit())==1)
    endfunction
    function Trig_Daelin_Learns_Func001Func003Func003Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ACfd',GetTriggerUnit())==4))then
    return false
    endif
    return true
    endfunction
    function Trig_Daelin_Learns_Func001Func003Func003Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ACfd',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Daelin_Learns_Func001Func003Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ACfd',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Daelin_Learns_Func001Func003C takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='ACfd'))then
    return false
    endif
    return true
    endfunction
    function Trig_Daelin_Learns_Func001C takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A0A4'))then
    return false
    endif
    return true
    endfunction
    function Trig_Daelin_Learns_Actions takes nothing returns nothing
    if(Trig_Daelin_Learns_Func001C())then
    call SetUnitAbilityLevelSwapped('A0A5',gg_unit_o011_0198,GetUnitAbilityLevelSwapped('A0A4',gg_unit_Hapm_0503))
    else
    if(Trig_Daelin_Learns_Func001Func003C())then
    call SetPlayerAbilityAvailableBJ(false,'A07A',Player(2))
    if(Trig_Daelin_Learns_Func001Func003Func002001())then
    call UnitAddAbilityBJ('A07A',GetTriggerUnit())
    else
    call DoNothing()
    endif
    if(Trig_Daelin_Learns_Func001Func003Func003C())then
    call SetUnitAbilityLevelSwapped('A07A',GetTriggerUnit(),2)
    else
    if(Trig_Daelin_Learns_Func001Func003Func003Func001C())then
    call SetUnitAbilityLevelSwapped('A07A',GetTriggerUnit(),3)
    else
    if(Trig_Daelin_Learns_Func001Func003Func003Func001Func001C())then
    call SetUnitAbilityLevelSwapped('A07A',GetTriggerUnit(),4)
    else
    endif
    endif
    endif
    else
    endif
    endif
    endfunction
    function InitTrig_Daelin_Learns takes nothing returns nothing
    set gg_trg_Daelin_Learns=CreateTrigger()
    call TriggerAddAction(gg_trg_Daelin_Learns,function Trig_Daelin_Learns_Actions)
    endfunction