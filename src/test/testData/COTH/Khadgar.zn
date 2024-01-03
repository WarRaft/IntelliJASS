//! zinc
  library KhadgarAbils requires CothUtilities {

    function TornadoFilter ()  -> boolean {
      return UnitHasBuffBJ(GetFilterUnit(), 'Basl') && !UnitHasBuffBJ(GetFilterUnit(), 'Bcyc');
    }

    struct TornadoStruct {
      unit Caster;
      unit CycloneCaster;
      group Targets;
      unit Target;
      timer Timer;

      static method create ()  -> thistype {
        TornadoStruct Tornado = TornadoStruct.allocate();
        Tornado.Timer = GetExpiredTimer();
        Tornado.Caster = LoadUnitHandle(UnitAbilityData, GetHandleId(Tornado.Timer), 104);
        Tornado.Targets = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(Tornado.Targets, GetUnitLoc(Tornado.Caster), 1300, Filter(function TornadoFilter));
        Tornado.Target = GroupPickRandomUnit(Tornado.Targets);
        Tornado.CycloneCaster = CreateUnitAtLoc(GetOwningPlayer(Tornado.Caster), 'o008', GetUnitLoc(Tornado.Target), 0);
        UnitAddAbility(Tornado.CycloneCaster, 'Acyc');
        UnitApplyTimedLife(Tornado.CycloneCaster, 'BTLF', 5);
        return Tornado;
      }

      method destroy ()  -> nothing {
        this.Caster = null;
        this.CycloneCaster = null;
        DestroyGroup(this.Targets);
        this.Targets = null;
        this.Target = null;
        this.Timer = null;
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
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Khadgar) return;
      RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
      DestroyEffect(RejuvEffectStart);
      RejuvEffectStart = null;
    }

    function RejuvEffectSpell ()  -> nothing {
      timer RejuvTimer;
      integer RejuvIteractionCount;
      effect RejuvEffectHeal;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Khadgar) return;
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

    function Tossing ()  -> nothing {
      TornadoStruct Tornado = TornadoStruct.create();
      if (Tornado.Caster == null) {
        Tornado.destroy();
        return;
      }
      if (Tornado.Target == null) {
        TimerStart(Tornado.Timer, 0.03, false, function Tossing);
        Tornado.destroy();
        return;
      }
      IssueTargetOrder(Tornado.CycloneCaster, "cyclone", Tornado.Target);
      TimerStart(Tornado.Timer, 0.45, false, function Tossing);
      Tornado.destroy();
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      effect CometEffect;
      unit CometStomp;
      unit Caster = GetTriggerUnit();
      location TargetLoc = GetSpellTargetLoc();
      unit Target = GetSpellTargetUnit();
      group CometTargetsUnfiltired;
      group CometTargetsFiltered;
      unit TempUnit;
      integer SpellId = GetSpellAbilityId();

      timer TornadoTossingTimer;
      if (GetUnitTypeId(GetTriggerUnit()) != Khadgar) return;
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
      if
      (
        GetSpellAbilityId() == 'S002' ||
        GetSpellAbilityId() == 'S004' ||
        GetSpellAbilityId() == 'SNin' ||
        GetSpellAbilityId() == 'S003'
      )
      {
        CometEffect = AddSpecialEffectLoc("Comet.mdx", TargetLoc);
        DestroyEffect(CometEffect);
        CometStomp = CreateUnitAtLoc(GetTriggerPlayer(), 'o008', TargetLoc, 0);
        UnitAddAbility(CometStomp, 'A0E0');
        UnitApplyTimedLife(CometStomp, 'BTLF', 3);
        IssueImmediateOrder(CometStomp, "stomp");
        PolledWait(1.85);
        CometTargetsUnfiltired = CreateGroup();
        CometTargetsFiltered = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(CometTargetsUnfiltired, TargetLoc, 260, null);
        while (FirstOfGroup(CometTargetsUnfiltired) != null) {
          TempUnit = FirstOfGroup(CometTargetsUnfiltired);
          GroupRemoveUnit(CometTargetsUnfiltired, TempUnit);
          if
          (
            IsUnitEnemy(TempUnit, GetOwningPlayer(Caster)) &&
            !IsUnitType(TempUnit, UNIT_TYPE_STRUCTURE) &&
            !IsUnitType(TempUnit, UNIT_TYPE_TOWNHALL) &&
            IsUnitAliveBJ(TempUnit)
          ) {
            GroupAddUnit(CometTargetsFiltered, TempUnit);
          }
        }
        while (FirstOfGroup(CometTargetsFiltered) != null) {
          TempUnit = FirstOfGroup(CometTargetsFiltered);
          UnitDamageTarget(Caster, TempUnit, 80 + ( 30 * GetUnitAbilityLevel(Caster, 'ANeg') ) + ( GetUnitAbilityLevel(Caster, SpellId) * 50 ), false, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS );
          GroupRemoveUnit(CometTargetsFiltered, TempUnit);
        }
      }
      //Торнадо
      if
      (
        GetSpellAbilityId() == 'ACbf' ||
        GetSpellAbilityId() == 'A02A' ||
        GetSpellAbilityId() == 'A02B' ||
        GetSpellAbilityId() == 'A01G'
      )
      {
        TornadoTossingTimer = CreateTimer();
        SaveUnitHandle(UnitAbilityData, GetHandleId(TornadoTossingTimer), 104, Caster);
        TimerStart(TornadoTossingTimer, 0.03, false, function Tossing);
        PolledWait(3);
        RemoveSavedHandle(UnitAbilityData, GetHandleId(TornadoTossingTimer), 104);
        DestroyTimer(TornadoTossingTimer);
      }

      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
      TempUnit = null;
      TornadoTossingTimer = null;
      RemoveLocation(TargetLoc);
      TargetLoc = null;
      Target = null;
      DestroyGroup(CometTargetsUnfiltired);
      CometTargetsUnfiltired = null;
      DestroyGroup(CometTargetsFiltered);
      CometTargetsFiltered = null;
      CometStomp = null;
      Caster = null;
      CometEffect = null;
    }

    function KhadgarDamaged ()  -> nothing {
      effect RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 200);
      effect RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 201);
      timer RejuvTimer;
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

    }

    function KhadgarLearnSkill ()  -> nothing {
      if (GetLearnedSkill() != 'AUts') return;
      if (GetLearnedSkillLevel() == 1) UnitAddAbility(GetTriggerUnit(), 'Arll');
      if (GetLearnedSkillLevel() == 2) UnitAddAbility(GetTriggerUnit(), 'A03A');
      if (GetLearnedSkillLevel() == 3) UnitAddAbility(GetTriggerUnit(), 'A03B');
      if (GetLearnedSkillLevel() == 3) UnitAddAbility(GetTriggerUnit(), 'A03C');
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(KhadgarOnDamage, function KhadgarDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(1), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(1), EVENT_PLAYER_UNIT_SPELL_FINISH, null);
      TriggerAddAction(t, function RejuvEffectSpell);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(1), EVENT_PLAYER_UNIT_SPELL_ENDCAST, null);
      TriggerAddAction(t, function RejuvStop);
    }
  }
//! endzinc