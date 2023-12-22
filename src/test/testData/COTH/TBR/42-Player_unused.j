function Trig_Player_unused_Func001C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(0))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func002C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(1))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func003C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(2))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func004C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(3))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func005C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(5))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func006C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(6))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func007C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(7))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func008C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(8))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func009C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(4))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func010C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(9))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func011C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(10))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Func012C takes nothing returns boolean
    if(not(GetPlayerSlotState(Player(11))==PLAYER_SLOT_STATE_EMPTY))then
    return false
    endif
    return true
    endfunction
    function Trig_Player_unused_Actions takes nothing returns nothing
    if(Trig_Player_unused_Func001C())then
    call ShareEverythingWithTeam(Player(0))
    call SetPlayerStateBJ(Player(0),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(0),udg_Alliance)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(0),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func002C())then
    call ShareEverythingWithTeam(Player(1))
    call SetPlayerStateBJ(Player(1),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(1),udg_Alliance)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(1),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func003C())then
    call ShareEverythingWithTeam(Player(2))
    call SetPlayerStateBJ(Player(2),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(2),udg_Alliance)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(2),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func004C())then
    call ShareEverythingWithTeam(Player(3))
    call SetPlayerStateBJ(Player(3),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(3),udg_Alliance)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(3),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func005C())then
    call ShareEverythingWithTeam(Player(5))
    call SetPlayerStateBJ(Player(5),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(5),udg_Alliance)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(5),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func006C())then
    call ShareEverythingWithTeam(Player(6))
    call SetPlayerStateBJ(Player(6),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(6),udg_Alliance)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(6),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func007C())then
    call ShareEverythingWithTeam(Player(7))
    call SetPlayerStateBJ(Player(7),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(7),udg_Alliance)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(7),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func008C())then
    call ShareEverythingWithTeam(Player(8))
    call SetPlayerStateBJ(Player(8),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(8),udg_Alliance)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(8),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func009C())then
    call ShareEverythingWithTeam(Player(4))
    call SetPlayerStateBJ(Player(4),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(4),udg_Horde)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Horde_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(4),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func010C())then
    call ShareEverythingWithTeam(Player(9))
    call SetPlayerStateBJ(Player(9),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(9),udg_Horde)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Horde_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(9),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func011C())then
    call ShareEverythingWithTeam(Player(10))
    call SetPlayerStateBJ(Player(10),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(10),udg_Horde)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Horde_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(10),udg_KickVoteCallers)
    endif
    if(Trig_Player_unused_Func012C())then
    call ShareEverythingWithTeam(Player(11))
    call SetPlayerStateBJ(Player(11),PLAYER_STATE_RESOURCE_GOLD,0)
    call ForceRemovePlayerSimple(Player(11),udg_Horde)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Horde_Item_Point_Divider)
    set udg_Sandbox=(udg_Sandbox+1)
    else
    call ForceAddPlayerSimple(Player(11),udg_KickVoteCallers)
    endif
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Player_unused takes nothing returns nothing
    set gg_trg_Player_unused=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Player_unused,4.00)
    call TriggerAddAction(gg_trg_Player_unused,function Trig_Player_unused_Actions)
    endfunction