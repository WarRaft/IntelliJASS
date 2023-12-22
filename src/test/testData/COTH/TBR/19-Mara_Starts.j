function Trig_Mara_Starts_Func001Func002002003 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bspl')==true)
    endfunction
    function Trig_Mara_Starts_Func001Func004A takes nothing returns nothing
    call UnitAddAbilityBJ('A0D5',GetEnumUnit())
    endfunction
    function Trig_Mara_Starts_Func001Func007A takes nothing returns nothing
    call UnitRemoveAbilityBJ('A0D5',GetEnumUnit())
    endfunction
    function Trig_Mara_Starts_Func001Func010Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A033'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001001001 takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001001002 takes nothing returns boolean
    return(IsUnitAliveBJ(GetEnumUnit())==true)
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001001001(),Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001001002())
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001002001 takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(),UNIT_TYPE_TOWNHALL)==false)
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001002002 takes nothing returns boolean
    return(IsUnitEnemy(GetEnumUnit(),Player(1))==true)
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001002001(),Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001002002())
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func001C takes nothing returns boolean
    if(not GetBooleanAnd(Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001001(),Trig_Mara_Starts_Func001Func010Func011Func001Func001Func001002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func003001001 takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func003001002 takes nothing returns boolean
    return(IsUnitAliveBJ(GetEnumUnit())==true)
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mara_Starts_Func001Func010Func011Func001Func003001001(),Trig_Mara_Starts_Func001Func010Func011Func001Func003001002())
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func003002001 takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(),UNIT_TYPE_MECHANICAL)==false)
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func003002002 takes nothing returns boolean
    return(IsUnitAlly(GetEnumUnit(),Player(1))==true)
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001Func003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mara_Starts_Func001Func010Func011Func001Func003002001(),Trig_Mara_Starts_Func001Func010Func011Func001Func003002002())
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011Func001C takes nothing returns boolean
    if(not GetBooleanAnd(Trig_Mara_Starts_Func001Func010Func011Func001Func003001(),Trig_Mara_Starts_Func001Func010Func011Func001Func003002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Mara_Starts_Func001Func010Func011A takes nothing returns nothing
    if(Trig_Mara_Starts_Func001Func010Func011Func001C())then
    call SetUnitLifeBJ(GetEnumUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetEnumUnit())+((I2R(GetUnitAbilityLevelSwapped('A05G',gg_unit_Edem_0550))*35.00)+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,gg_unit_Edem_0550)*0.03))))
    else
    if(Trig_Mara_Starts_Func001Func010Func011Func001Func001C())then
    call UnitDamageTargetBJ(gg_unit_Edem_0550,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('A05G',gg_unit_Edem_0550))*40.00)+50.00)+(GetUnitStateSwap(UNIT_STATE_MAX_MANA,gg_unit_Edem_0550)*0.03)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    endif
    endif
    endfunction
    function Trig_Mara_Starts_Func001Func010C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A05G'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mara_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='Aspl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mara_Starts_Actions takes nothing returns nothing
    if(Trig_Mara_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Edem_0550)
    set udg_UnityGroup=GetUnitsInRangeOfLocMatching(1500.00,udg_TempPoint,Condition(function Trig_Mara_Starts_Func001Func002002003))
    call RemoveLocation(udg_TempPoint)
    call ForGroupBJ(udg_UnityGroup,function Trig_Mara_Starts_Func001Func004A)
    call PlaySoundOnUnitBJ(gg_snd_HealingWave,100,GetSpellTargetUnit())
    call PolledWait((11.00+I2R(GetUnitAbilityLevelSwapped('Aspl',gg_unit_Edem_0550))))
    call ForGroupBJ(udg_UnityGroup,function Trig_Mara_Starts_Func001Func007A)
    call GroupClear(udg_UnityGroup)
    else
    if(Trig_Mara_Starts_Func001Func010C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Edem_0550)
    call AddSpecialEffectLocBJ(udg_TempPoint,"TheHolyBomb.mdx")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call PolledWait(0.30)
    set udg_TempPoint=GetUnitLoc(gg_unit_Edem_0550)
    call PlaySoundAtPointBJ(gg_snd_HolyBolt,100,udg_TempPoint,0)
    call PlaySoundAtPointBJ(gg_snd_ThunderClapCaster,100,udg_TempPoint,0)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocAll(250.00,udg_TempPoint)
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Mara_Starts_Func001Func010Func011A)
    call GroupClear(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Mara_Starts_Func001Func010Func001Func001C())then
    call UnitDamageTargetBJ(gg_unit_Edem_0550,GetSpellTargetUnit(),(GetUnitStateSwap(UNIT_STATE_MAX_MANA,gg_unit_Edem_0550)*0.08),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call PlaySoundOnUnitBJ(gg_snd_HolyBolt,100,GetSpellTargetUnit())
    call EnableTrigger(gg_trg_Judgement)
    call PolledWait(15.00)
    call DisableTrigger(gg_trg_Judgement)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Mara_Starts takes nothing returns nothing
    set gg_trg_Mara_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Mara_Starts,function Trig_Mara_Starts_Actions)
    endfunction