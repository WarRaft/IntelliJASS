function Trig_Kul_Tiras_Refuge_Func002Func046C takes nothing returns boolean
    if(not(IsDestructableAliveBJ(gg_dest_IOt0_4291)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Kul_Tiras_Refuge_Func002Func052001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Kul_Tiras_Refuge_Func002Func052001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Kul_Tiras_Refuge_Func002Func052001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kul_Tiras_Refuge_Func002Func052001002001(),Trig_Kul_Tiras_Refuge_Func002Func052001002002())
    endfunction
    function Trig_Kul_Tiras_Refuge_Func002Func052A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0157,"revive",GetEnumUnit())
    endfunction
    function Trig_Kul_Tiras_Refuge_Func002C takes nothing returns boolean
    if(not(udg_ThroneCount<8.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Kul_Tiras_Refuge_Actions takes nothing returns nothing
    set udg_ThroneCount=(udg_ThroneCount+1)
    if(Trig_Kul_Tiras_Refuge_Func002C())then
        call DisplayTextToForce(GetPlayersAllies(Player(2)), "Морская нация Кул'Тирас была захвачена Легионом! Остатки людей бежали в горы Лордерона.")
        call DisplayTextToForce(GetPlayersAllies(Player(4)), "Нам удалось завоевать Кул Тирас! Эти люди не смогли противостоять Легиону и бежали в Лордерон, как собаки!")
    call AdjustPlayerStateBJ(200,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1000,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call SetPlayerTechMaxAllowedSwap('hdes',8,Player(2))
    call SetPlayerTechMaxAllowedSwap('uubs',6,Player(2))
    call SetPlayerTechMaxAllowedSwap('h00O',5,Player(2))
    call KillUnit(gg_unit_hhou_0171)
    call KillUnit(gg_unit_h006_0167)
    call KillUnit(gg_unit_hgra_0166)
    call KillUnit(gg_unit_hvlt_0165)
    call KillUnit(gg_unit_oeye_0243)
    call KillUnit(gg_unit_h00P_0169)
    call KillUnit(gg_unit_h001_0193)
    call DisableTrigger(gg_trg_Kul_Tiras_Zepplin)
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_7)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_6)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_8)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Fire_9)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Shipyard_Fire)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    if(Trig_Kul_Tiras_Refuge_Func002Func046C())then
    call TriggerExecute(gg_trg_Kul_Tiras_Fountain_Destroyed)
    else
    endif
    call RemoveDestructable(gg_dest_B005_1139)
    call RemoveDestructable(gg_dest_B005_2657)
    call ShowUnitShow(gg_unit_n00P_0157)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(2),Condition(function Trig_Kul_Tiras_Refuge_Func002Func052001002)),function Trig_Kul_Tiras_Refuge_Func002Func052A)
    call TriggerSleepAction(1.00)
    set udg_TempPoint=GetUnitLoc(gg_unit_h00J_0163)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[2],udg_TempPoint,5.00)
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_h00J_0163)
    call ShowUnitShow(gg_unit_h004_0142)
    call UnitAddAbilityBJ('A037',gg_unit_h004_0142)
    set udg_Refuge1=(udg_Refuge1+1)
    else
    endif
    endfunction
    function InitTrig_Kul_Tiras_Refuge takes nothing returns nothing
    set gg_trg_Kul_Tiras_Refuge=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Kul_Tiras_Refuge,gg_unit_n00A_0168,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Kul_Tiras_Refuge,function Trig_Kul_Tiras_Refuge_Actions)
    endfunction