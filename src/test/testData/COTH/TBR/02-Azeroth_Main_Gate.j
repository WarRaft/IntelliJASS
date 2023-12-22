function Trig_Azeroth_Main_Gate_Func001Func007001001002001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Azeroth_Main_Gate_Func001Func007001001002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Azeroth_Main_Gate_Func001Func007001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Azeroth_Main_Gate_Func001Func007001001002001(),Trig_Azeroth_Main_Gate_Func001Func007001001002002())
    endfunction
    function Trig_Azeroth_Main_Gate_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04C'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_LTg3_0032)==false))then
    return false
    endif
    if(not(CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_Azeroth_Main_Gate,Condition(function Trig_Azeroth_Main_Gate_Func001Func007001001002)))==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Azeroth_Main_Gate_Func002Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04E'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_LTg3_0139)==true))then
    return false
    endif
    if(not(udg_AzerothMainbreakLower[1]!=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Azeroth_Main_Gate_Func002Func002C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04E'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_LTg3_0032)==true))then
    return false
    endif
    if(not(udg_AzerothMainbreak[1]!=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Azeroth_Main_Gate_Func002Func009001001002001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Azeroth_Main_Gate_Func002Func009001001002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Azeroth_Main_Gate_Func002Func009001001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Azeroth_Main_Gate_Func002Func009001001002001(),Trig_Azeroth_Main_Gate_Func002Func009001001002002())
    endfunction
    function Trig_Azeroth_Main_Gate_Func002C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04C'))then
    return false
    endif
    if(not(IsDestructableDeadBJ(gg_dest_LTg3_0139)==false))then
    return false
    endif
    if(not(CountUnitsInGroup(GetUnitsInRectMatching(gg_rct_Azeroth_Main_Gate,Condition(function Trig_Azeroth_Main_Gate_Func002Func009001001002)))==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Azeroth_Main_Gate_Actions takes nothing returns nothing
    if(Trig_Azeroth_Main_Gate_Func001C())then
    call SetUnitInvulnerable(GetTriggerUnit(),false)
    call DisableTrigger(gg_trg_Azeroth_Main_Gate_Life_Upper)
    set udg_AzerothMainbreak[1]=GetDestructableLife(gg_dest_LTg3_0032)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN,gg_dest_LTg3_0032)
    else
    endif
    if(Trig_Azeroth_Main_Gate_Func002C())then
    call SetUnitInvulnerable(GetTriggerUnit(),false)
    call DisableTrigger(gg_trg_Azeroth_Main_Gate_Life_Lower)
    set udg_AzerothMainbreakLower[1]=GetDestructableLife(gg_dest_LTg3_0139)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN,gg_dest_LTg3_0139)
    else
    if(Trig_Azeroth_Main_Gate_Func002Func001C())then
    call SetUnitInvulnerable(GetTriggerUnit(),true)
    call EnableTrigger(gg_trg_Azeroth_Main_Gate_Life_Lower)
    call ModifyGateBJ(bj_GATEOPERATION_CLOSE,gg_dest_LTg3_0139)
    call SetDestructableLife(gg_dest_LTg3_0139,udg_AzerothMainbreakLower[1])
    else
    endif
    if(Trig_Azeroth_Main_Gate_Func002Func002C())then
    call SetUnitInvulnerable(GetTriggerUnit(),true)
    call EnableTrigger(gg_trg_Azeroth_Main_Gate_Life_Upper)
    call ModifyGateBJ(bj_GATEOPERATION_CLOSE,gg_dest_LTg3_0032)
    call SetDestructableLife(gg_dest_LTg3_0032,udg_AzerothMainbreak[1])
    else
    endif
    endif
    endfunction
    function InitTrig_Azeroth_Main_Gate takes nothing returns nothing
    set gg_trg_Azeroth_Main_Gate=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Azeroth_Main_Gate,gg_unit_h001_0119,EVENT_UNIT_SPELL_CAST)
    call TriggerAddAction(gg_trg_Azeroth_Main_Gate,function Trig_Azeroth_Main_Gate_Actions)
    endfunction