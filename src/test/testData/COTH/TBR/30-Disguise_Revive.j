function Trig_Disguise_Revive_Func001Func003C takes nothing returns boolean
    if(not(IsUnitOwnedByPlayer(gg_unit_O00M_0518,Player(10))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Disguise_Revive_Func001C takes nothing returns boolean
    if(not(IsUnitOwnedByPlayer(gg_unit_O00M_0518,Player(9))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Disguise_Revive_Actions takes nothing returns nothing
    if(Trig_Disguise_Revive_Func001C())then
    call UnitAddAbilityBJ('A0DH',gg_unit_O00M_0518)
    call UnitRemoveAbilityBJ('A0DH',gg_unit_O00M_0518)
    else
    if(Trig_Disguise_Revive_Func001Func003C())then
    call UnitAddAbilityBJ('A029',gg_unit_O00M_0518)
    call UnitRemoveAbilityBJ('A029',gg_unit_O00M_0518)
    else
    call UnitAddAbilityBJ('A0DG',gg_unit_O00M_0518)
    call UnitRemoveAbilityBJ('A0DG',gg_unit_O00M_0518)
    endif
    endif
    call SetPlayerAbilityAvailableBJ(true,'Afod',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(true,'A099',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(true,'AOwk',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(false,'ANwk',udg_GaronaOwner)
    call DisableTrigger(gg_trg_Disguise_End_Attack)
    call DisableTrigger(gg_trg_Disguise_End)
    endfunction
    function InitTrig_Disguise_Revive takes nothing returns nothing
    set gg_trg_Disguise_Revive=CreateTrigger()
    call TriggerAddAction(gg_trg_Disguise_Revive,function Trig_Disguise_Revive_Actions)
    endfunction