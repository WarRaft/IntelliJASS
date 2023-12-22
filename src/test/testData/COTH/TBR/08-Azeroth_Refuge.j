function Trig_Azeroth_Refuge_Func021002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Azeroth_Refuge_Func024002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Azeroth_Refuge_Func027002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Azeroth_Refuge_Func030002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Azeroth_Refuge_Func033002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Azeroth_Refuge_Func036002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Azeroth_Refuge_Func039002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Azeroth_Refuge_Func046001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Azeroth_Refuge_Func046001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Azeroth_Refuge_Func046001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Azeroth_Refuge_Func046001002001(),Trig_Azeroth_Refuge_Func046001002002())
    endfunction
    function Trig_Azeroth_Refuge_Func046A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0154,"revive",GetEnumUnit())
    endfunction
    function Trig_Azeroth_Refuge_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisplayTextToForce(GetPlayersAllies(Player(1)), "Азерот захлестнула Орда! Выжившие оснавались у подножья гор Лордерона, надеясь сделать последний шаг против Легиона.")
    call DisplayTextToForce(GetPlayersAllies(Player(4)), "Мы снова победили слабаков Азерота в Хиллсбраде! Оставшиеся в живых трусят в холмах Лордерона.!")
    call AdjustPlayerStateBJ(150,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(150,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(150,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(150,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(750,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(750,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call SetPlayerTechMaxAllowedSwap('hdes',6,Player(1))
    call SetPlayerTechMaxAllowedSwap('hbsh',5,Player(1))
    call SetPlayerTechMaxAllowedSwap('h00O',5,Player(1))
    set udg_TempPoint=GetUnitLoc(gg_unit_htow_0155)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[1],udg_TempPoint,5.00)
    call RemoveLocation(udg_TempPoint)
    call KillUnit(gg_unit_hbar_0139)
    call KillUnit(gg_unit_hshy_0141)
    set udg_Temp_UnitGroup=GetUnitsOfTypeIdAll('hlum')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Azeroth_Refuge_Func021002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsOfPlayerAndTypeId(Player(1),'hvlt')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Azeroth_Refuge_Func024002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsOfPlayerAndTypeId(Player(1),'hgra')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Azeroth_Refuge_Func027002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsOfPlayerAndTypeId(Player(1),'hhou')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Azeroth_Refuge_Func030002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsOfPlayerAndTypeId(Player(1),'h00G')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Azeroth_Refuge_Func033002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsOfPlayerAndTypeId(Player(1),'h00H')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Azeroth_Refuge_Func036002)
    call DestroyGroup(udg_Temp_UnitGroup)
    set udg_Temp_UnitGroup=GetUnitsOfPlayerAndTypeId(Player(1),'h00F')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Azeroth_Refuge_Func039002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call ShowUnitShow(gg_unit_htow_0155)
    call ShowUnitShow(gg_unit_n00P_0154)
    set udg_Refuge2=(udg_Refuge2+1)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(1),Condition(function Trig_Azeroth_Refuge_Func046001002)),function Trig_Azeroth_Refuge_Func046A)
    endfunction
    function InitTrig_Azeroth_Refuge takes nothing returns nothing
    set gg_trg_Azeroth_Refuge=CreateTrigger()
    call DisableTrigger(gg_trg_Azeroth_Refuge)
    call TriggerRegisterUnitEvent(gg_trg_Azeroth_Refuge,gg_unit_n00R_0492,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Azeroth_Refuge,function Trig_Azeroth_Refuge_Actions)
    endfunction