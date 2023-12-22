function Trig_Gilneas_Refuge_Func002Func044001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Gilneas_Refuge_Func002Func044001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Gilneas_Refuge_Func002Func044001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Gilneas_Refuge_Func002Func044001002001(),Trig_Gilneas_Refuge_Func002Func044001002002())
    endfunction
    function Trig_Gilneas_Refuge_Func002Func044A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0298,"revive",GetEnumUnit())
    endfunction
    function Trig_Gilneas_Refuge_Func002C takes nothing returns boolean
    if(not(udg_ThroneCount<8.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Gilneas_Refuge_Actions takes nothing returns nothing
    set udg_ThroneCount=(udg_ThroneCount+1)
    if(Trig_Gilneas_Refuge_Func002C())then
    call DisplayTextToForce(GetPlayersAllies(Player(7)), "Гилнеас сожжён и Пенсильвания теперь под контролем Легиона! Выжившие в бойне смогли перебраться в горы Лордерона!")
    call DisplayTextToForce(GetPlayersAllies(Player(4)), "Жалкие защитники Гилнеаса повержены нашей великой армией! Идите же, и уничтожьте остатки альянса!")
    call AdjustPlayerStateBJ(200,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1000,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call SetPlayerTechMaxAllowedSwap('hdes',6,Player(7))
    call SetPlayerTechMaxAllowedSwap('hbsh',5,Player(7))
    call SetPlayerTechMaxAllowedSwap('h00O',5,Player(7))
    call KillUnit(gg_unit_hhou_0291)
    call KillUnit(gg_unit_h013_0296)
    call KillUnit(gg_unit_h01U_0287)
    call KillUnit(gg_unit_hvlt_0290)
    call KillUnit(gg_unit_hgra_0297)
    call KillUnit(gg_unit_oeye_0246)
    call KillUnit(gg_unit_h001_0151)
    call KillUnit(gg_unit_h001_0143)
    call KillUnit(gg_unit_h001_0149)
    call DisableTrigger(gg_trg_Gilneas_Zepplin)
    set udg_TempPoint=GetRectCenter(gg_rct_Gil_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Gil_Fire_4)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Gil_Fire_5)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Gil_Fire_7)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Gil_Fire_8)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call RemoveDestructable(gg_dest_B005_3335)
    call RemoveDestructable(gg_dest_B007_3678)
    call ShowUnitShow(gg_unit_n00P_0298)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(7),Condition(function Trig_Gilneas_Refuge_Func002Func044001002)),function Trig_Gilneas_Refuge_Func002Func044A)
    call TriggerSleepAction(1.00)
    set udg_TempPoint=GetUnitLoc(gg_unit_h015_0288)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[7],udg_TempPoint,5.00)
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_h015_0288)
    set udg_Refuge2=(udg_Refuge2+1)
    else
    endif
    endfunction
    function InitTrig_Gilneas_Refuge takes nothing returns nothing
    set gg_trg_Gilneas_Refuge=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Gilneas_Refuge,gg_unit_n00S_0289,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Gilneas_Refuge,function Trig_Gilneas_Refuge_Actions)
    endfunction