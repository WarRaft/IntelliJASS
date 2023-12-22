function Trig_Sunwell_Vulnerable_Actions takes nothing returns nothing
    call SetUnitInvulnerable(gg_unit_n00V_0272,false)
    endfunction
    function InitTrig_Sunwell_Vulnerable takes nothing returns nothing
    set gg_trg_Sunwell_Vulnerable=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Sunwell_Vulnerable,"udg_Sunwell",EQUAL,2.00)
    call TriggerAddAction(gg_trg_Sunwell_Vulnerable,function Trig_Sunwell_Vulnerable_Actions)
    endfunction