function Trig_Slice_and_Dice_Func001Func005002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Slice_and_Dice_Func001Func005002003002001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)!=true)
    endfunction
    function Trig_Slice_and_Dice_Func001Func005002003002001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'BIsv')==false)
    endfunction
    function Trig_Slice_and_Dice_Func001Func005002003002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Slice_and_Dice_Func001Func005002003002001001(),Trig_Slice_and_Dice_Func001Func005002003002001002())
    endfunction
    function Trig_Slice_and_Dice_Func001Func005002003002002001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Slice_and_Dice_Func001Func005002003002002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'BHds')==false)
    endfunction
    function Trig_Slice_and_Dice_Func001Func005002003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Slice_and_Dice_Func001Func005002003002002001(),Trig_Slice_and_Dice_Func001Func005002003002002002())
    endfunction
    function Trig_Slice_and_Dice_Func001Func005002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Slice_and_Dice_Func001Func005002003002001(),Trig_Slice_and_Dice_Func001Func005002003002002())
    endfunction
    function Trig_Slice_and_Dice_Func001Func005002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Slice_and_Dice_Func001Func005002003001(),Trig_Slice_and_Dice_Func001Func005002003002())
    endfunction
    function Trig_Slice_and_Dice_Func001Func008A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Opgh_0483,GetEnumUnit(),(I2R((GetUnitAbilityLevelSwapped('A067',gg_unit_Opgh_0483)*20))+15.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_Opgh_0483,GetEnumUnit(),(I2R((GetUnitAbilityLevelSwapped('A067',gg_unit_Opgh_0483)*20))+15.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call AddSpecialEffectTargetUnitBJ("chest",GetEnumUnit(),"Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    endfunction
    function Trig_Slice_and_Dice_Func001Func011001 takes nothing returns boolean
    return(IsUnitAliveBJ(gg_unit_Opgh_0483)==true)
    endfunction
    function Trig_Slice_and_Dice_Func001C takes nothing returns boolean
    if(not(GetRandomInt(1,100)<=21))then
    return false
    endif
    return true
    endfunction
    function Trig_Slice_and_Dice_Actions takes nothing returns nothing
    if(Trig_Slice_and_Dice_Func001C())then
    call DisableTrigger(GetTriggeringTrigger())
    set udg_TempPoint=GetUnitLoc(gg_unit_Opgh_0483)
    set udg_SliceandDiceGroup=GetUnitsInRangeOfLocMatching(225.00,udg_TempPoint,Condition(function Trig_Slice_and_Dice_Func001Func005002003))
    call RemoveLocation(udg_TempPoint)
    call SetUnitAnimation(gg_unit_Opgh_0483,"spin")
    call ForGroupBJ(udg_SliceandDiceGroup,function Trig_Slice_and_Dice_Func001Func008A)
    call DestroyGroup(udg_SliceandDiceGroup)
    call PolledWait(0.40)
    if(Trig_Slice_and_Dice_Func001Func011001())then
    call ResetUnitAnimation(gg_unit_Opgh_0483)
    else
    call DoNothing()
    endif
    set udg_SliceandDiceOff=0.00
    call EnableTrigger(GetTriggeringTrigger())
    else
    set udg_SliceandDiceOff=0.00
    endif
    endfunction
    function InitTrig_Slice_and_Dice takes nothing returns nothing
    set gg_trg_Slice_and_Dice=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Slice_and_Dice,"udg_SliceandDiceOff",EQUAL,1.00)
    call TriggerAddAction(gg_trg_Slice_and_Dice,function Trig_Slice_and_Dice_Actions)
    endfunction