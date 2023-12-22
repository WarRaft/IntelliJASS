function Trig_Lord_Farm_Fire_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Farm_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Farm_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Lord_Farm_Fire takes nothing returns nothing
    set gg_trg_Lord_Farm_Fire=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Lord_Farm_Fire,gg_unit_hhou_0335,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Lord_Farm_Fire,function Trig_Lord_Farm_Fire_Actions)
    endfunction