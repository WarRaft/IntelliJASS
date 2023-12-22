function Trig_Green_Hero_Selection_Func001Func007Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hamg'))then
    return false
    endif
    return true
    endfunction
    function Trig_Green_Hero_Selection_Func001Func007Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hvwd'))then
    return false
    endif
    return true
    endfunction
    function Trig_Green_Hero_Selection_Func001Func007C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='H01Q'))then
    return false
    endif
    return true
    endfunction
    function Trig_Green_Hero_Selection_Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hkal'))then
    return false
    endif
    return true
    endfunction
    function Trig_Green_Hero_Selection_Actions takes nothing returns nothing
    if(Trig_Green_Hero_Selection_Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Silvermoon_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hkal_0491,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hkal_0491,Player(6),true)
    call ShowUnitShow(gg_unit_Hkal_0491)
    call TriggerRegisterUnitEvent(gg_trg_Anasterian_Starts,gg_unit_Hkal_0491,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Warmth,gg_unit_Hkal_0491,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(6),92.00)
    else
    if(Trig_Green_Hero_Selection_Func001Func007C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Silvermoon_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_H01Q_0521,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_H01Q_0521,Player(6),true)
    call ShowUnitShow(gg_unit_H01Q_0521)
    call TriggerRegisterUnitEvent(gg_trg_Lorthemar_Starts,gg_unit_H01Q_0521,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(6),99.00)
    else
    if(Trig_Green_Hero_Selection_Func001Func007Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Silvermoon_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hvwd_0525,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hvwd_0525,Player(6),true)
    call ShowUnitShow(gg_unit_Hvwd_0525)
    call TriggerRegisterUnitEvent(gg_trg_Alleria_Starts,gg_unit_Hvwd_0525,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Split_Shot_Off,gg_unit_Hvwd_0525,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(gg_trg_Split_Shot_On,gg_unit_Hvwd_0525,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(gg_trg_Split_Shot_Revive,gg_unit_Hvwd_0525,EVENT_UNIT_HERO_REVIVE_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Arrow_Storm_Cancel,gg_unit_Hvwd_0525,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerRegisterUnitEvent(gg_trg_Arrow_Storm_Cancel,gg_unit_Hvwd_0525,EVENT_UNIT_SPELL_FINISH)
    call SetPlayerHandicapXPBJ(Player(6),92.00)
    else
    if(Trig_Green_Hero_Selection_Func001Func007Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Silvermoon_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hamg_0499,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hamg_0499,Player(6),true)
    call ShowUnitShow(gg_unit_Hamg_0499)
    call TriggerRegisterUnitEvent(gg_trg_Sylvanas_Starts,gg_unit_Hamg_0499,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Trueshot,gg_unit_Hamg_0499,EVENT_UNIT_HERO_SKILL)
    call SetPlayerHandicapXPBJ(Player(6),92.00)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Green_Hero_Selection takes nothing returns nothing
    set gg_trg_Green_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Green_Hero_Selection,gg_unit_n00V_0272,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Green_Hero_Selection,gg_unit_n00P_0284,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Green_Hero_Selection,function Trig_Green_Hero_Selection_Actions)
    endfunction