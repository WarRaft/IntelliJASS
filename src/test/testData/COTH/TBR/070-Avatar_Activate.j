function Trig_Avatar_Activate_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A05M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Avatar_Activate_Func007Func003Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05M',gg_unit_Ucrl_0500)==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Avatar_Activate_Func007Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05M',gg_unit_Ucrl_0500)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Avatar_Activate_Func007C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05M',gg_unit_Ucrl_0500)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Avatar_Activate_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Ucrl_0500)
    call CreateNUnitsAtLoc(1,'o008',Player(5),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A08X',GetLastCreatedUnit())
    call UnitApplyTimedLifeBJ(12.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    if(Trig_Avatar_Activate_Func007C())then
    call UnitAddAbilityBJ('A02P',gg_unit_Ucrl_0500)
    else
    if(Trig_Avatar_Activate_Func007Func003C())then
    call UnitAddAbilityBJ('A0D0',gg_unit_Ucrl_0500)
    else
    if(Trig_Avatar_Activate_Func007Func003Func003C())then
    call UnitAddAbilityBJ('A02M',gg_unit_Ucrl_0500)
    else
    call UnitAddAbilityBJ('A0D2',gg_unit_Ucrl_0500)
    endif
    endif
    endif
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitAbilityLevel(gg_unit_Ucrl_0500, 'A0FZ', GetUnitAbilityLevel(gg_unit_Ucrl_0500, 'A05M'))
    call PolledWait(14.00)
    call UnitAddAbilityBJ('A0CC',gg_unit_Ucrl_0500)
    call UnitRemoveAbilityBJ('A0CC',gg_unit_Ucrl_0500)
    call UnitRemoveAbilityBJ('A02P',gg_unit_Ucrl_0500)
    call UnitRemoveAbilityBJ('A0D0',gg_unit_Ucrl_0500)
    call UnitRemoveAbilityBJ('A02M',gg_unit_Ucrl_0500)
    call UnitRemoveAbilityBJ('A0D2',gg_unit_Ucrl_0500)
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Avatar_Activate takes nothing returns nothing
    set gg_trg_Avatar_Activate=CreateTrigger()
    call TriggerAddCondition(gg_trg_Avatar_Activate,Condition(function Trig_Avatar_Activate_Conditions))
    call TriggerAddAction(gg_trg_Avatar_Activate,function Trig_Avatar_Activate_Actions)
    endfunction