function Trig_Evade_Func001C takes nothing returns boolean
    if(not(udg_EvasionCounter<GetUnitAbilityLevelSwapped('A022',gg_unit_Hvwd_0525)))then
    return false
    endif
    return true
    endfunction
    function Trig_Evade_Actions takes nothing returns nothing
    if(Trig_Evade_Func001C())then
    set udg_EvasionCounter=(udg_EvasionCounter+1)
    set udg_TempPoint=GetUnitLoc(gg_unit_Hvwd_0525)
    call CreateTextTagLocBJ("miss",udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    else
    call UnitRemoveAbilityBJ('A05S',gg_unit_Hvwd_0525)
    call UnitRemoveBuffBJ('Bcmg',gg_unit_Hvwd_0525)
    call DisableTrigger(GetTriggeringTrigger())
    endif
    endfunction
    function InitTrig_Evade takes nothing returns nothing
    set gg_trg_Evade=CreateTrigger()
    call DisableTrigger(gg_trg_Evade)
    call TriggerRegisterUnitEvent(gg_trg_Evade,gg_unit_Hvwd_0525,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Evade,function Trig_Evade_Actions)
    endfunction