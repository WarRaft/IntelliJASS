function Trig_Fenris_Starts_Func001Func013Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0B5'))then
    return false
    endif
    return true
    endfunction
    function Trig_Fenris_Starts_Func001Func013C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0AZ'))then
    return false
    endif
    return true
    endfunction
    function Trig_Fenris_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0B2'))then
    return false
    endif
    return true
    endfunction
    function Trig_Fenris_Starts_Actions takes nothing returns nothing
    if(Trig_Fenris_Starts_Func001C())then
    set udg_TempPoint3=GetUnitLoc(gg_unit_Ofar_0481)
    call CreateNUnitsAtLocFacingLocBJ(1,'osw1',GetOwningPlayer(gg_unit_Ofar_0481),udg_TempPoint3,GetUnitLoc(GetSpellTargetUnit()))
    call UnitApplyTimedLifeBJ(3.00,'BFig',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A0B1',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0B2',gg_unit_Ofar_0481))
    call RemoveLocation(udg_TempPoint3)
    call EnableTrigger(gg_trg_Spirit_Wolf_Stomp)
    call EnableTrigger(gg_trg_Spirit_Wolf_Death)
    call IssueTargetOrder(GetLastCreatedUnit(),"forkedlightning",GetSpellTargetUnit())
    call PolledWait(3.00)
    call DisableTrigger(gg_trg_Spirit_Wolf_Stomp)
    call DisableTrigger(gg_trg_Spirit_Wolf_Death)
    else
    if(Trig_Fenris_Starts_Func001Func013C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Ofar_0481)
    call SetUnitPositionLoc(gg_unit_otbk_0389,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitAbilityLevelSwapped('A09B',gg_unit_otbk_0389,GetUnitAbilityLevelSwapped('A0AZ',gg_unit_Ofar_0481))
    call IssueImmediateOrder(gg_unit_otbk_0389,"battleroar")
    else
    if(Trig_Fenris_Starts_Func001Func013Func001Func001C())then
    set udg_TempPoint2=GetUnitLoc(gg_unit_Ofar_0481)
    call CreateNUnitsAtLocFacingLocBJ(1,'osw2',GetOwningPlayer(gg_unit_Ofar_0481),udg_TempPoint2,GetUnitLoc(GetSpellTargetUnit()))
    call UnitApplyTimedLifeBJ(3.00,'BFig',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A0B3',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0B5',gg_unit_Ofar_0481))
    call IssueTargetOrder(GetLastCreatedUnit(),"forkedlightning",GetSpellTargetUnit())
    set udg_LastRider=GetLastCreatedUnit()
    call EnableTrigger(gg_trg_Last_Rider_Death)
    call RemoveLocation(udg_TempPoint2)
    call PolledWait(3.00)
    call DisableTrigger(gg_trg_Last_Rider_Death)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Fenris_Starts takes nothing returns nothing
    set gg_trg_Fenris_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Fenris_Starts,function Trig_Fenris_Starts_Actions)
    endfunction