function Trig_Kul_Tiras_Tower_West_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_5)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Kul_Tiras_Tower_West takes nothing returns nothing
    set gg_trg_Kul_Tiras_Tower_West=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Kul_Tiras_Tower_West,gg_unit_hgtw_0162,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Kul_Tiras_Tower_West,function Trig_Kul_Tiras_Tower_West_Actions)
    endfunction