function Trig_Bladestorm_Removal_Actions takes nothing returns nothing
    call UnitRemoveAbilityBJ('A0BM',gg_unit_Osam_0526)
    endfunction
    function InitTrig_Bladestorm_Removal takes nothing returns nothing
    set gg_trg_Bladestorm_Removal=CreateTrigger()
    call TriggerAddAction(gg_trg_Bladestorm_Removal,function Trig_Bladestorm_Removal_Actions)
    endfunction