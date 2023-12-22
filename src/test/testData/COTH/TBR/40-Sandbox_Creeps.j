function Trig_Sandbox_Creeps_Conditions takes nothing returns boolean
    if(not(RectContainsUnit(gg_rct_Sandbox2,GetDyingUnit())==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Sandbox_Creeps_Func002Func003C takes nothing returns boolean
    if(not(GetUnitTypeId(GetDyingUnit())=='nogm'))then
    return false
    endif
    return true
    endfunction
    function Trig_Sandbox_Creeps_Func002C takes nothing returns boolean
    if(not(GetUnitTypeId(GetDyingUnit())=='nogl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Sandbox_Creeps_Actions takes nothing returns nothing
    if(Trig_Sandbox_Creeps_Func002C())then
    call TriggerSleepAction(15.00)
    set udg_TempPoint=GetRandomLocInRect(gg_rct_Sandbox)
    call CreateNUnitsAtLoc(1,'nogl',Player(PLAYER_NEUTRAL_AGGRESSIVE),udg_TempPoint,bj_UNIT_FACING)
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Sandbox_Creeps_Func002Func003C())then
    call TriggerSleepAction(15.00)
    set udg_TempPoint=GetRandomLocInRect(gg_rct_Sandbox)
    call CreateNUnitsAtLoc(1,'nogm',Player(PLAYER_NEUTRAL_AGGRESSIVE),udg_TempPoint,bj_UNIT_FACING)
    call RemoveLocation(udg_TempPoint)
    else
    call TriggerSleepAction(15.00)
    set udg_TempPoint=GetRandomLocInRect(gg_rct_Sandbox)
    call ReviveHeroLoc(GetDyingUnit(),udg_TempPoint,false)
    call RemoveLocation(udg_TempPoint)
    endif
    endif
    endfunction
    function InitTrig_Sandbox_Creeps takes nothing returns nothing
    set gg_trg_Sandbox_Creeps=CreateTrigger()
    call DisableTrigger(gg_trg_Sandbox_Creeps)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Sandbox_Creeps,Player(PLAYER_NEUTRAL_AGGRESSIVE),EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Sandbox_Creeps,Condition(function Trig_Sandbox_Creeps_Conditions))
    call TriggerAddAction(gg_trg_Sandbox_Creeps,function Trig_Sandbox_Creeps_Actions)
    endfunction