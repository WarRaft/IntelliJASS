function Trig_Yellow_Hero_Selection_Func006Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Npld'))then
    return false
    endif
    return true
    endfunction
    function Trig_Yellow_Hero_Selection_Func006Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='N007'))then
    return false
    endif
    return true
    endfunction
    function Trig_Yellow_Hero_Selection_Func006Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Utic'))then
    return false
    endif
    return true
    endfunction
    function Trig_Yellow_Hero_Selection_Func006Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Uwar'))then
    return false
    endif
    return true
    endfunction
    function Trig_Yellow_Hero_Selection_Func006Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Nplh'))then
    return false
    endif
    return true
    endfunction
    function Trig_Yellow_Hero_Selection_Func006C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Nklj'))then
    return false
    endif
    return true
    endfunction
    function Trig_Yellow_Hero_Selection_Actions takes nothing returns nothing
    call ReplaceUnitBJ(gg_unit_u001_0237,'utom',bj_UNIT_STATE_METHOD_RELATIVE)
    set udg_YellowAltar[6]=GetLastReplacedUnitBJ()
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Legion_Hero_Spawn)
    call PanCameraToTimedLocForPlayer(Player(4),udg_TempPoint,0)
    if(Trig_Yellow_Hero_Selection_Func006C())then
    call SetUnitPositionLoc(gg_unit_Nklj_0461,udg_TempPoint)
    call SetUnitOwner(gg_unit_Nklj_0461,Player(4),true)
    call SelectUnitForPlayerSingle(gg_unit_Nklj_0461,GetOwningPlayer(GetTrainedUnit()))
    call ShowUnitShow(gg_unit_Nklj_0461)
    call TriggerRegisterUnitEvent(gg_trg_Volcano,gg_unit_Nklj_0461,EVENT_UNIT_SPELL_CHANNEL)
    call TriggerRegisterUnitEvent(gg_trg_Volcano_Stop,gg_unit_Nklj_0461,EVENT_UNIT_SPELL_ENDCAST)
    call PolledWait(25.00)
    call SetPlayerHandicapXPBJ(Player(4),102.00)
    else
    if(Trig_Yellow_Hero_Selection_Func006Func001C())then
    call SetUnitPositionLoc(gg_unit_Nplh_0487,udg_TempPoint)
    call SetUnitOwner(gg_unit_Nplh_0487,Player(4),true)
    call SelectUnitForPlayerSingle(gg_unit_Nplh_0487,GetOwningPlayer(GetTrainedUnit()))
    call ShowUnitShow(gg_unit_Nplh_0487)
    call TriggerRegisterUnitEvent(gg_trg_Mannoroth_Starts,gg_unit_Nplh_0487,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Mannoroth_Orders,gg_unit_Nplh_0487,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(gg_trg_Rain_of_Chaos,gg_unit_Nplh_0487,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Black_Aura,gg_unit_Nplh_0487,EVENT_UNIT_HERO_SKILL)
    call PolledWait(25.00)
    call SetPlayerHandicapXPBJ(Player(4),107.00)
    else
    if(Trig_Yellow_Hero_Selection_Func006Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Uwar_0460,udg_TempPoint)
    call SetUnitOwner(gg_unit_Uwar_0460,Player(4),true)
    call SelectUnitForPlayerSingle(gg_unit_Uwar_0460,GetOwningPlayer(GetTrainedUnit()))
    call ShowUnitShow(gg_unit_Uwar_0460)
    call TriggerRegisterUnitEvent(gg_trg_Archimonde_Starts,gg_unit_Uwar_0460,EVENT_UNIT_SPELL_EFFECT)
    call PolledWait(25.00)
    call SetPlayerHandicapXPBJ(Player(4),102.00)
    else
    if(Trig_Yellow_Hero_Selection_Func006Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Utic_0512,udg_TempPoint)
    call SetUnitOwner(gg_unit_Utic_0512,Player(4),false)
    call SelectUnitForPlayerSingle(gg_unit_Utic_0512,GetOwningPlayer(GetTrainedUnit()))
    call ShowUnitShow(gg_unit_Utic_0512)
    call TriggerRegisterUnitEvent(gg_trg_Tichondrius_Starts,gg_unit_Utic_0512,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Dark_Touch_On,gg_unit_Utic_0512,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(gg_trg_Dark_Touch_Off,gg_unit_Utic_0512,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(gg_trg_Libation_of_Blood_Turn_on,gg_unit_Utic_0512,EVENT_UNIT_HERO_SKILL)
    call EnableTrigger(gg_trg_Dark_Touch)
    call PolledWait(25.00)
    call SetPlayerHandicapXPBJ(Player(4),107.00)
    else
    if(Trig_Yellow_Hero_Selection_Func006Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_N007_0522,udg_TempPoint)
    call SetUnitOwner(gg_unit_N007_0522,Player(4),false)
    call SelectUnitForPlayerSingle(gg_unit_N007_0522,GetOwningPlayer(GetTrainedUnit()))
    call ShowUnitShow(gg_unit_N007_0522)
    call TriggerRegisterUnitEvent(gg_trg_Medivh_Starts,gg_unit_N007_0522,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Avatar_of_Sargeras,gg_unit_N007_0522,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Medivh_Learns,gg_unit_N007_0522,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Quake_of_Doom_Interrupted,gg_unit_N007_0522,EVENT_UNIT_SPELL_ENDCAST)
    call PolledWait(25.00)
    call SetPlayerHandicapXPBJ(Player(4),102.00)
    else
    if(Trig_Yellow_Hero_Selection_Func006Func001Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Npld_0527,udg_TempPoint)
    call SetUnitOwner(gg_unit_Npld_0527,Player(4),false)
    call SelectUnitForPlayerSingle(gg_unit_Npld_0527,GetOwningPlayer(GetTrainedUnit()))
    call SetPlayerAbilityAvailableBJ(false,'A0FN',Player(4))
    call ShowUnitShow(gg_unit_Npld_0527)
    call TriggerRegisterUnitEvent(gg_trg_Azgalor_Starts,gg_unit_Npld_0527,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Azgalor_Learns,gg_unit_Npld_0527,EVENT_UNIT_HERO_SKILL)
    call PolledWait(25.00)
    call SetPlayerHandicapXPBJ(Player(4),107.00)
    else
    endif
    endif
    endif
    endif
    endif
    endif
    call RemoveLocation(udg_TempPoint)
    call TriggerSleepAction(20.00)
    call PlaySoundBJ(gg_snd_U08Archimonde19)
    endfunction
    function InitTrig_Yellow_Hero_Selection takes nothing returns nothing
    set gg_trg_Yellow_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Yellow_Hero_Selection,gg_unit_u001_0237,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Yellow_Hero_Selection,function Trig_Yellow_Hero_Selection_Actions)
    endfunction