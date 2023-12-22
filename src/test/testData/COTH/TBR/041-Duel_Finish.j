function Trig_Duel_Finish_Func003C takes nothing returns boolean
    if(not(UnitHasBuffBJ(udg_DuelTarget,'B03N')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(udg_DuelTarget,'B01E')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Duel_Finish_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Duel_Target_Damage)
    call PolledWait(0.50)
    if(Trig_Duel_Finish_Func003C())then
    call UnitDamageTargetBJ(gg_unit_Emoo_0488,udg_DuelTarget,((udg_DuelDamage*(0.20+(0.10*I2R(GetUnitAbilityLevelSwapped('A02F',gg_unit_Emoo_0488)))))/ 2.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_Emoo_0488,udg_DuelTarget,((udg_DuelDamage*(0.20+(0.10*I2R(GetUnitAbilityLevelSwapped('A02F',gg_unit_Emoo_0488)))))/ 2.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    set udg_TempPoint=GetUnitLoc(gg_unit_Emoo_0488)
    call CreateTextTagLocBJ((I2S(R2I((udg_DuelDamage*(0.20+(0.10*I2R(GetUnitAbilityLevelSwapped('A02F',gg_unit_Emoo_0488)))))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    else
    endif
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Duel_Mishan_Damage)
    set udg_DuelTarget=null
    endfunction
    function InitTrig_Duel_Finish takes nothing returns nothing
    set gg_trg_Duel_Finish=CreateTrigger()
    call DisableTrigger(gg_trg_Duel_Finish)
    call TriggerRegisterVariableEvent(gg_trg_Duel_Finish,"udg_DuelCounter",EQUAL,4.00)
    call TriggerAddAction(gg_trg_Duel_Finish,function Trig_Duel_Finish_Actions)
    endfunction