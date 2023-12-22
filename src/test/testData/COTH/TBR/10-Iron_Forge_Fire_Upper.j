function Trig_Iron_Forge_Fire_Upper_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Iron_Forge_Fire_Upper takes nothing returns nothing
    set gg_trg_Iron_Forge_Fire_Upper=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Iron_Forge_Fire_Upper,gg_unit_hctw_0261,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Iron_Forge_Fire_Upper,function Trig_Iron_Forge_Fire_Upper_Actions)
    endfunction