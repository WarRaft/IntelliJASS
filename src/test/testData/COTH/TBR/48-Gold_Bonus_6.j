function Trig_Gold_Bonus_6_Func002Func019C takes nothing returns boolean
    if(not(TimerGetElapsed(udg_Timer[1])>2400.00))then
    return false
    endif
    if(not(udg_GoldBonusHorde<4))then
    return false
    endif
    return true
    endfunction
    function Trig_Gold_Bonus_6_Func002C takes nothing returns boolean
    if(not(TimerGetElapsed(udg_Timer[1])<1920.00))then
    return false
    endif
    if(not(udg_GoldBonusAlliance<3))then
    return false
    endif
    return true
    endfunction
    function Trig_Gold_Bonus_6_Actions takes nothing returns nothing
    call TriggerSleepAction(GetRandomReal(1.00,60.00))
    if(Trig_Gold_Bonus_6_Func002C())then
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
    if(Trig_Gold_Bonus_6_Func002Func019C())then
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
    function InitTrig_Gold_Bonus_6 takes nothing returns nothing
    set gg_trg_Gold_Bonus_6=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Gold_Bonus_6,"udg_ThroneCount",EQUAL,5.00)
    call TriggerAddAction(gg_trg_Gold_Bonus_6,function Trig_Gold_Bonus_6_Actions)
    endfunction