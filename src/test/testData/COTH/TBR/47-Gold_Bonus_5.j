function Trig_Gold_Bonus_5_Func002C takes nothing returns boolean
    if(not(udg_ThroneCount<4.00))then
    return false
    endif
    if(not(udg_GoldBonusHorde<3))then
    return false
    endif
    return true
    endfunction
    function Trig_Gold_Bonus_5_Actions takes nothing returns nothing
    call TriggerSleepAction(GetRandomReal(1.00,60.00))
    if(Trig_Gold_Bonus_5_Func002C())then
    call TriggerSleepAction(GetRandomReal(1.00,60.00))
    call AdjustPlayerStateBJ(2500,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2500,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2500,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(2500,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(300,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(300,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(300,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(300,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    set udg_GoldBonusHorde=(udg_GoldBonusHorde+1)
    call DisableTrigger(GetTriggeringTrigger())
    else
    endif
    endfunction
    function InitTrig_Gold_Bonus_5 takes nothing returns nothing
    set gg_trg_Gold_Bonus_5=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Gold_Bonus_5,1850.00)
    call TriggerAddAction(gg_trg_Gold_Bonus_5,function Trig_Gold_Bonus_5_Actions)
    endfunction