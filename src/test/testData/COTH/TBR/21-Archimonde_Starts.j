function Trig_Archimonde_Starts_Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANsy'))then
    return false
    endif
    return true
    endfunction
    function Trig_Archimonde_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEmb'))then
    return false
    endif
    return true
    endfunction
    function Trig_Archimonde_Starts_Actions takes nothing returns nothing
    if(Trig_Archimonde_Starts_Func001C())then
    call UnitDamageTargetBJ(gg_unit_Uwar_0460,GetSpellTargetUnit(),(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Uwar_0460,true))*1.25),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    if(Trig_Archimonde_Starts_Func001Func001Func001C())then
    call EnableTrigger(gg_trg_Nether_Portal_Teleport)
    call PlaySoundOnUnitBJ(gg_snd_BigBadVoodooSpellBirth1,100,GetTriggerUnit())
    set udg_NetherPortalPoint=GetSpellTargetLoc()
    call PlaySoundAtPointBJ(gg_snd_ShimmeringPortalBirth,100,udg_NetherPortalPoint,0)
    call CreateNUnitsAtLoc(1,'nwad',Player(4),udg_NetherPortalPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(10.00,'BTLF',GetLastCreatedUnit())
    call PolledWait(7.75)
    call UnitAddAbilityBJ('ACr1',gg_unit_Uwar_0460)
    call CreateNUnitsAtLoc(3,'n00I',Player(4),udg_NetherPortalPoint,bj_UNIT_FACING)
    call PolledWait(1.25)
    call CreateNUnitsAtLoc(3,'n00I',Player(4),udg_NetherPortalPoint,bj_UNIT_FACING)
    call PolledWait(1.25)
    call CreateNUnitsAtLoc(3,'n00I',Player(4),udg_NetherPortalPoint,bj_UNIT_FACING)
    call PolledWait(1.25)
    call CreateNUnitsAtLoc(2,'n00J',Player(4),udg_NetherPortalPoint,bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2,'npfm',Player(4),udg_NetherPortalPoint,bj_UNIT_FACING)
    call PolledWait(1.00)
    call CreateNUnitsAtLoc(1,'nfov',Player(4),udg_NetherPortalPoint,bj_UNIT_FACING)
    call PolledWait(1.00)
    call CreateNUnitsAtLoc(1,'n00K',Player(4),udg_NetherPortalPoint,bj_UNIT_FACING)
    call UnitRemoveAbilityBJ('ACr1',gg_unit_Uwar_0460)
    call PlaySoundAtPointBJ(gg_snd_ShimmeringPortalDeath,100,udg_NetherPortalPoint,0)
    call DisableTrigger(gg_trg_Nether_Portal_Teleport)
    call RemoveLocation(udg_NetherPortalPoint)
    else
    endif
    endif
    endfunction
    function InitTrig_Archimonde_Starts takes nothing returns nothing
    set gg_trg_Archimonde_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Archimonde_Starts,function Trig_Archimonde_Starts_Actions)
    endfunction