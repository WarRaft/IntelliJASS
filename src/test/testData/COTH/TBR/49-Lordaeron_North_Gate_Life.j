function Trig_Lordaeron_North_Gate_Life_Actions takes nothing returns nothing
    set udg_LordaeronFinalBreak[1]=0.00
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_11)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call DisableTrigger(gg_trg_Lordaeron_North_Gate_Lever_Death)
    endfunction
    function InitTrig_Lordaeron_North_Gate_Life takes nothing returns nothing
    set gg_trg_Lordaeron_North_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Lordaeron_North_Gate_Life,gg_dest_LTg3_1291)
    call TriggerAddAction(gg_trg_Lordaeron_North_Gate_Life,function Trig_Lordaeron_North_Gate_Life_Actions)
    endfunction