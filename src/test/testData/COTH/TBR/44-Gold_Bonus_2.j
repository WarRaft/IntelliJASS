function Trig_Gold_Bonus_2_Func002Func018C takes nothing returns boolean
    if(not(TimerGetElapsed(udg_Timer[1])>1300.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Gold_Bonus_2_Func002C takes nothing returns boolean
    if(not(TimerGetElapsed(udg_Timer[1])<720.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Gold_Bonus_2_Actions takes nothing returns nothing
    call TriggerSleepAction(GetRandomReal(1.00,60.00))
    if(Trig_Gold_Bonus_2_Func002C())then
    call AdjustPlayerStateBJ(1500,Player(0),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(400,Player(0),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1500,Player(1),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(400,Player(1),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1500,Player(2),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(400,Player(2),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1500,Player(3),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(400,Player(3),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1500,Player(5),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(400,Player(5),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1500,Player(6),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(400,Player(6),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1500,Player(7),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(400,Player(7),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1500,Player(8),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(400,Player(8),PLAYER_STATE_RESOURCE_GOLD)
    set udg_GoldBonusAlliance=(udg_GoldBonusAlliance+1)
    call DisableTrigger(GetTriggeringTrigger())
    else
    if(Trig_Gold_Bonus_2_Func002Func018C())then
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
    call DisableTrigger(GetTriggeringTrigger())
    endif
    endif
    endfunction
    function InitTrig_Gold_Bonus_2 takes nothing returns nothing
    set gg_trg_Gold_Bonus_2=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Gold_Bonus_2,"udg_ThroneCount",EQUAL,2.00)
    call TriggerAddAction(gg_trg_Gold_Bonus_2,function Trig_Gold_Bonus_2_Actions)
    endfunction