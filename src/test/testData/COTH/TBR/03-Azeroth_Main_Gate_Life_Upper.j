function Trig_Azeroth_Main_Gate_Life_Upper_Actions takes nothing returns nothing
    set udg_AzerothMainbreak[1]=0.00
    set udg_TempPoint=GetRectCenter(gg_rct_Az_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call DisableTrigger(gg_trg_Azeroth_Main_Gate_Lever_Death)
    endfunction
    function InitTrig_Azeroth_Main_Gate_Life_Upper takes nothing returns nothing
    set gg_trg_Azeroth_Main_Gate_Life_Upper=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Azeroth_Main_Gate_Life_Upper,gg_dest_LTg3_0032)
    call TriggerAddAction(gg_trg_Azeroth_Main_Gate_Life_Upper,function Trig_Azeroth_Main_Gate_Life_Upper_Actions)
    endfunction