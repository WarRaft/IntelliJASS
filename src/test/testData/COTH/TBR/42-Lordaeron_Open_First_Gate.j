function Trig_Lordaeron_Open_First_Gate_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04E'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_LTg3_1293)==true))then
    return false
    endif
    if(not(udg_LordaeronFirstBreak[1]!=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Lordaeron_Open_First_Gate_Func001Func008001001002001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Lordaeron_Open_First_Gate_Func001Func008001001002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Lordaeron_Open_First_Gate_Func001Func008001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Lordaeron_Open_First_Gate_Func001Func008001001002001(),Trig_Lordaeron_Open_First_Gate_Func001Func008001001002002())
    endfunction
    function Trig_Lordaeron_Open_First_Gate_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04C'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_LTg3_1293)==false))then
    return false
    endif
    if(not(CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_Lordaeron_First_Gate,Condition(function Trig_Lordaeron_Open_First_Gate_Func001Func008001001002)))==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Lordaeron_Open_First_Gate_Actions takes nothing returns nothing
    if(Trig_Lordaeron_Open_First_Gate_Func001C())then
    call SetUnitInvulnerable(GetTriggerUnit(),false)
    call DisableTrigger(gg_trg_Lordaeron_First_Gate_Life)
    set udg_LordaeronFirstBreak[1]=GetDestructableLife(gg_dest_LTg3_1293)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN,gg_dest_LTg3_1293)
    else
    if(Trig_Lordaeron_Open_First_Gate_Func001Func001C())then
    call SetUnitInvulnerable(GetTriggerUnit(),true)
    call EnableTrigger(gg_trg_Lordaeron_First_Gate_Life)
    call ModifyGateBJ(bj_GATEOPERATION_CLOSE,gg_dest_LTg3_1293)
    call SetDestructableLife(gg_dest_LTg3_1293,udg_LordaeronFirstBreak[1])
    else
    endif
    endif
    endfunction
    function InitTrig_Lordaeron_Open_First_Gate takes nothing returns nothing
    set gg_trg_Lordaeron_Open_First_Gate=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Lordaeron_Open_First_Gate,gg_unit_h001_0351,EVENT_UNIT_SPELL_CAST)
    call TriggerAddAction(gg_trg_Lordaeron_Open_First_Gate,function Trig_Lordaeron_Open_First_Gate_Actions)
    endfunction