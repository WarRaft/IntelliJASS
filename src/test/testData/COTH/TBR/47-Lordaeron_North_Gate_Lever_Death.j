function Trig_Lordaeron_North_Gate_Lever_Death_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_11)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Lordaeron_North_Gate_Lever_Death takes nothing returns nothing
    set gg_trg_Lordaeron_North_Gate_Lever_Death=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Lordaeron_North_Gate_Lever_Death,gg_unit_h001_0349,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Lordaeron_North_Gate_Lever_Death,function Trig_Lordaeron_North_Gate_Lever_Death_Actions)
    endfunction