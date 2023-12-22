function Trig_Khaz_Modan_Zepplin_Func006001 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='nzep')
    endfunction
    function Trig_Khaz_Modan_Zepplin_Func006002 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='uarb')
    endfunction
    function Trig_Khaz_Modan_Zepplin_Conditions takes nothing returns boolean
    if(not GetBooleanOr(Trig_Khaz_Modan_Zepplin_Func006001(),Trig_Khaz_Modan_Zepplin_Func006002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Khaz_Modan_Zepplin_Func003002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bchd')==true)
    endfunction
    function Trig_Khaz_Modan_Zepplin_Func004002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Khaz_Modan_Zepplin_Actions takes nothing returns nothing
    call PolledWait(0.50)
    call KillUnit(GetTriggerUnit())
    set udg_Temp_UnitGroup=GetUnitsInRectMatching(gg_rct_Dwarven_Zepplin,Condition(function Trig_Khaz_Modan_Zepplin_Func003002002))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Khaz_Modan_Zepplin_Func004002)
    call DestroyGroup(udg_Temp_UnitGroup)
    endfunction
    function InitTrig_Khaz_Modan_Zepplin takes nothing returns nothing
    set gg_trg_Khaz_Modan_Zepplin=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Khaz_Modan_Zepplin,gg_rct_Dwarven_Zepplin)
    call TriggerAddCondition(gg_trg_Khaz_Modan_Zepplin,Condition(function Trig_Khaz_Modan_Zepplin_Conditions))
    call TriggerAddAction(gg_trg_Khaz_Modan_Zepplin,function Trig_Khaz_Modan_Zepplin_Actions)
    endfunction