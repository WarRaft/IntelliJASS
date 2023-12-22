function Trig_Stromgarde_Refuge_Func002Func066001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Stromgarde_Refuge_Func002Func066001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Stromgarde_Refuge_Func002Func066001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Stromgarde_Refuge_Func002Func066001002001(),Trig_Stromgarde_Refuge_Func002Func066001002002())
    endfunction
    function Trig_Stromgarde_Refuge_Func002Func066A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0020,"revive",GetEnumUnit())
    endfunction
    function Trig_Stromgarde_Refuge_Func002C takes nothing returns boolean
    if(not(udg_ThroneCount<8.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Stromgarde_Refuge_Actions takes nothing returns nothing
    set udg_ThroneCount=(udg_ThroneCount+1)
    if(Trig_Stromgarde_Refuge_Func002C())then
    call DisplayTextToForce(GetPlayersAllies(Player(0)), "Столица-Форт Стромгард был захвачен! Остатки живых сбежали в горы Лордерона.")
    call DisplayTextToForce(GetPlayersAllies(Player(4)), "Жалкая крепость Стромгарда объята пламенем! Те из них, кто был слишком напуган, чтобы противостоять нам, бежали в Лордерон!")
    call AdjustPlayerStateBJ(200,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1000,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call SetPlayerTechMaxAllowedSwap('hdes',6,Player(0))
    call SetPlayerTechMaxAllowedSwap('hbsh',5,Player(0))
    call SetPlayerTechMaxAllowedSwap('h00O',5,Player(0))
    call KillUnit(gg_unit_hgra_0015)
    call KillUnit(gg_unit_hhou_0047)
    call KillUnit(gg_unit_h00E_0018)
    call KillUnit(gg_unit_hvlt_0014)
    call KillUnit(gg_unit_h00C_0013)
    call KillUnit(gg_unit_h001_0061)
    call KillUnit(gg_unit_h001_0062)
    call KillUnit(gg_unit_h001_0063)
    call KillUnit(gg_unit_h001_0064)
    call KillUnit(gg_unit_oeye_0239)
    call DisableTrigger(gg_trg_Stromgarde_Zepplin)
    call ShowUnitShow(gg_unit_n00P_0020)
    call TriggerSleepAction(1.00)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_4)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_5)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_6)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_7)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_8)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_9)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_10)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_11)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_12)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_13)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Strom_Fire_14)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call RemoveDestructable(gg_dest_B004_4351)
    call RemoveDestructable(gg_dest_B004_0580)
    call RemoveDestructable(gg_dest_B004_0401)
    call RemoveDestructable(gg_dest_B004_0575)
    call RemoveDestructable(gg_dest_B008_1967)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(0),Condition(function Trig_Stromgarde_Refuge_Func002Func066001002)),function Trig_Stromgarde_Refuge_Func002Func066A)
    call TriggerSleepAction(1.00)
    set udg_TempPoint=GetUnitLoc(gg_unit_hcas_0019)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[0],udg_TempPoint,5.00)
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_hcas_0019)
    set udg_Refuge2=(udg_Refuge2+1)
    else
    endif
    endfunction
    function InitTrig_Stromgarde_Refuge takes nothing returns nothing
    set gg_trg_Stromgarde_Refuge=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Stromgarde_Refuge,gg_unit_n00O_0016,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Stromgarde_Refuge,function Trig_Stromgarde_Refuge_Actions)
    endfunction