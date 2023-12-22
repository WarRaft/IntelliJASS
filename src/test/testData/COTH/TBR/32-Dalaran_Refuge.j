function Trig_Dalaran_Refuge_Func002Func016002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Dalaran_Refuge_Func002Func019002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Dalaran_Refuge_Func002Func026001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Dalaran_Refuge_Func002Func026001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Dalaran_Refuge_Func002Func026001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dalaran_Refuge_Func002Func026001002001(),Trig_Dalaran_Refuge_Func002Func026001002002())
    endfunction
    function Trig_Dalaran_Refuge_Func002Func026A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0210,"revive",GetEnumUnit())
    endfunction
    function Trig_Dalaran_Refuge_Func002C takes nothing returns boolean
    if(not(udg_ThroneCount<8.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Dalaran_Refuge_Actions takes nothing returns nothing
    set udg_ThroneCount=(udg_ThroneCount+1)
    if(Trig_Dalaran_Refuge_Func002C())then
        call DisplayTextToForce(GetPlayersAllies(Player(3)), "Даларан был захвачен Ордой. Оставшиеся маги сбежали в горы Лордерона.")
        call DisplayTextToForce(GetPlayersAllies(Player(4)), "Мы покорили Даларан во имя Архимонда!  Оставшиеся маги перебрались в горы Лордерона, где они и встретят погибель Азерота.")
    call AdjustPlayerStateBJ(200,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1000,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call KillUnit(gg_unit_haro_0199)
    set udg_Temp_UnitGroup=GetUnitsOfTypeIdAll('nmgv')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Dalaran_Refuge_Func002Func016002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsOfTypeIdAll('n00U')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Dalaran_Refuge_Func002Func019002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call KillUnit(gg_unit_oeye_0242)
    call DisableTrigger(gg_trg_Dalaran_Zepplin)
    call ShowUnitShow(gg_unit_n00P_0210)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(3),Condition(function Trig_Dalaran_Refuge_Func002Func026001002)),function Trig_Dalaran_Refuge_Func002Func026A)
    call KillDestructable(gg_dest_XTbd_1755)
    call KillDestructable(gg_dest_XTbd_1754)
    call TriggerSleepAction(1.50)
    call KillDestructable(gg_dest_XTbd_1263)
    set udg_TempPoint=GetUnitLoc(gg_unit_nef7_0204)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[3],udg_TempPoint,4.00)
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_nef7_0204)
    set udg_Refuge1=(udg_Refuge1+1)
    call TriggerSleepAction(1.00)
    call KillDestructable(gg_dest_XTbd_1270)
    call TriggerSleepAction(1.50)
    call KillDestructable(gg_dest_XTbd_1749)
    call TriggerSleepAction(25.00)
    call AddWeatherEffectSaveLast(gg_rct_Lordaeron_Snow,'SNhs')
    call EnableWeatherEffect(GetLastCreatedWeatherEffect(),true)
    else
    call KillUnit(gg_unit_haro_0199)
    call KillDestructable(gg_dest_XTbd_1755)
    call KillDestructable(gg_dest_XTbd_1754)
    endif
    endfunction
    function InitTrig_Dalaran_Refuge takes nothing returns nothing
    set gg_trg_Dalaran_Refuge=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Dalaran_Refuge,gg_unit_hkee_0203,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Dalaran_Refuge,function Trig_Dalaran_Refuge_Actions)
    endfunction