function Trig_Teal_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hhkl',0,Player(2))
    call SetPlayerTechMaxAllowedSwap('Hapm',0,Player(2))
    call SetPlayerTechMaxAllowedSwap('H01B',0,Player(2))
    call SetPlayerTechMaxAllowedSwap('Emoo',0,Player(2))
    endfunction
    function InitTrig_Teal_Hero_Begin takes nothing returns nothing
    set gg_trg_Teal_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Teal_Hero_Begin,gg_unit_n00A_0168,EVENT_UNIT_TRAIN_START)
    call TriggerRegisterUnitEvent(gg_trg_Teal_Hero_Begin,gg_unit_n00P_0157,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Teal_Hero_Begin,function Trig_Teal_Hero_Begin_Actions)
    endfunction