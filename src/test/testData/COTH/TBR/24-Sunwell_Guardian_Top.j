function Trig_Sunwell_Guardian_Top_Conditions takes nothing returns boolean
    if(not(IsUnitType(GetAttacker(),UNIT_TYPE_MELEE_ATTACKER)==true))then
    return false
    endif
    if(not(IsUnitEnemy(GetAttacker(),Player(6))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Sunwell_Guardian_Top_Actions takes nothing returns nothing
    call IssueImmediateOrder(gg_unit_nggr_0539,"creepthunderclap")
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(25.00)
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Sunwell_Guardian_Top takes nothing returns nothing
    set gg_trg_Sunwell_Guardian_Top=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Sunwell_Guardian_Top,gg_unit_nggr_0539,EVENT_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Sunwell_Guardian_Top,Condition(function Trig_Sunwell_Guardian_Top_Conditions))
    call TriggerAddAction(gg_trg_Sunwell_Guardian_Top,function Trig_Sunwell_Guardian_Top_Actions)
    endfunction