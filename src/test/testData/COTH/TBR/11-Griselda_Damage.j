function Trig_Griselda_Damage_Func003Func001Func002C takes nothing returns boolean
    if(not(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2)<401.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func001C takes nothing returns boolean
    if(not(udg_BodyGuardCount!=1))then
    return false
    endif
    if(not(udg_BodyGuardCount!=3))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func002Func002C takes nothing returns boolean
    if(not(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2)<801.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func002C takes nothing returns boolean
    if(not(udg_BodyGuardCount!=1))then
    return false
    endif
    if(not(udg_BodyGuardCount!=3))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func003Func002C takes nothing returns boolean
    if(not(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint3)<801.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func003C takes nothing returns boolean
    if(not(udg_BodyGuardCount!=2))then
    return false
    endif
    if(not(udg_BodyGuardCount!=3))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func004Func003C takes nothing returns boolean
    if(not(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint3)<801.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func004C takes nothing returns boolean
    if(not(udg_TurokCount!=0))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func005Func002A takes nothing returns nothing
    call SetUnitLifeBJ(GetEnumUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetEnumUnit())-(udg_GriseldaDamage/ I2R(CountUnitsInGroup(udg_EssenceGroup)))))
    endfunction
    function Trig_Griselda_Damage_Func003Func005C takes nothing returns boolean
    if(not(CountUnitsInGroup(udg_EssenceGroup)>1))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func007Func002C takes nothing returns boolean
    if(not(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint3)<401.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003Func007C takes nothing returns boolean
    if(not(udg_BodyGuardCount!=2))then
    return false
    endif
    if(not(udg_BodyGuardCount!=3))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Func003C takes nothing returns boolean
    if(not(udg_Essence==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Griselda_Damage_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Ekee_0528)
    set udg_GriseldaDamage=GetEventDamage()
    if(Trig_Griselda_Damage_Func003C())then
    if(Trig_Griselda_Damage_Func003Func002C())then
    set udg_TempPoint2=GetUnitLoc(udg_Bodyguard1)
    if(Trig_Griselda_Damage_Func003Func002Func002C())then
    call GroupAddUnitSimple(udg_Bodyguard1,udg_EssenceGroup)
    else
    endif
    call RemoveLocation(udg_TempPoint2)
    else
    endif
    if(Trig_Griselda_Damage_Func003Func003C())then
    set udg_TempPoint3=GetUnitLoc(udg_Bodyguard2)
    if(Trig_Griselda_Damage_Func003Func003Func002C())then
    call GroupAddUnitSimple(udg_Bodyguard2,udg_EssenceGroup)
    else
    endif
    call RemoveLocation(udg_TempPoint3)
    else
    endif
    if(Trig_Griselda_Damage_Func003Func004C())then
    set udg_TempPoint3=GetUnitLoc(udg_TurokSpirit)
    if(Trig_Griselda_Damage_Func003Func004Func003C())then
    call GroupAddUnitSimple(udg_TurokSpirit,udg_EssenceGroup)
    else
    endif
    call RemoveLocation(udg_TempPoint3)
    else
    endif
    if(Trig_Griselda_Damage_Func003Func005C())then
    call SetUnitLifeBJ(gg_unit_Ekee_0528,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Ekee_0528)+udg_GriseldaDamage))
    call ForGroupBJ(udg_EssenceGroup,function Trig_Griselda_Damage_Func003Func005Func002A)
    else
    endif
    call GroupClear(udg_EssenceGroup)
    else
    if(Trig_Griselda_Damage_Func003Func001C())then
    set udg_TempPoint2=GetUnitLoc(udg_Bodyguard1)
    if(Trig_Griselda_Damage_Func003Func001Func002C())then
    call SetUnitLifeBJ(udg_Bodyguard1,(GetUnitStateSwap(UNIT_STATE_LIFE,udg_Bodyguard1)-((I2R(GetUnitAbilityLevelSwapped('A0DQ',gg_unit_Ekee_0528))*0.05)*udg_GriseldaDamage)))
    else
    endif
    call RemoveLocation(udg_TempPoint2)
    else
    endif
    if(Trig_Griselda_Damage_Func003Func007C())then
    set udg_TempPoint3=GetUnitLoc(udg_Bodyguard2)
    if(Trig_Griselda_Damage_Func003Func007Func002C())then
    call SetUnitLifeBJ(gg_unit_Ekee_0528,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Ekee_0528)+((I2R(GetUnitAbilityLevelSwapped('A0DQ',gg_unit_Ekee_0528))*0.05)*udg_GriseldaDamage)))
    call SetUnitLifeBJ(udg_Bodyguard2,(GetUnitStateSwap(UNIT_STATE_LIFE,udg_Bodyguard2)-((I2R(GetUnitAbilityLevelSwapped('A0DQ',gg_unit_Ekee_0528))*0.05)*udg_GriseldaDamage)))
    else
    endif
    call RemoveLocation(udg_TempPoint3)
    else
    endif
    endif
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Griselda_Damage takes nothing returns nothing
    set gg_trg_Griselda_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Griselda_Damage)
    call TriggerRegisterUnitEvent(gg_trg_Griselda_Damage,gg_unit_Ekee_0528,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Griselda_Damage,function Trig_Griselda_Damage_Actions)
    endfunction