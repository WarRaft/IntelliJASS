function Trig_Shade_Death_Conditions takes nothing returns boolean
    if(not(GetUnitTypeId(GetDyingUnit())=='ushd'))then
    return false
    endif
    return true
    endfunction
    function Trig_Shade_Death_Actions takes nothing returns nothing
    set udg_Shade=(udg_Shade-1)
    endfunction
    function InitTrig_Shade_Death takes nothing returns nothing
    set gg_trg_Shade_Death=CreateTrigger()
    call DisableTrigger(gg_trg_Shade_Death)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Shade_Death,Player(4),EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Shade_Death,Condition(function Trig_Shade_Death_Conditions))
    call TriggerAddAction(gg_trg_Shade_Death,function Trig_Shade_Death_Actions)
    endfunction