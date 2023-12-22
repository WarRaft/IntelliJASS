function Trig_Kick_Vote_Initiate_Conditions takes nothing returns boolean
if(not(IsPlayerInForce(GetTriggerPlayer(),udg_KickVoteCallers)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func005C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick red"))then
return false
endif
if(not(IsPlayerInForce(Player(0),udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func006C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick blue"))then
return false
endif
if(not(IsPlayerInForce(Player(1),udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func007C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick teal"))then
return false
endif
if(not(IsPlayerInForce(Player(2),udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func008C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick purple"))then
return false
endif
if(not(IsPlayerInForce(Player(3),udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func009C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick yellow"))then
return false
endif
if(not(IsPlayerInForce(Player(4),udg_Horde)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func010C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick orange"))then
return false
endif
if(not(IsPlayerInForce(Player(5),udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func011C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick green"))then
return false
endif
if(not(IsPlayerInForce(Player(6),udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func012C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick black"))then
return false
endif
if(not(IsPlayerInForce(Player(7),udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func013Func010C takes nothing returns boolean
if((GetEventPlayerChatString()=="-kick grey"))then
return true
endif
if((GetEventPlayerChatString()=="-kick gray"))then
return true
endif
return false
endfunction
function Trig_Kick_Vote_Initiate_Func013C takes nothing returns boolean
if(not Trig_Kick_Vote_Initiate_Func013Func010C())then
return false
endif
if(not(IsPlayerInForce(Player(8),udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func014C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick light blue"))then
return false
endif
if(not(IsPlayerInForce(Player(9),udg_Horde)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func015C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick dark green"))then
return false
endif
if(not(IsPlayerInForce(Player(10),udg_Horde)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Func016C takes nothing returns boolean
if(not(GetEventPlayerChatString()=="-kick brown"))then
return false
endif
if(not(IsPlayerInForce(Player(11),udg_Horde)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Initiate_Actions takes nothing returns nothing
set udg_VoteKickReal=0.00
set udg_AllianceKickConfirm=0
set udg_HordeKickConfirm=0
set udg_Voters=GetPlayersByMapControl(MAP_CONTROL_USER)
if(Trig_Kick_Vote_Initiate_Func005C())then
set udg_VoteKickPlayer=Player(0)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func006C())then
set udg_VoteKickPlayer=Player(1)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func007C())then
set udg_VoteKickPlayer=Player(2)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func008C())then
set udg_VoteKickPlayer=Player(3)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func009C())then
set udg_VoteKickPlayer=Player(4)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func010C())then
set udg_VoteKickPlayer=Player(5)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func011C())then
set udg_VoteKickPlayer=Player(6)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func012C())then
set udg_VoteKickPlayer=Player(7)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func013C())then
set udg_VoteKickPlayer=Player(8)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func014C())then
set udg_VoteKickPlayer=Player(9)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func015C())then
set udg_VoteKickPlayer=Player(10)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
if(Trig_Kick_Vote_Initiate_Func016C())then
set udg_VoteKickPlayer=Player(11)
set udg_VoteKickReal=1.00
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
call DisplayTimedTextToForce(GetPlayersAll(),15.00,((GetPlayerName(GetTriggerPlayer())+" wants to kick ")+(GetPlayerName(udg_VoteKickPlayer)+" out of the game. Type -kick if you agree. This vote will end in 45 seconds.")))
call StartTimerBJ(udg_VoteKickTimer,false,45.00)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_KickVoteCallers)
call DisableTrigger(GetTriggeringTrigger())
call EnableTrigger(gg_trg_Kick_Vote_Process)
return
else
endif
endfunction
function InitTrig_Kick_Vote_Initiate takes nothing returns nothing
set gg_trg_Kick_Vote_Initiate=CreateTrigger()
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(0),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(1),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(2),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(3),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(4),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(5),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(6),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(7),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(8),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(9),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(10),"-kick",false)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Initiate,Player(11),"-kick",false)
call TriggerAddCondition(gg_trg_Kick_Vote_Initiate,Condition(function Trig_Kick_Vote_Initiate_Conditions))
call TriggerAddAction(gg_trg_Kick_Vote_Initiate,function Trig_Kick_Vote_Initiate_Actions)
endfunction