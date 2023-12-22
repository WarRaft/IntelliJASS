function Trig_Sunwell_Guardian_Bot_Death_Actions takes nothing returns nothing
    set udg_Sunwell=(udg_Sunwell+1)
    call RemoveDestructable(gg_dest_B007_3094)
    call RemoveDestructable(gg_dest_B007_3099)
    endfunction
    function InitTrig_Sunwell_Guardian_Bot_Death takes nothing returns nothing
    set gg_trg_Sunwell_Guardian_Bot_Death=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Sunwell_Guardian_Bot_Death,gg_unit_nggr_0540,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Sunwell_Guardian_Bot_Death,function Trig_Sunwell_Guardian_Bot_Death_Actions)
    endfunction