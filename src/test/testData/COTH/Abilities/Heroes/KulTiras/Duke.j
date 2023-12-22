//! zinc
  library DukeAbils requires CothUtilities {

    function RejuvTeal ()  -> nothing {
      unit RejuvUnit = LoadUnitHandle(TimerData, GetHandleId(GetExpiredTimer()), 10000);
      integer RejuvIteractionCount = LoadInteger(UnitAbilityData, GetHandleId(RejuvUnit), 10002);
      effect RejuvEffectHeal;
      AddUnitLifePercent(RejuvUnit, RejuvIteractionCount + 4);
      if (RejuvIteractionCount == 12) {
        RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(RejuvUnit), 10001);
        PauseTimer(GetExpiredTimer());
        DestroyEffect(RejuvEffectHeal);
        RemoveSavedHandle(UnitAbilityData, GetHandleId(RejuvUnit), 10001);
        RemoveSavedInteger(UnitAbilityData, GetHandleId(RejuvUnit), 10002);
        RemoveSavedHandle(UnitAbilityData, GetHandleId(RejuvUnit), 10003);
        RemoveSavedHandle(TimerData, GetHandleId(GetExpiredTimer()), 10000);
        DestroyTimer(GetExpiredTimer());
        RejuvUnit = null;
        RejuvEffectHeal = null;
        return;
      } else if (RejuvIteractionCount > 12) {
        DestroyTimer(GetExpiredTimer());
      }
      RejuvIteractionCount += 1;
      SaveInteger(UnitAbilityData, GetHandleId(RejuvUnit), 10002, RejuvIteractionCount);
      RejuvUnit = null;
      RejuvEffectHeal = null;
    }

    function RejuvStop ()  -> nothing {
      effect RejuvEffectStart;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Duke) return;
      RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      DestroyEffect(RejuvEffectStart);
      RejuvEffectStart = null;
    }

    function RejuvEffectSpell ()  -> nothing {
      timer RejuvTimer;
      integer RejuvIteractionCount;
      effect RejuvEffectHeal;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Duke) return;
      RejuvTimer = CreateTimer();
      RejuvIteractionCount = 0;

      DestroyEffect( LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000) );
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);

      RejuvEffectHeal = AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Tranquility\\TranquilityTarget.mdl", GetTriggerUnit(), "overhead");

      SaveEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10001, RejuvEffectHeal);
      SaveInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10002, RejuvIteractionCount);
      SaveTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10003, RejuvTimer);

      SaveUnitHandle(TimerData, GetHandleId(RejuvTimer), 10000, GetTriggerUnit());

      TimerStart(RejuvTimer, 2, true, function RejuvTeal);
      AddUnitLifePercent(GetTriggerUnit(), 4);
      RejuvTimer = null;
      RejuvEffectHeal = null;
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      unit PistolMissle;
      location TempLoc = null;
      location TargetLoc = GetSpellTargetLoc();
      group PistolTargets;
      unit PistolTarget;
      unit Caster = GetTriggerUnit();
      if (GetUnitTypeId(GetTriggerUnit()) != Duke) return;
      
      //Омоложение
      if (GetSpellAbilityId() == 'AEsf') {
        //Жёлтый кружочек
        RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
        //Зелёный кружочек
        RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10001);
        //Таймер хила
        RejuvTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10003);

        //Жёлтый кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
        //Зелёный кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10001);
        //Число итеракций хила
        RemoveSavedInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10002);
        //Таймер хила
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10003);
        //Хендл юнита, сохранённый в таймере хила
        RemoveSavedHandle(TimerData, GetHandleId(RejuvTimer), 10000);


        PauseTimer( RejuvTimer );
        DestroyTimer( RejuvTimer );
        DestroyEffect(RejuvEffectStart);
        DestroyEffect(RejuvEffectHeal);
        
        RejuvEffectStart = AddSpecialEffectTarget("RejuvTarget.mdx", GetTriggerUnit(), "overhead");
        SaveEffectHandle( UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000, RejuvEffectStart );
      }
      //Многоствольный пистолет
      if (GetSpellAbilityId() == 'A0GZ') {
        PistolMissle = CreateUnitAtLoc(GetTriggerPlayer(), 'e006', GetUnitLoc(GetTriggerUnit()), AngleBetweenPoints(GetSpellTargetLoc(), GetUnitLoc(GetTriggerUnit())));
        UnitApplyTimedLife(PistolMissle, 'BTLF', 1);
        IssuePointOrderLoc(PistolMissle, "attackground", PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 600, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc())) );

        PistolMissle = CreateUnitAtLoc(GetTriggerPlayer(), 'e006', GetUnitLoc(GetTriggerUnit()), AngleBetweenPoints(GetSpellTargetLoc(), GetUnitLoc(GetTriggerUnit())));
        UnitApplyTimedLife(PistolMissle, 'BTLF', 1);
        IssuePointOrderLoc(PistolMissle, "attackground", PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 600, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()) + 12.5) );

        PistolMissle = CreateUnitAtLoc(GetTriggerPlayer(), 'e006', GetUnitLoc(GetTriggerUnit()), AngleBetweenPoints(GetSpellTargetLoc(), GetUnitLoc(GetTriggerUnit())));
        UnitApplyTimedLife(PistolMissle, 'BTLF', 1);
        IssuePointOrderLoc(PistolMissle, "attackground", PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 600, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()) - 12.5));
        PolledWait( DistanceBetweenPoints(GetUnitLoc(GetTriggerUnit()), PolarProjectionBJ(GetUnitLoc(GetTriggerUnit()), 600, AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()))) / 1100 );

        PolledWait(0.3);
        PistolTargets = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(PistolTargets, TargetLoc, 800, null);
        while (FirstOfGroup(PistolTargets) != null) {
          PistolTarget = FirstOfGroup(PistolTargets);
          if
          (
            IsUnitAliveBJ(PistolTarget) &&
            !UnitHasBuffBJ(PistolTarget, 'B01E') &&
            !UnitHasBuffBJ(PistolTarget, 'B03N') &&
            UnitHasBuffBJ(PistolTarget, 'B04T')
          )
          {
            UnitDamageTarget(Caster, PistolTarget, GetHeroAgi(Caster, true) * 0.3, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_AXE_MEDIUM_CHOP );
            UnitDamageTarget(Caster, PistolTarget, GetHeroAgi(Caster, true) * 0.3, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_AXE_MEDIUM_CHOP );
            UnitRemoveAbility(PistolTarget, 'B04T');
          }
          GroupRemoveUnit(PistolTargets, PistolTarget);
        }
      }


      PistolMissle = null;
      RemoveLocation(TempLoc);
      TempLoc = null;
      RemoveLocation(TargetLoc);
      TargetLoc = null;
      DestroyGroup(PistolTargets);
      PistolTargets = null;
      PistolTarget = null;
      Caster = null;
      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
    }

    function DukeDamaged ()  -> nothing {
      effect RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      effect RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10001);
      timer RejuvTimer;
      if (RejuvEffectStart != null) {
        DestroyEffect(RejuvEffectStart);
        //Жёлтый кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
        IssueImmediateOrder(GetTriggerUnit(), "stop");
      } else if (RejuvEffectHeal != null) {
        DestroyEffect(RejuvEffectHeal);
        RejuvTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10003);
        //Зелёный кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10001);
        //Число итеракций хила
        RemoveSavedInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10002);
        //Таймер хила
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10003);
        //Хендл юнита, сохранённый в таймере хила
        RemoveSavedHandle(TimerData, GetHandleId(RejuvTimer), 10000);
        PauseTimer(RejuvTimer);
        DestroyTimer(RejuvTimer);
      }
    }

    function NetCast ()  -> nothing {
      if (GetSpellAbilityId() != 'Aens') return;
      if (UnitHasBuffBJ(GetSpellTargetUnit(), 'Bams')) {
        IssueImmediateOrder(GetSpellAbilityUnit(), "stop");
        DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cFFFFD700У этого воина иммунитет к магии!");
      }
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(DukeOnDamage, function DukeDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_FINISH, null);
      TriggerAddAction(t, function RejuvEffectSpell);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_ENDCAST, null);
      TriggerAddAction(t, function RejuvStop);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_CAST, null);
      TriggerAddAction(t, function NetCast);
    }
  }
//! endzinc