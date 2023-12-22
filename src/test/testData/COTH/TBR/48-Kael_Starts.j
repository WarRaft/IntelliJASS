function Trig_Kael_Starts_Func001Func001Func001Func001Func004002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func004002003002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func004002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func004002003001(),Trig_Kael_Starts_Func001Func001Func001Func001Func004002003002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func005A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),((udg_NovaMana*udg_InfernoLevel)+udg_InfernoDamage),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call GroupAddUnitSimple(GetEnumUnit(),udg_FireNovaGroup)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func008002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func008002003002001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func008002003002002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_FireNovaGroup)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func008002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func008002003002001(),Trig_Kael_Starts_Func001Func001Func001Func001Func008002003002002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func008002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func008002003001(),Trig_Kael_Starts_Func001Func001Func001Func001Func008002003002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func009A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),((udg_NovaMana*udg_InfernoLevel)+udg_InfernoDamage),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call GroupAddUnitSimple(GetEnumUnit(),udg_FireNovaGroup)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func012002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func012002003002001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func012002003002002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_FireNovaGroup)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func012002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func012002003002001(),Trig_Kael_Starts_Func001Func001Func001Func001Func012002003002002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func012002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func012002003001(),Trig_Kael_Starts_Func001Func001Func001Func001Func012002003002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func013A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),((udg_NovaMana*udg_InfernoLevel)+udg_InfernoDamage),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call GroupAddUnitSimple(GetEnumUnit(),udg_FireNovaGroup)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func017002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func017002003002001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func017002003002002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_FireNovaGroup)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func017002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func017002003002001(),Trig_Kael_Starts_Func001Func001Func001Func001Func017002003002002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func017002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func017002003001(),Trig_Kael_Starts_Func001Func001Func001Func001Func017002003002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func018A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),((udg_NovaMana*udg_InfernoLevel)+udg_InfernoDamage),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call GroupAddUnitSimple(GetEnumUnit(),udg_FireNovaGroup)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func021002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func021002003002001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func021002003002002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_FireNovaGroup)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func021002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func021002003002001(),Trig_Kael_Starts_Func001Func001Func001Func001Func021002003002002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func021002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func001Func001Func001Func021002003001(),Trig_Kael_Starts_Func001Func001Func001Func001Func021002003002())
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001Func022A takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),((udg_NovaMana*udg_InfernoLevel)+udg_InfernoDamage),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Kael_Starts_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A07M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kael_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A07N'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kael_Starts_Func001Func012Func008001003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func008001003001002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_Fire_Wall_Group)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func008001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func012Func008001003001001(),Trig_Kael_Starts_Func001Func012Func008001003001002())
    endfunction
    function Trig_Kael_Starts_Func001Func012Func008001003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func008001003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func008001003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func012Func008001003002001(),Trig_Kael_Starts_Func001Func012Func008001003002002())
    endfunction
    function Trig_Kael_Starts_Func001Func012Func008001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func012Func008001003001(),Trig_Kael_Starts_Func001Func012Func008001003002())
    endfunction
    function Trig_Kael_Starts_Func001Func012Func008A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hblm_0508,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('A049',gg_unit_Hblm_0508))*20.00)+(GetUnitStateSwap(UNIT_STATE_MAX_MANA,gg_unit_Hblm_0508)*0.04))+80.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call GroupAddUnitSimple(GetEnumUnit(),udg_Fire_Wall_Group)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func022001003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func022001003001002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_Fire_Wall_Group)==false)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func022001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func012Func022001003001001(),Trig_Kael_Starts_Func001Func012Func022001003001002())
    endfunction
    function Trig_Kael_Starts_Func001Func012Func022001003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func022001003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Kael_Starts_Func001Func012Func022001003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func012Func022001003002001(),Trig_Kael_Starts_Func001Func012Func022001003002002())
    endfunction
    function Trig_Kael_Starts_Func001Func012Func022001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Kael_Starts_Func001Func012Func022001003001(),Trig_Kael_Starts_Func001Func012Func022001003002())
    endfunction
    function Trig_Kael_Starts_Func001Func012Func022A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hblm_0508,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('A049',gg_unit_Hblm_0508))*20.00)+(GetUnitStateSwap(UNIT_STATE_MAX_MANA,gg_unit_Hblm_0508)*0.04))+80.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call GroupAddUnitSimple(GetEnumUnit(),udg_Fire_Wall_Group)
    endfunction
    function Trig_Kael_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A049'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kael_Starts_Actions takes nothing returns nothing
    if(Trig_Kael_Starts_Func001C())then
    set udg_Fire_Wall_Location=GetSpellTargetLoc()
    set udg_Fire_Wall_Duration=6.00
    set udg_Fire_Wall_Distance=65.00
    call CreateNUnitsAtLoc(1,'h01E',Player(3),udg_Fire_Wall_Location,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(udg_Fire_Wall_Duration,'BTLF',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A06G',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A06G',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A049',gg_unit_Hblm_0508))
    call IssueImmediateOrder(GetLastCreatedUnit(),"immolation")
    call AddSpecialEffectLocBJ(udg_Fire_Wall_Location,"Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=5
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_Fire_Wall_Loop_Location=PolarProjectionBJ(udg_Fire_Wall_Location,(udg_Fire_Wall_Distance*I2R(GetForLoopIndexA())),(GetUnitFacing(gg_unit_Hblm_0508)-90.00))
    call CreateNUnitsAtLoc(1,'h01E',Player(3),udg_Fire_Wall_Loop_Location,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(udg_Fire_Wall_Duration,'BTLF',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A06G',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A06G',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A049',gg_unit_Hblm_0508))
    call IssueImmediateOrder(GetLastCreatedUnit(),"immolation")
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(150.00,udg_Fire_Wall_Loop_Location,Condition(function Trig_Kael_Starts_Func001Func012Func008001003)),function Trig_Kael_Starts_Func001Func012Func008A)
    call AddSpecialEffectLocBJ(udg_Fire_Wall_Loop_Location,"Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call AddSpecialEffectLocBJ(udg_Fire_Wall_Loop_Location,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call AddSpecialEffectLocBJ(udg_Fire_Wall_Loop_Location,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_Fire_Wall_Loop_Location_2=PolarProjectionBJ(udg_Fire_Wall_Location,(udg_Fire_Wall_Distance*I2R(GetForLoopIndexA())),(GetUnitFacing(gg_unit_Hblm_0508)+90.00))
    call CreateNUnitsAtLoc(1,'h01E',Player(3),udg_Fire_Wall_Loop_Location_2,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(udg_Fire_Wall_Duration,'BTLF',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A06G',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A06G',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A049',gg_unit_Hblm_0508))
    call IssueImmediateOrder(GetLastCreatedUnit(),"immolation")
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(150.00,udg_Fire_Wall_Loop_Location_2,Condition(function Trig_Kael_Starts_Func001Func012Func022001003)),function Trig_Kael_Starts_Func001Func012Func022A)
    call AddSpecialEffectLocBJ(udg_Fire_Wall_Loop_Location_2,"Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call AddSpecialEffectLocBJ(udg_Fire_Wall_Loop_Location_2,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call AddSpecialEffectLocBJ(udg_Fire_Wall_Loop_Location_2,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_Fire_Wall_Loop_Location)
    call RemoveLocation(udg_Fire_Wall_Loop_Location_2)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call RemoveLocation(udg_Fire_Wall_Location)
    call GroupClear(udg_Fire_Wall_Group)
    else
    if(Trig_Kael_Starts_Func001Func001C())then
    set udg_PyreTarget=GetSpellTargetUnit()
    call EnableTrigger(gg_trg_Pyre_Damage)
    call PolledWait(5.00)
    call DisableTrigger(gg_trg_Pyre_Damage)
    else
    if(Trig_Kael_Starts_Func001Func001Func001Func001C())then
    set udg_TargetLoc=GetUnitLoc(GetTriggerUnit())
    set udg_NovaMana=GetUnitStateSwap(UNIT_STATE_MAX_MANA,GetTriggerUnit())
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=13
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    set udg_TempLoc=PolarProjectionBJ(udg_TargetLoc,610.00,(I2R(GetForLoopIndexA())*28.00))
    call CreateNUnitsAtLocFacingLocBJ(1,'h01R',GetOwningPlayer(GetTriggerUnit()),udg_TargetLoc,udg_TempLoc)
    call UnitApplyTimedLifeBJ(1.25,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"move",udg_TempLoc)
    call RemoveLocation(udg_TempLoc)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(100.00,udg_TargetLoc,Condition(function Trig_Kael_Starts_Func001Func001Func001Func001Func004002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Kael_Starts_Func001Func001Func001Func001Func005A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call PolledWait(0.10)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(200.00,udg_TargetLoc,Condition(function Trig_Kael_Starts_Func001Func001Func001Func001Func008002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Kael_Starts_Func001Func001Func001Func001Func009A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call PolledWait(0.10)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(300.00,udg_TargetLoc,Condition(function Trig_Kael_Starts_Func001Func001Func001Func001Func012002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Kael_Starts_Func001Func001Func001Func001Func013A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call PolledWait(0.10)
    call ResetUnitAnimation(gg_unit_Hblm_0508)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(400.00,udg_TargetLoc,Condition(function Trig_Kael_Starts_Func001Func001Func001Func001Func017002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Kael_Starts_Func001Func001Func001Func001Func018A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call PolledWait(0.10)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(635.00,udg_TargetLoc,Condition(function Trig_Kael_Starts_Func001Func001Func001Func001Func021002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Kael_Starts_Func001Func001Func001Func001Func022A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call GroupClear(udg_FireNovaGroup)
    call RemoveLocation(udg_TargetLoc)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Kael_Starts takes nothing returns nothing
    set gg_trg_Kael_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Kael_Starts,function Trig_Kael_Starts_Actions)
    endfunction