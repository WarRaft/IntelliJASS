function Trig_Split_Shot_Mana_Increase_Actions takes nothing returns nothing
    call TriggerExecute(gg_trg_Split_Shot_On)
    endfunction
    function InitTrig_Split_Shot_Mana_Increase takes nothing returns nothing
    set gg_trg_Split_Shot_Mana_Increase=CreateTrigger()
    call DisableTrigger(gg_trg_Split_Shot_Mana_Increase)
    call TriggerRegisterUnitManaEvent(gg_trg_Split_Shot_Mana_Increase,gg_unit_Hvwd_0525,GREATER_THAN_OR_EQUAL,8.00)
    call TriggerAddAction(gg_trg_Split_Shot_Mana_Increase,function Trig_Split_Shot_Mana_Increase_Actions)
    endfunction