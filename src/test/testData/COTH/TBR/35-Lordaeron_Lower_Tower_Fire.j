function Trig_Lordaeron_Lower_Tower_Fire_Actions takes nothing returns nothing
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_6)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Lordaeron_Lower_Tower_Fire takes nothing returns nothing
    set gg_trg_Lordaeron_Lower_Tower_Fire=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Lordaeron_Lower_Tower_Fire,gg_unit_hgtw_0347,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Lordaeron_Lower_Tower_Fire,function Trig_Lordaeron_Lower_Tower_Fire_Actions)
    endfunction