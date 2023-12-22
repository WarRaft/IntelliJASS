function Trig_Sunwell_Guardian_Top_Death_Actions takes nothing returns nothing
    set udg_Sunwell=(udg_Sunwell+1)
    call RemoveDestructable(gg_dest_B007_3100)
    call RemoveDestructable(gg_dest_B007_3093)
    endfunction
    function InitTrig_Sunwell_Guardian_Top_Death takes nothing returns nothing
    set gg_trg_Sunwell_Guardian_Top_Death=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Sunwell_Guardian_Top_Death,gg_unit_nggr_0539,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Sunwell_Guardian_Top_Death,function Trig_Sunwell_Guardian_Top_Death_Actions)
    endfunction