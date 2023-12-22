function Trig_Judgement_Conditions takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'Bmil')==true))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttacker(),'Bspl')==true))then
    return false
    endif
    if(not(IsUnitInGroup(GetAttacker(),udg_StopGroup)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Judgement_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetAttacker())
    set udg_TempPoint2=GetUnitLoc(GetAttackedUnitBJ())
    set udg_JudgementInt=R2I(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2))
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call PolledWait(((I2R(udg_JudgementInt)/ 1100.00)+0.35))
    call UnitDamageTargetBJ(GetAttacker(),GetAttackedUnitBJ(),((15.00*I2R(GetUnitAbilityLevelSwapped('A033',gg_unit_Edem_0550)))+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,gg_unit_Edem_0550)*0.015)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    endfunction
    function InitTrig_Judgement takes nothing returns nothing
    set gg_trg_Judgement=CreateTrigger()
    call DisableTrigger(gg_trg_Judgement)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Judgement,Player(4),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Judgement,Player(9),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Judgement,Player(10),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Judgement,Player(11),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Judgement,Condition(function Trig_Judgement_Conditions))
    call TriggerAddAction(gg_trg_Judgement,function Trig_Judgement_Actions)
    endfunction