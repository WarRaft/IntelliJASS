function Victory_Alliance takes nothing returns nothing
    call CustomVictoryBJ(Player(0),true,true)
    call CustomVictoryBJ(Player(1),true,true)
    call CustomVictoryBJ(Player(2),true,true)
    call CustomVictoryBJ(Player(3),true,true)
    call CustomVictoryBJ(Player(5),true,true)
    call CustomVictoryBJ(Player(6),true,true)
    call CustomVictoryBJ(Player(7),true,true)
    call CustomVictoryBJ(Player(8),true,true)
    call CustomDefeatBJ(Player(4),"Поражение!")
    call CustomDefeatBJ(Player(9),"Поражение!")
    call CustomDefeatBJ(Player(10),"Поражение!")
    call CustomDefeatBJ(Player(11),"Поражение!")
    call DestroyTimer(GetExpiredTimer())
endfunction

function Trig_Allied_Victory_Actions takes nothing returns nothing
    call PlaySoundBJ(gg_snd_NewTournament)
    call DisplayTextToForce(GetPlayersAll(), "|c000042FFАльянс Победил!|r")
    call DisplayTextToForce(GetPlayersAll(), " ")
    call DisplayTextToForce(GetPlayersAll(), " ")
    call DisplayTextToForce(GetPlayersAll(), "Спасибо за игру, надеюсь Вы насладились Приходом Орды!")
    call DisableTrigger(gg_trg_Horde_Victory)
    call TimerStart(CreateTimer(), 10, false, function Victory_Alliance)
    endfunction

function Trig_Game_Timer_Actions takes nothing returns nothing
call TimerStart(udg_Timer[1],3605.00,false, function Trig_Allied_Victory_Actions)
call CreateTimerDialogBJ(udg_Timer[1],"Поражение Орды через:")
endfunction

//===========================================================================
function InitTrig_Game_Timer takes nothing returns nothing
    set gg_trg_Game_Timer = CreateTrigger(  )
    call TriggerRegisterTimerEventSingle( gg_trg_Game_Timer, 5 )
    call TriggerAddAction( gg_trg_Game_Timer, function Trig_Game_Timer_Actions )
endfunction

