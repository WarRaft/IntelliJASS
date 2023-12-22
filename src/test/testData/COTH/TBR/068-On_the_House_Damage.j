function Trig_On_the_House_Damage_Func014C takes nothing returns boolean
    if((UnitHasBuffBJ(GetAttackedUnitBJ(),'BPSE')==true))then
    return true
    endif
    if((UnitHasBuffBJ(GetAttackedUnitBJ(),'BSTN')==true))then
    return true
    endif
    if((UnitHasBuffBJ(GetAttackedUnitBJ(),'BNef')==true))then
    return true
    endif
    return false
    endfunction
    function Trig_On_the_House_Damage_Conditions takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetAttacker(),'BUcb')==true))then
    return false
    endif
    if(not(IsUnitInGroup(GetAttacker(),udg_StopGroup)==false))then
    return false
    endif
    if(not Trig_On_the_House_Damage_Func014C())then
    return false
    endif
    return true
    endfunction
    function Trig_On_the_House_Damage_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetAttacker())
    set udg_TempPoint2=GetUnitLoc(GetAttackedUnitBJ())
    set udg_OntheHouseint=R2I(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2))
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call PolledWait(((I2R(udg_OntheHouseint)/ 1100.00)+0.35))
    call UnitDamageTargetBJ(GetAttacker(),GetAttackedUnitBJ(),(I2R(GetUnitAbilityLevelSwapped('A08Y',gg_unit_Ucrl_0500))*10.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function InitTrig_On_the_House_Damage takes nothing returns nothing
    set gg_trg_On_the_House_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_On_the_House_Damage)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House_Damage,Player(4),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House_Damage,Player(9),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House_Damage,Player(10),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House_Damage,Player(11),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_On_the_House_Damage,Condition(function Trig_On_the_House_Damage_Conditions))
    call TriggerAddAction(gg_trg_On_the_House_Damage,function Trig_On_the_House_Damage_Actions)
    endfunction