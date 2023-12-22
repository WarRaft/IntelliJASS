function Trig_Stromgarde_Tower_West_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call RemoveDestructable(gg_dest_B007_0422)
    endfunction
    function InitTrig_Stromgarde_Tower_West takes nothing returns nothing
    set gg_trg_Stromgarde_Tower_West=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Stromgarde_Tower_West,gg_unit_hgtw_0022,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Stromgarde_Tower_West,function Trig_Stromgarde_Tower_West_Actions)
    endfunction