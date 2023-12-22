function Trig_Refuge_Zone_1_Func001C takes nothing returns boolean
    if(not(IsUnitAlly(GetTriggerUnit(),Player(4))==true))then
    return false
    endif
    if(not(IsUnitType(GetTriggerUnit(),UNIT_TYPE_GROUND)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Refuge_Zone_1_Actions takes nothing returns nothing
    if(Trig_Refuge_Zone_1_Func001C())then
    call KillUnit(GetTriggerUnit())
    else
    endif
    endfunction
    function InitTrig_Refuge_Zone_1 takes nothing returns nothing
    set gg_trg_Refuge_Zone_1=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Refuge_Zone_1,gg_rct_Refuge_Zone_1)
    call TriggerAddAction(gg_trg_Refuge_Zone_1,function Trig_Refuge_Zone_1_Actions)
    endfunction