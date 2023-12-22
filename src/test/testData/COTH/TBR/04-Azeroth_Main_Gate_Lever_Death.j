 function Trig_Azeroth_Main_Gate_Lever_Death_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Azeroth_Main_Gate_Lever_Death takes nothing returns nothing
    set gg_trg_Azeroth_Main_Gate_Lever_Death=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Azeroth_Main_Gate_Lever_Death,gg_unit_h001_0119,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Azeroth_Main_Gate_Lever_Death,function Trig_Azeroth_Main_Gate_Lever_Death_Actions)
    endfunction