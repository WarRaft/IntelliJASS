function Trig_Tinker_Dies_Actions takes nothing returns nothing
    set udg_SteamContraption=0
    set udg_AutomatedMachinery=0.00
    endfunction
    function InitTrig_Tinker_Dies takes nothing returns nothing
    set gg_trg_Tinker_Dies=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Tinker_Dies,gg_unit_Ntin_0477,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Tinker_Dies,function Trig_Tinker_Dies_Actions)
    endfunction