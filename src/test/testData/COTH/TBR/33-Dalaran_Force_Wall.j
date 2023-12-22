function Trig_Dalaran_Force_Wall_Func001Func003001001002001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Dalaran_Force_Wall_Func001Func003001001002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Dalaran_Force_Wall_Func001Func003001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dalaran_Force_Wall_Func001Func003001001002001(),Trig_Dalaran_Force_Wall_Func001Func003001001002002())
    endfunction
    function Trig_Dalaran_Force_Wall_Func001Func004C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04E'))then
    return false
    endif
    return true
    endfunction
    function Trig_Dalaran_Force_Wall_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04C'))then
    return false
    endif
    if(not(CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_Force_Wall,Condition(function Trig_Dalaran_Force_Wall_Func001Func003001001002)))==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Dalaran_Force_Wall_Actions takes nothing returns nothing
    if(Trig_Dalaran_Force_Wall_Func001C())then
    call ModifyGateBJ(bj_GATEOPERATION_OPEN,gg_dest_Dofv_1589)
    else
    if(Trig_Dalaran_Force_Wall_Func001Func004C())then
    call ModifyGateBJ(bj_GATEOPERATION_CLOSE,gg_dest_Dofv_1589)
    else
    endif
    endif
    endfunction
    function InitTrig_Dalaran_Force_Wall takes nothing returns nothing
    set gg_trg_Dalaran_Force_Wall=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Dalaran_Force_Wall,gg_unit_h01Y_0213,EVENT_UNIT_SPELL_CAST)
    call TriggerAddAction(gg_trg_Dalaran_Force_Wall,function Trig_Dalaran_Force_Wall_Actions)
    endfunction