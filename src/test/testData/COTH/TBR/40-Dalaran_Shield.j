function Trig_Dalaran_Shield_Conditions takes nothing returns boolean
    if(not(IsUnitEnemy(GetTriggerUnit(),Player(3))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Dalaran_Shield_Actions takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_ndt2_0201,GetTriggerUnit(),10.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_NORMAL)
    endfunction
    function InitTrig_Dalaran_Shield takes nothing returns nothing
    set gg_trg_Dalaran_Shield=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Dalaran_Shield,gg_rct_Dalaran_Section_1)
    call TriggerAddCondition(gg_trg_Dalaran_Shield,Condition(function Trig_Dalaran_Shield_Conditions))
    call TriggerAddAction(gg_trg_Dalaran_Shield,function Trig_Dalaran_Shield_Actions)
    endfunction