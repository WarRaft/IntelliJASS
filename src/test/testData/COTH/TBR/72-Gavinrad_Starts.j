function Trig_Gavinrad_Starts_Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A01Z'))then
    return false
    endif
    return true
    endfunction
    function Trig_Gavinrad_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANfd'))then
    return false
    endif
    return true
    endfunction
    function Trig_Gavinrad_Starts_Actions takes nothing returns nothing
    if(Trig_Gavinrad_Starts_Func001C())then
    call UnitRemoveBuffBJ('Binf',GetSpellTargetUnit())
    call UnitRemoveBuffBJ('Brpb',GetSpellTargetUnit())
    set udg_TempPoint=GetUnitLoc(gg_unit_H018_0506)
    call CreateNUnitsAtLoc(1,'o008',Player(7),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A06U',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A06U',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('ANfd',gg_unit_H018_0506))
    call IssueTargetOrder(GetLastCreatedUnit(),"innerfire",GetSpellTargetUnit())
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Gavinrad_Starts_Func001Func001Func001C())then
    set udg_HammerPoint=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'h00Z',Player(7),udg_HammerPoint,0.00)
    call UnitApplyTimedLifeBJ(1.55,'BTLF',GetLastCreatedUnit())
    call SetUnitOwner(GetLastCreatedUnit(),Player(4),true)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(),100.00,100,0.00,70.00)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(),75.00,400.00)
    call AddSpecialEffectLocBJ(udg_HammerPoint,"Abilities\\Spells\\Human\\ReviveHuman\\ReviveHuman.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call PolledWait(1.35)
    call SetUnitAbilityLevelSwapped('A07E',gg_unit_o00R_0334,GetUnitAbilityLevelSwapped('A01Z',gg_unit_H018_0506))
    call SetUnitPositionLoc(gg_unit_o00R_0334,udg_HammerPoint)
    call IssueImmediateOrder(gg_unit_o00R_0334,"stomp")
    call RemoveLocation(udg_HammerPoint)
    else
    endif
    endif
    endfunction
    function InitTrig_Gavinrad_Starts takes nothing returns nothing
    set gg_trg_Gavinrad_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Gavinrad_Starts,function Trig_Gavinrad_Starts_Actions)
    endfunction