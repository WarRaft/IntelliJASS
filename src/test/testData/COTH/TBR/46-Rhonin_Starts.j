function Trig_Mana_Shield_Ends_Actions takes nothing returns nothing
    call SetTextTagTextBJ(udg_RhoninShieldText,"",10)
    call DisableTrigger(gg_trg_Mana_Shield)
    set udg_ManaShieldCounter=0
    set udg_ManaShield=0.00
    call UnitRemoveBuffBJ('BNms',gg_unit_Hjai_0459)
    endfunction

function Trig_Rhonin_Starts_Func001Func010002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Rhonin_Starts_Func001Func010002003002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_TOWNHALL)==false)
    endfunction
    function Trig_Rhonin_Starts_Func001Func010002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Rhonin_Starts_Func001Func010002003001(),Trig_Rhonin_Starts_Func001Func010002003002())
    endfunction
    function Trig_Rhonin_Starts_Func001Func011002 takes nothing returns nothing
    call SetUnitManaBJ(GetEnumUnit(),(GetUnitStateSwap(UNIT_STATE_MANA,GetEnumUnit())-((I2R(GetUnitAbilityLevelSwapped('A027',gg_unit_Hjai_0459))*10.00)+(GetUnitStateSwap(UNIT_STATE_MAX_MANA,gg_unit_Hjai_0459)*0.05))))
    endfunction
    function Trig_Rhonin_Starts_Func001Func012002 takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hjai_0459,GetEnumUnit(),((I2R((GetUnitAbilityLevelSwapped('A027',gg_unit_Hjai_0459)*65))+40.00)+(GetUnitStateSwap(UNIT_STATE_MAX_MANA,gg_unit_Hjai_0459)*0.05)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Rhonin_Starts_Func001Func016Func001Func001Func002002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Rhonin_Starts_Func001Func016Func001Func001Func002002003002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_TOWNHALL)==false)
    endfunction
    function Trig_Rhonin_Starts_Func001Func016Func001Func001Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Rhonin_Starts_Func001Func016Func001Func001Func002002003001(),Trig_Rhonin_Starts_Func001Func016Func001Func001Func002002003002())
    endfunction
    function Trig_Rhonin_Starts_Func001Func016Func001Func001Func003002 takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hjai_0459,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('A082',gg_unit_Hjai_0459))*99.00)+50.00)+((GetUnitStateSwap(UNIT_STATE_MAX_MANA,GetSpellTargetUnit())-GetUnitStateSwap(UNIT_STATE_MANA,GetSpellTargetUnit()))/ 2.00)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Rhonin_Starts_Func001Func016Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A082'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rhonin_Starts_Func001Func016C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AIdb'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rhonin_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A027'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rhonin_Starts_Actions takes nothing returns nothing
    if(Trig_Rhonin_Starts_Func001C())then
    set udg_Manabomb=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'ncgb',Player(3),udg_Manabomb,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.40,'BTLF',GetLastCreatedUnit())
    call SetUnitAnimation(GetLastCreatedUnit(),"stand work")
    call PolledWait(1.40)
    call PlaySoundAtPointBJ(gg_snd_BreathOfFrost1,100,udg_Manabomb,0)
    call CreateNUnitsAtLoc(1,'n006',Player(3),udg_Manabomb,bj_UNIT_FACING)
    call KillUnit(GetLastCreatedUnit())
    call PolledWait(0.30)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(365.00,udg_Manabomb,Condition(function Trig_Rhonin_Starts_Func001Func010002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Rhonin_Starts_Func001Func011002)
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Rhonin_Starts_Func001Func012002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_Manabomb)
    else
    if(Trig_Rhonin_Starts_Func001Func016C())then
    set udg_ManaShield=I2R(((GetUnitAbilityLevelSwapped('AIdb',gg_unit_Hjai_0459)*100 + 50)+(R2I(GetUnitStateSwap(UNIT_STATE_MAX_MANA,gg_unit_Hjai_0459))/(7-GetUnitAbilityLevelSwapped('AIdb',gg_unit_Hjai_0459)))))
    call SetTextTagPosUnitBJ(udg_RhoninShieldText,gg_unit_Hjai_0459,0)
    call SetTextTagTextBJ(udg_RhoninShieldText,I2S(R2I(udg_ManaShield)),10)
    call EnableTrigger(gg_trg_Mana_Shield)
    set udg_ManaShieldCounter=1
    call EnableTrigger(gg_trg_Shields_Move)
    call PauseTimerBJ(true,udg_ManaShieldTimer)
    call TimerStart(udg_ManaShieldTimer,20, false, function Trig_Mana_Shield_Ends_Actions)
    else
    if(Trig_Rhonin_Starts_Func001Func016Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(GetSpellTargetUnit())
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(175.00,udg_TempPoint,Condition(function Trig_Rhonin_Starts_Func001Func016Func001Func001Func002002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Rhonin_Starts_Func001Func016Func001Func001Func003002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    call PlaySoundOnUnitBJ(gg_snd_AncestralGuardianHit1,100,GetSpellTargetUnit())
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Rhonin_Starts takes nothing returns nothing
    set gg_trg_Rhonin_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Rhonin_Starts,function Trig_Rhonin_Starts_Actions)
    endfunction