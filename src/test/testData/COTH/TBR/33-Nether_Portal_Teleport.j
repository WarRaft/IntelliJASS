function Trig_Nether_Portal_Teleport_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ACr1'))then
    return false
    endif
    return true
    endfunction
    function Trig_Nether_Portal_Teleport_Actions takes nothing returns nothing
    call PolledWait(0.90)
    call SetUnitPositionLoc(gg_unit_Uwar_0460,udg_NetherPortalPoint)
    call UnitRemoveAbilityBJ('ACr1',gg_unit_Uwar_0460)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Nether_Portal_Teleport takes nothing returns nothing
    set gg_trg_Nether_Portal_Teleport=CreateTrigger()
    call DisableTrigger(gg_trg_Nether_Portal_Teleport)
    call TriggerRegisterUnitEvent(gg_trg_Nether_Portal_Teleport,gg_unit_Uwar_0460,EVENT_UNIT_SPELL_CAST)
    call TriggerAddCondition(gg_trg_Nether_Portal_Teleport,Condition(function Trig_Nether_Portal_Teleport_Conditions))
    call TriggerAddAction(gg_trg_Nether_Portal_Teleport,function Trig_Nether_Portal_Teleport_Actions)
    endfunction