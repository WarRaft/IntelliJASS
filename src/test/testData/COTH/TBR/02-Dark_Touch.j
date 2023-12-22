function Trig_Dark_Touch_Func005002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Dark_Touch_Func005002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)!=true)
    endfunction
    function Trig_Dark_Touch_Func005002003002002 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Dark_Touch_Func005002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dark_Touch_Func005002003002001(),Trig_Dark_Touch_Func005002003002002())
    endfunction
    function Trig_Dark_Touch_Func005002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dark_Touch_Func005002003001(),Trig_Dark_Touch_Func005002003002())
    endfunction
    function Trig_Dark_Touch_Func007Func001C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetEnumUnit(),'B02E')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Dark_Touch_Func007A takes nothing returns nothing
    if(Trig_Dark_Touch_Func007Func001C())then
    call UnitDamageTargetBJ(gg_unit_Utic_0512,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('ACsa',gg_unit_Utic_0512))*10.00)+5.00)+(I2R(GetUnitAbilityLevelSwapped('A08D',gg_unit_Utic_0512))*5.00)),ATTACK_TYPE_CHAOS,DAMAGE_TYPE_UNIVERSAL)
    call AddSpecialEffectTargetUnitBJ("chest",GetEnumUnit(),"Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    call UnitDamageTargetBJ(gg_unit_Utic_0512,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('ACsa',gg_unit_Utic_0512))*10.00)+5.00),ATTACK_TYPE_CHAOS,DAMAGE_TYPE_UNIVERSAL)
    call AddSpecialEffectTargetUnitBJ("chest",GetEnumUnit(),"Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    endif
    endfunction
    function Trig_Dark_Touch_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call PolledWait(0.05)
    set udg_DarkTouch=GetUnitLoc(gg_unit_Utic_0512)
    set udg_DarkTouchGroup=GetUnitsInRangeOfLocMatching(260.00,udg_DarkTouch,Condition(function Trig_Dark_Touch_Func005002003))
    call RemoveLocation(udg_DarkTouch)
    call ForGroupBJ(udg_DarkTouchGroup,function Trig_Dark_Touch_Func007A)
    set udg_DarkTouchOff=0.00
    call DestroyGroup(udg_DarkTouchGroup)
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Dark_Touch takes nothing returns nothing
    set gg_trg_Dark_Touch=CreateTrigger()
    call DisableTrigger(gg_trg_Dark_Touch)
    call TriggerRegisterVariableEvent(gg_trg_Dark_Touch,"udg_DarkTouchOff",EQUAL,1.00)
    call TriggerAddAction(gg_trg_Dark_Touch,function Trig_Dark_Touch_Actions)
    endfunction