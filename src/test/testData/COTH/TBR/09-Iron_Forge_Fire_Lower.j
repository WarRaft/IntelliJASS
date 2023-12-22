function Trig_Iron_Forge_Fire_Lower_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_Fire_4)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Iron_Forge_Fire_Lower takes nothing returns nothing
    set gg_trg_Iron_Forge_Fire_Lower=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Iron_Forge_Fire_Lower,gg_unit_hctw_0260,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Iron_Forge_Fire_Lower,function Trig_Iron_Forge_Fire_Lower_Actions)
    endfunction