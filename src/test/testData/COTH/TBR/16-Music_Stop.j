function Trig_Music_Stop_Actions takes nothing returns nothing
if GetLocalPlayer()==GetTriggerPlayer()then
call StopMusicBJ(true)
endif
endfunction

//===========================================================================
function InitTrig_Music_Stop takes nothing returns nothing
    set gg_trg_Music_Stop = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(0),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(1),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(2),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(3),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(4),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(5),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(6),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(7),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(8),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(9),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(10),"-stop",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Stop,Player(11),"-stop",true)
    call TriggerAddAction( gg_trg_Music_Stop, function Trig_Music_Stop_Actions )
endfunction

