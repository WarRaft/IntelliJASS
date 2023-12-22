function Trig_Aerie_Peak_Func002Func015002003 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='harm')
    endfunction
    function Trig_Aerie_Peak_Func002Func016002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Aerie_Peak_Func002Func023002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Aerie_Peak_Func002Func026002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Aerie_Peak_Func002Func029002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Aerie_Peak_Func002Func032002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Aerie_Peak_Func002Func037001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Aerie_Peak_Func002Func037001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Aerie_Peak_Func002Func037001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aerie_Peak_Func002Func037001002001(),Trig_Aerie_Peak_Func002Func037001002002())
    endfunction
    function Trig_Aerie_Peak_Func002Func037A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0270,"revive",GetEnumUnit())
    endfunction
    function Trig_Aerie_Peak_Func002C takes nothing returns boolean
    if(not(udg_ThroneCount<8.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Aerie_Peak_Actions takes nothing returns nothing
    set udg_ThroneCount=(udg_ThroneCount+1)
    if(Trig_Aerie_Peak_Func002C())then
        call DisplayTextToForce(GetPlayersAllies(Player(5)), "Защитники Айронфорджа пали! Легион изгнал расу гномов на север, где они нашли убежище у своих собратьев на Заоблачном Пике!")
        call DisplayTextToForce(GetPlayersAllies(Player(4)), "Жалкая твердыня Айронфордж пала перед нашими воинами! Идите на север и сокрушите ничтожное человеческое сопротивление в Лордероне!")
    call AdjustPlayerStateBJ(200,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1000,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call KillUnit(gg_unit_hhou_0259)
    call KillUnit(gg_unit_h007_0264)
    call KillUnit(gg_unit_hbla_0263)
    set udg_TempPoint=GetUnitLoc(gg_unit_hbla_0263)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(1250.00,udg_TempPoint,Condition(function Trig_Aerie_Peak_Func002Func015002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Aerie_Peak_Func002Func016002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    call KillUnit(gg_unit_oeye_0244)
    call DisableTrigger(gg_trg_Khaz_Modan_Zepplin)
    call DisableTrigger(gg_trg_Aerie_Peak_Zepplin)
    set udg_Temp_UnitGroup=GetUnitsInRectOfPlayer(gg_rct_Mountain_Snow_3,Player(4))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Aerie_Peak_Func002Func023002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsInRectOfPlayer(gg_rct_Mountain_Snow_3,Player(9))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Aerie_Peak_Func002Func026002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsInRectOfPlayer(gg_rct_Mountain_Snow_3,Player(10))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Aerie_Peak_Func002Func029002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsInRectOfPlayer(gg_rct_Mountain_Snow_3,Player(11))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Aerie_Peak_Func002Func032002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call ShowUnitShow(gg_unit_n00P_0270)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(5),Condition(function Trig_Aerie_Peak_Func002Func037001002)),function Trig_Aerie_Peak_Func002Func037A)
    call TriggerSleepAction(1.00)
    call SetUnitInvulnerable(gg_unit_h00V_0535,false)
    call EnableTrigger(gg_trg_Dwarf_Refuge)
    set udg_TempPoint=GetUnitLoc(gg_unit_h00V_0535)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[5],udg_TempPoint,5.00)
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_harm_0268)
    call ShowUnitShow(gg_unit_hbla_0269)
    call SetUnitOwner(gg_unit_h00V_0535,Player(5),true)
    call SetUnitOwner(gg_unit_h00W_0544,Player(5),true)
    call SetUnitOwner(gg_unit_h00W_0543,Player(5),true)
    call SetUnitOwner(gg_unit_h00W_0541,Player(5),true)
    call SetUnitOwner(gg_unit_ugho_0545,Player(5),true)
    call SetUnitOwner(gg_unit_ugho_0547,Player(5),true)
    call SetUnitOwner(gg_unit_ugho_0546,Player(5),true)
    call SetUnitOwner(gg_unit_ugho_0549,Player(5),true)
    call SetUnitOwner(gg_unit_ugho_0548,Player(5),true)
    call SetUnitOwner(gg_unit_h007_0536,Player(5),true)
    call SetPlayerTechMaxAllowedSwap('h00W',4,Player(5))
    call SetPlayerTechMaxAllowedSwap('hgyr',2,Player(5))
    call RemoveDestructable(gg_dest_LTrc_0288)
    call RemoveDestructable(gg_dest_LTrc_1551)
    call RemoveDestructable(gg_dest_LTrc_4247)
    call RemoveDestructable(gg_dest_LTrc_4248)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_End_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_End_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_End_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_End_Fire_5)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_End_Fire_6)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_End_Fire_7)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_End_Fire_8)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    else
    endif
    endfunction
    function InitTrig_Aerie_Peak takes nothing returns nothing
    set gg_trg_Aerie_Peak=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Aerie_Peak,gg_unit_halt_0257,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Aerie_Peak,function Trig_Aerie_Peak_Actions)
    endfunction