function Trig_Blistering_Blade_Finish_Actions takes nothing returns nothing
    call UnitRemoveAbilityBJ('A06Z',gg_unit_H01I_0514)
    call UnitRemoveBuffBJ('B01U',gg_unit_H01I_0514)
    set udg_BlisteringBlade=0.00
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Blistering_Blade_Attack)
    endfunction
    function InitTrig_Blistering_Blade_Finish takes nothing returns nothing
    set gg_trg_Blistering_Blade_Finish=CreateTrigger()
    call DisableTrigger(gg_trg_Blistering_Blade_Finish)
    call TriggerRegisterVariableEvent(gg_trg_Blistering_Blade_Finish,"udg_BlisteringBlade",EQUAL,5.00)
    call TriggerAddAction(gg_trg_Blistering_Blade_Finish,function Trig_Blistering_Blade_Finish_Actions)
    endfunction