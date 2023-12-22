
    function Trig_Duke_Starts_Func001Func023002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Duke_Starts_Func001Func023002003001002 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Duke_Starts_Func001Func023002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Duke_Starts_Func001Func023002003001001(),Trig_Duke_Starts_Func001Func023002003001002())
    endfunction
    function Trig_Duke_Starts_Func001Func023002003002001001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(2))==true)
    endfunction
    function Trig_Duke_Starts_Func001Func023002003002001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Duke_Starts_Func001Func023002003002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Duke_Starts_Func001Func023002003002001001(),Trig_Duke_Starts_Func001Func023002003002001002())
    endfunction
    function Trig_Duke_Starts_Func001Func023002003002002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Duke_Starts_Func001Func023002003002002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B01E')==false)
    endfunction
    function Trig_Duke_Starts_Func001Func023002003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Duke_Starts_Func001Func023002003002002001(),Trig_Duke_Starts_Func001Func023002003002002002())
    endfunction
    function Trig_Duke_Starts_Func001Func023002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Duke_Starts_Func001Func023002003002001(),Trig_Duke_Starts_Func001Func023002003002002())
    endfunction
    function Trig_Duke_Starts_Func001Func023002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Duke_Starts_Func001Func023002003001(),Trig_Duke_Starts_Func001Func023002003002())
    endfunction
    function Trig_Duke_Starts_Func001Func024Func002C takes nothing returns boolean
    if(not(AngleBetweenPoints(udg_MultibarrelPoint,udg_TempLoc)>=(AngleBetweenPoints(udg_MultibarrelPoint,udg_MultibarrelTarget)-35.00)))then
    return false
    endif
    if(not(AngleBetweenPoints(udg_MultibarrelPoint,udg_TempLoc)<=(AngleBetweenPoints(udg_MultibarrelPoint,udg_MultibarrelTarget)+35.00)))then
    return false
    endif
    return true
    endfunction
    function Trig_Duke_Starts_Func001Func024A takes nothing returns nothing
    set udg_TempLoc=GetUnitLoc(GetEnumUnit())
    if(Trig_Duke_Starts_Func001Func024Func002C())then
    call UnitDamageTargetBJ(gg_unit_Hhkl_0486,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('A0FC',gg_unit_Hhkl_0486))*30.00)+20.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_AGI,gg_unit_Hhkl_0486,true))*0.30)),ATTACK_TYPE_HERO,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_Hhkl_0486,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('A0FC',gg_unit_Hhkl_0486))*30.00)+20.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_AGI,gg_unit_Hhkl_0486,true))*0.30)),ATTACK_TYPE_HERO,DAMAGE_TYPE_NORMAL)
    else
    endif
    call RemoveLocation(udg_TempLoc)
    endfunction
    function Trig_Duke_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0FC'))then
    return false
    endif
    return true
    endfunction
    function Trig_Duke_Starts_Actions takes nothing returns nothing
    if(Trig_Duke_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Hhkl_0486)
    set udg_TempPoint2=GetSpellTargetLoc()
    set udg_MultibarrelPoint=PolarProjectionBJ(udg_TempPoint,25.00,AngleBetweenPoints(udg_TempPoint,udg_TempPoint2))
    set udg_MultibarrelTarget=PolarProjectionBJ(udg_MultibarrelPoint,575.00,AngleBetweenPoints(udg_TempPoint,udg_TempPoint2))
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call CreateNUnitsAtLoc(1,'e006',Player(2),udg_MultibarrelPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_MultibarrelTarget)
    set udg_TempPoint3=PolarProjectionBJ(udg_MultibarrelTarget,(75.00*1.50),(GetUnitFacing(GetTriggerUnit())-90.00))
    call CreateNUnitsAtLoc(1,'e006',Player(2),udg_MultibarrelPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_TempPoint3)
    call RemoveLocation(udg_TempPoint3)
    set udg_TempPoint3=PolarProjectionBJ(udg_MultibarrelTarget,(75.00*1.50),(GetUnitFacing(GetTriggerUnit())+90.00))
    call CreateNUnitsAtLoc(1,'e006',Player(2),udg_MultibarrelPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_TempPoint3)
    call RemoveLocation(udg_TempPoint3)
    call PolledWait(0.35)
    set udg_TempPoint=GetUnitLoc(gg_unit_Hhkl_0486)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(675.00,udg_TempPoint,Condition(function Trig_Duke_Starts_Func001Func023002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Duke_Starts_Func001Func024A)
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_ScattershotPoint)
    call RemoveLocation(udg_ScattershotTarget)
    call GroupClear(udg_Temp_UnitGroup)
    else
    endif
    endfunction
    function InitTrig_Duke_Starts takes nothing returns nothing
    set gg_trg_Duke_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Duke_Starts,function Trig_Duke_Starts_Actions)
    endfunction