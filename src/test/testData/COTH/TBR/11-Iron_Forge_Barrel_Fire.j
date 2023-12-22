 function Trig_Iron_Forge_Barrel_Fire_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_End_Fire_4)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Iron_Forge_Barrel_Fire takes nothing returns nothing
    set gg_trg_Iron_Forge_Barrel_Fire=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Iron_Forge_Barrel_Fire,gg_dest_LTex_1757)
    call TriggerRegisterDeathEvent(gg_trg_Iron_Forge_Barrel_Fire,gg_dest_LTex_0271)
    call TriggerAddAction(gg_trg_Iron_Forge_Barrel_Fire,function Trig_Iron_Forge_Barrel_Fire_Actions)
    endfunction