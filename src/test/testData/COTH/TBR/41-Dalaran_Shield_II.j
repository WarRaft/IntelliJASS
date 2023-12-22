function Trig_Dalaran_Shield_II_Conditions takes nothing returns boolean
    if(not(IsUnitEnemy(GetTriggerUnit(),Player(3))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Dalaran_Shield_II_Actions takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_ndt2_0200,GetTriggerUnit(),10.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_NORMAL)
    endfunction
    function InitTrig_Dalaran_Shield_II takes nothing returns nothing
    set gg_trg_Dalaran_Shield_II=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Dalaran_Shield_II,gg_rct_Dalaran_Section_2)
    call TriggerAddCondition(gg_trg_Dalaran_Shield_II,Condition(function Trig_Dalaran_Shield_II_Conditions))
    call TriggerAddAction(gg_trg_Dalaran_Shield_II,function Trig_Dalaran_Shield_II_Actions)
    endfunction