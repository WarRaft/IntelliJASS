function Trig_Blue_Hero_Selection_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Edem'))then
    return false
    endif
    return true
    endfunction
    function Trig_Blue_Hero_Selection_Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hgam'))then
    return false
    endif
    return true
    endfunction
    function Trig_Blue_Hero_Selection_Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hpb1'))then
    return false
    endif
    return true
    endfunction
    function Trig_Blue_Hero_Selection_Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hlgr'))then
    return false
    endif
    return true
    endfunction
    function Trig_Blue_Hero_Selection_Actions takes nothing returns nothing
    if(Trig_Blue_Hero_Selection_Func001C())then
    set udg_TempPoint=GetRectCenter(gg_rct_Azeroth_Hero_Summon_Area)
    call SetUnitPositionLoc(gg_unit_Hlgr_0523,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hlgr_0523,Player(1),true)
    call RemoveUnit(GetTrainedUnit())
    call ShowUnitShow(gg_unit_Hlgr_0523)
    call TriggerRegisterUnitEvent(gg_trg_Lothar_Starts,gg_unit_Hlgr_0523,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Dragonhide_Armor,gg_unit_Hlgr_0523,EVENT_UNIT_HERO_SKILL)
    call SetPlayerHandicapXPBJ(Player(1),99.00)
    else
    if(Trig_Blue_Hero_Selection_Func001Func001C())then
    set udg_TempPoint=GetRectCenter(gg_rct_Azeroth_Hero_Summon_Area)
    call SetUnitPositionLoc(gg_unit_Hpb1_0517,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hpb1_0517,Player(1),true)
    call RemoveUnit(GetTrainedUnit())
    call ShowUnitShow(gg_unit_Hpb1_0517)
    call TriggerRegisterUnitEvent(gg_trg_Llane_Starts,gg_unit_Hpb1_0517,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(1),99.00)
    else
    if(Trig_Blue_Hero_Selection_Func001Func001Func001C())then
    set udg_TempPoint=GetRectCenter(gg_rct_Azeroth_Hero_Summon_Area)
    call SetUnitPositionLoc(gg_unit_Hgam_0513,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hgam_0513,Player(1),true)
    call RemoveUnit(GetTrainedUnit())
    call ShowUnitShow(gg_unit_Hgam_0513)
    call TriggerRegisterUnitEvent(gg_trg_Khadgar_Starts,gg_unit_Hgam_0513,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(1),92.00)
    else
    if(Trig_Blue_Hero_Selection_Func001Func001Func001Func001C())then
    set udg_TempPoint=GetRectCenter(gg_rct_Azeroth_Hero_Summon_Area)
    call SetUnitPositionLoc(gg_unit_Edem_0550,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Edem_0550,Player(1),true)
    call RemoveUnit(GetTrainedUnit())
    call ShowUnitShow(gg_unit_Edem_0550)
    call TriggerRegisterUnitEvent(gg_trg_Mara_Starts,gg_unit_Edem_0550,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Holy_Bulwark_Starts,gg_unit_Edem_0550,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Mara_Learns,gg_unit_Edem_0550,EVENT_UNIT_HERO_SKILL)
    call SetPlayerHandicapXPBJ(Player(1),99.00)
    call SetPlayerAbilityAvailableBJ(false,'A0D5',Player(0))
    call SetPlayerAbilityAvailableBJ(false,'A0D5',Player(1))
    call SetPlayerAbilityAvailableBJ(false,'A0D5',Player(2))
    call SetPlayerAbilityAvailableBJ(false,'A0D5',Player(3))
    call SetPlayerAbilityAvailableBJ(false,'A0D5',Player(5))
    call SetPlayerAbilityAvailableBJ(false,'A0D5',Player(6))
    call SetPlayerAbilityAvailableBJ(false,'A0D5',Player(7))
    call SetPlayerAbilityAvailableBJ(false,'A0D5',Player(8))
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Blue_Hero_Selection takes nothing returns nothing
    set gg_trg_Blue_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Blue_Hero_Selection,gg_unit_negm_0075,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Blue_Hero_Selection,gg_unit_n00P_0154,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Blue_Hero_Selection,function Trig_Blue_Hero_Selection_Actions)
    endfunction