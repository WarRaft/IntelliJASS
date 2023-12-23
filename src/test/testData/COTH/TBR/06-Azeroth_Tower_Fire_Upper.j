function Trig_Azeroth_Tower_Fire_Upper_Actions takes nothing returns nothing
    set udg_TempPoint = GetRectCenter(gg_rct_Az_Tower_Fire_Upper_1)
    call AddSpecialEffectLocBJ(udg_TempPoint, "Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint = GetRectCenter(gg_rct_Az_Tower_Fire_Upper_2)
    call AddSpecialEffectLocBJ(udg_TempPoint, "Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call RemoveDestructable(gg_dest_B006_0263)
endfunction
function InitTrig_Azeroth_Tower_Fire_Upper takes nothing returns nothing
    set gg_trg_Azeroth_Tower_Fire_Upper = CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Azeroth_Tower_Fire_Upper, gg_unit_hgtw_0067, EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Azeroth_Tower_Fire_Upper, function Trig_Azeroth_Tower_Fire_Upper_Actions)
endfunction