function Trig_Split_Shot_Mana_Low_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_Split_Shot_Off)
    call EnableTrigger(gg_trg_Split_Shot_Mana_Increase)
    endfunction
    function InitTrig_Split_Shot_Mana_Low takes nothing returns nothing
    set gg_trg_Split_Shot_Mana_Low=CreateTrigger()
    call DisableTrigger(gg_trg_Split_Shot_Mana_Low)
    call TriggerRegisterUnitManaEvent(gg_trg_Split_Shot_Mana_Low,gg_unit_Hvwd_0525,LESS_THAN,8.00)
    call TriggerAddAction(gg_trg_Split_Shot_Mana_Low,function Trig_Split_Shot_Mana_Low_Actions)
    endfunction