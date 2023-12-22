function Trig_Gray_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('H01S',0,Player(8))
    call SetPlayerTechMaxAllowedSwap('Hart',0,Player(8))
    call SetPlayerTechMaxAllowedSwap('Harf',0,Player(8))
    call SetPlayerTechMaxAllowedSwap('Hmgd',0,Player(8))
    endfunction
    function InitTrig_Gray_Hero_Begin takes nothing returns nothing
    set gg_trg_Gray_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Gray_Hero_Begin,gg_unit_n00T_0340,EVENT_UNIT_TRAIN_START)
    call TriggerRegisterUnitEvent(gg_trg_Gray_Hero_Begin,gg_unit_n00P_0337,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Gray_Hero_Begin,function Trig_Gray_Hero_Begin_Actions)
    endfunction