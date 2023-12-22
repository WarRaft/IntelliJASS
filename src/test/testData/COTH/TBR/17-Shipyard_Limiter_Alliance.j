function Trig_Shipyard_Limiter_Alliance_Func001Func001C takes nothing returns boolean
    if((GetUnitTypeId(GetConstructingStructure())=='hshy'))then
    return true
    endif
    if((GetUnitTypeId(GetConstructingStructure())=='eshy'))then
    return true
    endif
    if((GetUnitTypeId(GetConstructingStructure())=='h004'))then
    return true
    endif
    return false
    endfunction
    function Trig_Shipyard_Limiter_Alliance_Func001Func002Func001001001 takes nothing returns boolean
    return(GetOwningPlayer(GetConstructingStructure())==GetFilterPlayer())
    endfunction
    function Trig_Shipyard_Limiter_Alliance_Func001Func002Func004C takes nothing returns boolean
    if((RectContainsUnit(gg_rct_Lordaeron_Shipyard_1,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Lordaeron_Shipyard_2,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Lordaeron_Shipyard_3,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_QuelThalas_Shipyard,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Stromgarde_Shipyard_1,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Stromgarde_Shipyard_2,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Stormwind_Shipyard,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_DG_Shipyard_1,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_DG_Shipyard_2,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Gilneas_Shipyard_1,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Gilneas_Shipyard_2,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Thandol_Span_East_Shipyard,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Thandol_Span_West_Shipyard,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Blackrock_Shipyard,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Kul_Tiras_Upper_Shipyard,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Kul_Tiras_Lower_Shipyard,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Kul_Tiras_Lower_Shipyard_2,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Hillsbrad_Shipyard_1,GetConstructingStructure())==true))then
    return true
    endif
    if((RectContainsUnit(gg_rct_Hillsbrad_Shipyard_2,GetConstructingStructure())==true))then
    return true
    endif
    return false
    endfunction
    function Trig_Shipyard_Limiter_Alliance_Func001Func002C takes nothing returns boolean
    if(not Trig_Shipyard_Limiter_Alliance_Func001Func002Func004C())then
    return false
    endif
    return true
    endfunction
    function Trig_Shipyard_Limiter_Alliance_Func001C takes nothing returns boolean
    if(not Trig_Shipyard_Limiter_Alliance_Func001Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Shipyard_Limiter_Alliance_Actions takes nothing returns nothing
    if(Trig_Shipyard_Limiter_Alliance_Func001C())then
    if(Trig_Shipyard_Limiter_Alliance_Func001Func002C())then
    else
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Shipyard_Limiter_Alliance_Func001Func002Func001001001)),"|c00FFD700You may only build Shipyards on beaches.|r ")
    call RemoveUnit(GetConstructingStructure())
    call AdjustPlayerStateBJ(250,GetTriggerPlayer(),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    endif
    endfunction
    function InitTrig_Shipyard_Limiter_Alliance takes nothing returns nothing
    set gg_trg_Shipyard_Limiter_Alliance=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Shipyard_Limiter_Alliance,Player(0),EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Shipyard_Limiter_Alliance,Player(1),EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Shipyard_Limiter_Alliance,Player(2),EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Shipyard_Limiter_Alliance,Player(6),EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Shipyard_Limiter_Alliance,Player(7),EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Shipyard_Limiter_Alliance,Player(8),EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerAddAction(gg_trg_Shipyard_Limiter_Alliance,function Trig_Shipyard_Limiter_Alliance_Actions)
    endfunction