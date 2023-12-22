function Trig_Kick_Vote_Process_Conditions takes nothing returns boolean
if(not(IsPlayerInForce(GetTriggerPlayer(),udg_Voters)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Process_Func003C takes nothing returns boolean
if(not(IsPlayerAlly(GetTriggerPlayer(),Player(0))==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_Process_Actions takes nothing returns nothing
call DisplayTimedTextToForce(GetPlayersAll(),10.00,((GetPlayerName(GetTriggerPlayer())+" has voted to kick ")+(GetPlayerName(udg_VoteKickPlayer)+".")))
if(Trig_Kick_Vote_Process_Func003C())then
set udg_AllianceKickConfirm=1
else
set udg_HordeKickConfirm=1
endif
set udg_VoteKickReal=(udg_VoteKickReal+1)
call ForceRemovePlayerSimple(GetTriggerPlayer(),udg_Voters)
endfunction
function InitTrig_Kick_Vote_Process takes nothing returns nothing
set gg_trg_Kick_Vote_Process=CreateTrigger()
call DisableTrigger(gg_trg_Kick_Vote_Process)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(0),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(1),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(2),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(3),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(4),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(5),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(6),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(7),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(8),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(9),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(10),"-kick",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Kick_Vote_Process,Player(11),"-kick",true)
call TriggerAddCondition(gg_trg_Kick_Vote_Process,Condition(function Trig_Kick_Vote_Process_Conditions))
call TriggerAddAction(gg_trg_Kick_Vote_Process,function Trig_Kick_Vote_Process_Actions)
endfunction