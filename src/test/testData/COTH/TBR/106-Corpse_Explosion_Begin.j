function Trig_Corpse_Explosion_Begin_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANcl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false)
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003001002 takes nothing returns boolean
    return(IsUnitDeadBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Corpse_Explosion_Begin_Func002002003001001(),Trig_Corpse_Explosion_Begin_Func002002003001002())
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002001001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='uske')
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002001002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='nskg')
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Corpse_Explosion_Begin_Func002002003002001001(),Trig_Corpse_Explosion_Begin_Func002002003002001002())
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002002001001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='nsko')
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002002001002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='ndr3')
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Corpse_Explosion_Begin_Func002002003002002001001(),Trig_Corpse_Explosion_Begin_Func002002003002002001002())
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002002002001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='oshm')
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002002002002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='nanb')
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Corpse_Explosion_Begin_Func002002003002002002001(),Trig_Corpse_Explosion_Begin_Func002002003002002002002())
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Corpse_Explosion_Begin_Func002002003002002001(),Trig_Corpse_Explosion_Begin_Func002002003002002002())
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Corpse_Explosion_Begin_Func002002003002001(),Trig_Corpse_Explosion_Begin_Func002002003002002())
    endfunction
    function Trig_Corpse_Explosion_Begin_Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Corpse_Explosion_Begin_Func002002003001(),Trig_Corpse_Explosion_Begin_Func002002003002())
    endfunction
    function Trig_Corpse_Explosion_Begin_Func003Func002001001 takes nothing returns boolean
    return(GetOwningPlayer(GetSpellAbilityUnit())==GetFilterPlayer())
    endfunction
    function Trig_Corpse_Explosion_Begin_Func003C takes nothing returns boolean
    if(not(CountUnitsInGroup(udg_CorpseArea)==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Corpse_Explosion_Begin_Actions takes nothing returns nothing
    set udg_CastPos=GetSpellTargetLoc()
    set udg_CorpseArea=GetUnitsInRangeOfLocMatching(250.00,GetSpellTargetLoc(),Condition(function Trig_Corpse_Explosion_Begin_Func002002003))
    if(Trig_Corpse_Explosion_Begin_Func003C())then
    call IssueImmediateOrder(GetSpellAbilityUnit(),"stop")
    call DisplayTimedTextToForce(GetPlayersMatching(Condition(function Trig_Corpse_Explosion_Begin_Func003Func002001001)),1.80,"                                                                      |cffffcc00There is no corpse nearby.|r")
    else
    endif
    call DestroyGroup(udg_CorpseArea)
    call RemoveLocation(udg_CastPos)
    endfunction
    function InitTrig_Corpse_Explosion_Begin takes nothing returns nothing
    set gg_trg_Corpse_Explosion_Begin=CreateTrigger()
    call TriggerAddCondition(gg_trg_Corpse_Explosion_Begin,Condition(function Trig_Corpse_Explosion_Begin_Conditions))
    call TriggerAddAction(gg_trg_Corpse_Explosion_Begin,function Trig_Corpse_Explosion_Begin_Actions)
    endfunction