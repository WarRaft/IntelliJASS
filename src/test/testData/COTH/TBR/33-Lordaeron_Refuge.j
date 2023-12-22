function Trig_Lordaeron_Refuge_Func002Func038C takes nothing returns boolean
    if(not(IsDestructableAliveBJ(gg_dest_IOt0_1936)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Lordaeron_Refuge_Func002Func047001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Lordaeron_Refuge_Func002Func047001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Lordaeron_Refuge_Func002Func047001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Lordaeron_Refuge_Func002Func047001002001(),Trig_Lordaeron_Refuge_Func002Func047001002002())
    endfunction
    function Trig_Lordaeron_Refuge_Func002Func047A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0337,"revive",GetEnumUnit())
    endfunction
    function Trig_Lordaeron_Refuge_Func002C takes nothing returns boolean
    if(not(udg_ThroneCount<8.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Lordaeron_Refuge_Actions takes nothing returns nothing
    set udg_ThroneCount=(udg_ThroneCount+1)
    if(Trig_Lordaeron_Refuge_Func002C())then
    call DisplayTextToForce(GetPlayersAllies(Player(8)), "Лордерон был захвачен Ордой! Это тёмный день. Выжившие собрались и сбежали в горы Лордерона.")
    call DisplayTextToForce(GetPlayersAllies(Player(4)), "Мы покорили Азерот! Теперь давайте же покорим оставшиеся столицы Альянса и принесем победу Легиону!")
    call DisableTrigger(gg_trg_Lordaeron_North_Gate_Lever_Death)
    call DisableTrigger(gg_trg_Lordaeron_South_Gate_Lever_Death)
    call KillUnit(gg_unit_hgra_0341)
    call KillUnit(gg_unit_oeye_0240)
    call KillUnit(gg_unit_hvlt_0342)
    call KillUnit(gg_unit_h00B_0338)
    call KillUnit(gg_unit_hhou_0336)
    call KillUnit(gg_unit_h012_0339)
    call KillUnit(gg_unit_h001_0351)
    call KillUnit(gg_unit_h001_0350)
    call KillUnit(gg_unit_h001_0349)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_4)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_5)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_9)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_12)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Lord_Fire_13)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    if(Trig_Lordaeron_Refuge_Func002Func038C())then
    call TriggerExecute(gg_trg_Lordaeron_Fountain_Destroyed)
    else
    endif
    call RemoveDestructable(gg_dest_B005_3671)
    call RemoveDestructable(gg_dest_B005_0737)
    call RemoveDestructable(gg_dest_B005_3670)
    call RemoveDestructable(gg_dest_B005_1653)
    call RemoveDestructable(gg_dest_B005_3727)
    call ShowUnitShow(gg_unit_n00P_0337)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(8),Condition(function Trig_Lordaeron_Refuge_Func002Func047001002)),function Trig_Lordaeron_Refuge_Func002Func047A)
    call TriggerSleepAction(1.00)
    set udg_TempPoint=GetUnitLoc(gg_unit_n00B_0345)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[8],udg_TempPoint,4.00)
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_n00B_0345)
    call AdjustPlayerStateBJ(200,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1000,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call SetPlayerTechMaxAllowedSwap('hdes',6,Player(8))
    call SetPlayerTechMaxAllowedSwap('hbsh',5,Player(8))
    call SetPlayerTechMaxAllowedSwap('h00O',5,Player(8))
    call DisableTrigger(gg_trg_Lordaeron_Zepplin)
    set udg_Refuge1=(udg_Refuge1+1)
    else
    endif
    endfunction
    function InitTrig_Lordaeron_Refuge takes nothing returns nothing
    set gg_trg_Lordaeron_Refuge=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Lordaeron_Refuge,gg_unit_n00T_0340,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Lordaeron_Refuge,function Trig_Lordaeron_Refuge_Actions)
    endfunction