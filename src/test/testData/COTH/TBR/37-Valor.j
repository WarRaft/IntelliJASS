function Trig_Valor_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A05H'))then
    return false
    endif
    return true
    endfunction
    function Trig_Valor_Func010C takes nothing returns boolean
    if(not(udg_ValorStrength>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Valor_Actions takes nothing returns nothing
    set udg_ValorStrength=0
    call EnableTrigger(gg_trg_Valor_Bonus)
    call SetUnitVertexColorBJ(gg_unit_Nbbc_0485,100.00,50.00,50.00,0)
    call ModifyHeroStat(bj_HEROSTAT_STR,gg_unit_Nbbc_0485,bj_MODIFYMETHOD_ADD,((GetUnitAbilityLevelSwapped('A05H',gg_unit_Nbbc_0485)*10)+5))
    call PolledWait(30.00)
    call DisableTrigger(gg_trg_Valor_Bonus)
    set udg_BlackhandHealth=GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Nbbc_0485)
    call ModifyHeroStat(bj_HEROSTAT_STR,gg_unit_Nbbc_0485,bj_MODIFYMETHOD_SUB,((GetUnitAbilityLevelSwapped('A05H',gg_unit_Nbbc_0485)*10)+5))
    if(Trig_Valor_Func010C())then
    call ModifyHeroStat(bj_HEROSTAT_STR,gg_unit_Nbbc_0485,bj_MODIFYMETHOD_SUB,(udg_ValorStrength*((GetUnitAbilityLevelSwapped('A05H',gg_unit_Nbbc_0485)*2)+1)))
    else
    endif
    call SetUnitLifeBJ(gg_unit_Nbbc_0485,udg_BlackhandHealth)
    call SetUnitVertexColorBJ(gg_unit_Nbbc_0485,100.00,100.00,100.00,0)
    endfunction
    function InitTrig_Valor takes nothing returns nothing
    set gg_trg_Valor=CreateTrigger()
    call TriggerAddCondition(gg_trg_Valor,Condition(function Trig_Valor_Conditions))
    call TriggerAddAction(gg_trg_Valor,function Trig_Valor_Actions)
    endfunction