function Trig_Refuge_Zepplin_Func001Func003002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bchd')==true)
    endfunction
    function Trig_Refuge_Zepplin_Func001Func004002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Refuge_Zepplin_Func001Func006C takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit())=='uarb'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='nzep'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='nbwm'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='n001'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='n002'))then
    return true
    endif
    return false
    endfunction
    function Trig_Refuge_Zepplin_Func001C takes nothing returns boolean
    if(not Trig_Refuge_Zepplin_Func001Func006C())then
    return false
    endif
    return true
    endfunction
    function Trig_Refuge_Zepplin_Actions takes nothing returns nothing
    if(Trig_Refuge_Zepplin_Func001C())then
    call PolledWait(0.50)
    call KillUnit(GetTriggerUnit())
    set udg_Temp_UnitGroup=GetUnitsInRectMatching(gg_rct_Refuge_Zepplin,Condition(function Trig_Refuge_Zepplin_Func001Func003002002))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Refuge_Zepplin_Func001Func004002)
    call DestroyGroup(udg_Temp_UnitGroup)
    else
    endif
    endfunction
    function InitTrig_Refuge_Zepplin takes nothing returns nothing
    set gg_trg_Refuge_Zepplin=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Refuge_Zepplin,gg_rct_Refuge_Zepplin)
    call TriggerAddAction(gg_trg_Refuge_Zepplin,function Trig_Refuge_Zepplin_Actions)
    endfunction