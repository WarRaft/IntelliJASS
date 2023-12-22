function Trig_Tichondrius_Starts_Func001Func001Func001Func007C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A080',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Tichondrius_Starts_Func001Func001Func001Func008C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A080',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Tichondrius_Starts_Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A080'))then
    return false
    endif
    return true
    endfunction
    function Trig_Tichondrius_Starts_Func001Func003002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_MECHANICAL)==false)
    endfunction
    function Trig_Tichondrius_Starts_Func001Func003002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Tichondrius_Starts_Func001Func003002003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Tichondrius_Starts_Func001Func003002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Tichondrius_Starts_Func001Func003002003002001(),Trig_Tichondrius_Starts_Func001Func003002003002002())
    endfunction
    function Trig_Tichondrius_Starts_Func001Func003002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Tichondrius_Starts_Func001Func003002003001(),Trig_Tichondrius_Starts_Func001Func003002003002())
    endfunction
    function Trig_Tichondrius_Starts_Func001Func004A takes nothing returns nothing
    call CreateNUnitsAtLoc(1,'o008',Player(4),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A08D',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A08D',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A04A',gg_unit_Utic_0512))
    call IssueTargetOrder(GetLastCreatedUnit(),"acidbomb",GetEnumUnit())
    endfunction
    function Trig_Tichondrius_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04A'))then
    return false
    endif
    return true
    endfunction
    function Trig_Tichondrius_Starts_Actions takes nothing returns nothing
    if(Trig_Tichondrius_Starts_Func001C())then
    set udg_TempPoint=GetSpellTargetLoc()
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(400.00,udg_TempPoint,Condition(function Trig_Tichondrius_Starts_Func001Func003002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Tichondrius_Starts_Func001Func004A)
    call RemoveLocation(udg_TempPoint)
    call DestroyGroup(udg_Temp_UnitGroup)
    else
    if(Trig_Tichondrius_Starts_Func001Func001Func001C())then
    call EnableTrigger(gg_trg_The_Darkener_Damage_Reduce)
    call UnitAddAbilityBJ('A089',GetTriggerUnit())
    call SetPlayerAbilityAvailableBJ(false,'A089',Player(4))
    call PlaySoundOnUnitBJ(gg_snd_TichondriusWarcry1,100,gg_unit_Utic_0512)
    call SetUnitVertexColorBJ(gg_unit_Utic_0512,50.00,50.00,50.00,0)
    call SetUnitScalePercent(gg_unit_Utic_0512,130.00,130.00,130.00)
    if(Trig_Tichondrius_Starts_Func001Func001Func001Func007C())then
    call SetUnitAbilityLevelSwapped('A089',GetTriggerUnit(),2)
    else
    endif
    if(Trig_Tichondrius_Starts_Func001Func001Func001Func008C())then
    call SetUnitAbilityLevelSwapped('A089',GetTriggerUnit(),3)
    else
    endif
    call PolledWait(25.00)
    call DisableTrigger(gg_trg_The_Darkener_Damage_Reduce)
    call UnitRemoveAbilityBJ('A089',gg_unit_Utic_0512)
    call SetUnitVertexColorBJ(gg_unit_Utic_0512,100.00,100.00,100.00,0)
    call SetUnitScalePercent(gg_unit_Utic_0512,115.00,115.00,115.00)
    else
    endif
    endif
    endfunction
    function InitTrig_Tichondrius_Starts takes nothing returns nothing
    set gg_trg_Tichondrius_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Tichondrius_Starts,function Trig_Tichondrius_Starts_Actions)
    endfunction