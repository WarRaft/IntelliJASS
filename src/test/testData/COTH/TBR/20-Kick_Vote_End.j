function Trig_Kick_Vote_End_Func002Func003C takes nothing returns boolean
if(not(IsPlayerInForce(udg_VoteKickPlayer,udg_Alliance)==true))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_End_Func002C takes nothing returns boolean
if(not(udg_VoteKickReal>=udg_VoteKickThreshold))then
return false
endif
if(not(udg_AllianceKickConfirm==1))then
return false
endif
if(not(udg_HordeKickConfirm==1))then
return false
endif
return true
endfunction
function Trig_Kick_Vote_End_Actions takes nothing returns nothing
set udg_VoteKickThreshold=((I2R(CountPlayersInForceBJ(udg_Alliance))+I2R(CountPlayersInForceBJ(udg_Horde)))*0.70)
if(Trig_Kick_Vote_End_Func002C())then
call ShareEverythingWithTeam(udg_VoteKickPlayer)
if(Trig_Kick_Vote_End_Func002Func003C())then
call ForceRemovePlayerSimple(udg_VoteKickPlayer,udg_Alliance)
call EnableTrigger(gg_trg_Alliance_Item_Point_Divider)
else
call ForceRemovePlayerSimple(udg_VoteKickPlayer,udg_Horde)
call EnableTrigger(gg_trg_Horde_Item_Point_Divider)
endif
call CustomDefeatBJ(udg_VoteKickPlayer,"You have been kicked.")
call DisplayTimedTextToForce(GetPlayersAll(),12.00,(GetPlayerName(udg_VoteKickPlayer)+" has been kicked."))
else
call DisplayTimedTextToForce(GetPlayersAll(),12.00,(("There were not enough votes to kick "+GetPlayerName(udg_VoteKickPlayer))+("."+" At least 70% of players and one from each team is required.")))
endif
call EnableTrigger(gg_trg_Kick_Vote_Initiate)
call DisableTrigger(gg_trg_Kick_Vote_Process)
endfunction
function InitTrig_Kick_Vote_End takes nothing returns nothing
set gg_trg_Kick_Vote_End=CreateTrigger()
call TriggerRegisterTimerExpireEventBJ(gg_trg_Kick_Vote_End,udg_VoteKickTimer)
call TriggerAddAction(gg_trg_Kick_Vote_End,function Trig_Kick_Vote_End_Actions)
endfunction