function Trig_Kul_Tiras_Zepplin_Early_Func006001 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='nzep')
    endfunction
    function Trig_Kul_Tiras_Zepplin_Early_Func006002 takes nothing returns boolean
    return(GetUnitTypeId(GetTriggerUnit())=='uarb')
    endfunction
    function Trig_Kul_Tiras_Zepplin_Early_Conditions takes nothing returns boolean
    if(not GetBooleanOr(Trig_Kul_Tiras_Zepplin_Early_Func006001(),Trig_Kul_Tiras_Zepplin_Early_Func006002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Kul_Tiras_Zepplin_Early_Func003002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bchd')==true)
    endfunction
    function Trig_Kul_Tiras_Zepplin_Early_Func004002 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
    endfunction
    function Trig_Kul_Tiras_Zepplin_Early_Actions takes nothing returns nothing
    call PolledWait(0.50)
    call KillUnit(GetTriggerUnit())
    set udg_Temp_UnitGroup=GetUnitsInRectMatching(gg_rct_Early_Kul_Tiras_Zeppelin,Condition(function Trig_Kul_Tiras_Zepplin_Early_Func003002002))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Kul_Tiras_Zepplin_Early_Func004002)
    call DestroyGroup(udg_Temp_UnitGroup)
    endfunction
    function InitTrig_Kul_Tiras_Zepplin_Early takes nothing returns nothing
    set gg_trg_Kul_Tiras_Zepplin_Early=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Kul_Tiras_Zepplin_Early,gg_rct_Early_Kul_Tiras_Zeppelin)
    call TriggerAddCondition(gg_trg_Kul_Tiras_Zepplin_Early,Condition(function Trig_Kul_Tiras_Zepplin_Early_Conditions))
    call TriggerAddAction(gg_trg_Kul_Tiras_Zepplin_Early,function Trig_Kul_Tiras_Zepplin_Early_Actions)
    endfunction