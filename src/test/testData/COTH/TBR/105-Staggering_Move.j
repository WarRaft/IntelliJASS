function Trig_Staggering_Move_Func001C takes nothing returns boolean
if(not(IsUnitType(udg_StaggeringTarget,UNIT_TYPE_STRUCTURE)==false))then
return false
endif
return true
endfunction
function Trig_Staggering_Move_Actions takes nothing returns nothing
if(Trig_Staggering_Move_Func001C())then
set udg_TempPoint=GetUnitLoc(udg_StaggeringTarget)
set udg_TempPoint2=GetUnitLoc(gg_unit_Nalc_0495)
set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,15.00,(AngleBetweenPoints(udg_TempPoint,udg_TempPoint2)-180.00))
call SetUnitPositionLoc(udg_StaggeringTarget,udg_TempPoint3)
call AddSpecialEffectLocBJ(udg_TempPoint3,"Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl")
call DestroyEffect(GetLastCreatedEffectBJ())
call RemoveLocation(udg_TempPoint)
call RemoveLocation(udg_TempPoint2)
call RemoveLocation(udg_TempPoint3)
else
endif
endfunction
function InitTrig_Staggering_Move takes nothing returns nothing
set gg_trg_Staggering_Move=CreateTrigger()
call DisableTrigger(gg_trg_Staggering_Move)
call TriggerRegisterTimerEventPeriodic(gg_trg_Staggering_Move,0.05)
call TriggerAddAction(gg_trg_Staggering_Move,function Trig_Staggering_Move_Actions)
endfunction