function Trig_Azeroth_Zepplin_Func001001 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='nzep')
    endfunction
    function Trig_Azeroth_Zepplin_Func001002 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='uarb')
    endfunction
    function Trig_Azeroth_Zepplin_Conditions takes nothing returns boolean
    if(not GetBooleanOr(Trig_Azeroth_Zepplin_Func001001(),Trig_Azeroth_Zepplin_Func001002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Azeroth_Zepplin_Func004002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bchd')==true)
    endfunction
    function Trig_Azeroth_Zepplin_Func005002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Azeroth_Zepplin_Actions takes nothing returns nothing
    call PolledWait(0.50)
    call KillUnit(GetTriggerUnit())
    set udg_Temp_UnitGroup=GetUnitsInRectMatching(gg_rct_Azeroth_Zepplin,Condition(function Trig_Azeroth_Zepplin_Func004002002))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Azeroth_Zepplin_Func005002)
    call DestroyGroup(udg_Temp_UnitGroup)
    endfunction
    function InitTrig_Azeroth_Zepplin takes nothing returns nothing
    set gg_trg_Azeroth_Zepplin=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Azeroth_Zepplin,gg_rct_Azeroth_Zepplin)
    call TriggerAddCondition(gg_trg_Azeroth_Zepplin,Condition(function Trig_Azeroth_Zepplin_Conditions))
    call TriggerAddAction(gg_trg_Azeroth_Zepplin,function Trig_Azeroth_Zepplin_Actions)
    endfunction