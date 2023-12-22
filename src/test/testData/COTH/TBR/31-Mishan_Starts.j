function Trig_Mishan_Starts_Func001Func005Func003C takes nothing returns boolean
    if(not(udg_StabTarget==udg_DuelTarget))then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Starts_Func001Func005C takes nothing returns boolean
    if(not(UnitHasBuffBJ(udg_StabTarget,'B03N')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(udg_StabTarget,'B01E')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(udg_StabTarget,'Bams')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A02F'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003001002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mishan_Starts_Func001Func007Func006001003001001(),Trig_Mishan_Starts_Func001Func007Func006001003001002())
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003002001001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003002001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B01E')==false)
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mishan_Starts_Func001Func007Func006001003002001001(),Trig_Mishan_Starts_Func001Func007Func006001003002001002())
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003002002001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(2))==true)
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003002002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mishan_Starts_Func001Func007Func006001003002002001(),Trig_Mishan_Starts_Func001Func007Func006001003002002002())
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mishan_Starts_Func001Func007Func006001003002001(),Trig_Mishan_Starts_Func001Func007Func006001003002002())
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Mishan_Starts_Func001Func007Func006001003001(),Trig_Mishan_Starts_Func001Func007Func006001003002())
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006Func003C takes nothing returns boolean
    if(not(GetEnumUnit()==udg_DuelTarget))then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Starts_Func001Func007Func006A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Emoo_0488,GetEnumUnit(),(udg_WaycrestSpellDamage/ 2.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call UnitDamageTargetBJ(gg_unit_Emoo_0488,GetEnumUnit(),(udg_WaycrestSpellDamage/ 2.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    if(Trig_Mishan_Starts_Func001Func007Func006Func003C())then
    set udg_DuelDamage=(udg_DuelDamage+udg_WaycrestSpellDamage)
    set udg_DuelCounter=(udg_DuelCounter+1)
    else
    endif
    endfunction
    function Trig_Mishan_Starts_Func001Func007C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A00J'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ACf3'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Starts_Actions takes nothing returns nothing
    if(Trig_Mishan_Starts_Func001C())then
    set udg_StabTarget=GetSpellTargetUnit()
    call PolledWait(0.35)
    call PlaySoundOnUnitBJ(gg_snd_MetalHeavyChopMetal3,100,gg_unit_Emoo_0488)
    set udg_WaycrestSpellDamage=(((udg_WaycrestDamage*0.08)*(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,udg_StabTarget)/ 100.00))+(75.00*I2R(GetUnitAbilityLevelSwapped('ACf3',gg_unit_Emoo_0488))))
    if(Trig_Mishan_Starts_Func001Func005C())then
    call UnitDamageTargetBJ(gg_unit_Emoo_0488,udg_StabTarget,(udg_WaycrestSpellDamage/ 2.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_Emoo_0488,udg_StabTarget,(udg_WaycrestSpellDamage/ 2.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    if(Trig_Mishan_Starts_Func001Func005Func003C())then
    set udg_DuelDamage=(udg_DuelDamage+udg_WaycrestSpellDamage)
    set udg_DuelCounter=(udg_DuelCounter+1)
    else
    endif
    set udg_TempPoint=GetUnitLoc(gg_unit_Emoo_0488)
    call CreateTextTagLocBJ((I2S(R2I(udg_WaycrestSpellDamage))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    else
    endif
    else
    if(Trig_Mishan_Starts_Func001Func007C())then
    set udg_WaycrestTarget=GetUnitLoc(GetSpellTargetUnit())
    set udg_WaycrestSpellDamage=((50.00*I2R(GetUnitAbilityLevelSwapped('A00J',gg_unit_Emoo_0488)))+(udg_WaycrestDamage*0.75))
    call PolledWait(0.40)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(170.00,udg_WaycrestTarget,Condition(function Trig_Mishan_Starts_Func001Func007Func006001003)),function Trig_Mishan_Starts_Func001Func007Func006A)
    call RemoveLocation(udg_WaycrestTarget)
    set udg_TempPoint=GetUnitLoc(gg_unit_Emoo_0488)
    call CreateTextTagLocBJ((I2S(R2I(udg_WaycrestSpellDamage))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Mishan_Starts_Func001Func007Func001Func001C())then
    set udg_DuelCounter=0.00
    set udg_DuelDamage=0.00
    set udg_DuelTarget=GetSpellTargetUnit()
    call EnableTrigger(gg_trg_Duel_Mishan_Damage)
    call EnableTrigger(gg_trg_Duel_Target_Damage)
    call EnableTrigger(gg_trg_Duel_Finish)
    call SetUnitOwner(gg_unit_o008_0490,Player(2),false)
    call PolledWait(25.00)
    call DisableTrigger(gg_trg_Duel_Target_Damage)
    call DisableTrigger(gg_trg_Duel_Mishan_Damage)
    call DisableTrigger(gg_trg_Duel_Finish)
    call SetUnitOwner(gg_unit_o008_0490,Player(PLAYER_NEUTRAL_AGGRESSIVE),false)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Mishan_Starts takes nothing returns nothing
    set gg_trg_Mishan_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Mishan_Starts,function Trig_Mishan_Starts_Actions)
    endfunction