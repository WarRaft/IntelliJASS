function Trig_Thandol_Span_West_to_East_Func003C takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit())=='etrs'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='hbot'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='edes'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='hdes'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='ebsh'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='hbsh'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='uubs'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='h00L'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='h00O'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='obot'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='odes'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='ojgn'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='h00M'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='udes'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='ubot'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='o014'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='hwat'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='hwt2'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='hwt3'))then
    return true
    endif
    return false
    endfunction
    function Trig_Thandol_Span_West_to_East_Conditions takes nothing returns boolean
    if(not Trig_Thandol_Span_West_to_East_Func003C())then
    return false
    endif
    return true
    endfunction
    function Trig_Thandol_Span_West_to_East_Actions takes nothing returns nothing
    call SelectUnitRemove(GetTriggerUnit())
    set udg_TempPoint=GetRandomLocInRect(gg_rct_Thandol_Span_East_Reciever)
    call SetUnitPositionLoc(GetTriggerUnit(),udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call IssueImmediateOrder(GetTriggerUnit(),"stop")
    endfunction
    function InitTrig_Thandol_Span_West_to_East takes nothing returns nothing
    set gg_trg_Thandol_Span_West_to_East=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Thandol_Span_West_to_East,gg_rct_Thandol_Span_West_Teleport)
    call TriggerAddCondition(gg_trg_Thandol_Span_West_to_East,Condition(function Trig_Thandol_Span_West_to_East_Conditions))
    call TriggerAddAction(gg_trg_Thandol_Span_West_to_East,function Trig_Thandol_Span_West_to_East_Actions)
    endfunction