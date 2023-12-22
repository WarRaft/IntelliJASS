function Trig_Kargath_Starts_Func001Func002002003001001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003001002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'BIsv')==false)
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kargath_Starts_Func001Func002002003001002001(),Trig_Kargath_Starts_Func001Func002002003001002002())
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kargath_Starts_Func001Func002002003001001(),Trig_Kargath_Starts_Func001Func002002003001002())
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003002001001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003002001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'BHds')==false)
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kargath_Starts_Func001Func002002003002001001(),Trig_Kargath_Starts_Func001Func002002003002001002())
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003002002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003002002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kargath_Starts_Func001Func002002003002002001(),Trig_Kargath_Starts_Func001Func002002003002002002())
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kargath_Starts_Func001Func002002003002001(),Trig_Kargath_Starts_Func001Func002002003002002())
    endfunction
    function Trig_Kargath_Starts_Func001Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kargath_Starts_Func001Func002002003001(),Trig_Kargath_Starts_Func001Func002002003002())
    endfunction
    function Trig_Kargath_Starts_Func001Func003A takes nothing returns nothing
    call UnitAddAbilityBJ('A0CS',GetEnumUnit())
    call UnitDamageTargetBJ(gg_unit_Nsjs_0498,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A05C',gg_unit_Nsjs_0498))*40.00)+30.00 + (GetHeroStr(gg_unit_Nsjs_0498, true) * 0.5)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_Nsjs_0498,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A05C',gg_unit_Nsjs_0498))*40.00)+25.00 + (GetHeroStr(gg_unit_Nsjs_0498, true) * 0.5)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    endfunction
    function Trig_Kargath_Starts_Func001Func011002 takes nothing returns nothing
    call UnitRemoveAbilityBJ('A0CS',GetEnumUnit())
    endfunction
    function Trig_Kargath_Starts_Func001Func013Func002Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0FK',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Kargath_Starts_Func001Func013Func002Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0FK',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Kargath_Starts_Func001Func013Func002Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0FK',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Kargath_Starts_Func001Func013Func002C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0FK',GetTriggerUnit())==4))then
    return false
    endif
    return true
    endfunction
    function Trig_Kargath_Starts_Func001Func013Func004C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A03M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kargath_Starts_Func001Func013C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0FK'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kargath_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A05C'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kargath_Starts_Actions takes nothing returns nothing
    if(Trig_Kargath_Starts_Func001C())then
    set udg_ScytheTarget=GetUnitLoc(GetSpellTargetUnit())
    set udg_ScytheGroup=GetUnitsInRangeOfLocMatching(225.00,udg_ScytheTarget,Condition(function Trig_Kargath_Starts_Func001Func002002003))
    call ForGroupBJ(udg_ScytheGroup,function Trig_Kargath_Starts_Func001Func003A)
    set udg_ScytheMove=AngleBetweenPoints(GetUnitLoc(gg_unit_Nsjs_0498),udg_ScytheTarget)
    call PolledWait(0.15)
    call EnableTrigger(gg_trg_Slash_Move)
    call PolledWait(0.80)
    call DisableTrigger(gg_trg_Slash_Move)
    call DestroyGroup(udg_ScytheGroup)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()),function Trig_Kargath_Starts_Func001Func011002)
    else
    if(Trig_Kargath_Starts_Func001Func013C())then
    call UnitRemoveBuffBJ('Bchd',gg_unit_Nsjs_0498)
    if(Trig_Kargath_Starts_Func001Func013Func002C())then
    call UnitAddAbilityBJ('A05E',GetTriggerUnit())
    call UnitAddAbilityBJ('A025',GetTriggerUnit())
    call PolledWait(6.00)
    call UnitRemoveAbilityBJ('A05E',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A025',GetTriggerUnit())
    else
    if(Trig_Kargath_Starts_Func001Func013Func002Func001C())then
    call UnitAddAbilityBJ('A05E',GetTriggerUnit())
    call UnitAddAbilityBJ('A025',GetTriggerUnit())
    call PolledWait(3.00)
    call UnitRemoveAbilityBJ('A05E',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A025',GetTriggerUnit())
    else
    if(Trig_Kargath_Starts_Func001Func013Func002Func001Func001C())then
    call UnitAddAbilityBJ('A05E',GetTriggerUnit())
    call UnitAddAbilityBJ('A025',GetTriggerUnit())
    call PolledWait(4.00)
    call UnitRemoveAbilityBJ('A05E',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A025',GetTriggerUnit())
    else
    if(Trig_Kargath_Starts_Func001Func013Func002Func001Func001Func001C())then
    call UnitAddAbilityBJ('A05E',GetTriggerUnit())
    call UnitAddAbilityBJ('A025',GetTriggerUnit())
    call PolledWait(5.00)
    call UnitRemoveAbilityBJ('A05E',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A025',GetTriggerUnit())
    else
    endif
    endif
    endif
    endif
    else
    if(Trig_Kargath_Starts_Func001Func013Func004C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Nsjs_0498)
    call CreateNUnitsAtLoc(1,'o008',Player(4),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A062',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A062',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A03M',gg_unit_Nsjs_0498))
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call IssueImmediateOrder(GetLastCreatedUnit(),"howlofterror")
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Kargath_Starts takes nothing returns nothing
    set gg_trg_Kargath_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Kargath_Starts,function Trig_Kargath_Starts_Actions)
    endfunction