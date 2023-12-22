function Trig_Music_Power_of_the_Horde_Actions takes nothing returns nothing
if GetLocalPlayer()==GetTriggerPlayer()then
call StopMusicBJ(false)
call PlayMusicBJ(gg_snd_PH1)
endif
endfunction

//===========================================================================
function InitTrig_Music_Power_of_the_Horde takes nothing returns nothing
    set gg_trg_Music_Power_of_the_Horde = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(0),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(1),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(2),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(3),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(4),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(5),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(6),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(7),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(8),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(9),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(10),"-Play PH",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Power_of_the_Horde,Player(11),"-Play PH",true)
    call TriggerAddAction( gg_trg_Music_Power_of_the_Horde, function Trig_Music_Power_of_the_Horde_Actions )
endfunction

