function Trig_Bladestorm_Damage_Reduce_Actions takes nothing returns nothing
    call SetUnitLifeBJ(gg_unit_Osam_0526,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Osam_0526)+(0.30*GetEventDamage())))
    endfunction
    function InitTrig_Bladestorm_Damage_Reduce takes nothing returns nothing
    set gg_trg_Bladestorm_Damage_Reduce=CreateTrigger()
    call DisableTrigger(gg_trg_Bladestorm_Damage_Reduce)
    call TriggerRegisterUnitEvent(gg_trg_Bladestorm_Damage_Reduce,gg_unit_Osam_0526,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Bladestorm_Damage_Reduce,function Trig_Bladestorm_Damage_Reduce_Actions)
    endfunction