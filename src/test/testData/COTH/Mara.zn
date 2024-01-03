//! zinc
  library MaraAbils requires CothUtilities {

    function UnityFilter ()  -> boolean {
      return UnitHasBuffBJ(GetFilterUnit(), 'Bspl');
    }

    struct UnityStruct {
      group Group;
      unit Caster;

      static method create ()  -> thistype {
        UnityStruct Unity = UnityStruct.allocate();
        Unity.Group = CreateGroup();
        Unity.Caster = GetTriggerUnit();
        GroupEnumUnitsInRangeOfLoc(Unity.Group, GetUnitLoc(Unity.Caster), 1500, Filter(function UnityFilter));
        return Unity;
      }

      method destroy ()  -> nothing {
        DestroyGroup(this.Group);
        this.Group = null;
        this.Caster = null;
        this.deallocate();
      }
    }

    function ShineFilter ()  -> boolean {
      return
      !IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE) &&
      IsUnitAliveBJ(GetFilterUnit()) &&
      !IsUnitType(GetFilterUnit(), UNIT_TYPE_MECHANICAL);
    }

    struct ShineStruct {
      effect Effect;
      group Targets;
      static method create ()  -> thistype {
        ShineStruct Shine = ShineStruct.allocate();
        Shine.Targets = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(Shine.Targets, GetUnitLoc(GetTriggerUnit()), 250, Filter(function ShineFilter));
        return Shine;
      }

      method destroy ()  -> nothing {
        DestroyGroup(this.Targets);
        this.Targets = null;

        this.Effect = null;
        this.deallocate();
      }
    }

    function JudgementDamage ()  -> nothing {
      JudgementStruct Judgement = LoadInteger(UnitAbilityData, GetHandleId(GetTriggeringTrigger()), 0);
      if
      (
        UnitHasBuffBJ(GetTriggerUnit(), 'Bmil') &&
        UnitHasBuffBJ(GetAttacker(), 'Bspl') &&
        !IsUnitInGroup(GetAttacker(), udg_StopGroup) &&
        IsUnitEnemy(GetAttacker(), GetOwningPlayer(GetTriggerUnit()))
      )
      {
        PolledWait( DistanceBetweenPoints(GetUnitLoc(GetAttacker()), GetUnitLoc(GetTriggerUnit())) / 1100 + 0.35 );
        UnitDamageTargetBJ(GetAttacker(), GetTriggerUnit(), 15 * GetUnitAbilityLevel(Judgement.Caster, Judgement.Level) + GetUnitState(Judgement.Caster, UNIT_STATE_MAX_LIFE) * 0.015, ATTACK_TYPE_MELEE, DAMAGE_TYPE_NORMAL);

      }
    }

    struct JudgementStruct {
      trigger DamagingByUnitsWithUnity;
      integer Level;
      unit Caster;
      static method create ()  -> thistype {
        JudgementStruct Judgement = JudgementStruct.allocate();
        Judgement.Caster = GetTriggerUnit();
        Judgement.DamagingByUnitsWithUnity = CreateTrigger();
        SaveInteger(UnitAbilityData, GetHandleId(Judgement.DamagingByUnitsWithUnity), 0, Judgement);
        TriggerRegisterAnyUnitEventBJ(Judgement.DamagingByUnitsWithUnity, EVENT_PLAYER_UNIT_ATTACKED);
        TriggerAddAction(Judgement.DamagingByUnitsWithUnity, function JudgementDamage);
        return Judgement;
      }

      method destroy ()  -> nothing {
        this.Caster = null;
        RemoveSavedInteger(UnitAbilityData, GetHandleId(this.DamagingByUnitsWithUnity), 0);
        DestroyTrigger(this.DamagingByUnitsWithUnity);
        this.DamagingByUnitsWithUnity = null;
        this.Level = 0;
        this.deallocate();
      }
    }

    function RejuvBlue ()  -> nothing {
      unit RejuvUnit = LoadUnitHandle(TimerData, GetHandleId(GetExpiredTimer()), 200);
      integer RejuvIteractionCount = LoadInteger(UnitAbilityData, GetHandleId(RejuvUnit), 202);
      effect RejuvEffectHeal;
      AddUnitLifePercent(RejuvUnit, RejuvIteractionCount + 4);
      if (RejuvIteractionCount == 12) {
        RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(RejuvUnit), 201);
        PauseTimer(GetExpiredTimer());
        DestroyEffect(RejuvEffectHeal);
        RemoveSavedHandle(UnitAbilityData, GetHandleId(RejuvUnit), 201);
        RemoveSavedInteger(UnitAbilityData, GetHandleId(RejuvUnit), 202);
        RemoveSavedHandle(UnitAbilityData, GetHandleId(RejuvUnit), 203);
        RemoveSavedHandle(TimerData, GetHandleId(GetExpiredTimer()), 200);
        DestroyTimer(GetExpiredTimer());
        RejuvUnit = null;
        RejuvEffectHeal = null;
        return;
      } else if (RejuvIteractionCount > 12) {
        DestroyTimer(GetExpiredTimer());
      }
      RejuvIteractionCount += 1;
      SaveInteger(UnitAbilityData, GetHandleId(RejuvUnit), 202, RejuvIteractionCount);
      RejuvUnit = null;
      RejuvEffectHeal = null;
    }

    function RejuvStop ()  -> nothing {
      effect RejuvEffectStart;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Mara) return;
      RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
      DestroyEffect(RejuvEffectStart);
      RejuvEffectStart = null;
    }

    function RejuvEffectSpell ()  -> nothing {
      timer RejuvTimer;
      integer RejuvIteractionCount;
      effect RejuvEffectHeal;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Mara) return;
      RejuvTimer = CreateTimer();
      RejuvIteractionCount = 0;

      DestroyEffect( LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200) );
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);

      RejuvEffectHeal = AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Tranquility\\TranquilityTarget.mdl", GetTriggerUnit(), "overhead");

      SaveEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 201, RejuvEffectHeal);
      SaveInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 202, RejuvIteractionCount);
      SaveTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 203, RejuvTimer);

      SaveUnitHandle(TimerData, GetHandleId(RejuvTimer), 200, GetTriggerUnit());

      TimerStart(RejuvTimer, 2, true, function RejuvBlue);
      AddUnitLifePercent(GetTriggerUnit(), 4);
      RejuvTimer = null;
      RejuvEffectHeal = null;
    }

    function ShieldRemove ()  -> nothing {
      unit ShieldOwner = LoadUnitHandle(UnitAbilityData, GetHandleId(GetExpiredTimer()), 100);
      texttag ShieldText = LoadTextTagHandle(UnitAbilityData, GetHandleId(ShieldOwner), 100);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetExpiredTimer()), 100);
      RemoveSavedInteger(UnitAbilityData, GetHandleId(ShieldOwner), 102);
      SetTextTagTextBJ(ShieldText, "", 10);

      UnitRemoveAbility(ShieldOwner, 'A01E');
      DestroyTimer(GetExpiredTimer());
    }

    function AddMagicResistance ()  -> nothing {
      UnitAddAbility(GetEnumUnit(), 'A0D5');
    }

    function RemoveMagicResistance ()  -> nothing {
      UnitRemoveAbility(GetEnumUnit(), 'A0D5');
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      unit Caster = GetTriggerUnit();

      texttag MaraShieldText;
      timer MaraShieldTimer;
      integer ShieldAmount;

      UnityStruct Unity;
      ShineStruct Shine;
      JudgementStruct Judgement;

      if (GetUnitTypeId(GetTriggerUnit()) != Mara) return;
      //Омоложение
      if (GetSpellAbilityId() == 'AEsf') {
        //Жёлтый кружочек
        RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
        //Зелёный кружочек
        RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 201);
        //Таймер хила
        RejuvTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 203);

        //Жёлтый кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
        //Зелёный кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 201);
        //Число итеракций хила
        RemoveSavedInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 202);
        //Таймер хила
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 203);
        //Хендл юнита, сохранённый в таймере хила
        RemoveSavedHandle(TimerData, GetHandleId(RejuvTimer), 200);


        PauseTimer( RejuvTimer );
        DestroyTimer( RejuvTimer );
        DestroyEffect(RejuvEffectStart);
        DestroyEffect(RejuvEffectHeal);
        
        RejuvEffectStart = AddSpecialEffectTarget("RejuvTarget.mdx", GetTriggerUnit(), "overhead");
        SaveEffectHandle( UnitAbilityData, GetHandleId(GetTriggerUnit()), 200, RejuvEffectStart );
      }
      //Щит Мары
      if (GetUnitAbilityLevel(Caster, 'AIba') > 0) {
        if
        (
          GetSpellAbilityId() == 'Aspl' ||
          GetSpellAbilityId() == 'A05G' ||
          GetSpellAbilityId() == 'A033'
        )
        {
          MaraShieldText = LoadTextTagHandle(UnitAbilityData, GetHandleId(Caster), 100);
          MaraShieldTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(Caster), 101);
          ShieldAmount = LoadInteger(UnitAbilityData, GetHandleId(Caster), 102);
          UnitAddAbility(GetTriggerUnit(), 'A01E');
          //Если уже есть щит с таймером - перезапускаем таймер
          if (MaraShieldTimer != null) {
            RemoveSavedHandle(UnitAbilityData, GetHandleId(MaraShieldTimer), 100);
            DestroyTimer(MaraShieldTimer);
            MaraShieldTimer = CreateTimer();
            SaveTimerHandle(UnitAbilityData, GetHandleId(Caster), 101, MaraShieldTimer);
            SaveUnitHandle(UnitAbilityData, GetHandleId(MaraShieldTimer), 100, Caster);
            TimerStart(MaraShieldTimer, 7.5, false, function ShieldRemove);
          } else {
            MaraShieldTimer = CreateTimer();
            SaveTimerHandle(UnitAbilityData, GetHandleId(Caster), 101, MaraShieldTimer);
            SaveUnitHandle(UnitAbilityData, GetHandleId(MaraShieldTimer), 100, Caster);
            TimerStart(MaraShieldTimer, 7.5, false, function ShieldRemove);
          }
          ShieldAmount += R2I(
          GetUnitAbilityLevel(Caster, 'AIba') * 60 +
          GetUnitState(Caster, UNIT_STATE_MAX_LIFE) * 0.08 );
          SaveInteger(UnitAbilityData, GetHandleId(Caster), 102, ShieldAmount);
          SetTextTagTextBJ(MaraShieldText, I2S(ShieldAmount), 10);
        }
      }

      //Единство
      if (GetSpellAbilityId() == 'Aspl') {
        Unity = UnityStruct.create();
        ForGroup(Unity.Group, function AddMagicResistance);
        PolledWait(11 + (GetUnitAbilityLevel(Unity.Caster, GetSpellAbilityId())));
        ForGroup(Unity.Group, function RemoveMagicResistance);
        Unity.destroy();
      }

      //Сияние
      if (GetSpellAbilityId() == 'A05G') {
        Shine = ShineStruct.create();
        Shine.Effect = AddSpecialEffectLoc("TheHolyBomb.mdx", GetUnitLoc(Caster));
        DestroyEffect(Shine.Effect);
        PolledWait(0.3);
        PlaySoundAtPointBJ(gg_snd_HolyBolt, 100, GetUnitLoc(Caster), 0);
        PlaySoundAtPointBJ(gg_snd_ThunderClapCaster, 100, GetUnitLoc(Caster), 0);
        while (FirstOfGroup(Shine.Targets) != null) {
          if (IsUnitAlly(FirstOfGroup(Shine.Targets), GetOwningPlayer(Caster))) {
            AddUnitLife(FirstOfGroup(Shine.Targets),
            (GetUnitAbilityLevel(Caster, GetSpellAbilityId()) * 35) + GetUnitState(Caster, UNIT_STATE_MAX_LIFE) * 0.03
            );
          } else {
            UnitDamageTarget(Caster, FirstOfGroup(Shine.Targets), (GetUnitAbilityLevel(Caster, GetSpellAbilityId()) * 40) + 50 + (GetUnitState(Caster, UNIT_STATE_MAX_MANA) * 0.03), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS );
          }
          GroupRemoveUnit(Shine.Targets, FirstOfGroup(Shine.Targets));
        }
        Shine.destroy();
      }
      //Приговор
      if (GetSpellAbilityId() == 'A033') {
        Judgement = JudgementStruct.create();
        UnitDamageTargetBJ(Judgement.Caster, GetSpellTargetUnit(), GetUnitState(Judgement.Caster, UNIT_STATE_MAX_MANA) * 0.04, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC);
        UnitDamageTargetBJ(Judgement.Caster, GetSpellTargetUnit(), GetUnitState(Judgement.Caster, UNIT_STATE_MAX_MANA) * 0.04, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL);
        PlaySoundOnUnitBJ(gg_snd_HolyBolt, 100, GetSpellTargetUnit());
        PolledWait(15);
        Judgement.destroy();
      }

      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
    }

    function MaraDamaged ()  -> nothing {
      effect RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
      effect RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 201);
      timer RejuvTimer;

      integer EventDamage = R2I(GetEventDamage());
      texttag MaraShieldText = LoadTextTagHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100);
      timer MaraShieldTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 101);
      integer ShieldAmount = LoadInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 102);
      if (RejuvEffectStart != null) {
        DestroyEffect(RejuvEffectStart);
        //Жёлтый кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
        IssueImmediateOrder(GetTriggerUnit(), "stop");
      } else if (RejuvEffectHeal != null) {
        DestroyEffect(RejuvEffectHeal);
        RejuvTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 203);
        //Зелёный кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 201);
        //Число итеракций хила
        RemoveSavedInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 202);
        //Таймер хила
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 203);
        //Хендл юнита, сохранённый в таймере хила
        RemoveSavedHandle(TimerData, GetHandleId(RejuvTimer), 200);
        PauseTimer(RejuvTimer);
        DestroyTimer(RejuvTimer);
      }

      if (ShieldAmount >= EventDamage) {
        AddUnitLife(GetTriggerUnit(), EventDamage);
        ShieldAmount -= EventDamage;
        SaveInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 102, ShieldAmount);
        SetTextTagTextBJ(MaraShieldText, I2S(ShieldAmount), 10);
        if (ShieldAmount < 1) {
          SetTextTagTextBJ(MaraShieldText, "", 10);
          UnitRemoveAbility(GetTriggerUnit(), 'A01E');
          RemoveSavedHandle(UnitAbilityData, GetHandleId(MaraShieldTimer), 100);
          DestroyTimer(MaraShieldTimer);
          RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 101);
          RemoveSavedInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 102);
        }
      } else {
        SetTextTagTextBJ(MaraShieldText, "", 10);
        UnitRemoveAbility(GetTriggerUnit(), 'A01E');
        RemoveSavedHandle(UnitAbilityData, GetHandleId(MaraShieldTimer), 100);
        DestroyTimer(MaraShieldTimer);
        RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 101);
        RemoveSavedInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 102);
      }

    }

    function SetShieldPos ()  -> nothing {
      unit UnitMara = LoadUnitHandle(UnitAbilityData, GetHandleId(GetExpiredTimer()), 1);
      texttag ShieldText = LoadTextTagHandle(UnitAbilityData, GetHandleId(GetExpiredTimer()), 0);
      SetTextTagPosUnit(ShieldText, UnitMara, 0);
      if (IsUnitVisible(UnitMara, GetLocalPlayer())) {
        SetTextTagVisibility(ShieldText, true);
      } else {
        SetTextTagVisibility(ShieldText, false);
      }
      UnitMara = null;
      ShieldText = null;
    }

    function MaraLearnSkill ()  -> nothing {
      texttag MaraTextTag;
      unit TriggerUnit = GetTriggerUnit();
      timer t;
      if (GetLearnedSkill() != 'AIba' || LoadTextTagHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 100) != null) return;
      MaraTextTag = CreateTextTagUnitBJ("", GetTriggerUnit(), 0, 10, 49, 75, 100, 0);
      SaveTextTagHandle( UnitAbilityData, GetHandleId(GetTriggerUnit()), 100, MaraTextTag);
      t = CreateTimer();
      SaveTextTagHandle(UnitAbilityData, GetHandleId(t), 0, MaraTextTag);
      SaveUnitHandle(UnitAbilityData, GetHandleId(t), 1, TriggerUnit);
      TimerStart(t, 0, true, function SetShieldPos);
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(MaraOnDamage, function MaraDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(1), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(1), EVENT_PLAYER_HERO_SKILL, null);
      TriggerAddAction(t, function MaraLearnSkill);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(1), EVENT_PLAYER_UNIT_SPELL_FINISH, null);
      TriggerAddAction(t, function RejuvEffectSpell);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(1), EVENT_PLAYER_UNIT_SPELL_ENDCAST, null);
      TriggerAddAction(t, function RejuvStop);
    }
  }
//! endzinc