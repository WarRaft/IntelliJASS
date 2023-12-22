//! zinc
  library DerekAbils requires CothUtilities {

    

    struct Bombardment {
      location TargetPoint;
      location BombPoint;
      unit Caster;

      unit BombardmentMissleLauncher;
      real DamageAmount;

      static method create ()  -> thistype {
        thistype this = allocate();
        TargetPoint = GetSpellTargetLoc();
        Caster = GetTriggerUnit();
        DamageAmount = GetUnitAbilityLevel(Caster, GetSpellAbilityId()) * 50 + 50;
        return this;
      }

      method destroy ()  -> nothing {
        RemoveLocation(TargetPoint);
        TargetPoint = null;
        RemoveLocation(BombPoint);
        BombPoint = null;
        Caster = null;
        BombardmentMissleLauncher = null;
        DamageAmount = 0;
        deallocate();
      }

      static method Damage ()  -> nothing {
        thistype this = LoadInteger(UnitAbilityData, GetHandleId(GetExpiredTimer()), 0);
        UnitDamagePointLoc(this.Caster, 0, 250, this.BombPoint, this.DamageAmount, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL);
        DestroyTimer(GetExpiredTimer());
      }

      static method CreateMissle ()  -> nothing {
        real MissleSpeed = 750;
        real DistanceBetweenLauncherAndTargetPoint;
        timer t = CreateTimer();
        thistype this = LoadInteger(UnitAbilityData, GetHandleId(GetExpiredTimer()), 0);
        this.BombPoint = PolarProjectionBJ(this.TargetPoint, GetRandomReal(0, 400), GetRandomDirectionDeg());
        this.BombardmentMissleLauncher = CreateUnitAtLoc(GetOwningPlayer(this.Caster), 'e004', PolarProjectionBJ(this.TargetPoint, GetRandomReal(0, 400), GetRandomDirectionDeg()), 0);
        SetUnitFacing(this.BombardmentMissleLauncher, AngleBetweenPoints(GetUnitLoc(this.BombardmentMissleLauncher), this.BombPoint));
        DistanceBetweenLauncherAndTargetPoint = DistanceBetweenPoints(GetUnitLoc(this.BombardmentMissleLauncher), this.BombPoint);
        IssuePointOrderLoc(this.BombardmentMissleLauncher, "attackground", this.BombPoint);
        SaveInteger(UnitAbilityData, GetHandleId(t), 0, this);
        UnitApplyTimedLife(this.BombardmentMissleLauncher, 'BTLF', DistanceBetweenLauncherAndTargetPoint / MissleSpeed);
        TimerStart(t, DistanceBetweenLauncherAndTargetPoint / MissleSpeed + 0.05, false, function thistype.Damage);
        t = null;
      }

      method Bombardmenting ()  -> nothing {
        timer t = CreateTimer();
        TimerStart(t, 0.3, true, function thistype.CreateMissle);
        SaveInteger(UnitAbilityData, GetHandleId(t), 0, this);
        PolledWait(10);
        RemoveSavedInteger(UnitAbilityData, GetHandleId(t), 0);
        DestroyTimer(t);
        t = null;
      }
    }

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
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Derek) return;
      RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      RemoveSavedHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      DestroyEffect(RejuvEffectStart);
      RejuvEffectStart = null;
    }

    function RejuvEffectSpell ()  -> nothing {
      timer RejuvTimer;
      integer RejuvIteractionCount;
      effect RejuvEffectHeal;
      if (GetSpellAbilityId() != 'AEsf' || GetUnitTypeId(GetTriggerUnit()) != Derek) return;
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

    function DamageTarget ()  -> nothing {
      IssueTargetOrder(GetEnumUnit(), "attack", GetSpellTargetUnit());
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      location TargetLoc = GetSpellTargetLoc();
      unit Caster = GetTriggerUnit();
      integer CastingAbility = GetSpellAbilityId();

      unit FlareReveal;
      group FlareTargets;
      unit FlareTarget;

      group TempGroup;

      Bombardment Bomb;
      
      if (GetUnitTypeId(GetTriggerUnit()) != Derek) return;
      
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
      //Осветительный заряд
      if (GetSpellAbilityId() == 'A06Q') {
        FlareReveal = CreateUnitAtLoc(GetTriggerPlayer(), 'o008', GetSpellTargetLoc(), 0);
        UnitAddAbility(FlareReveal, 'Afla');
        IssuePointOrderLoc(FlareReveal, "flare", GetSpellTargetLoc());
        UnitApplyTimedLife(FlareReveal, 'BTLF', 1);
        FlareTargets = CreateGroup();
        PolledWait(1.2);
        GroupEnumUnitsInRangeOfLoc(FlareTargets, TargetLoc, 400, null);
        while ( FirstOfGroup(FlareTargets) != null )
        {
          FlareTarget = FirstOfGroup(FlareTargets);
          if
          (
            !IsUnitType(FlareTarget, UNIT_TYPE_STRUCTURE) &&
            !IsUnitType(FlareTarget, UNIT_TYPE_TOWNHALL) &&
            IsUnitEnemy(FlareTarget, GetOwningPlayer(Caster))
          )
          {
            UnitDamageTarget(Caster, FlareTarget, (25 * GetUnitAbilityLevel(Caster, CastingAbility)), true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WHOKNOWS);
          }
          GroupRemoveUnit(FlareTargets, FlareTarget);
        }
        PolledWait(0.75);
        GroupEnumUnitsInRangeOfLoc(FlareTargets, TargetLoc, 400, null);
        while ( FirstOfGroup(FlareTargets) != null )
        {
          FlareTarget = FirstOfGroup(FlareTargets);
          if
          (
            !IsUnitType(FlareTarget, UNIT_TYPE_STRUCTURE) &&
            !IsUnitType(FlareTarget, UNIT_TYPE_TOWNHALL) &&
            IsUnitEnemy(FlareTarget, GetOwningPlayer(Caster))
          )
          {
            UnitDamageTarget(Caster, FlareTarget, (25 * GetUnitAbilityLevel(Caster, CastingAbility)), true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_UNIVERSAL, WEAPON_TYPE_WHOKNOWS);
          }
          GroupRemoveUnit(FlareTargets, FlareTarget);
        }
      }
      //Отмеченная цель
      if (GetSpellAbilityId() == 'A054') {
        TempGroup = CreateGroup();
        GroupEnumUnitsOfType(TempGroup, "Мушкетер", null);
        ForGroup(TempGroup, function DamageTarget);
      }
      //Бомбардировка
      if (GetSpellAbilityId() == 'A07F') {
        Bomb = Bombardment.create();
        Bomb.Bombardmenting();
        //Ожидание происходит в методе Bombardmenting, нам не требуется ожидать в этой части кода.
        Bomb.destroy();
      }

      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
    }

    function DerekDamaged ()  -> nothing {
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

    function DerekLearnSkill ()  -> nothing {
      if (GetLearnedSkill() != 'AUts') return;
      if (GetLearnedSkillLevel() == 1) UnitAddAbility(GetTriggerUnit(), 'Arll');
      if (GetLearnedSkillLevel() == 2) UnitAddAbility(GetTriggerUnit(), 'A03A');
      if (GetLearnedSkillLevel() == 3) UnitAddAbility(GetTriggerUnit(), 'A03B');
      if (GetLearnedSkillLevel() == 3) UnitAddAbility(GetTriggerUnit(), 'A03C');
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(DerekOnDamage, function DerekDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_HERO_SKILL, null);
      TriggerAddAction(t, function DerekLearnSkill);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_FINISH, null);
      TriggerAddAction(t, function RejuvEffectSpell);
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(2), EVENT_PLAYER_UNIT_SPELL_ENDCAST, null);
      TriggerAddAction(t, function RejuvStop);
    }
  }
//! endzinc