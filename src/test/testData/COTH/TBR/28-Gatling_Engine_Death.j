function Trig_Gatling_Engine_Death_Conditions takes nothing returns boolean
    if(not(GetUnitTypeId(GetDyingUnit())=='nina'))then
    return false
    endif
    return true
    endfunction
    function Trig_Gatling_Engine_Death_Actions takes nothing returns nothing
    set udg_GatlingEngine=GetUnitLoc(GetDyingUnit())
    call CreateNUnitsAtLoc(1,'h016',Player(5),udg_GatlingEngine,GetUnitFacing(GetDyingUnit()))
    call RemoveLocation(udg_GatlingEngine)
    call KillUnit(GetLastCreatedUnit())
    call PolledWait(0.50)
    call RemoveUnit(GetDyingUnit())
    endfunction
    function InitTrig_Gatling_Engine_Death takes nothing returns nothing
    set gg_trg_Gatling_Engine_Death=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Gatling_Engine_Death,Player(5),EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Gatling_Engine_Death,Condition(function Trig_Gatling_Engine_Death_Conditions))
    call TriggerAddAction(gg_trg_Gatling_Engine_Death,function Trig_Gatling_Engine_Death_Actions)
    endfunction