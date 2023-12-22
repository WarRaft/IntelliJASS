function Trig_The_Darkener_Damage_Reduce_Actions takes nothing returns nothing
    call SetUnitLifeBJ(gg_unit_Utic_0512,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Utic_0512)+(0.25*GetEventDamage())))
    endfunction
    function InitTrig_The_Darkener_Damage_Reduce takes nothing returns nothing
    set gg_trg_The_Darkener_Damage_Reduce=CreateTrigger()
    call DisableTrigger(gg_trg_The_Darkener_Damage_Reduce)
    call TriggerRegisterUnitEvent(gg_trg_The_Darkener_Damage_Reduce,gg_unit_Utic_0512,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_The_Darkener_Damage_Reduce,function Trig_The_Darkener_Damage_Reduce_Actions)
    endfunction