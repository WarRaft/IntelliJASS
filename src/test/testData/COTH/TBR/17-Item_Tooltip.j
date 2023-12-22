function Trig_Item_Tooltip_Func001Func001C takes nothing returns boolean
if(not(GetPlayerState(ConvertedPlayer(GetForLoopIndexA()),PLAYER_STATE_RESOURCE_GOLD)>2000))then
return false
endif
return true
endfunction

function Trig_Item_Tooltip_Actions takes nothing returns nothing
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=12
loop
exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
if(Trig_Item_Tooltip_Func001Func001C())then
call DisplayTimedTextToForce(GetForceOfPlayer(ConvertedPlayer(GetForLoopIndexA())),20.00,"|cffffd700Вы можете покупать предметы в левом верхнем углу карты.|r")
set udg_TempPoint=GetUnitLoc(gg_unit_h01J_0457)
call PingMinimapLocForForce(GetForceOfPlayer(ConvertedPlayer(GetForLoopIndexA())),udg_TempPoint,25.00)
call RemoveLocation(udg_TempPoint)
else
endif
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
endfunction

//===========================================================================
function InitTrig_Item_Tooltip takes nothing returns nothing
    set gg_trg_Item_Tooltip = CreateTrigger(  )
    call TriggerRegisterTimerEventSingle( gg_trg_Item_Tooltip, 605.00 )
    call TriggerAddAction( gg_trg_Item_Tooltip, function Trig_Item_Tooltip_Actions )
endfunction

