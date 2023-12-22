function Trig_Horde_Victory_Actions takes nothing returns nothing
    call StartSound(gg_snd_GameFound)
    call DisplayTextToForce(GetPlayersAll(), "|CFFFF0000Орда покорила Азерот и Лордерон!|R|n|nСпасибо за игру, надеюсь Вы насладились Приходом Орды!")
    call DisableTrigger(gg_trg_Allied_Victory_Two)
    call TriggerSleepAction(10.00)
    call DisableTrigger(GetTriggeringTrigger())
    call CustomVictoryBJ(Player(4),true,true)
    call CustomVictoryBJ(Player(9),true,true)
    call CustomVictoryBJ(Player(10),true,true)
    call CustomVictoryBJ(Player(11),true,true)
    call CustomDefeatBJ(Player(0),"Поражение!")
    call CustomDefeatBJ(Player(1),"Поражение!")
    call CustomDefeatBJ(Player(2),"Поражение!")
    call CustomDefeatBJ(Player(3),"Поражение!")
    call CustomDefeatBJ(Player(5),"Поражение!")
    call CustomDefeatBJ(Player(6),"Поражение!")
    call CustomDefeatBJ(Player(7),"Поражение!")
    call CustomDefeatBJ(Player(8),"Поражение!")
    endfunction
    function InitTrig_Horde_Victory takes nothing returns nothing
    set gg_trg_Horde_Victory=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Horde_Victory,"udg_ThroneCount",EQUAL,8.00)
    call TriggerAddAction(gg_trg_Horde_Victory,function Trig_Horde_Victory_Actions)
    endfunction