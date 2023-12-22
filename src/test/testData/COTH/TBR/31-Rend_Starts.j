function Trig_Rend_Starts_Func001Func003001003001001001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Rend_Starts_Func001Func003001003001001002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Rend_Starts_Func001Func003001003001001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Rend_Starts_Func001Func003001003001001001(),Trig_Rend_Starts_Func001Func003001003001001002())
    endfunction
    function Trig_Rend_Starts_Func001Func003001003001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Rend_Starts_Func001Func003001003001002002001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
    endfunction
    function Trig_Rend_Starts_Func001Func003001003001002002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'BIsv')==false)
    endfunction
    function Trig_Rend_Starts_Func001Func003001003001002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Rend_Starts_Func001Func003001003001002002001(),Trig_Rend_Starts_Func001Func003001003001002002002())
    endfunction
    function Trig_Rend_Starts_Func001Func003001003001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Rend_Starts_Func001Func003001003001002001(),Trig_Rend_Starts_Func001Func003001003001002002())
    endfunction
    function Trig_Rend_Starts_Func001Func003001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Rend_Starts_Func001Func003001003001001(),Trig_Rend_Starts_Func001Func003001003001002())
    endfunction
    function Trig_Rend_Starts_Func001Func003001003002001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'BHds')==false)
    endfunction
    function Trig_Rend_Starts_Func001Func003001003002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Rend_Starts_Func001Func003001003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Rend_Starts_Func001Func003001003002001(),Trig_Rend_Starts_Func001Func003001003002002())
    endfunction
    function Trig_Rend_Starts_Func001Func003001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Rend_Starts_Func001Func003001003001(),Trig_Rend_Starts_Func001Func003001003002())
    endfunction
    function Trig_Rend_Starts_Func001Func003A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Nbst_0519,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0BT',gg_unit_Nbst_0519))*50.00)+20.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_Nbst_0519,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0BT',gg_unit_Nbst_0519))*50.00)+20.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    endfunction
    function Trig_Rend_Starts_Func001Func005C takes nothing returns boolean
    if(not(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())>((100.00*I2R(GetUnitAbilityLevelSwapped('A0BT',GetTriggerUnit())))+50.00)))then
    return false
    endif
    return true
    endfunction
    function Trig_Rend_Starts_Func001Func007Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A06H'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rend_Starts_Func001Func007C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A063'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rend_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0BT'))then
    return false
    endif
    return true
    endfunction
    function Trig_Rend_Starts_Actions takes nothing returns nothing
    if(Trig_Rend_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(GetSpellTargetUnit())
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(215.00,udg_TempPoint,Condition(function Trig_Rend_Starts_Func001Func003001003)),function Trig_Rend_Starts_Func001Func003A)
    call RemoveLocation(udg_TempPoint)
    if(Trig_Rend_Starts_Func001Func005C() or UnitHasBuffBJ(gg_unit_Nbst_0519, 'Bply'))then
    call UnitDamageTargetBJ(gg_unit_o00Q_0445,gg_unit_Nbst_0519,((100.00*I2R(GetUnitAbilityLevelSwapped('A0BT',gg_unit_Nbst_0519)))+40.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    else
    call SetUnitLifeBJ(GetTriggerUnit(),5.00)
    endif
    else
    if(Trig_Rend_Starts_Func001Func007C())then
    call EnableTrigger(gg_trg_Undying_Strength)
    call SetUnitVertexColorBJ(gg_unit_Nbst_0519,100.00,40.00,40.00,0)
    call PolledWait((1+I2R(GetUnitAbilityLevelSwapped('A063',gg_unit_Nbst_0519))))
    call DisableTrigger(gg_trg_Undying_Strength)
    call SetUnitVertexColorBJ(gg_unit_Nbst_0519,100.00,100.00,100.00,0)
    else
    if(Trig_Rend_Starts_Func001Func007Func001Func001C())then
    set udg_InnerRageTarget=GetSpellTargetUnit()
    call EnableTrigger(gg_trg_Inner_Rage)
    call PolledWait(15.00)
    call DisableTrigger(gg_trg_Inner_Rage)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Rend_Starts takes nothing returns nothing
    set gg_trg_Rend_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Rend_Starts,function Trig_Rend_Starts_Actions)
    endfunction