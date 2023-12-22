
    function Trig_Guldan_Starts_Func001Func008Func002002003001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Guldan_Starts_Func001Func008Func002002003002001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Guldan_Starts_Func001Func008Func002002003002002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Guldan_Starts_Func001Func008Func002002003002002002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_FingerofDeathGroup)==false)
    endfunction
    function Trig_Guldan_Starts_Func001Func008Func002002003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Guldan_Starts_Func001Func008Func002002003002002001(),Trig_Guldan_Starts_Func001Func008Func002002003002002002())
    endfunction
    function Trig_Guldan_Starts_Func001Func008Func002002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Guldan_Starts_Func001Func008Func002002003002001(),Trig_Guldan_Starts_Func001Func008Func002002003002002())
    endfunction
    function Trig_Guldan_Starts_Func001Func008Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Guldan_Starts_Func001Func008Func002002003001(),Trig_Guldan_Starts_Func001Func008Func002002003002())
    endfunction
    function Trig_Guldan_Starts_Func001Func008Func003A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Othr_0515,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0FV',gg_unit_Othr_0515))*60.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Othr_0515,true))*1.00)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call GroupAddUnitSimple(GetEnumUnit(),udg_FingerofDeathGroup)
    endfunction
    function Trig_Guldan_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0FV'))then
    return false
    endif
    return true
    endfunction
    function Trig_Guldan_Starts_Actions takes nothing returns nothing
    if(Trig_Guldan_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    set udg_TempPoint2=GetSpellTargetLoc()
    set udg_TempPoint4=PolarProjectionBJ(udg_TempPoint,850.00,(AngleBetweenPoints(udg_TempPoint2,udg_TempPoint)-180.00))
    call AddLightningLoc("AFOD",udg_TempPoint,udg_TempPoint4)
    set udg_FingerofDeath=GetLastCreatedLightningBJ()
    call PlaySoundAtPointBJ(gg_snd_LightningBolt,100,udg_TempPoint2,0)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=16
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,(50.00*I2R(GetForLoopIndexA())),(AngleBetweenPoints(udg_TempPoint2,udg_TempPoint)-180.00))
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(130.00,udg_TempPoint3,Condition(function Trig_Guldan_Starts_Func001Func008Func002002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Guldan_Starts_Func001Func008Func003A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint3)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call RemoveLocation(udg_TempPoint4)
    call GroupClear(udg_FingerofDeathGroup)
    call TriggerSleepAction(0.50)
    call DestroyLightning(udg_FingerofDeath)
    else
    endif
    endfunction
    function InitTrig_Guldan_Starts takes nothing returns nothing
    set gg_trg_Guldan_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Guldan_Starts,function Trig_Guldan_Starts_Actions)
    endfunction