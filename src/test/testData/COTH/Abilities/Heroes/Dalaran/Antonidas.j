//! zinc
  library AntonidasAbils requires CothUtilities {

    function RejuvPurple ()  -> nothing {
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

      RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      DestroyEffect(RejuvEffectStart);
      RejuvEffectStart = null;
    }

    function RejuvEffectSpell ()  -> nothing {
      timer RejuvTimer;
      integer RejuvIteractionCount;
      effect RejuvEffectHeal;

      RejuvTimer = CreateTimer();
      RejuvIteractionCount = 0;

      DestroyEffect( LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000) );
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);

      RejuvEffectHeal = AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Tranquility\\TranquilityTarget.mdl", GetTriggerUnit(), "overhead");

      SaveEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10001, RejuvEffectHeal);
      SaveInteger(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10002, RejuvIteractionCount);
      SaveTimerHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10003, RejuvTimer);

      SaveUnitHandle(TimerData, GetHandleId(RejuvTimer), 10000, GetTriggerUnit());

      TimerStart(RejuvTimer, 2, true, function RejuvPurple);
      AddUnitLifePercent(GetTriggerUnit(), 4);
      RejuvTimer = null;
      RejuvEffectHeal = null;
    }

    function WaveFilt ()  -> boolean {
      return
      (
        GetUnitTypeId(GetFilterUnit()) == 'hwat' ||
        GetUnitTypeId(GetFilterUnit()) == 'hwt2' ||
        GetUnitTypeId(GetFilterUnit()) == 'hwt3' ||
        GetUnitTypeId(GetFilterUnit()) == 'nbel'
      );
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      AbilityData Spell = AbilityData.create();

      group TempGroup;
      unit TempUnit;
      unit Placeholder;
      effect e;
      
      //Омоложение
      if (Spell.ID == 'AEsf') {
        //Жёлтый кружочек
        RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(Spell.Caster), 10000);
        //Зелёный кружочек
        RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(Spell.Caster), 10001);
        //Таймер хила
        RejuvTimer = LoadTimerHandle(UnitAbilityData, GetHandleId(Spell.Caster), 10003);

        //Жёлтый кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(Spell.Caster), 10000);
        //Зелёный кружочек
        RemoveSavedHandle(UnitAbilityData, GetHandleId(Spell.Caster), 10001);
        //Число итеракций хила
        RemoveSavedInteger(UnitAbilityData, GetHandleId(Spell.Caster), 10002);
        //Таймер хила
        RemoveSavedHandle(UnitAbilityData, GetHandleId(Spell.Caster), 10003);
        //Хендл юнита, сохранённый в таймере хила
        RemoveSavedHandle(TimerData, GetHandleId(RejuvTimer), 10000);


        PauseTimer( RejuvTimer );
        DestroyTimer( RejuvTimer );
        DestroyEffect(RejuvEffectStart);
        DestroyEffect(RejuvEffectHeal);
        
        RejuvEffectStart = AddSpecialEffectTarget("RejuvTarget.mdx", Spell.Caster, "overhead");
        SaveEffectHandle( UnitAbilityData, GetHandleId(Spell.Caster), 10000, RejuvEffectStart );
      }
      //Сокрушительная Волна
      if (Spell.ID == 'ANbf') {
        PolledWait(0.35);
        TempGroup = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(TempGroup, GetUnitLoc(Spell.Caster), 800, Filter(function WaveFilt));
        while (FirstOfGroup(TempGroup) != null) {
          TempUnit = FirstOfGroup(TempGroup);
          if
          (
            AngleBetweenPoints(GetUnitLoc(Spell.Caster), GetUnitLoc(TempUnit)) >= AngleBetweenPoints(GetUnitLoc(Spell.Caster), GetUnitLoc(TempUnit)) - 35 &&
            AngleBetweenPoints(GetUnitLoc(Spell.Caster), GetUnitLoc(TempUnit)) <= AngleBetweenPoints(GetUnitLoc(Spell.Caster), GetUnitLoc(TempUnit)) + 35
          )
          {
            Placeholder = CreateUnitAtLoc(GetOwningPlayer(Spell.Caster), 'o008', GetUnitLoc(TempUnit), 0);
            UnitAddAbility(Placeholder, 'Awrq');
            UnitApplyTimedLife(Placeholder, 'BTLF', 1);
            e = AddSpecialEffectLoc("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl", GetUnitLoc(TempUnit));
            DestroyEffect(e);
            if (GetUnitTypeId(TempUnit) == 'nbel') SetUnitAbilityLevel(Placeholder, 'Awrq', 2);
            IssueImmediateOrder(Placeholder, "stomp");
          }
          GroupRemoveUnit(TempGroup, TempUnit);
        }
        DestroyGroup(TempGroup);
      }
      //Покой
      if (Spell.ID == 'A0AY') {
        Placeholder = CreateUnitAtLoc(GetTriggerPlayer(), 'o008', GetUnitLoc(Spell.Caster), 0);
        UnitAddAbility(Placeholder, 'AEtq');
        SetUnitAbilityLevel(Placeholder, 'AEtq', GetUnitAbilityLevel(Spell.Caster, Spell.ID));
        UnitApplyTimedLife(Placeholder, 'BTLF', 15);
        IssueImmediateOrder(Placeholder, "tranquility");
      }

      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
      Placeholder = null;
      e = null;
      TempGroup = null;
      Spell.destroy();
    }

    function AntonidasDamaged ()  -> nothing {
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

    function IsCasterAnAntonidas ()  -> boolean {
      return GetUnitTypeId(GetTriggerUnit()) == Antonidas;
    }

    function RejuvFilter ()  -> boolean {
      return GetSpellAbilityId() == 'AEsf' && GetUnitTypeId(GetTriggerUnit()) == Antonidas;
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(AntonidasOnDamage, function AntonidasDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(3), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      TriggerAddCondition(t, Filter(function IsCasterAnAntonidas));
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(3), EVENT_PLAYER_UNIT_SPELL_FINISH, null);
      TriggerAddAction(t, function RejuvEffectSpell);
      TriggerAddCondition(t, Filter(function RejuvFilter));
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(3), EVENT_PLAYER_UNIT_SPELL_ENDCAST, null);
      TriggerAddAction(t, function RejuvStop);
      TriggerAddCondition(t, Filter(function RejuvFilter));
    }
  }
//! endzinc