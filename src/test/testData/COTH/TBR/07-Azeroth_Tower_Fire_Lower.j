function Trig_Azeroth_Tower_Fire_Lower_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Tower_Fire_Lower_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Tower_Fire_Lower_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call RemoveDestructable(gg_dest_B006_3425)
    endfunction
    function InitTrig_Azeroth_Tower_Fire_Lower takes nothing returns nothing
    set gg_trg_Azeroth_Tower_Fire_Lower=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Azeroth_Tower_Fire_Lower,gg_unit_hgtw_0066,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Azeroth_Tower_Fire_Lower,function Trig_Azeroth_Tower_Fire_Lower_Actions)
    endfunction