function Trig_Orange_Hero_Selection_Func001Func007Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ucrl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Orange_Hero_Selection_Func001Func007Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hpal'))then
    return false
    endif
    return true
    endfunction
    function Trig_Orange_Hero_Selection_Func001Func007C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='H005'))then
    return false
    endif
    return true
    endfunction
    function Trig_Orange_Hero_Selection_Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hmkg'))then
    return false
    endif
    return true
    endfunction
    function Trig_Orange_Hero_Selection_Actions takes nothing returns nothing
    if(Trig_Orange_Hero_Selection_Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hmkg_0476,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hmkg_0476,Player(5),true)
    call ShowUnitShow(gg_unit_Hmkg_0476)
    call SetPlayerHandicapXPBJ(Player(5),99.00)
    call TriggerRegisterUnitEvent(gg_trg_Magni_Starts,gg_unit_Hmkg_0476,EVENT_UNIT_SPELL_EFFECT)
    else
    if(Trig_Orange_Hero_Selection_Func001Func007C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_H005_0502,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_H005_0502,Player(5),true)
    call ShowUnitShow(gg_unit_H005_0502)
    call TriggerRegisterUnitEvent(gg_trg_Brann_Starts,gg_unit_H005_0502,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Haste,gg_unit_H005_0502,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(5),92.00)
    call UnitAddAbilityBJ('A06W',gg_unit_o008_0505)
    else
    if(Trig_Orange_Hero_Selection_Func001Func007Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hpal_0463,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hpal_0463,Player(5),true)
    call ShowUnitShow(gg_unit_Hpal_0463)
    call TriggerRegisterUnitEvent(gg_trg_Geblin_Starts,gg_unit_Hpal_0463,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Megaton_Bomb_Afterburner,Player(5),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Repair_Bots_Mana_Regen,gg_unit_Hpal_0463,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Gelbin_Spawn,gg_unit_Hpal_0463,EVENT_UNIT_SUMMON)
    call SetPlayerHandicapXPBJ(Player(5),92.00)
    else
    if(Trig_Orange_Hero_Selection_Func001Func007Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Iron_Forge_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Ucrl_0500,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Ucrl_0500,Player(5),true)
    call ShowUnitShow(gg_unit_Ucrl_0500)
    call SetPlayerHandicapXPBJ(Player(5),99.00)
    call TriggerRegisterUnitEvent(gg_trg_Muradin_Starts,gg_unit_Ucrl_0500,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Avatar_Activate,gg_unit_Ucrl_0500,EVENT_UNIT_SPELL_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Avatar_Sound,gg_unit_Ucrl_0500,EVENT_UNIT_SPELL_CAST)
    call TriggerRegisterUnitEvent(gg_trg_On_the_House_Learn,gg_unit_Ucrl_0500,EVENT_UNIT_HERO_SKILL)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Orange_Hero_Selection takes nothing returns nothing
    set gg_trg_Orange_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Orange_Hero_Selection,gg_unit_n00P_0266,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Orange_Hero_Selection,gg_unit_halt_0257,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Orange_Hero_Selection,function Trig_Orange_Hero_Selection_Actions)
    endfunction