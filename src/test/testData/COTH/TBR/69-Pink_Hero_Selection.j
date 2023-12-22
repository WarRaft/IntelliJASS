function Trig_Pink_Hero_Selection_Func001Func001Func002Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Nalc'))then
    return false
    endif
    return true
    endfunction
    function Trig_Pink_Hero_Selection_Func001Func001Func002C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hvsh'))then
    return false
    endif
    return true
    endfunction
    function Trig_Pink_Hero_Selection_Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='H018'))then
    return false
    endif
    return true
    endfunction
    function Trig_Pink_Hero_Selection_Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hpb2'))then
    return false
    endif
    return true
    endfunction
    function Trig_Pink_Hero_Selection_Actions takes nothing returns nothing
    if(Trig_Pink_Hero_Selection_Func001C())then
    set udg_Greymane=GetTrainedUnit()
    set GennUnit = udg_Greymane
    call TriggerRegisterUnitEvent(gg_trg_Greymane_Starts,udg_Greymane,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(7),99.00)
    else
    if(Trig_Pink_Hero_Selection_Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_GIlneas_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_H018_0506,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_H018_0506,Player(7),true)
    call ShowUnitShow(gg_unit_H018_0506)
    call TriggerRegisterUnitEvent(gg_trg_Gavinrad_Starts,gg_unit_H018_0506,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Sanctuary,gg_unit_H018_0506,EVENT_UNIT_SPELL_EFFECT)
    call EnableTrigger(gg_trg_Invulerability_Remove)
    call SetPlayerHandicapXPBJ(Player(7),99.00)
    else
    if(Trig_Pink_Hero_Selection_Func001Func001Func002C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_GIlneas_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hvsh_0480,udg_TempPoint)
    call PlaySoundAtPointBJ(gg_snd_KelThuzadWhat3,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hvsh_0480,Player(7),true)
    call ShowUnitShow(gg_unit_Hvsh_0480)
    call TriggerRegisterUnitEvent(gg_trg_Arugal_Starts,gg_unit_Hvsh_0480,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Corpse_Explosion_Begin,gg_unit_Hvsh_0480,EVENT_UNIT_SPELL_CAST)
    call TriggerRegisterUnitEvent(gg_trg_Corpse_Explosion_Reset,gg_unit_Hvsh_0480,EVENT_UNIT_SPELL_FINISH)
    call SetPlayerHandicapXPBJ(Player(7),92.00)
    else
    if(Trig_Pink_Hero_Selection_Func001Func001Func002Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_GIlneas_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Nalc_0495,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Nalc_0495,Player(7),true)
    call ShowUnitShow(gg_unit_Nalc_0495)
    call TriggerRegisterUnitEvent(gg_trg_Darius_Starts,gg_unit_Nalc_0495,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Battle_Primed_Start,gg_unit_Nalc_0495,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(7),99.00)
    call UnitAddAbilityBJ('A0FI',gg_unit_o008_0533)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Pink_Hero_Selection takes nothing returns nothing
    set gg_trg_Pink_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Pink_Hero_Selection,gg_unit_n00P_0298,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Pink_Hero_Selection,gg_unit_n00S_0289,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Pink_Hero_Selection,function Trig_Pink_Hero_Selection_Actions)
    endfunction