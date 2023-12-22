function Trig_Dwarf_Refuge_Func023001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Dwarf_Refuge_Func023001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Dwarf_Refuge_Func023001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dwarf_Refuge_Func023001002001(),Trig_Dwarf_Refuge_Func023001002002())
    endfunction
    function Trig_Dwarf_Refuge_Func023A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0266,"revive",GetEnumUnit())
    endfunction
    function Trig_Dwarf_Refuge_Actions takes nothing returns nothing
        call DisplayTextToForce(GetPlayersAllies(Player(5)), "Заоблачный Пик был покарен Легионом! Остатки Дворфов бежали в горы Лордерона!")
        call DisplayTextToForce(GetPlayersAllies(Player(4)), "Заоблачный пик был покарен нашими воинами!  Теперь, давайте же покончим с людишками в Лордероне!")
    call AdjustPlayerStateBJ(150,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(150,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(150,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(150,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(750,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call SetPlayerTechMaxAllowedSwap('h00L',5,Player(5))
    call KillUnit(gg_unit_harm_0268)
    call KillUnit(gg_unit_hbla_0269)
    call KillUnit(gg_unit_h007_0536)
    call RemoveUnit(gg_unit_n00P_0270)
    call DisableTrigger(gg_trg_Aerie_Peak_Zepplin)
    set udg_TempPoint=GetRectCenter(gg_rct_Aerie_Peak_Fire)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_n00P_0266)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(5),Condition(function Trig_Dwarf_Refuge_Func023001002)),function Trig_Dwarf_Refuge_Func023A)
    call TriggerSleepAction(1.00)
    set udg_TempPoint=GetUnitLoc(gg_unit_h00D_0265)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[5],udg_TempPoint,5.00)
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_h00D_0265)
    set udg_Refuge2=(udg_Refuge2+1)
    endfunction
    function InitTrig_Dwarf_Refuge takes nothing returns nothing
    set gg_trg_Dwarf_Refuge=CreateTrigger()
    call DisableTrigger(gg_trg_Dwarf_Refuge)
    call TriggerRegisterUnitEvent(gg_trg_Dwarf_Refuge,gg_unit_h00V_0535,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Dwarf_Refuge,function Trig_Dwarf_Refuge_Actions)
    endfunction