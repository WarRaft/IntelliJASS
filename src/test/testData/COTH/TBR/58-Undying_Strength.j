function Trig_Undying_Strength_Actions takes nothing returns nothing
    call SetUnitLifeBJ(gg_unit_Nbst_0519,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Nbst_0519)+(GetEventDamage()*1.75)))
    endfunction
    function InitTrig_Undying_Strength takes nothing returns nothing
    set gg_trg_Undying_Strength=CreateTrigger()
    call DisableTrigger(gg_trg_Undying_Strength)
    call TriggerRegisterUnitEvent(gg_trg_Undying_Strength,gg_unit_Nbst_0519,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Undying_Strength,function Trig_Undying_Strength_Actions)
    endfunction