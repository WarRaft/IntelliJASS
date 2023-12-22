function Trig_Disguise_End_Func001Func003C takes nothing returns boolean
    if(not(IsUnitOwnedByPlayer(gg_unit_O00M_0518,Player(10))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Disguise_End_Func001C takes nothing returns boolean
    if(not(IsUnitOwnedByPlayer(gg_unit_O00M_0518,Player(9))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Disguise_End_Actions takes nothing returns nothing
    if(Trig_Disguise_End_Func001C())then
    call UnitAddAbilityBJ('A0DH',gg_unit_O00M_0518)
    call UnitRemoveAbilityBJ('A0DH',gg_unit_O00M_0518)
    else
    if(Trig_Disguise_End_Func001Func003C())then
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
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Disguise_End_Attack)
    endfunction

function Trig_Garona_Starts_Func001Func003Func001Func001Func001Func004Func001C takes nothing returns boolean
    if(not(IsUnitOwnedByPlayer(gg_unit_O00M_0518,Player(10))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func001Func001Func004C takes nothing returns boolean
    if(not(IsUnitOwnedByPlayer(gg_unit_O00M_0518,Player(9))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A09D'))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func001Func006Func004Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(11)))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func001Func006Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(10)))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func001Func006C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())==Player(9)))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitStateSwap(UNIT_STATE_LIFE,GetSpellTargetUnit())<(380.00+(udg_GaronaDamage*0.70))))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('Afod',GetTriggerUnit())==4))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func001Func002C takes nothing returns boolean
    if(not(GetUnitStateSwap(UNIT_STATE_LIFE,GetSpellTargetUnit())<(290.00+(udg_GaronaDamage*0.70))))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('Afod',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func002C takes nothing returns boolean
    if(not(GetUnitStateSwap(UNIT_STATE_LIFE,GetSpellTargetUnit())<(200.00+(udg_GaronaDamage*0.70))))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('Afod',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002Func001Func002C takes nothing returns boolean
    if(not(GetUnitStateSwap(UNIT_STATE_LIFE,GetSpellTargetUnit())<(110.00+(udg_GaronaDamage*0.70))))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('Afod',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003Func001Func002C takes nothing returns boolean
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
    function Trig_Garona_Starts_Func001Func003Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='Afod'))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001Func003C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AOwk'))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A099'))then
    return false
    endif
    return true
    endfunction
    function Trig_Garona_Starts_Actions takes nothing returns nothing
    if(Trig_Garona_Starts_Func001C())then
    call PlaySoundOnUnitBJ(gg_snd_FanOfKnives,100,gg_unit_O00M_0518)
    else
    if(Trig_Garona_Starts_Func001Func003C())then
    call UnitAddAbilityBJ('A09A',gg_unit_O00M_0518)
    call SetPlayerAbilityAvailableBJ(false,'A09A',udg_GaronaOwner)
    call PolledWait((1+I2R(GetUnitAbilityLevelSwapped('AOwk',gg_unit_O00M_0518))))
    call UnitRemoveAbilityBJ('A09A',gg_unit_O00M_0518)
    else
    if(Trig_Garona_Starts_Func001Func003Func001C())then
    if(Trig_Garona_Starts_Func001Func003Func001Func002C())then
    if(Trig_Garona_Starts_Func001Func003Func001Func002Func001C())then
    if(Trig_Garona_Starts_Func001Func003Func001Func002Func001Func002C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),5000.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_UNIVERSAL)
    set udg_TempPoint=GetUnitLoc(gg_unit_O00M_0518)
    call CreateTextTagLocBJ((I2S(R2I((110.00+(udg_GaronaDamage*0.70))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    else
    set udg_TempPoint=GetUnitLoc(gg_unit_O00M_0518)
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(35.00+(udg_GaronaDamage*0.25)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(35.00+(udg_GaronaDamage*0.25)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call CreateTextTagLocBJ((I2S(R2I((70.00+(udg_GaronaDamage*0.50))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    endif
    else
    if(Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001C())then
    if(Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func002C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),5000.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_UNIVERSAL)
    set udg_TempPoint=GetUnitLoc(gg_unit_O00M_0518)
    call CreateTextTagLocBJ((I2S(R2I((200.00+(udg_GaronaDamage*0.70))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    else
    set udg_TempPoint=GetUnitLoc(gg_unit_O00M_0518)
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(70.00+(udg_GaronaDamage*0.25)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(70.00+(udg_GaronaDamage*0.25)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call CreateTextTagLocBJ((I2S(R2I((140.00+(udg_GaronaDamage*0.50))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    endif
    else
    if(Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func001C())then
    if(Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func001Func002C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),50000.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_UNIVERSAL)
    set udg_TempPoint=GetUnitLoc(gg_unit_O00M_0518)
    call CreateTextTagLocBJ((I2S(R2I((290.00+(udg_GaronaDamage*0.70))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    else
    set udg_TempPoint=GetUnitLoc(gg_unit_O00M_0518)
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(105.00+(udg_GaronaDamage*0.25)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(105.00+(udg_GaronaDamage*0.25)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call CreateTextTagLocBJ((I2S(R2I((210.00+(udg_GaronaDamage*0.50))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    endif
    else
    if(Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func001Func001C())then
    if(Trig_Garona_Starts_Func001Func003Func001Func002Func001Func001Func001Func001Func001C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),50000.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_UNIVERSAL)
    set udg_TempPoint=GetUnitLoc(gg_unit_O00M_0518)
    call CreateTextTagLocBJ((I2S(R2I((380.00+(udg_GaronaDamage*0.70))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    else
    set udg_TempPoint=GetUnitLoc(gg_unit_O00M_0518)
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(140.00+(udg_GaronaDamage*0.25)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(140.00+(udg_GaronaDamage*0.25)),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call CreateTextTagLocBJ((I2S(R2I((280.00+(udg_GaronaDamage*0.50))))+"!"),udg_TempPoint,0,10,100,0.00,0.00,0)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(),false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(),15.00,90)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(),3.00)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(),1.00)
    call RemoveLocation(udg_TempPoint)
    endif
    else
    endif
    endif
    endif
    endif
    else
    endif
    else
    if(Trig_Garona_Starts_Func001Func003Func001Func001Func001C())then
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AEsf')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AHmt')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'Asbp')
    if(Trig_Garona_Starts_Func001Func003Func001Func001Func001Func004C())then
    call UnitAddAbilityBJ('A0DE',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A0DE',GetTriggerUnit())
    else
    if(Trig_Garona_Starts_Func001Func003Func001Func001Func001Func004Func001C())then
    call UnitAddAbilityBJ('A0DF',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A0DF',GetTriggerUnit())
    else
    call UnitAddAbilityBJ('A028',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A028',GetTriggerUnit())
    endif
    endif
    call SetPlayerAbilityAvailableBJ(false,'AOwk',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(false,'Afod',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(false,'A099',udg_GaronaOwner)
    call SetPlayerAbilityAvailableBJ(true,'ANwk',udg_GaronaOwner)
    call IssueImmediateOrder(gg_unit_O00M_0518,"windwalk")
    call TimerStart(udg_DisguiseTimer,25, false, function Trig_Disguise_End_Actions)
    call EnableTrigger(gg_trg_Disguise_End)
    call EnableTrigger(gg_trg_Disguise_End_Attack)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Garona_Starts takes nothing returns nothing
    set gg_trg_Garona_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Garona_Starts,function Trig_Garona_Starts_Actions)
    endfunction