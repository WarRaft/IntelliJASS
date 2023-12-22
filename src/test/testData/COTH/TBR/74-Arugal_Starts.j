globals
    integer additionalINT = 0
endglobals

function Trig_Arugal_Starts_Func001Func001Func001Func001Func010002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func001Func001Func010002003002 takes nothing returns boolean
    return(IsUnitDeadBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func001Func001Func010002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func001Func001Func001Func010002003001(),Trig_Arugal_Starts_Func001Func001Func001Func001Func010002003002())
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func001Func001Func011002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(7))==true)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func001Func001Func011002003002 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func001Func001Func011002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func001Func001Func001Func011002003001(),Trig_Arugal_Starts_Func001Func001Func001Func001Func011002003002())
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func001Func001Func012A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hvsh_0480,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('ACsi',gg_unit_Hvsh_0480))*75.00)+100.00)+(((I2R(GetUnitAbilityLevelSwapped('ACsi',gg_unit_Hvsh_0480))*5.00)+10.00)*I2R(CountUnitsInGroup(udg_ReturnCorpses)))),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func001Func001Func013A takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ACsi'))then
    return false
    endif
    return true
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func009002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func009002003001002 takes nothing returns boolean
    return(IsUnitDeadBJ(GetFilterUnit())==false)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func009002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func001Func009002003001001(),Trig_Arugal_Starts_Func001Func001Func009002003001002())
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func009002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_MECHANICAL)==false)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func009002003002002 takes nothing returns boolean
    return(IsUnitAlly(GetFilterUnit(),Player(7))==true)
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func009002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func001Func009002003002001(),Trig_Arugal_Starts_Func001Func001Func009002003002002())
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func009002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func001Func009002003001(),Trig_Arugal_Starts_Func001Func001Func009002003002())
    endfunction
    function Trig_Arugal_Starts_Func001Func001Func010A takes nothing returns nothing
    call SetUnitLifeBJ(GetEnumUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetEnumUnit())+(((I2R(GetUnitAbilityLevelSwapped('A0CT',gg_unit_Hvsh_0480))*25.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Hvsh_0480,true))*1.50))+25.00)))
    endfunction
    function Trig_Arugal_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0CT'))then
    return false
    endif
    return true
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false)
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003001002 takes nothing returns boolean
    return(IsUnitDeadBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func002002003001001(),Trig_Arugal_Starts_Func001Func002002003001002())
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002001001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='uske')
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002001002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='nskg')
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func002002003002001001(),Trig_Arugal_Starts_Func001Func002002003002001002())
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002002001001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='nsko')
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002002001002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='ndr3')
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002002001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func002002003002002001001(),Trig_Arugal_Starts_Func001Func002002003002002001002())
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002002002001 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='oshm')
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002002002002 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())!='nanb')
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func002002003002002002001(),Trig_Arugal_Starts_Func001Func002002003002002002002())
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func002002003002002001(),Trig_Arugal_Starts_Func001Func002002003002002002())
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func002002003002001(),Trig_Arugal_Starts_Func001Func002002003002002())
    endfunction
    function Trig_Arugal_Starts_Func001Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func002002003001(),Trig_Arugal_Starts_Func001Func002002003002())
    endfunction
    function Trig_Arugal_Starts_Func001Func005Func002C takes nothing returns boolean
    if(not(DistanceBetweenPoints(udg_CastPos,udg_CorpsePos2)<=DistanceBetweenPoints(udg_CastPos,udg_CorpsePos)))then
    return false
    endif
    return true
    endfunction
    function Trig_Arugal_Starts_Func001Func005A takes nothing returns nothing
    set udg_CorpsePos2=GetUnitLoc(GetEnumUnit())
    if(Trig_Arugal_Starts_Func001Func005Func002C())then
    set udg_Corpse=GetEnumUnit()
    set udg_CorpsePos=GetUnitLoc(udg_Corpse)
    else
    endif
    endfunction
    function Trig_Arugal_Starts_Func001Func006002003001001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Arugal_Starts_Func001Func006002003001002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_TOWNHALL)==false)
    endfunction
    function Trig_Arugal_Starts_Func001Func006002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func006002003001001(),Trig_Arugal_Starts_Func001Func006002003001002())
    endfunction
    function Trig_Arugal_Starts_Func001Func006002003002 takes nothing returns boolean
    return(IsPlayerEnemy(GetOwningPlayer(GetFilterUnit()),GetOwningPlayer(GetSpellAbilityUnit()))==true)
    endfunction
    function Trig_Arugal_Starts_Func001Func006002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Arugal_Starts_Func001Func006002003001(),Trig_Arugal_Starts_Func001Func006002003002())
    endfunction
    function Trig_Arugal_Starts_Func001Func007002 takes nothing returns nothing
    call UnitDamageTargetBJ(GetSpellAbilityUnit(),GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('ANcl',gg_unit_Hvsh_0480))*40.00)+50.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Hvsh_0480,true))*1.0)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Arugal_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANcl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Arugal_Starts_Actions takes nothing returns nothing
    if (GetSpellAbilityId() == 'AUan') then
        if additionalINT == GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()) * 10 then
            return
        endif
        if additionalINT + GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()) > GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()) * 10 then
            call ModifyHeroStat(bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, (GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()) * 10) - additionalINT)
            set additionalINT = GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()) * 10
            return
        endif
        set additionalINT = additionalINT + GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId())
        call ModifyHeroStat(bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()))
    endif
    if(Trig_Arugal_Starts_Func001C())then
    set udg_CorpseArea=GetUnitsInRangeOfLocMatching(250.00,GetSpellTargetLoc(),Condition(function Trig_Arugal_Starts_Func001Func002002003))
    set udg_CastPos=GetSpellTargetLoc()
    set udg_CorpsePos=GetUnitLoc(FirstOfGroup(udg_CorpseArea))
    call ForGroupBJ(udg_CorpseArea,function Trig_Arugal_Starts_Func001Func005A)
    set udg_DamageArea=GetUnitsInRangeOfLocMatching(250.00,udg_CorpsePos,Condition(function Trig_Arugal_Starts_Func001Func006002003))
    call ForGroupBJ(udg_DamageArea,function Trig_Arugal_Starts_Func001Func007002)
    call AddSpecialEffectLocBJ(udg_CorpsePos,"Doodads\\Cinematic\\EyeOfSargeras\\EyeOfSargeras.mdl")
    set udg_SE=GetLastCreatedEffectBJ()
    call DestroyEffect(udg_SE)
    call AddSpecialEffectLocBJ(udg_CorpsePos,"Units\\Undead\\Abomination\\AbominationExplosion.mdl")
    set udg_SE=GetLastCreatedEffectBJ()
    call DestroyEffect(udg_SE)
    call PlaySoundAtPointBJ(gg_snd_Incinerate1,100,udg_CorpsePos,0)
    call RemoveUnit(udg_Corpse)
    call DestroyGroup(udg_CorpseArea)
    call DestroyGroup(udg_DamageArea)
    call RemoveLocation(udg_CorpsePos)
    call RemoveLocation(udg_CastPos)
    call RemoveLocation(udg_CorpsePos2)
    else
    if(Trig_Arugal_Starts_Func001Func001C())then
    set udg_SoulDrainCaster=GetUnitLoc(gg_unit_Hvsh_0480)
    set udg_SoulDrainTarget=GetUnitLoc(GetSpellTargetUnit())
    set udg_SoulDrainUnit=GetSpellTargetUnit()
    call PolledWait((DistanceBetweenPoints(udg_SoulDrainCaster,udg_SoulDrainTarget)/ 800.00))
    call AddSpecialEffectTargetUnitBJ("origin",gg_unit_Hvsh_0480,"Abilities\\Spells\\Undead\\Darksummoning\\DarkSummonTarget.mdl")
    set udg_SD=GetLastCreatedEffectBJ()
    call UnitDamageTargetBJ(gg_unit_Hvsh_0480,udg_SoulDrainUnit,((I2R(GetUnitAbilityLevelSwapped('A0CT',gg_unit_Hvsh_0480))*75.00)+I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Hvsh_0480,true))),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    set udg_SoulDrain=GetUnitsInRangeOfLocMatching(375.00,udg_SoulDrainCaster,Condition(function Trig_Arugal_Starts_Func001Func001Func009002003))
    call ForGroupBJ(udg_SoulDrain,function Trig_Arugal_Starts_Func001Func001Func010A)
    call RemoveLocation(udg_SoulDrainCaster)
    call RemoveLocation(udg_SoulDrainTarget)
    call DestroyGroup(udg_SoulDrain)
    call PolledWait(1.00)
    call DestroyEffect(udg_SD)
    else
    if(Trig_Arugal_Starts_Func001Func001Func001Func001C())then
    set udg_ReturnedPoint=GetSpellTargetLoc()
    call AddSpecialEffectLocBJ(udg_ReturnedPoint,"Abilities\\Spells\\Human\\FlameStrike\\FlameStrikeTarget.mdl")
    set udg_TR=GetLastCreatedEffectBJ()
    call PolledWait(1.50)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=15
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint=PolarProjectionBJ(udg_ReturnedPoint,GetRandomReal(15.00,325.00),GetRandomDirectionDeg())
    call CreateNUnitsAtLoc(1,'nanb',Player(7),udg_TempPoint,GetRandomDirectionDeg())
    call SetUnitVertexColorBJ(GetLastCreatedUnit(),50.00,90.00,90.00,30.00)
    call UnitApplyTimedLifeBJ(2.00,'BTLF',GetLastCreatedUnit())
    call SetUnitTimeScalePercent(GetLastCreatedUnit(),35.00)
    call SetUnitAnimation(GetLastCreatedUnit(),"attack")
    call RemoveLocation(udg_TempPoint)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call PolledWait(0.50)
    call DestroyEffect(udg_TR)
    call PolledWait(0.40)
    call PlaySoundAtPointBJ(gg_snd_CarrionSwarmDamage2,100,udg_ReturnedPoint,0)
    set udg_ReturnCorpses=GetUnitsInRangeOfLocMatching(350.00,udg_ReturnedPoint,Condition(function Trig_Arugal_Starts_Func001Func001Func001Func001Func010002003))
    set udg_TheReturned=GetUnitsInRangeOfLocMatching(350.00,udg_ReturnedPoint,Condition(function Trig_Arugal_Starts_Func001Func001Func001Func001Func011002003))
    call ForGroupBJ(udg_TheReturned,function Trig_Arugal_Starts_Func001Func001Func001Func001Func012A)
    call ForGroupBJ(udg_ReturnCorpses,function Trig_Arugal_Starts_Func001Func001Func001Func001Func013A)
    call RemoveLocation(udg_ReturnedPoint)
    call DestroyGroup(udg_TheReturned)
    call DestroyGroup(udg_ReturnCorpses)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Arugal_Starts takes nothing returns nothing
    set gg_trg_Arugal_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Arugal_Starts,function Trig_Arugal_Starts_Actions)
    endfunction