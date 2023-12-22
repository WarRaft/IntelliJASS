function Trig_Northshire_Open_Gate_Func001Func003001001002001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Northshire_Open_Gate_Func001Func003001001002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Northshire_Open_Gate_Func001Func003001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Northshire_Open_Gate_Func001Func003001001002001(),Trig_Northshire_Open_Gate_Func001Func003001001002002())
    endfunction
    function Trig_Northshire_Open_Gate_Func001Func008C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04E'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_YTcx_0268)==true))then
    return false
    endif
    if(not(udg_NorthshireBreak[1]!=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Northshire_Open_Gate_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04C'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_YTcx_0268)==false))then
    return false
    endif
    if(not(CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_Northshire_Gate,Condition(function Trig_Northshire_Open_Gate_Func001Func003001001002)))==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Northshire_Open_Gate_Actions takes nothing returns nothing
    if(Trig_Northshire_Open_Gate_Func001C())then
    call SetUnitInvulnerable(GetTriggerUnit(),false)
    call DisableTrigger(gg_trg_Northshire_Gate_Life)
    set udg_NorthshireBreak[1]=GetDestructableLife(gg_dest_YTcx_0268)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN,gg_dest_YTcx_0268)
    else
    if(Trig_Northshire_Open_Gate_Func001Func008C())then
    call SetUnitInvulnerable(GetTriggerUnit(),true)
    call EnableTrigger(gg_trg_Northshire_Gate_Life)
    call ModifyGateBJ(bj_GATEOPERATION_CLOSE,gg_dest_YTcx_0268)
    call SetDestructableLife(gg_dest_YTcx_0268,udg_NorthshireBreak[1])
    else
    endif
    endif
    endfunction
    function InitTrig_Northshire_Open_Gate takes nothing returns nothing
    set gg_trg_Northshire_Open_Gate=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Northshire_Open_Gate,gg_unit_h001_0122,EVENT_UNIT_SPELL_CAST)
    call TriggerAddAction(gg_trg_Northshire_Open_Gate,function Trig_Northshire_Open_Gate_Actions)
    endfunction