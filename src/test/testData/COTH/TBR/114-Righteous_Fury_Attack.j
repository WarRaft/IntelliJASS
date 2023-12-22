function Trig_Righteous_Fury_Attack_Conditions takes nothing returns boolean
    if(not(GetUnitTypeId(GetAttacker())=='Harf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Righteous_Fury_Attack_Actions takes nothing returns nothing
    set udg_RighteousFury=(udg_RighteousFury+1)
    endfunction
    function InitTrig_Righteous_Fury_Attack takes nothing returns nothing
    set gg_trg_Righteous_Fury_Attack=CreateTrigger()
    call DisableTrigger(gg_trg_Righteous_Fury_Attack)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Righteous_Fury_Attack,Player(4),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Righteous_Fury_Attack,Player(9),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Righteous_Fury_Attack,Player(10),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Righteous_Fury_Attack,Player(11),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Righteous_Fury_Attack,Player(PLAYER_NEUTRAL_AGGRESSIVE),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Righteous_Fury_Attack,Condition(function Trig_Righteous_Fury_Attack_Conditions))
    call TriggerAddAction(gg_trg_Righteous_Fury_Attack,function Trig_Righteous_Fury_Attack_Actions)
    endfunction