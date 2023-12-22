function Trig_Scorched_Earth_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Npld_0527)
    call CreateNUnitsAtLoc(1,'njgb',Player(4),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(2.50,'BTLF',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A0FS',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A0FS',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('ANta',gg_unit_Npld_0527))
    call IssueImmediateOrder(GetLastCreatedUnit(),"immolation")
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=17
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint2=PolarProjectionBJ(udg_TempPoint,GetRandomReal(15.00,450.00),GetRandomDirectionDeg())
    call CreateNUnitsAtLoc(1,'njgb',Player(4),udg_TempPoint2,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(2.50,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint2)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Scorched_Earth takes nothing returns nothing
    set gg_trg_Scorched_Earth=CreateTrigger()
    call DisableTrigger(gg_trg_Scorched_Earth)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Scorched_Earth,0.50)
    call TriggerAddAction(gg_trg_Scorched_Earth,function Trig_Scorched_Earth_Actions)
    endfunction