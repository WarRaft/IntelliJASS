function Trig_Haste_Func002C takes nothing returns boolean
    if((GetSpellAbilityId()=='A0A6'))then
    return true
    endif
    if((GetSpellAbilityId()=='A031'))then
    return true
    endif
    if((GetSpellAbilityId()=='A032'))then
    return true
    endif
    return false
    endfunction
    function Trig_Haste_Conditions takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A035',gg_unit_H005_0502)>=1))then
    return false
    endif
    if(not Trig_Haste_Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Haste_Func003Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Haste_Func003Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Haste_Func003C takes nothing returns boolean
    if(not(GetOwningPlayer(gg_unit_o008_0505)!=Player(5)))then
    return false
    endif
    return true
    endfunction
    function Trig_Haste_Func005Func002Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Haste_Func005Func002C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Haste_Func005C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505)==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Haste_Actions takes nothing returns nothing
    if(Trig_Haste_Func003C())then
    call SetUnitOwner(gg_unit_o008_0505,Player(5),true)
    else
    if(Trig_Haste_Func003Func001C())then
    call SetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505,2)
    else
    if(Trig_Haste_Func003Func001Func001C())then
    call SetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505,3)
    else
    endif
    endif
    endif
    call PolledWait((3.00*I2R(GetUnitAbilityLevelSwapped('A035',GetTriggerUnit()))))
    if(Trig_Haste_Func005C())then
    call SetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505,2)
    else
    if(Trig_Haste_Func005Func002C())then
    call SetUnitAbilityLevelSwapped('A06W',gg_unit_o008_0505,1)
    else
    if(Trig_Haste_Func005Func002Func001C())then
    call SetUnitOwner(gg_unit_o008_0505,Player(PLAYER_NEUTRAL_AGGRESSIVE),true)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Haste takes nothing returns nothing
    set gg_trg_Haste=CreateTrigger()
    call TriggerAddCondition(gg_trg_Haste,Condition(function Trig_Haste_Conditions))
    call TriggerAddAction(gg_trg_Haste,function Trig_Haste_Actions)
    endfunction