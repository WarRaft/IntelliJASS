function Trig_Map_Edge_Conditions takes nothing returns boolean
    if(not(IsUnitType(GetTriggerUnit(),UNIT_TYPE_FLYING)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Map_Edge_Actions takes nothing returns nothing
    call KillUnit(GetTriggerUnit())
    endfunction
    function InitTrig_Map_Edge takes nothing returns nothing
    set gg_trg_Map_Edge=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Map_Edge,gg_rct_Map_Edge_North)
    call TriggerRegisterEnterRectSimple(gg_trg_Map_Edge,gg_rct_Map_Edge_South)
    call TriggerRegisterEnterRectSimple(gg_trg_Map_Edge,gg_rct_Map_Edge_East)
    call TriggerRegisterEnterRectSimple(gg_trg_Map_Edge,gg_rct_Map_Edge_West)
    call TriggerAddCondition(gg_trg_Map_Edge,Condition(function Trig_Map_Edge_Conditions))
    call TriggerAddAction(gg_trg_Map_Edge,function Trig_Map_Edge_Actions)
    endfunction