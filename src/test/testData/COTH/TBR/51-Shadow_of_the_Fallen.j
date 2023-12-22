function Trig_Shadow_of_the_Fallen_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AOvd'))then
    return false
    endif
    return true
    endfunction
    function Trig_Shadow_of_the_Fallen_Func006002003 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Shadow_of_the_Fallen_Func007Func002002003 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Shadow_of_the_Fallen_Func007A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('AOvd',GetTriggerUnit()))*105.00)+(udg_ShadowCount*30.00))+70.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    set udg_ShadowGroup=GetUnitsInRangeOfLocMatching(180.00,udg_ShadowPoint,Condition(function Trig_Shadow_of_the_Fallen_Func007Func002002003))
    endfunction
    function Trig_Shadow_of_the_Fallen_Func011002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Shadow_of_the_Fallen_Func011002003002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_ShadowGroup)==false)
    endfunction
    function Trig_Shadow_of_the_Fallen_Func011002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Shadow_of_the_Fallen_Func011002003001(),Trig_Shadow_of_the_Fallen_Func011002003002())
    endfunction
    function Trig_Shadow_of_the_Fallen_Func012Func002002003 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Shadow_of_the_Fallen_Func012A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('AOvd',GetTriggerUnit()))*105.00)+(udg_ShadowCount*30.00))+70.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    set udg_ShadowGroup=GetUnitsInRangeOfLocMatching(300.00,udg_ShadowPoint,Condition(function Trig_Shadow_of_the_Fallen_Func012Func002002003))
    endfunction
    function Trig_Shadow_of_the_Fallen_Func016002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Shadow_of_the_Fallen_Func016002003002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_ShadowGroup)==false)
    endfunction
    function Trig_Shadow_of_the_Fallen_Func016002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Shadow_of_the_Fallen_Func016002003001(),Trig_Shadow_of_the_Fallen_Func016002003002())
    endfunction
    function Trig_Shadow_of_the_Fallen_Func017A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('AOvd',GetTriggerUnit()))*105.00)+(udg_ShadowCount*30.00))+70.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Shadow_of_the_Fallen_Actions takes nothing returns nothing
    call SetUnitAbilityLevelSwapped('A01N',GetTriggerUnit(),1)
    set udg_SkullCount=0.00
    call SetUnitAbilityLevel(DentargUnit, 'A0GX', 1)
    call SetUnitAbilityLevel(DentargUnit, 'A0GW', 1)
    call PlaySoundAtPointBJ(gg_snd_DarkSummoningLaunch1,100,udg_ShadowPoint,0)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=12
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint=PolarProjectionBJ(udg_ShadowPoint,160.00,(I2R(GetForLoopIndexA())*30.00))
    call AddSpecialEffectLocBJ(udg_TempPoint,"UndeadDissipate.mdx")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(180.00,udg_ShadowPoint,Condition(function Trig_Shadow_of_the_Fallen_Func006002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Shadow_of_the_Fallen_Func007A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call PolledWait(0.10)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=18
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint2=PolarProjectionBJ(udg_ShadowPoint,320.00,(I2R(GetForLoopIndexA())*20.00))
    call AddSpecialEffectLocBJ(udg_TempPoint2,"UndeadDissipate.mdx")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint2)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(300.00,udg_ShadowPoint,Condition(function Trig_Shadow_of_the_Fallen_Func011002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Shadow_of_the_Fallen_Func012A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call PolledWait(0.10)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=24
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempPoint3=PolarProjectionBJ(udg_ShadowPoint,480.00,(I2R(GetForLoopIndexA())*15.00))
    call AddSpecialEffectLocBJ(udg_TempPoint3,"UndeadDissipate.mdx")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint3)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(500.00,udg_ShadowPoint,Condition(function Trig_Shadow_of_the_Fallen_Func016002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Shadow_of_the_Fallen_Func017A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call DestroyGroup(udg_ShadowGroup)
    call RemoveLocation(udg_ShadowPoint)
    endfunction
    function InitTrig_Shadow_of_the_Fallen takes nothing returns nothing
    set gg_trg_Shadow_of_the_Fallen=CreateTrigger()
    call TriggerAddCondition(gg_trg_Shadow_of_the_Fallen,Condition(function Trig_Shadow_of_the_Fallen_Conditions))
    call TriggerAddAction(gg_trg_Shadow_of_the_Fallen,function Trig_Shadow_of_the_Fallen_Actions)
    endfunction