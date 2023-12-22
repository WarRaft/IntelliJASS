function Trig_Arrow_Storm_Actions takes nothing returns nothing
    call DisplayTimedTextToForce(debugForce, 15, "Старт триггера Arrow_Storm!")
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=5
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    call CreateNUnitsAtLoc(1,'hbew',Player(6),udg_ArrowStormPoint[GetForLoopIndexA()],bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_ArrowStormTarget[GetForLoopIndexA()])
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    call DisplayTimedTextToForce(debugForce, 15, "Arrow_Storm, создан юнит " + GetObjectName(GetUnitTypeId(GetLastCreatedUnit())) + ", ожидается урон от него!")
    endloop
    call PlaySoundOnUnitBJ(gg_snd_ArrowAttack1,100,gg_unit_Hvwd_0525)
    call CreateNUnitsAtLoc(1,'nser',Player(6),udg_ArrowStormPoint[6],GetUnitFacing(gg_unit_Hvwd_0525))
    call SetUnitAbilityLevelSwapped('A0CZ',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0D3',gg_unit_Hvwd_0525))
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"breathoffrost",udg_ArrowStormTarget[6])
    call DisplayTimedTextToForce(debugForce, 15, "Arrow_Storm, создан юнит, с дыханием льда " + GetObjectName(GetUnitTypeId(GetLastCreatedUnit())) + ", ожидается урон от него! в координаты X: " + R2S(GetLocationX(udg_ArrowStormTarget[6])) + " Y: " + R2S(GetLocationY(udg_ArrowStormTarget[6])) )
    endfunction
    function InitTrig_Arrow_Storm takes nothing returns nothing
    set gg_trg_Arrow_Storm=CreateTrigger()
    call TriggerAddAction(gg_trg_Arrow_Storm,function Trig_Arrow_Storm_Actions)
    endfunction