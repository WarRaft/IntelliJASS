function Trig_Gold_Bonus_9_Actions takes nothing returns nothing
    call TriggerSleepAction(GetRandomReal(1.00,30.00))
    call AdjustPlayerStateBJ(2000,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2000,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2000,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2000,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Gold_Bonus_9 takes nothing returns nothing
    set gg_trg_Gold_Bonus_9=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Gold_Bonus_9,3120.00)
    call TriggerAddAction(gg_trg_Gold_Bonus_9,function Trig_Gold_Bonus_9_Actions)
    endfunction