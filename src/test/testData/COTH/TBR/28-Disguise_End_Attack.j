function Trig_Disguise_End_Attack_Conditions takes nothing returns boolean
    if(not(GetAttacker()==gg_unit_O00M_0518))then
    return false
    endif
    return true
    endfunction
    function Trig_Disguise_End_Attack_Func001Func003C takes nothing returns boolean
    if(not(IsUnitOwnedByPlayer(gg_unit_O00M_0518,Player(10))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Disguise_End_Attack_Func001C takes nothing returns boolean
    if(not(IsUnitOwnedByPlayer(gg_unit_O00M_0518,Player(9))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Disguise_End_Attack_Func004C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'BHds')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'B03N')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'BIsv')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Disguise_End_Attack_Actions takes nothing returns nothing
    if(Trig_Disguise_End_Attack_Func001C())then
    call UnitAddAbilityBJ('A0DH',gg_unit_O00M_0518)
    call UnitRemoveAbilityBJ('A0DH',gg_unit_O00M_0518)
    else
    if(Trig_Disguise_End_Attack_Func001Func003C())then
    call UnitAddAbilityBJ('A029',gg_unit_O00M_0518)
    call UnitRemoveAbilityBJ('A029',gg_unit_O00M_0518)
    else
    call UnitAddAbilityBJ('A0DG',gg_unit_O00M_0518)
    call UnitRemoveAbilityBJ('A0DG',gg_unit_O00M_0518)
    endif
    endif
    call UnitRemoveBuffBJ('B02L',GetAttacker())
    set udg_TempPoint=GetUnitLoc(GetAttacker())
    if(Trig_Disguise_End_Attack_Func004C())then
    call UnitDamageTargetBJ(gg_unit_O00M_0518,GetAttackedUnitBJ(),(udg_GaronaDamage*(I2R(GetUnitAbilityLevelSwapped('A09D',gg_unit_O00M_0518))+2.00)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call UnitDamageTargetBJ(gg_unit_O00M_0518,GetAttackedUnitBJ(),(udg_GaronaDamage*(I2R(GetUnitAbilityLevelSwapped('A09D',gg_unit_O00M_0518))+2.00)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call CreateTextTagLocBJ((I2S(R2I((udg_GaronaDamage*(I2R(GetUnitAbilityLevelSwapped('A09D',gg_unit_O00M_0518))+2.00))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    else
    endif
    call RemoveLocation(udg_TempPoint)
    call SetUnitAnimation(gg_unit_O00M_0518,"attack")
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call SetPlayerAbilityAvailableBJ(true,'Afod',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(true,'A099',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(true,'AOwk',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(false,'ANwk',udg_GaronaOwner)
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Disguise_End)
    endfunction
    function InitTrig_Disguise_End_Attack takes nothing returns nothing
    set gg_trg_Disguise_End_Attack=CreateTrigger()
    call DisableTrigger(gg_trg_Disguise_End_Attack)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Disguise_End_Attack,Player(0),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Disguise_End_Attack,Player(1),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Disguise_End_Attack,Player(2),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Disguise_End_Attack,Player(3),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Disguise_End_Attack,Player(5),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Disguise_End_Attack,Player(6),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Disguise_End_Attack,Player(7),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Disguise_End_Attack,Player(8),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Disguise_End_Attack,Condition(function Trig_Disguise_End_Attack_Conditions))
    call TriggerAddAction(gg_trg_Disguise_End_Attack,function Trig_Disguise_End_Attack_Actions)
    endfunction