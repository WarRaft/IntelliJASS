function Trig_Lordaeron_Zepplin_Func001001 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='nzep')
    endfunction
    function Trig_Lordaeron_Zepplin_Func001002 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='uarb')
    endfunction
    function Trig_Lordaeron_Zepplin_Conditions takes nothing returns boolean
    if(not GetBooleanOr(Trig_Lordaeron_Zepplin_Func001001(),Trig_Lordaeron_Zepplin_Func001002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Lordaeron_Zepplin_Func004002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bchd')==true)
    endfunction
    function Trig_Lordaeron_Zepplin_Func005002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Lordaeron_Zepplin_Actions takes nothing returns nothing
    call PolledWait(0.50)
    call KillUnit(GetTriggerUnit())
    set udg_Temp_UnitGroup=GetUnitsInRectMatching(gg_rct_Lordaeron_Zepplin,Condition(function Trig_Lordaeron_Zepplin_Func004002002))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Lordaeron_Zepplin_Func005002)
    call DestroyGroup(udg_Temp_UnitGroup)
    endfunction
    function InitTrig_Lordaeron_Zepplin takes nothing returns nothing
    set gg_trg_Lordaeron_Zepplin=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Lordaeron_Zepplin,gg_rct_Lordaeron_Zepplin)
    call TriggerAddCondition(gg_trg_Lordaeron_Zepplin,Condition(function Trig_Lordaeron_Zepplin_Conditions))
    call TriggerAddAction(gg_trg_Lordaeron_Zepplin,function Trig_Lordaeron_Zepplin_Actions)
    endfunction