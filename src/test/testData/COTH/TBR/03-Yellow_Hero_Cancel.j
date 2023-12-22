function Trig_Yellow_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Nklj',1,Player(4))
    call SetPlayerTechMaxAllowedSwap('Uwar',1,Player(4))
    call SetPlayerTechMaxAllowedSwap('Nplh',1,Player(4))
    call SetPlayerTechMaxAllowedSwap('Utic',1,Player(4))
    call SetPlayerTechMaxAllowedSwap('N007',1,Player(4))
    call SetPlayerTechMaxAllowedSwap('Npld',1,Player(4))
    endfunction
    function InitTrig_Yellow_Hero_Cancel takes nothing returns nothing
    set gg_trg_Yellow_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Yellow_Hero_Cancel,gg_unit_u001_0237,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Yellow_Hero_Cancel,function Trig_Yellow_Hero_Cancel_Actions)
    endfunction