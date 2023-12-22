function Trig_Kul_Tiras_Tower_East_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_4)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Kul_Tiras_Tower_East takes nothing returns nothing
    set gg_trg_Kul_Tiras_Tower_East=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Kul_Tiras_Tower_East,gg_unit_hgtw_0161,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Kul_Tiras_Tower_East,function Trig_Kul_Tiras_Tower_East_Actions)
    endfunction