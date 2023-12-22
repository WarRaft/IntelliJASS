function Trig_Lordaeron_Fountain_Destroyed_Conditions takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_hgtw_0348)==false))then
    return false
    endif
    if(not(IsUnitAliveBJ(gg_unit_hgtw_0347)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Lordaeron_Fountain_Destroyed_Actions takes nothing returns nothing
    call TriggerSleepAction(GetRandomReal(1.00,4.00))
    set udg_TempPoint=GetDestructableLoc(gg_dest_IOt0_1936)
    call RemoveDestructable(gg_dest_IOt0_1936)
    call CreateDestructableLoc('B002',udg_TempPoint,GetRandomDirectionDeg(),0.80,0)
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_7)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_8)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Lordaeron_Fountain_Destroyed takes nothing returns nothing
    set gg_trg_Lordaeron_Fountain_Destroyed=CreateTrigger()
    call TriggerAddCondition(gg_trg_Lordaeron_Fountain_Destroyed,Condition(function Trig_Lordaeron_Fountain_Destroyed_Conditions))
    call TriggerAddAction(gg_trg_Lordaeron_Fountain_Destroyed,function Trig_Lordaeron_Fountain_Destroyed_Actions)
    endfunction