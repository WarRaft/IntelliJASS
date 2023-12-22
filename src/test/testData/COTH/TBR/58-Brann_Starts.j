function Trig_Brann_Starts_Func001Func014002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Brann_Starts_Func001Func014002003001002 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Brann_Starts_Func001Func014002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Brann_Starts_Func001Func014002003001001(),Trig_Brann_Starts_Func001Func014002003001002())
    endfunction
    function Trig_Brann_Starts_Func001Func014002003002001001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(5))==true)
    endfunction
    function Trig_Brann_Starts_Func001Func014002003002001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Brann_Starts_Func001Func014002003002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Brann_Starts_Func001Func014002003002001001(),Trig_Brann_Starts_Func001Func014002003002001002())
    endfunction
    function Trig_Brann_Starts_Func001Func014002003002002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Brann_Starts_Func001Func014002003002002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B01E')==false)
    endfunction
    function Trig_Brann_Starts_Func001Func014002003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Brann_Starts_Func001Func014002003002002001(),Trig_Brann_Starts_Func001Func014002003002002002())
    endfunction
    function Trig_Brann_Starts_Func001Func014002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Brann_Starts_Func001Func014002003002001(),Trig_Brann_Starts_Func001Func014002003002002())
    endfunction
    function Trig_Brann_Starts_Func001Func014002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Brann_Starts_Func001Func014002003001(),Trig_Brann_Starts_Func001Func014002003002())
    endfunction
    function Trig_Brann_Starts_Func001Func015Func002C takes nothing returns boolean
    if(not(AngleBetweenPoints(udg_ScattershotPoint,udg_TempLoc)>=(AngleBetweenPoints(udg_ScattershotPoint,udg_ScattershotTarget)-35.00)))then
    return false
    endif
    if(not(AngleBetweenPoints(udg_ScattershotPoint,udg_TempLoc)<=(AngleBetweenPoints(udg_ScattershotPoint,udg_ScattershotTarget)+35.00)))then
    return false
    endif
    return true
    endfunction
    function Trig_Brann_Starts_Func001Func015A takes nothing returns nothing
    set udg_TempLoc=GetUnitLoc(GetEnumUnit())
    if(Trig_Brann_Starts_Func001Func015Func002C())then
    call UnitDamageTargetBJ(gg_unit_H005_0502,GetEnumUnit(),((30.00*I2R(GetUnitAbilityLevelSwapped('A0A6',gg_unit_H005_0502)))+15.00),ATTACK_TYPE_HERO,DAMAGE_TYPE_NORMAL)
    call UnitDamageTargetBJ(gg_unit_H005_0502,GetEnumUnit(),((30.00*I2R(GetUnitAbilityLevelSwapped('A0A6',gg_unit_H005_0502)))+15.00),ATTACK_TYPE_HERO,DAMAGE_TYPE_UNIVERSAL)
    else
    endif
    call RemoveLocation(udg_TempLoc)
    endfunction
    function Trig_Brann_Starts_Func001Func021C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A031'))then
    return false
    endif
    return true
    endfunction
    function Trig_Brann_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0A6'))then
    return false
    endif
    return true
    endfunction
    function Trig_Brann_Starts_Actions takes nothing returns nothing
    if(Trig_Brann_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_H005_0502)
    set udg_TempPoint2=GetSpellTargetLoc()
    set udg_ScattershotPoint=PolarProjectionBJ(udg_TempPoint,25.00,AngleBetweenPoints(udg_TempPoint,udg_TempPoint2))
    set udg_ScattershotTarget=PolarProjectionBJ(udg_ScattershotPoint,575.00,AngleBetweenPoints(udg_TempPoint,udg_TempPoint2))
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call CreateNUnitsAtLoc(1,'e006',Player(5),udg_ScattershotPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_ScattershotTarget)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=2
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint3=PolarProjectionBJ(udg_ScattershotTarget,(75.00*I2R(GetForLoopIndexA())),(GetUnitFacing(GetTriggerUnit())-90.00))
    call CreateNUnitsAtLoc(1,'e006',Player(5),udg_ScattershotPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_TempPoint3)
    call RemoveLocation(udg_TempPoint3)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set bj_forLoopBIndex=1
    set bj_forLoopBIndexEnd=2
    loop
    exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
    set udg_TempPoint3=PolarProjectionBJ(udg_ScattershotTarget,(75.00*I2R(GetForLoopIndexB())),(GetUnitFacing(GetTriggerUnit())+90.00))
    call CreateNUnitsAtLoc(1,'e006',Player(5),udg_ScattershotPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_TempPoint3)
    call RemoveLocation(udg_TempPoint3)
    set bj_forLoopBIndex=bj_forLoopBIndex+1
    endloop
    call PolledWait(0.35)
    set udg_TempPoint=GetUnitLoc(gg_unit_H005_0502)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(675.00,udg_TempPoint,Condition(function Trig_Brann_Starts_Func001Func014002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Brann_Starts_Func001Func015A)
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_ScattershotPoint)
    call RemoveLocation(udg_ScattershotTarget)
    call GroupClear(udg_Temp_UnitGroup)
    else
    if(Trig_Brann_Starts_Func001Func021C())then
    set udg_BurningCocktailPoint=GetUnitLoc(gg_unit_H005_0502)
    set udg_BurningCocktailTarget=GetSpellTargetLoc()
    set udg_BurningReal=DistanceBetweenPoints(udg_BurningCocktailPoint,udg_BurningCocktailTarget)
    call CreateNUnitsAtLoc(1,'nwgs',Player(5),udg_BurningCocktailPoint,bj_UNIT_FACING)
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_BurningCocktailTarget)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call PolledWait(((udg_BurningReal/ 550.00)+0.35))
    call AddSpecialEffectLocBJ(udg_BurningCocktailTarget,"Abilities\\Spells\\Orc\\LiquidFire\\Liquidfire.mdl")
    set udg_BurningCocktailSE=GetLastCreatedEffectBJ()
    call CreateNUnitsAtLoc(1,'o008',Player(5),udg_BurningCocktailTarget,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A06X',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A06X',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A031',gg_unit_H005_0502))
    call IssueImmediateOrder(GetLastCreatedUnit(),"thunderclap")
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_BurningCocktailPoint)
    call RemoveLocation(udg_BurningCocktailTarget)
    call PolledWait(1.00)
    call DestroyEffect(udg_BurningCocktailSE)
    else
    endif
    endif
    endfunction
    function InitTrig_Brann_Starts takes nothing returns nothing
    set gg_trg_Brann_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Brann_Starts,function Trig_Brann_Starts_Actions)
    endfunction