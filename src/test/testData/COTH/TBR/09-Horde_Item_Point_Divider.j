function Trig_Horde_Item_Point_Divider_Func002Func001C takes nothing returns boolean
    if(not(GetPlayerSlotState(ConvertedPlayer(GetForLoopIndexB()))!=PLAYER_SLOT_STATE_PLAYING))then
    return false
    endif
    return true
    endfunction
    function Trig_Horde_Item_Point_Divider_Func003Func001C takes nothing returns boolean
    if(not(GetPlayerSlotState(GetEnumPlayer())==PLAYER_SLOT_STATE_PLAYING))then
    return false
    endif
    return true
    endfunction
    function Trig_Horde_Item_Point_Divider_Func003A takes nothing returns nothing
    if(Trig_Horde_Item_Point_Divider_Func003Func001C())then
    call AdjustPlayerStateBJ(udg_HordeGoldDivider,GetEnumPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    else
    endif
    endfunction
    function Trig_Horde_Item_Point_Divider_Func004Func002002 takes nothing returns nothing
    call AdjustPlayerStateBJ(udg_LegionGoldDivider,GetEnumPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    endfunction
    function Trig_Horde_Item_Point_Divider_Func004Func002Func001C takes nothing returns boolean
    if(not(GetPlayerSlotState(GetEnumPlayer())==PLAYER_SLOT_STATE_PLAYING))then
    return false
    endif
    return true
    endfunction
    function Trig_Horde_Item_Point_Divider_Func004C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(4))!=PLAYER_SLOT_STATE_PLAYING))then
    return false
    endif
    return true
    endfunction
    function Trig_Horde_Item_Point_Divider_Actions takes nothing returns nothing
    set udg_HordeGoldDivider=0
    set bj_forLoopBIndex=10
    set bj_forLoopBIndexEnd=12
    loop
    exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
    if(Trig_Horde_Item_Point_Divider_Func002Func001C())then
    set udg_HordeGoldDivider=(udg_HordeGoldDivider+((GetPlayerState(ConvertedPlayer(GetForLoopIndexB()),PLAYER_STATE_RESOURCE_GOLD)/ 2)/ CountPlayersInForceBJ(udg_Horde)))
    call SetPlayerStateBJ(ConvertedPlayer(GetForLoopIndexB()),PLAYER_STATE_RESOURCE_GOLD,0)
    else
    endif
    set bj_forLoopBIndex=bj_forLoopBIndex+1
    endloop
    call ForForce(udg_Horde,function Trig_Horde_Item_Point_Divider_Func003A)
    if(Trig_Horde_Item_Point_Divider_Func004C())then
    set udg_LegionGoldDivider=((GetPlayerState(Player(4),PLAYER_STATE_RESOURCE_GOLD)/ 2)/ CountPlayersInForceBJ(udg_Horde))
    call ForForce(udg_Horde,function Trig_Horde_Item_Point_Divider_Func004Func002002)
    call SetPlayerStateBJ(Player(4),PLAYER_STATE_RESOURCE_GOLD,0)
    else
    endif
    endfunction
    function InitTrig_Horde_Item_Point_Divider takes nothing returns nothing
    set gg_trg_Horde_Item_Point_Divider=CreateTrigger()
    call DisableTrigger(gg_trg_Horde_Item_Point_Divider)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Horde_Item_Point_Divider,60.00)
    call TriggerAddAction(gg_trg_Horde_Item_Point_Divider,function Trig_Horde_Item_Point_Divider_Actions)
    endfunction