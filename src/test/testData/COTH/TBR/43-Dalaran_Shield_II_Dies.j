function Trig_Dalaran_Shield_II_Dies_Actions takes nothing returns nothing
    call RemoveUnit(gg_unit_n004_0209)
    call RemoveUnit(gg_unit_n004_0208)
    call RemoveWeatherEffect(GetLastCreatedWeatherEffect())
    call SetUnitInvulnerable(gg_unit_hkee_0203,false)
    call DisableTrigger(gg_trg_Dalaran_Shield_II)
    endfunction
    function InitTrig_Dalaran_Shield_II_Dies takes nothing returns nothing
    set gg_trg_Dalaran_Shield_II_Dies=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Dalaran_Shield_II_Dies,gg_unit_ndt2_0200,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Dalaran_Shield_II_Dies,function Trig_Dalaran_Shield_II_Dies_Actions)
    endfunction