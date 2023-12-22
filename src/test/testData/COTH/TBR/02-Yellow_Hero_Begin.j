function Trig_Yellow_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Nklj',0,Player(4))
    call SetPlayerTechMaxAllowedSwap('Uwar',0,Player(4))
    call SetPlayerTechMaxAllowedSwap('Nplh',0,Player(4))
    call SetPlayerTechMaxAllowedSwap('Utic',0,Player(4))
    call SetPlayerTechMaxAllowedSwap('N007',0,Player(4))
    call SetPlayerTechMaxAllowedSwap('Npld',0,Player(4))
    endfunction
    function InitTrig_Yellow_Hero_Begin takes nothing returns nothing
    set gg_trg_Yellow_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Yellow_Hero_Begin,gg_unit_u001_0237,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Yellow_Hero_Begin,function Trig_Yellow_Hero_Begin_Actions)
    endfunction