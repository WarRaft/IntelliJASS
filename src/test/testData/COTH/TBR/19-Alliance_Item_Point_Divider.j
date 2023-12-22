function Trig_Alliance_Item_Point_Divider_Func003Func001C takes nothing returns boolean
    if(not(GetPlayerSlotState(ConvertedPlayer(GetForLoopIndexA()))!=PLAYER_SLOT_STATE_PLAYING))then
    return false
    endif
    return true
    endfunction
    function Trig_Alliance_Item_Point_Divider_Func004Func001C takes nothing returns boolean
    if(not(GetPlayerSlotState(ConvertedPlayer(GetForLoopIndexA()))!=PLAYER_SLOT_STATE_PLAYING))then
    return false
    endif
    return true
    endfunction
    function Trig_Alliance_Item_Point_Divider_Func005Func001C takes nothing returns boolean
    if(not(GetPlayerSlotState(GetEnumPlayer())==PLAYER_SLOT_STATE_PLAYING))then
    return false
    endif
    return true
    endfunction
    function Trig_Alliance_Item_Point_Divider_Func005A takes nothing returns nothing
    if(Trig_Alliance_Item_Point_Divider_Func005Func001C())then
    call AdjustPlayerStateBJ(udg_AllianceGoldDivider1,GetEnumPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(udg_AllianceGoldDivider2,GetEnumPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    else
    endif
    endfunction
    function Trig_Alliance_Item_Point_Divider_Actions takes nothing returns nothing
    set udg_AllianceGoldDivider1=0
    set udg_AllianceGoldDivider2=0
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=4
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Alliance_Item_Point_Divider_Func003Func001C())then
    set udg_AllianceGoldDivider1=(udg_AllianceGoldDivider1+(GetPlayerState(ConvertedPlayer(GetForLoopIndexA()),PLAYER_STATE_RESOURCE_GOLD)/ CountPlayersInForceBJ(udg_Alliance)))
    call SetPlayerStateBJ(ConvertedPlayer(GetForLoopIndexA()),PLAYER_STATE_RESOURCE_GOLD,0)
    else
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set bj_forLoopAIndex=6
    set bj_forLoopAIndexEnd=9
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Alliance_Item_Point_Divider_Func004Func001C())then
    set udg_AllianceGoldDivider2=(udg_AllianceGoldDivider2+(GetPlayerState(ConvertedPlayer(GetForLoopIndexA()),PLAYER_STATE_RESOURCE_GOLD)/ CountPlayersInForceBJ(udg_Alliance)))
    call SetPlayerStateBJ(ConvertedPlayer(GetForLoopIndexA()),PLAYER_STATE_RESOURCE_GOLD,0)
    else
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call ForForce(udg_Alliance,function Trig_Alliance_Item_Point_Divider_Func005A)
    endfunction
    function InitTrig_Alliance_Item_Point_Divider takes nothing returns nothing
    set gg_trg_Alliance_Item_Point_Divider=CreateTrigger()
    call DisableTrigger(gg_trg_Alliance_Item_Point_Divider)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Alliance_Item_Point_Divider,60.00)
    call TriggerAddAction(gg_trg_Alliance_Item_Point_Divider,function Trig_Alliance_Item_Point_Divider_Actions)
    endfunction