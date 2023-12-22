function Trig_Antonidas_Starts_Func001Func001Func001Func005001003001001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='hwat')
    endfunction
    function Trig_Antonidas_Starts_Func001Func001Func001Func005001003001002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='hwt2')
    endfunction
    function Trig_Antonidas_Starts_Func001Func001Func001Func005001003001 takes nothing returns boolean
    return GetBooleanOr(Trig_Antonidas_Starts_Func001Func001Func001Func005001003001001(),Trig_Antonidas_Starts_Func001Func001Func001Func005001003001002())
    endfunction
    function Trig_Antonidas_Starts_Func001Func001Func001Func005001003002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='hwt3')
    endfunction
    function Trig_Antonidas_Starts_Func001Func001Func001Func005001003 takes nothing returns boolean
    return GetBooleanOr(Trig_Antonidas_Starts_Func001Func001Func001Func005001003001(),Trig_Antonidas_Starts_Func001Func001Func001Func005001003002())
    endfunction
    function Trig_Antonidas_Starts_Func001Func001Func001Func005A takes nothing returns nothing
    set udg_TempPoint2=GetUnitLoc(GetEnumUnit())
    call CreateNUnitsAtLoc(1,'nbel',Player(3),udg_TempPoint2,GetRandomDirectionDeg())
    call UnitApplyTimedLifeBJ(30.00,'BHwe',GetLastCreatedUnit())
    call SetUnitAnimation(GetLastCreatedUnit(),"birth")
    call CreateNUnitsAtLoc(1,'nbel',Player(3),udg_TempPoint2,GetRandomDirectionDeg())
    call UnitApplyTimedLifeBJ(30.00,'BHwe',GetLastCreatedUnit())
    call SetUnitAnimation(GetLastCreatedUnit(),"birth")
    endfunction
    function Trig_Antonidas_Starts_Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0AY'))then
    return false
    endif
    return true
    endfunction
    function Trig_Antonidas_Starts_Func001Func005002003001001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='hwat')
    endfunction
    function Trig_Antonidas_Starts_Func001Func005002003001002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='hwt2')
    endfunction
    function Trig_Antonidas_Starts_Func001Func005002003001 takes nothing returns boolean
    return GetBooleanOr(Trig_Antonidas_Starts_Func001Func005002003001001(),Trig_Antonidas_Starts_Func001Func005002003001002())
    endfunction
    function Trig_Antonidas_Starts_Func001Func005002003002001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='hwt3')
    endfunction
    function Trig_Antonidas_Starts_Func001Func005002003002002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='nbel')
    endfunction
    function Trig_Antonidas_Starts_Func001Func005002003002 takes nothing returns boolean
    return GetBooleanOr(Trig_Antonidas_Starts_Func001Func005002003002001(),Trig_Antonidas_Starts_Func001Func005002003002002())
    endfunction
    function Trig_Antonidas_Starts_Func001Func005002003 takes nothing returns boolean
    return GetBooleanOr(Trig_Antonidas_Starts_Func001Func005002003001(),Trig_Antonidas_Starts_Func001Func005002003002())
    endfunction
    function Trig_Antonidas_Starts_Func001Func006Func002Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetEnumUnit())=='nbel'))then
    return false
    endif
    return true
    endfunction
    function Trig_Antonidas_Starts_Func001Func006Func002C takes nothing returns boolean
    if(not(AngleBetweenPoints(udg_WaveCaster,udg_TempLoc)>=(AngleBetweenPoints(udg_WaveCaster,udg_WaveTarget)-35.00)))then
    return false
    endif
    if(not(AngleBetweenPoints(udg_WaveCaster,udg_TempLoc)<=(AngleBetweenPoints(udg_WaveCaster,udg_WaveTarget)+35.00)))then
    return false
    endif
    return true
    endfunction
    function Trig_Antonidas_Starts_Func001Func006A takes nothing returns nothing
    set udg_TempLoc=GetUnitLoc(GetEnumUnit())
    if(Trig_Antonidas_Starts_Func001Func006Func002C())then
    if(Trig_Antonidas_Starts_Func001Func006Func002Func001C())then
    call CreateNUnitsAtLoc(1,'o008',Player(3),udg_TempLoc,bj_UNIT_FACING)
    call UnitAddAbilityBJ('Awrg',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('Awrg',GetLastCreatedUnit(),2)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssueImmediateOrder(GetLastCreatedUnit(),"stomp")
    call AddSpecialEffectLocBJ(udg_TempLoc,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    call CreateNUnitsAtLoc(1,'o008',Player(3),udg_TempLoc,bj_UNIT_FACING)
    call UnitAddAbilityBJ('Awrg',GetLastCreatedUnit())
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssueImmediateOrder(GetLastCreatedUnit(),"stomp")
    call AddSpecialEffectLocBJ(udg_TempLoc,"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    endif
    else
    endif
    call RemoveLocation(udg_TempLoc)
    endfunction
    function Trig_Antonidas_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANbf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Antonidas_Starts_Actions takes nothing returns nothing
    if(Trig_Antonidas_Starts_Func001C())then
    set udg_WaveCaster=GetUnitLoc(gg_unit_Hant_0475)
    set udg_WaveTarget=GetSpellTargetLoc()
    call PolledWait(0.35)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(800.00,udg_WaveCaster,Condition(function Trig_Antonidas_Starts_Func001Func005002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Antonidas_Starts_Func001Func006A)
    call RemoveLocation(udg_WaveCaster)
    call RemoveLocation(udg_WaveTarget)
    call RemoveLocation(udg_TempLoc)
    else
    if(Trig_Antonidas_Starts_Func001Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call SetUnitPositionLoc(gg_unit_o015_0212,udg_TempPoint)
    call IssueImmediateOrder(gg_unit_o015_0212,"tranquility")
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(600.00,udg_TempPoint,Condition(function Trig_Antonidas_Starts_Func001Func001Func001Func005001003)),function Trig_Antonidas_Starts_Func001Func001Func001Func005A)
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    else
    endif
    endif
    endfunction
    function InitTrig_Antonidas_Starts takes nothing returns nothing
    set gg_trg_Antonidas_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Antonidas_Starts,function Trig_Antonidas_Starts_Actions)
    endfunction