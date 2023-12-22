function Trig_Teal_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hhkl',1,Player(2))
    call SetPlayerTechMaxAllowedSwap('Hapm',1,Player(2))
    call SetPlayerTechMaxAllowedSwap('H01B',1,Player(2))
    call SetPlayerTechMaxAllowedSwap('Emoo',1,Player(2))
    endfunction
    function InitTrig_Teal_Hero_Cancel takes nothing returns nothing
    set gg_trg_Teal_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Teal_Hero_Cancel,gg_unit_n00A_0168,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerRegisterUnitEvent(gg_trg_Teal_Hero_Cancel,gg_unit_n00P_0157,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Teal_Hero_Cancel,function Trig_Teal_Hero_Cancel_Actions)
    endfunction