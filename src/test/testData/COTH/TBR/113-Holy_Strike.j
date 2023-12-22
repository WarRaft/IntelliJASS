function Trig_Holy_Strike_Func003002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Holy_Strike_Func003002003002001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Holy_Strike_Func003002003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(8))==true)
    endfunction
    function Trig_Holy_Strike_Func003002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Holy_Strike_Func003002003002001(),Trig_Holy_Strike_Func003002003002002())
    endfunction
    function Trig_Holy_Strike_Func003002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Holy_Strike_Func003002003001(),Trig_Holy_Strike_Func003002003002())
    endfunction
    function Trig_Holy_Strike_Func005A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Harf_0501,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A042',gg_unit_Harf_0501))*45.00)+15.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call AddSpecialEffectTargetUnitBJ("chest",gg_unit_Harf_0501,"Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    endfunction
    function Trig_Holy_Strike_Actions takes nothing returns nothing
    set udg_HolyStrikePoint=GetUnitLoc(gg_unit_Harf_0501)
    set udg_HolyStrikeGroup=GetUnitsInRangeOfLocMatching(230.00,udg_HolyStrikePoint,Condition(function Trig_Holy_Strike_Func003002003))
    call PolledWait(0.20)
    call ForGroupBJ(udg_HolyStrikeGroup,function Trig_Holy_Strike_Func005A)
    call DestroyGroup(udg_HolyStrikeGroup)
    set udg_HolyStrikeCount=0.00
    endfunction
    function InitTrig_Holy_Strike takes nothing returns nothing
    set gg_trg_Holy_Strike=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Holy_Strike,"udg_HolyStrikeCount",EQUAL,5.00)
    call TriggerAddAction(gg_trg_Holy_Strike,function Trig_Holy_Strike_Actions)
    endfunction