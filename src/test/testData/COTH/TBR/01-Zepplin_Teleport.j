function Trig_Zepplin_Teleport_Func002001 takes nothing returns boolean
    return(GetUnitTypeId(GetTransportUnitBJ())=='nzep')
    endfunction
    function Trig_Zepplin_Teleport_Func002002 takes nothing returns boolean
    return(GetUnitTypeId(GetTransportUnitBJ())=='uarb')
    endfunction
    function Trig_Zepplin_Teleport_Conditions takes nothing returns boolean
    if(not GetBooleanOr(Trig_Zepplin_Teleport_Func002001(),Trig_Zepplin_Teleport_Func002002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Zepplin_Teleport_Func001Func001Func003C takes nothing returns boolean
    if(not(GetTriggerUnit()==gg_unit_Nsjs_0498))then
    return false
    endif
    return true
    endfunction
    function Trig_Zepplin_Teleport_Func001Func001C takes nothing returns boolean
    if(not(GetTriggerUnit()==gg_unit_Nbbc_0485))then
    return false
    endif
    return true
    endfunction
    function Trig_Zepplin_Teleport_Func001C takes nothing returns boolean
    if(not(IsUnitIdType(GetUnitTypeId(GetLoadedUnitBJ()),UNIT_TYPE_HERO)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Zepplin_Teleport_Actions takes nothing returns nothing
    if(Trig_Zepplin_Teleport_Func001C())then
    call UnitAddTypeBJ(UNIT_TYPE_SAPPER,GetLoadedUnitBJ())
    else
    if(Trig_Zepplin_Teleport_Func001Func001C())then
    call UnitRemoveBuffBJ('BNpm',gg_unit_Nbbc_0485)
    call UnitRemoveBuffBJ('B04F',gg_unit_Nbbc_0485)
    else
    if(Trig_Zepplin_Teleport_Func001Func001Func003C())then
    call UnitRemoveBuffBJ('B01E',gg_unit_Nsjs_0498)
    call UnitRemoveAbilityBJ('A05E',gg_unit_Nsjs_0498)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Zepplin_Teleport takes nothing returns nothing
    set gg_trg_Zepplin_Teleport=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Zepplin_Teleport,Player(4),EVENT_PLAYER_UNIT_LOADED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Zepplin_Teleport,Player(9),EVENT_PLAYER_UNIT_LOADED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Zepplin_Teleport,Player(10),EVENT_PLAYER_UNIT_LOADED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Zepplin_Teleport,Player(11),EVENT_PLAYER_UNIT_LOADED)
    call TriggerAddCondition(gg_trg_Zepplin_Teleport,Condition(function Trig_Zepplin_Teleport_Conditions))
    call TriggerAddAction(gg_trg_Zepplin_Teleport,function Trig_Zepplin_Teleport_Actions)
    endfunction