function Trig_Darius_Starts_Func001Func001Func001Func009002003001001 takes nothing returns boolean
return(IsUnitDeadBJ(GetFilterUnit())==false)
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func009002003001002 takes nothing returns boolean
return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func009002003001 takes nothing returns boolean
return GetBooleanAnd(Trig_Darius_Starts_Func001Func001Func001Func009002003001001(),Trig_Darius_Starts_Func001Func001Func001Func009002003001002())
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func009002003002001 takes nothing returns boolean
return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func009002003002002 takes nothing returns boolean
return(IsUnitEnemy(GetFilterUnit(),Player(7))==true)
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func009002003002 takes nothing returns boolean
return GetBooleanAnd(Trig_Darius_Starts_Func001Func001Func001Func009002003002001(),Trig_Darius_Starts_Func001Func001Func001Func009002003002002())
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func009002003 takes nothing returns boolean
return GetBooleanAnd(Trig_Darius_Starts_Func001Func001Func001Func009002003001(),Trig_Darius_Starts_Func001Func001Func001Func009002003002())
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func010Func001C takes nothing returns boolean
if(not(UnitHasBuffBJ(udg_StaggeringTarget,'B01E')==false))then
return false
endif
if(not(UnitHasBuffBJ(udg_StaggeringTarget,'B03N')==false))then
return false
endif
return true
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func010A takes nothing returns nothing
if(Trig_Darius_Starts_Func001Func001Func001Func010Func001C())then
call UnitDamageTargetBJ(gg_unit_Nalc_0495,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0FG',gg_unit_Nalc_0495))*62.00)+88.00),ATTACK_TYPE_HERO,DAMAGE_TYPE_NORMAL)
call UnitDamageTargetBJ(gg_unit_Nalc_0495,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0FG',gg_unit_Nalc_0495))*63.00)+87.00),ATTACK_TYPE_HERO,DAMAGE_TYPE_UNIVERSAL)
else
endif
endfunction
function Trig_Darius_Starts_Func001Func001Func001Func020002 takes nothing returns nothing
call UnitRemoveAbilityBJ('A0FF',GetEnumUnit())
endfunction
function Trig_Darius_Starts_Func001Func001Func001C takes nothing returns boolean
if(not(GetSpellAbilityId()=='A0FG'))then
return false
endif
return true
endfunction
function Trig_Darius_Starts_Func001Func010C takes nothing returns boolean
if(not(UnitHasBuffBJ(udg_StaggeringTarget,'B01E')==false))then
return false
endif
if(not(UnitHasBuffBJ(udg_StaggeringTarget,'B03N')==false))then
return false
endif
return true
endfunction
function Trig_Darius_Starts_Func001C takes nothing returns boolean
if(not(GetSpellAbilityId()=='A0DT'))then
return false
endif
return true
endfunction
function Trig_Darius_Starts_Actions takes nothing returns nothing
if(Trig_Darius_Starts_Func001C())then
set udg_StaggeringTarget=GetSpellTargetUnit()
set udg_TempPoint=GetUnitLoc(udg_StaggeringTarget)
set udg_TempPoint2=GetUnitLoc(gg_unit_Nalc_0495)
set udg_StaggeringReal=DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2)
call RemoveLocation(udg_TempPoint)
call RemoveLocation(udg_TempPoint2)
call PolledWait((udg_StaggeringReal/ 1500.00))
call EnableTrigger(gg_trg_Staggering_Move)
if(Trig_Darius_Starts_Func001Func010C())then
call UnitDamageTargetBJ(gg_unit_Nalc_0495,udg_StaggeringTarget,((I2R(GetUnitAbilityLevelSwapped('A0DT',gg_unit_Nalc_0495))*38.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_AGI,gg_unit_Nalc_0495,true))*0.25)),ATTACK_TYPE_HERO,DAMAGE_TYPE_NORMAL)
call UnitDamageTargetBJ(gg_unit_Nalc_0495,udg_StaggeringTarget,((I2R(GetUnitAbilityLevelSwapped('A0DT',gg_unit_Nalc_0495))*37.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_AGI,gg_unit_Nalc_0495,true))*0.25)),ATTACK_TYPE_HERO,DAMAGE_TYPE_UNIVERSAL)
else
endif
call PolledWait(0.85)
call DisableTrigger(gg_trg_Staggering_Move)
set udg_StaggeringTarget=null
else
if(Trig_Darius_Starts_Func001Func001Func001C())then
set udg_TempPoint=GetUnitLoc(gg_unit_Nalc_0495)
set udg_BarrelPoint=GetSpellTargetLoc()
set udg_BarrelReal=DistanceBetweenPoints(udg_TempPoint,udg_BarrelPoint)
call CreateNUnitsAtLoc(1,'ogrk',Player(7),udg_TempPoint,bj_UNIT_FACING)
call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_BarrelPoint)
call RemoveLocation(udg_TempPoint)
call PolledWait((udg_BarrelReal/ 800.00))
set udg_BarrelGroup=GetUnitsInRangeOfLocMatching(350.00,udg_BarrelPoint,Condition(function Trig_Darius_Starts_Func001Func001Func001Func009002003))
call ForGroupBJ(udg_BarrelGroup,function Trig_Darius_Starts_Func001Func001Func001Func010A)
call AddSpecialEffectLocBJ(udg_BarrelPoint,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
call DestroyEffect(GetLastCreatedEffectBJ())
call AddSpecialEffectLocBJ(udg_BarrelPoint,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
call DestroyEffect(GetLastCreatedEffectBJ())
call EnableTrigger(gg_trg_Explosive_Barrel_Move)
call PolledWait(0.90)
call DisableTrigger(gg_trg_Explosive_Barrel_Move)
call DestroyGroup(udg_BarrelGroup)
set bj_wantDestroyGroup=true
call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()),function Trig_Darius_Starts_Func001Func001Func001Func020002)
call RemoveLocation(udg_BarrelPoint)
else
endif
endif
endfunction
function InitTrig_Darius_Starts takes nothing returns nothing
set gg_trg_Darius_Starts=CreateTrigger()
call TriggerAddAction(gg_trg_Darius_Starts,function Trig_Darius_Starts_Actions)
endfunction