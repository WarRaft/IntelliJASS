function Trig_Hail_of_Arrows_Damage_Func003001003001001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(6))==true)
    endfunction
    function Trig_Hail_of_Arrows_Damage_Func003001003001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
    endfunction
    function Trig_Hail_of_Arrows_Damage_Func003001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Hail_of_Arrows_Damage_Func003001003001001(),Trig_Hail_of_Arrows_Damage_Func003001003001002())
    endfunction
    function Trig_Hail_of_Arrows_Damage_Func003001003002001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Hail_of_Arrows_Damage_Func003001003002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B01E')==false)
    endfunction
    function Trig_Hail_of_Arrows_Damage_Func003001003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Hail_of_Arrows_Damage_Func003001003002001(),Trig_Hail_of_Arrows_Damage_Func003001003002002())
    endfunction
    function Trig_Hail_of_Arrows_Damage_Func003001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Hail_of_Arrows_Damage_Func003001003001(),Trig_Hail_of_Arrows_Damage_Func003001003002())
    endfunction
    function Trig_Hail_of_Arrows_Damage_Func003A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hamg_0499,GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('A08F',gg_unit_Hamg_0499))*17.00),ATTACK_TYPE_PIERCE,DAMAGE_TYPE_NORMAL)
    call UnitDamageTargetBJ(gg_unit_Hamg_0499,GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('A08F',gg_unit_Hamg_0499))*18.00),ATTACK_TYPE_PIERCE,DAMAGE_TYPE_UNIVERSAL)
    endfunction
    function Trig_Hail_of_Arrows_Damage_Actions takes nothing returns nothing
    call PolledWait(0.25)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(200.00,udg_HailTarget,Condition(function Trig_Hail_of_Arrows_Damage_Func003001003)),function Trig_Hail_of_Arrows_Damage_Func003A)
    endfunction
    function InitTrig_Hail_of_Arrows_Damage takes nothing returns nothing
    set gg_trg_Hail_of_Arrows_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Hail_of_Arrows_Damage)
    call TriggerAddAction(gg_trg_Hail_of_Arrows_Damage,function Trig_Hail_of_Arrows_Damage_Actions)
    endfunction