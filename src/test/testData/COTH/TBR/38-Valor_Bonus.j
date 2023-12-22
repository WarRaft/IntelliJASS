function Trig_Valor_Bonus_Conditions takes nothing returns boolean
    if(not(GetKillingUnitBJ()==gg_unit_Nbbc_0485))then
    return false
    endif
    return true
    endfunction
    function Trig_Valor_Bonus_Func001C takes nothing returns boolean
    if(not(udg_ValorStrength<8))then
    return false
    endif
    return true
    endfunction
    function Trig_Valor_Bonus_Actions takes nothing returns nothing
    if(Trig_Valor_Bonus_Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_STR,gg_unit_Nbbc_0485,bj_MODIFYMETHOD_ADD,((GetUnitAbilityLevelSwapped('A05H',gg_unit_Nbbc_0485)*2)+1))
    set udg_ValorStrength=(udg_ValorStrength+1)
    else
    endif
    endfunction
    function InitTrig_Valor_Bonus takes nothing returns nothing
    set gg_trg_Valor_Bonus=CreateTrigger()
    call DisableTrigger(gg_trg_Valor_Bonus)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Valor_Bonus,Player(0),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Valor_Bonus,Player(1),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Valor_Bonus,Player(2),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Valor_Bonus,Player(3),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Valor_Bonus,Player(5),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Valor_Bonus,Player(6),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Valor_Bonus,Player(7),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Valor_Bonus,Player(8),EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Valor_Bonus,Condition(function Trig_Valor_Bonus_Conditions))
    call TriggerAddAction(gg_trg_Valor_Bonus,function Trig_Valor_Bonus_Actions)
    endfunction