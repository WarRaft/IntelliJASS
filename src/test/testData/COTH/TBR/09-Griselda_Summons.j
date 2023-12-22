function Trig_Griselda_Summons_Func001C takes nothing returns boolean
    if((GetUnitTypeId(GetSummonedUnit())=='nogr'))then
    return true
    endif
    if((GetUnitTypeId(GetSummonedUnit())=='nahy'))then
    return true
    endif
    if((GetUnitTypeId(GetSummonedUnit())=='nsqa'))then
    return true
    endif
    return false
    endfunction
    function Trig_Griselda_Summons_Conditions takes nothing returns boolean
    if(not Trig_Griselda_Summons_Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Summons_Actions takes nothing returns nothing
    set udg_TurokCount=1
    call SetUnitVertexColorBJ(GetSummonedUnit(),100,80.00,20.00,55.00)
    call SetUnitAbilityLevelSwapped('ACst',GetSummonedUnit(),GetUnitAbilityLevelSwapped('ACs8',gg_unit_Ekee_0528))
    call SetUnitAbilityLevelSwapped('A0DO',GetSummonedUnit(),GetUnitAbilityLevelSwapped('ACs8',gg_unit_Ekee_0528))
    set udg_TurokSpirit=GetSummonedUnit()
    endfunction
    function InitTrig_Griselda_Summons takes nothing returns nothing
    set gg_trg_Griselda_Summons=CreateTrigger()
    call TriggerAddCondition(gg_trg_Griselda_Summons,Condition(function Trig_Griselda_Summons_Conditions))
    call TriggerAddAction(gg_trg_Griselda_Summons,function Trig_Griselda_Summons_Actions)
    endfunction