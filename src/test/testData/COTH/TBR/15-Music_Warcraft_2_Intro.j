function Trig_Music_Warcraft_2_Intro_Actions takes nothing returns nothing
if GetLocalPlayer()==GetTriggerPlayer()then
call StopMusicBJ(false)
call PlayMusicBJ(gg_snd_War2IntroMusic01)
endif
endfunction

//===========================================================================
function InitTrig_Music_Warcraft_2_Intro takes nothing returns nothing
    set gg_trg_Music_Warcraft_2_Intro = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(0),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(1),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(2),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(3),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(4),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(5),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(6),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(7),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(8),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(9),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(10),"-Play W2",true)
call TriggerRegisterPlayerChatEvent(gg_trg_Music_Warcraft_2_Intro,Player(11),"-Play W2",true)
    call TriggerAddAction( gg_trg_Music_Warcraft_2_Intro, function Trig_Music_Warcraft_2_Intro_Actions )
endfunction

