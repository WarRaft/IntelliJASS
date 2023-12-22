function Trig_Death_Pact_Conditions takes nothing returns boolean
    if(not(IsUnitType(GetDyingUnit(),UNIT_TYPE_MECHANICAL)==false))then
    return false
    endif
    if(not(IsUnitType(GetDyingUnit(),UNIT_TYPE_SUMMONED)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Death_Pact_Func003C takes nothing returns boolean
    if(not(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2)<=1500.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Death_Pact_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetDyingUnit())
    set udg_TempPoint2=GetUnitLoc(gg_unit_Nsjs_0498)
    if(Trig_Death_Pact_Func003C())then
    call SetUnitLifeBJ(gg_unit_Nsjs_0498,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Nsjs_0498)+((I2R(GetUnitAbilityLevelSwapped('A05F',gg_unit_Nsjs_0498))*35.00)+45.00)))
    else
    endif
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    endfunction
    function InitTrig_Death_Pact takes nothing returns nothing
    set gg_trg_Death_Pact=CreateTrigger()
    call TriggerAddCondition(gg_trg_Death_Pact,Condition(function Trig_Death_Pact_Conditions))
    call TriggerAddAction(gg_trg_Death_Pact,function Trig_Death_Pact_Actions)
    endfunction