function Trig_Stromgarde_Tower_East_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call RemoveDestructable(gg_dest_B007_1763)
    call RemoveDestructable(gg_dest_B007_4272)
    endfunction
    function InitTrig_Stromgarde_Tower_East takes nothing returns nothing
    set gg_trg_Stromgarde_Tower_East=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Stromgarde_Tower_East,gg_unit_hgtw_0021,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Stromgarde_Tower_East,function Trig_Stromgarde_Tower_East_Actions)
    endfunction