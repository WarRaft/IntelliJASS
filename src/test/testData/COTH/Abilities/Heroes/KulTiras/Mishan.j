//! zinc
  library MishanAbils requires CothUtilities {

    function RejuvTeal ()  -> nothing {
      unit RejuvUnit = LoadUnitHandle(TimerData, GetHandleId(GetExpiredTimer()), 300);
      integer RejuvIteractionCount = LoadInteger(UnitAbilityData, GetHandleId(RejuvUnit), 302);
      effect RejuvEffectHeal;
      AddUnitLifePercent(RejuvUnit, RejuvIteractionCount + 4);
      if (RejuvIteractionCount == 12) {
        RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(RejuvUnit), 301);
        PauseTimer(GetExpiredTimer());
        DestroyEffect(RejuvEffectHeal);
        RemoveSavedHandle(UnitAbilityData, GetHandleId(RejuvUnit), 301);
        RemoveSavedInteger(UnitAbilityData, GetHandleId(RejuvUnit), 302);
        RemoveSavedHandle(UnitAbilityData, GetHandleId(RejuvUnit), 303);
        RemoveSavedHandle(TimerData, GetHandleId(GetExpiredTimer()), 300);
        DestroyTimer(GetExpiredTimer());
        RejuvUnit = null;
        RejuvEffectHeal = null;
        return;
      } else if (RejuvIteractionCount > 12) {
        DestroyTimer(GetExpiredTimer());
      }
      RejuvIteractionCount += 1;
      SaveInteger(UnitAbilityData, GetHandleId(RejuvUnit), 302, RejuvIteractionCount);
      RejuvUnit = null;
      RejuvEffectHeal = null;
    }

    function RejuvStop ()  -> nothing {
      effect RejuvEffectStart;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Mishan) return;
      RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 300);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 300);
      DestroyEffect(RejuvEffectStart);
      RejuvEffectStart = null;
    }

    function RejuvEffectSpell ()  -> nothing {
      timer RejuvTimer;
      integer RejuvIteractionCount;
      effect RejuvEffectHeal;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Mishan) return;
      RejuvTimer = CreateTimer();
      RejuvIteractionCount = 0;

      DestroyEffect( LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 300) );
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 300);

      RejuvEffectHeal = AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Tranquility\\TranquilityTarget.mdl", GetTriggerUnit(), "overhead");

      SaveEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 301, RejuvEffectHeal);
      SaveInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 302, RejuvIteractionCount);
      SaveTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 303, RejuvTimer);

      SaveUnitHandle(TimerData, GetHandleId(RejuvTimer), 300, GetTriggerUnit());

      TimerStart(RejuvTimer, 2, true, function RejuvTeal);
      AddUnitLifePercent(GetTriggerUnit(), 4);
      RejuvTimer = null;
      RejuvEffectHeal = null;
    }

    function MishanDuelAttackingFilter ()  -> boolean {
      unit UnitMishan = LoadUnitHandle(UnitAbilityData, GetHandleId(GetTriggeringTrigger()), 100);
      unit DuelTarget = LoadUnitHandle(UnitAbilityData, GetHandleId(UnitMishan), 100);
      boolean Passed =
      (IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(UnitMishan)) &&
      GetTriggerUnit() == DuelTarget &&
      GetAttacker() == UnitMishan );
      UnitMishan = null;
      DuelTarget = null;
      return Passed;
    }

    function MishanDuelDamagingFilter ()  -> boolean {
      unit UnitMishan = LoadUnitHandle(UnitAbilityData, GetHandleId(GetTriggeringTrigger()), 100);
      unit DuelTarget = LoadUnitHandle(UnitAbilityData, GetHandleId(UnitMishan), 100);
      boolean Passed =
      (IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(UnitMishan)) &&
      GetTriggerUnit() == DuelTarget &&
      GetEventDamageSource() == UnitMishan);
      UnitMishan = null;
      DuelTarget = null;
      return Passed;
    }

    function MishanDamaging ()  -> nothing {
      unit UnitMishan = LoadUnitHandle(UnitAbilityData, GetHandleId(GetTriggeringTrigger()), 100);
      unit DuelTarget = LoadUnitHandle(UnitAbilityData, GetHandleId(UnitMishan), 100);
      real DuelDamage = LoadReal(UnitAbilityData, GetHandleId(UnitMishan), 100);
      integer CountOfDuelDamages = LoadInteger(UnitAbilityData, GetHandleId(UnitMishan), 100);
      texttag DuelDamageMessage;
      DisableTrigger(GetTriggeringTrigger());
      DuelDamage += GetEventDamage();
      CountOfDuelDamages += 1;
      if (CountOfDuelDamages >= 4) {
        if (!UnitHasBuffBJ(DuelTarget, 'B03N') && !UnitHasBuffBJ(DuelTarget, 'B01E')) {
          DuelDamage = DuelDamage * (0.2 + 0.1 * GetUnitAbilityLevel(UnitMishan, 'A02F'));
          UnitDamageTarget(UnitMishan, DuelTarget, DuelDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
          UnitDamageTarget(UnitMishan, DuelTarget, DuelDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
          DuelDamageMessage = CreateTextTagLocBJ( I2S(R2I(DuelDamage)) + "!", GetUnitLoc(UnitMishan), 0, 10, 100, 0, 0, 0 );
          SetTextTagPermanent(DuelDamageMessage, false);
          SetTextTagVelocityBJ(DuelDamageMessage, 15, 90);
          SetTextTagLifespan(DuelDamageMessage, 3);
          SetTextTagFadepoint(DuelDamageMessage, 1);
          RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggeringTrigger()), 100);
          RemoveSavedHandle(UnitAbilityData, GetHandleId(UnitMishan), 100);
          RemoveSavedReal(UnitAbilityData, GetHandleId(UnitMishan), 100);
          RemoveSavedInteger(UnitAbilityData, GetHandleId(UnitMishan), 100);
          DestroyTrigger(LoadTriggerHandle(UnitAbilityData, GetHandleId(UnitMishan), 101));
          RemoveSavedHandle(UnitAbilityData, GetHandleId(UnitMishan), 101);
        }
      } else {
        SaveInteger(UnitAbilityData, GetHandleId(UnitMishan), 100, CountOfDuelDamages);
        SaveReal(UnitAbilityData, GetHandleId(UnitMishan), 100, DuelDamage);
      }
      
      UnitMishan = null;
      DuelTarget = null;
      DuelDamage = 0;
      CountOfDuelDamages = 0;
      DuelDamageMessage = null;
    }

    function MishanAttacking ()  -> nothing {
      unit UnitMishan = LoadUnitHandle(UnitAbilityData, GetHandleId(GetTriggeringTrigger()), 100);
      unit DuelTarget = LoadUnitHandle(UnitAbilityData, GetHandleId(UnitMishan), 100);
      real DuelDamage = LoadReal(UnitAbilityData, GetHandleId(UnitMishan), 100);
      integer CountOfDuelDamages = LoadInteger(UnitAbilityData, GetHandleId(UnitMishan), 100);
      trigger MishanDuelDamaging = CreateTrigger();
      SaveUnitHandle(UnitAbilityData, GetHandleId(MishanDuelDamaging), 100, UnitMishan);
      TriggerRegisterUnitEvent(MishanDuelDamaging, DuelTarget, EVENT_UNIT_DAMAGED);
      TriggerAddAction(MishanDuelDamaging, function MishanDamaging);
      TriggerAddCondition(MishanDuelDamaging, Filter(function MishanDuelDamagingFilter));
      TriggerSleepAction(0.2);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(MishanDuelDamaging), 100);
      DestroyTrigger(MishanDuelDamaging);
      MishanDuelDamaging = null;
      UnitMishan = null;
      DuelTarget = null;
      DuelDamage = 0;
      CountOfDuelDamages = 0;
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      UnitStats MishanUnit;
      real StabDamage = 0;
      texttag StabDamageMessage;

      unit DuelTarget = LoadUnitHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100);
      real DuelDamage = LoadReal(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100);
      integer CountOfDuelDamages = LoadInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100);
      trigger MishanDuelAttacking = LoadTriggerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 101);
      texttag DuelDamageMessage;

      group ThroatTargetsUnfiltered;
      group ThroatTargetsFiltered;
      unit ThoatTargetFiltering;
      unit ThroatTarget;
      real ThroatDamage = 0;
      texttag ThroatDamageMessage;
      if (GetUnitTypeId(GetTriggerUnit()) != Mishan) return;
      MishanUnit = UnitStats.create(GetTriggerUnit());
      //Омоложение
      if (GetSpellAbilityId() == 'AEsf') {
        //Жёлтый кружочек
        RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 300);
        //Зелёный кружочек
        RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 301);
        //Таймер хила
        RejuvTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 303);

        //Жёлтый кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 300);
        //Зелёный кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 301);
        //Число итеракций хила
        RemoveSavedInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 302);
        //Таймер хила
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 303);
        //Хендл юнита, сохранённый в таймере хила
        RemoveSavedHandle(TimerData, GetHandleId(RejuvTimer), 300);


        PauseTimer( RejuvTimer );
        DestroyTimer( RejuvTimer );
        DestroyEffect(RejuvEffectStart);
        DestroyEffect(RejuvEffectHeal);
        
        RejuvEffectStart = AddSpecialEffectTarget("RejuvTarget.mdx", GetTriggerUnit(), "overhead");
        SaveEffectHandle( UnitAbilityData, GetHandleId(GetTriggerUnit()), 300, RejuvEffectStart );
      }
      //Удар Ножом
      if (GetSpellAbilityId() == 'ACf3') {
        StabDamage =
        MishanUnit.GetDamage() * 0.08 *
        (GetUnitState(GetSpellTargetUnit(), UNIT_STATE_MAX_LIFE) / 100) +
        75 * GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId());
        if (!IsUnitMagicImmune(GetSpellTargetUnit())) {
          UnitDamageTarget(GetTriggerUnit(), GetSpellTargetUnit(), StabDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
          UnitDamageTarget(GetTriggerUnit(), GetSpellTargetUnit(), StabDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
        }
        if (GetSpellTargetUnit() == DuelTarget) {
          DuelDamage += StabDamage;
          CountOfDuelDamages += 1;
          SaveInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100, CountOfDuelDamages);
          SaveReal(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100, DuelDamage);
        }
        StabDamageMessage = CreateTextTagLocBJ
        (
          I2S(R2I(StabDamage)) + "!",
          GetUnitLoc(GetTriggerUnit()),
          0, 10, 100, 0, 0, 0
        );
        SetTextTagPermanent(StabDamageMessage, false);
        SetTextTagVelocityBJ(StabDamageMessage, 15, 90);
        SetTextTagLifespan(StabDamageMessage, 3);
        SetTextTagFadepoint(StabDamageMessage, 1);
      }
      //Перерезать Горло
      if (GetSpellAbilityId() == 'A00J') {
        ThroatTargetsUnfiltered = CreateGroup();
        ThroatTargetsFiltered = CreateGroup();
        ThroatDamage = MishanUnit.GetDamage() * 0.75 + 50 * GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId());
        if (GetSpellTargetUnit() == DuelTarget) {
          DuelDamage += ThroatDamage;
          CountOfDuelDamages += 1;
          SaveInteger(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100, CountOfDuelDamages);
          SaveReal(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100, DuelDamage);
        }
        PolledWait(0.2);
        GroupEnumUnitsInRangeOfLoc(ThroatTargetsUnfiltered, GetUnitLoc(MishanUnit.Unit), 170, null);
        while (FirstOfGroup(ThroatTargetsUnfiltered) != null) {
          ThoatTargetFiltering = FirstOfGroup(ThroatTargetsUnfiltered);
          if
          (
            IsUnitType(ThoatTargetFiltering, UNIT_TYPE_GROUND) &&
            !IsUnitType(ThoatTargetFiltering, UNIT_TYPE_STRUCTURE) &&
            !UnitHasBuffBJ(ThoatTargetFiltering, 'Bams') &&
            IsUnitEnemy(ThoatTargetFiltering, GetOwningPlayer(MishanUnit.Unit)) &&
            !UnitHasBuffBJ(ThoatTargetFiltering, 'B01E') &&
            !UnitHasBuffBJ(ThoatTargetFiltering, 'B03N')
          ) GroupAddUnit(ThroatTargetsFiltered, ThoatTargetFiltering);
          GroupRemoveUnit(ThroatTargetsUnfiltered, ThoatTargetFiltering);
        }
        while (FirstOfGroup(ThroatTargetsFiltered) != null) {
          ThroatTarget = FirstOfGroup(ThroatTargetsFiltered);
          UnitDamageTarget(MishanUnit.Unit, ThroatTarget, ThroatDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
          UnitDamageTarget(MishanUnit.Unit, ThroatTarget, ThroatDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
          GroupRemoveUnit(ThroatTargetsFiltered, ThroatTarget);
        }
        ThroatDamageMessage = CreateTextTagLocBJ
        (
          I2S(R2I(ThroatDamage)) + "!",
          GetUnitLoc(MishanUnit.Unit),
          0, 10, 100, 0, 0, 0
        );
        SetTextTagPermanent(ThroatDamageMessage, false);
        SetTextTagVelocityBJ(ThroatDamageMessage, 15, 90);
        SetTextTagLifespan(ThroatDamageMessage, 3);
        SetTextTagFadepoint(ThroatDamageMessage, 1);
      }
      //Дуэль
      if (GetSpellAbilityId() == 'A02F') {
        DuelDamage = 0;
        CountOfDuelDamages = 0;
        SaveInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100, CountOfDuelDamages);
        SaveReal(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100, DuelDamage);
        DuelTarget = GetSpellTargetUnit();
        SaveUnitHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100, DuelTarget);
        DestroyTrigger(MishanDuelAttacking);
        MishanDuelAttacking = CreateTrigger();
        SaveUnitHandle(UnitAbilityData, GetHandleId(MishanDuelAttacking), 100, GetTriggerUnit());
        SaveTriggerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 101, MishanDuelAttacking);
        TriggerRegisterAnyUnitEventBJ(MishanDuelAttacking, EVENT_PLAYER_UNIT_ATTACKED);
        TriggerAddAction(MishanDuelAttacking, function MishanAttacking);
        TriggerAddCondition(MishanDuelAttacking, Filter(function MishanDuelAttackingFilter));
        PolledWait(25);
        if (LoadUnitHandle(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100) != null) {
          if (!UnitHasBuffBJ(DuelTarget, 'B03N') && !UnitHasBuffBJ(DuelTarget, 'B01E')) {
            DuelDamage = DuelDamage * (0.2 + 0.1 * GetUnitAbilityLevel(MishanUnit.Unit, 'A02F'));
            UnitDamageTarget(MishanUnit.Unit, DuelTarget, DuelDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
            UnitDamageTarget(MishanUnit.Unit, DuelTarget, DuelDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
            DuelDamageMessage = CreateTextTagLocBJ( I2S(R2I(DuelDamage)) + "!", GetUnitLoc(MishanUnit.Unit), 0, 10, 100, 0, 0, 0 );
            SetTextTagPermanent(DuelDamageMessage, false);
            SetTextTagVelocityBJ(DuelDamageMessage, 15, 90);
            SetTextTagLifespan(DuelDamageMessage, 3);
            SetTextTagFadepoint(DuelDamageMessage, 1);
          }

          DestroyTrigger(MishanDuelAttacking);
          MishanDuelAttacking = null;
          RemoveSavedHandle(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100);
          RemoveSavedHandle(UnitAbilityData, GetHandleId(MishanUnit.Unit), 101);
          RemoveSavedReal(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100);
          RemoveSavedInteger(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100);
        }
      }

      if (CountOfDuelDamages >= 4) {
        if (!UnitHasBuffBJ(DuelTarget, 'B03N') && !UnitHasBuffBJ(DuelTarget, 'B01E')) {
          DuelDamage = DuelDamage * (0.2 + 0.1 * GetUnitAbilityLevel(MishanUnit.Unit, 'A02F'));
          UnitDamageTarget(MishanUnit.Unit, DuelTarget, DuelDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
          UnitDamageTarget(MishanUnit.Unit, DuelTarget, DuelDamage / 2, true, false, ATTACK_TYPE_MELEE, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WOOD_MEDIUM_STAB);
          DuelDamageMessage = CreateTextTagLocBJ( I2S(R2I(DuelDamage)) + "!", GetUnitLoc(MishanUnit.Unit), 0, 10, 100, 0, 0, 0 );
          SetTextTagPermanent(DuelDamageMessage, false);
          SetTextTagVelocityBJ(DuelDamageMessage, 15, 90);
          SetTextTagLifespan(DuelDamageMessage, 3);
          SetTextTagFadepoint(DuelDamageMessage, 1);
          RemoveSavedHandle(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100);
          RemoveSavedHandle(UnitAbilityData, GetHandleId(MishanUnit.Unit), 101);
          RemoveSavedReal(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100);
          RemoveSavedInteger(UnitAbilityData, GetHandleId(MishanUnit.Unit), 100);
          DestroyTrigger(MishanDuelAttacking);
          MishanDuelAttacking = null;
        }
      }

      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
      ThroatDamageMessage = null;
      ThroatDamage = 0;
      ThroatTarget = null;
      ThoatTargetFiltering = null;
      DestroyGroup(ThroatTargetsFiltered);
      ThroatTargetsFiltered = null;
      DestroyGroup(ThroatTargetsUnfiltered);
      ThroatTargetsUnfiltered = null;
      CountOfDuelDamages = 0;
      DuelDamage = 0;
      DuelTarget = null;
      StabDamageMessage = null;
      StabDamage = 0;
      MishanUnit.destroy();
      DuelDamageMessage = null;

    }

    function MishanDamaged ()  -> nothing {
      effect RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 300);
      effect RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 301);
      timer RejuvTimer;
      if (RejuvEffectStart != null) {
        DestroyEffect(RejuvEffectStart);
        //Жёлтый кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 300);
        IssueImmediateOrder(GetTriggerUnit(), "stop");
      } else if (RejuvEffectHeal != null) {
        DestroyEffect(RejuvEffectHeal);
        RejuvTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 303);
        //Зелёный кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 301);
        //Число итеракций хила
        RemoveSavedInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 302);
        //Таймер хила
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 303);
        //Хендл юнита, сохранённый в таймере хила
        RemoveSavedHandle(TimerData, GetHandleId(RejuvTimer), 300);
        PauseTimer(RejuvTimer);
        DestroyTimer(RejuvTimer);
      }

    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(MishanOnDamage, function MishanDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_FINISH, null);
      TriggerAddAction(t, function RejuvEffectSpell);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_ENDCAST, null);
      TriggerAddAction(t, function RejuvStop);
    }
  }
//! endzinc