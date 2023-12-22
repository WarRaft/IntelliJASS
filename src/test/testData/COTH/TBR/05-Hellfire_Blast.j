function Trig_Hellfire_Blast_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0DZ'))then
    return false
    endif
    return true
    endfunction
    function Trig_Hellfire_Blast_Func007001003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Hellfire_Blast_Func007001003002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Hellfire_Blast_Func007001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Hellfire_Blast_Func007001003001(),Trig_Hellfire_Blast_Func007001003002())
    endfunction
    function Trig_Hellfire_Blast_Func007A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Otch_0529,GetEnumUnit(),(((I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Otch_0529,true))*((I2R(GetUnitAbilityLevelSwapped('A0E2',gg_unit_Otch_0529))*0.25)+1.00))+((I2R(GetUnitAbilityLevelSwapped('A0E2',gg_unit_Otch_0529))*25.00)+100.00))*((I2R(GetUnitAbilityLevelSwapped('A0DW',gg_unit_Otch_0529))*0.05)+1)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Hellfire_Blast_Func010C takes nothing returns boolean
    if(not(udg_HellfireCount==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Hellfire_Blast_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(155.00,udg_TempPoint,Condition(function Trig_Hellfire_Blast_Func007001003)),function Trig_Hellfire_Blast_Func007A)
    call RemoveLocation(udg_TempPoint)
    set udg_HellfireCount=(udg_HellfireCount-1)
    if(Trig_Hellfire_Blast_Func010C())then
    call DisableTrigger(GetTriggeringTrigger())
    else
    endif
    endfunction
    function InitTrig_Hellfire_Blast takes nothing returns nothing
    set gg_trg_Hellfire_Blast=CreateTrigger()
    call DisableTrigger(gg_trg_Hellfire_Blast)
    call TriggerAddCondition(gg_trg_Hellfire_Blast,Condition(function Trig_Hellfire_Blast_Conditions))
    call TriggerAddAction(gg_trg_Hellfire_Blast,function Trig_Hellfire_Blast_Actions)
    endfunction