function Trig_Gray_Hero_Selection_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Harf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Gray_Hero_Selection_Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hart'))then
    return false
    endif
    return true
    endfunction
    function Trig_Gray_Hero_Selection_Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hmgd'))then
    return false
    endif
    return true
    endfunction
    function Trig_Gray_Hero_Selection_Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='H01S'))then
    return false
    endif
    return true
    endfunction
    function Trig_Gray_Hero_Selection_Actions takes nothing returns nothing
    if(Trig_Gray_Hero_Selection_Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Lordaeron_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_H01S_0510,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_H01S_0510,Player(8),true)
    call ShowUnitShow(gg_unit_H01S_0510)
    call TriggerRegisterUnitEvent(gg_trg_Alonsus_Starts,gg_unit_H01S_0510,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(8),92.00)
    else
    if(Trig_Gray_Hero_Selection_Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Lordaeron_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hmgd_0509,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hmgd_0509,Player(8),true)
    call ShowUnitShow(gg_unit_Hmgd_0509)
    call TriggerRegisterUnitEvent(gg_trg_Uther_Starts,gg_unit_Hmgd_0509,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterVariableEvent(gg_trg_Smite,"udg_Smite",EQUAL,1.00)
    call SetPlayerHandicapXPBJ(Player(8),99.00)
    else
    if(Trig_Gray_Hero_Selection_Func001Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Lordaeron_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hart_0504,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hart_0504,Player(8),true)
    call ShowUnitShow(gg_unit_Hart_0504)
    call TriggerRegisterUnitEvent(gg_trg_Tirion_Starts,gg_unit_Hart_0504,EVENT_UNIT_SPELL_EFFECT)
    call EnableTrigger(gg_trg_Invulerability_Remove)
    call SetPlayerHandicapXPBJ(Player(8),99.00)
    else
    if(Trig_Gray_Hero_Selection_Func001Func001Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Lordaeron_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Harf_0501,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Harf_0501,Player(8),true)
    call ShowUnitShow(gg_unit_Harf_0501)
    call TriggerRegisterUnitEvent(gg_trg_Turalyon_Starts,gg_unit_Harf_0501,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(8),99.00)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Gray_Hero_Selection takes nothing returns nothing
    set gg_trg_Gray_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Gray_Hero_Selection,gg_unit_n00P_0337,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Gray_Hero_Selection,gg_unit_n00T_0340,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Gray_Hero_Selection,function Trig_Gray_Hero_Selection_Actions)
    endfunction