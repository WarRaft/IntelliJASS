function Trig_Burning_Blade_Color_Conditions takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='otau'))then
    return false
    endif
    return true
    endfunction
    function Trig_Burning_Blade_Color_Actions takes nothing returns nothing
    call SetUnitColor(GetTrainedUnit(),PLAYER_COLOR_ORANGE)
    endfunction
    function InitTrig_Burning_Blade_Color takes nothing returns nothing
    set gg_trg_Burning_Blade_Color=CreateTrigger()
    call DisableTrigger(gg_trg_Burning_Blade_Color)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Burning_Blade_Color,Player(11),EVENT_PLAYER_UNIT_TRAIN_FINISH)
    call TriggerAddCondition(gg_trg_Burning_Blade_Color,Condition(function Trig_Burning_Blade_Color_Conditions))
    call TriggerAddAction(gg_trg_Burning_Blade_Color,function Trig_Burning_Blade_Color_Actions)
    endfunction