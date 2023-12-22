function Trig_Gilneas_Lower_Tower_Fre_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Gil_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Gil_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Gilneas_Lower_Tower_Fre takes nothing returns nothing
    set gg_trg_Gilneas_Lower_Tower_Fre=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Gilneas_Lower_Tower_Fre,gg_unit_hgtw_0293,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Gilneas_Lower_Tower_Fre,function Trig_Gilneas_Lower_Tower_Fre_Actions)
    endfunction