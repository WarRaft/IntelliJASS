function Trig_Alterac_Event_Actions takes nothing returns nothing
    call ShowUnitShow(gg_unit_h01X_0238)
    set udg_TempPoint=GetUnitLoc(GetDyingUnit())
    call SetUnitPositionLoc(gg_unit_h01X_0238,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Alterac_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Alterac_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Alterac_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call TriggerSleepAction(8.00)
    call DisplayTextToForce(GetPlayersAllies(Player(0)), "Альтерак пал, но вместо того, чтобы умереть с честью или бежать в Лордерон, лорд Перенольд решил заключить союз с Легионом! Перенольд должен дорого заплатить за свое предательство!!")
    call DisplayTextToForce(GetPlayersAllies(Player(4)), "Ничтожная нация Альтерака рухнула под нашими ногами, а их жалкий лидер лорд Перенольд присягнул на верность Легиону. Используйте их солдат, чтобы поглощать стрелы!")
    call UnitRemoveAbilityBJ('Avul',gg_unit_h01X_0238)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=7
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint=GetRandomLocInRect(gg_rct_Alterac)
    call CreateNUnitsAtLoc(1,'nrog',Player(4),udg_TempPoint,GetRandomDirectionDeg())
    call RemoveLocation(udg_TempPoint)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=5
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint=GetRandomLocInRect(gg_rct_Alterac)
    call CreateNUnitsAtLoc(1,'nbrg',Player(4),udg_TempPoint,GetRandomDirectionDeg())
    call RemoveLocation(udg_TempPoint)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call AdjustPlayerStateBJ(100,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(100,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(100,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(100,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(750,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    endfunction
    function InitTrig_Alterac_Event takes nothing returns nothing
    set gg_trg_Alterac_Event=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Alterac_Event,gg_unit_h01X_0534,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Alterac_Event,function Trig_Alterac_Event_Actions)
    endfunction