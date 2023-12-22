//! zinc
  library DaelinAbils requires CothUtilities {

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
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Daelin) return;
      RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      DestroyEffect(RejuvEffectStart);
      RejuvEffectStart = null;
    }

    function RejuvEffectSpell ()  -> nothing {
      timer RejuvTimer;
      integer RejuvIteractionCount;
      effect RejuvEffectHeal;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Daelin) return;
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

    function AnchorFilter ()  -> boolean {
      return !UnitHasBuffBJ(GetFilterUnit(), 'Bams') && IsUnitEnemy(GetFilterUnit(), Player(2));
    }

    function AnchorPause ()  -> nothing {
      PauseUnit(GetEnumUnit(), true);
    }

    function AnchorUnpause ()  -> nothing {
      PauseUnit(GetEnumUnit(), false);
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      group AnchorTargets;
      unit AnchorCaster;

      location TargetLoc = GetSpellTargetLoc();
      unit Caster = GetTriggerUnit();
      if (GetUnitTypeId(GetTriggerUnit()) != Daelin) return;
      
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
      //Метание Якоря
      if (GetSpellAbilityId() == 'A0A4') {
        AnchorCaster = CreateUnitAtLoc(GetTriggerPlayer(), 'o008', GetUnitLoc(GetTriggerUnit()), AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()));
        UnitAddAbility(AnchorCaster, 'A0A5');
        SetUnitAbilityLevel(AnchorCaster, 'A0A5', GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()));
        IssuePointOrderLoc(AnchorCaster, "clusterrockets", GetSpellTargetLoc());
        UnitApplyTimedLife(AnchorCaster, 'BTLF', 3);

        AnchorCaster = CreateUnitAtLoc(GetTriggerPlayer(), 'o008', GetUnitLoc(GetTriggerUnit()), AngleBetweenPoints(GetUnitLoc(GetTriggerUnit()), GetSpellTargetLoc()));
        UnitAddAbility(AnchorCaster, 'A0FY');
        SetUnitAbilityLevel(AnchorCaster, 'A0FY', GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()));
        IssuePointOrderLoc(AnchorCaster, "clusterrockets", GetSpellTargetLoc());
        UnitApplyTimedLife(AnchorCaster, 'BTLF', 3);

        PolledWait(0.5);
        PlaySoundAtPointBJ(gg_snd_MetalHeavyChopMetal2, 100, TargetLoc, 0);
        AnchorTargets = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(AnchorTargets, TargetLoc, 185, Filter(function AnchorFilter));
        ForGroup(AnchorTargets, function AnchorPause);
        PolledWait(DistanceBetweenPoints(GetUnitLoc(Caster), TargetLoc) / 300);
        ForGroup(AnchorTargets, function AnchorUnpause);
      }

      if (GetSpellAbilityId() == 'ACfd') {
        PlaySoundOnUnitBJ(gg_snd_HumanCallToArmsWhat1, 100, GetSpellTargetUnit());
        SetUnitOwner(GetSpellTargetUnit(), GetTriggerPlayer(), true);
        ReplaceUnitBJ(GetSpellTargetUnit(), 'nbld', bj_UNIT_STATE_METHOD_RELATIVE);
      }

      DestroyGroup(AnchorTargets);
      AnchorTargets = null;
      AnchorCaster = null;
      RemoveLocation(TargetLoc);
      TargetLoc = null;
      Caster = null;
      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
    }

    function DaelinDamaged ()  -> nothing {
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

    function DaelinLearnSkill ()  -> nothing {
      if (GetLearnedSkill() != 'ACfd') return;
      UnitAddAbility(GetTriggerUnit(), 'A07A');
      SetPlayerAbilityAvailable(GetTriggerPlayer(), 'A07A', false);
      SetUnitAbilityLevel(GetTriggerUnit(), 'A07A', GetLearnedSkillLevel());
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(DaelinOnDamage, function DaelinDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_HERO_SKILL, null);
      TriggerAddAction(t, function DaelinLearnSkill);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_FINISH, null);
      TriggerAddAction(t, function RejuvEffectSpell);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_ENDCAST, null);
      TriggerAddAction(t, function RejuvStop);
    }
  }
//! endzinc