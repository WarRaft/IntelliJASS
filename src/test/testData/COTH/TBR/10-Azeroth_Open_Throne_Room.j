function Trig_Azeroth_Open_Throne_Room_Func001Func007001001002001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Azeroth_Open_Throne_Room_Func001Func007001001002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Azeroth_Open_Throne_Room_Func001Func007001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Azeroth_Open_Throne_Room_Func001Func007001001002001(),Trig_Azeroth_Open_Throne_Room_Func001Func007001001002002())
    endfunction
    function Trig_Azeroth_Open_Throne_Room_Func001Func008C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04E'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_LTg1_0033)==true))then
    return false
    endif
    if(not(udg_AzerothThroneBreak[1]!=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Azeroth_Open_Throne_Room_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04C'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_LTg1_0033)==false))then
    return false
    endif
    if(not(CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_Azeroth_Throne_Gate,Condition(function Trig_Azeroth_Open_Throne_Room_Func001Func007001001002)))==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Azeroth_Open_Throne_Room_Actions takes nothing returns nothing
    if(Trig_Azeroth_Open_Throne_Room_Func001C())then
    call SetUnitInvulnerable(GetTriggerUnit(),false)
    call DisableTrigger(gg_trg_Azeroth_Throne_Gate_Life)
    set udg_AzerothThroneBreak[1]=GetDestructableLife(gg_dest_LTg1_0033)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN,gg_dest_LTg1_0033)
    else
    if(Trig_Azeroth_Open_Throne_Room_Func001Func008C())then
    call SetUnitInvulnerable(GetTriggerUnit(),true)
    call EnableTrigger(gg_trg_Azeroth_Throne_Gate_Life)
    call ModifyGateBJ(bj_GATEOPERATION_CLOSE,gg_dest_LTg1_0033)
    call SetDestructableLife(gg_dest_LTg1_0033,udg_AzerothThroneBreak[1])
    else
    endif
    endif
    endfunction
    function InitTrig_Azeroth_Open_Throne_Room takes nothing returns nothing
    set gg_trg_Azeroth_Open_Throne_Room=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Azeroth_Open_Throne_Room,gg_unit_h001_0138,EVENT_UNIT_SPELL_CAST)
    call TriggerAddAction(gg_trg_Azeroth_Open_Throne_Room,function Trig_Azeroth_Open_Throne_Room_Actions)
    endfunction