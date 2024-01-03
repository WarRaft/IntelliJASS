//! zinc
  library AegwynnAbils requires CothUtilities {

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

    function StellarMove ()  -> nothing {
      group Targets = CreateGroup();
      unit Target;
      AbilityData Spell = LoadInteger(UnitAbilityData, GetHandleId(GetExpiredTimer()), 0);
      GroupEnumUnitsInRangeOfLoc(Targets, Spell.TargetLoc, 280, null);
      Target = FirstOfGroup(Targets);
      while (Target != null) {
        if
        (
          IsUnitEnemy(Target, GetOwningPlayer(Spell.Caster)) &&
          IsUnitAliveBJ(Target) &&
          !IsUnitType(Target, UNIT_TYPE_STRUCTURE) &&
          !IsUnitType(Target, UNIT_TYPE_TOWNHALL)
        )
        {
          SetUnitPositionLoc(Target, PolarProjectionBJ(GetUnitLoc(Target), 10, AngleBetweenPoints(GetUnitLoc(Target), Spell.TargetLoc)));
        }
        GroupRemoveUnit(Targets, Target);
        Target = FirstOfGroup(Targets);
      }
      Target = null;
      DestroyGroup(Targets);
      Targets = null;
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      AbilityData Spell = AbilityData.create();
      real damage;

      effect CelestialStar;

      effect StellarStars[];
      integer index;
      timer StellarMoveTimer;
      
      unit Mimic;
      location LastCasterLoc;
      integer Opacity = 255;

      group g;
      unit u;
      
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
      //Небесный удар
      if (Spell.ID == 'A026') {
        if (GetUnitTypeId(Spell.Caster) == Aegwynn) {
          SaveInteger(UnitAbilityData, GetHandleId(Spell.Caster), 0, Spell.ID);
          SaveReal(UnitAbilityData, GetHandleId(Spell.Caster), 0, GetLocationX(Spell.TargetLoc));
          SaveReal(UnitAbilityData, GetHandleId(Spell.Caster), 1, GetLocationY(Spell.TargetLoc));
          SaveLocationHandle(UnitAbilityData, GetHandleId(Spell.Caster), 0, GetUnitLoc(Spell.Caster));
        }
        CelestialStar = AddSpecialEffectLoc("Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl", Spell.TargetLoc);
        damage = 50 * GetUnitAbilityLevel(Spell.Caster, Spell.ID) + GetHeroInt(Spell.Caster, true) * 0.8;
        PolledWait(0.75);
        g = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(g, Spell.TargetLoc, 165, null);
        u = FirstOfGroup(g);
        while (u != null) {
          if
          (
            IsUnitEnemy(u, GetOwningPlayer(Spell.Caster)) &&
            IsUnitAliveBJ(u) &&
            !IsUnitType(u, UNIT_TYPE_MECHANICAL) &&
            !IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) 
          )
          {
            UnitDamageTarget(Spell.Caster, u, damage, true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
          }
          GroupRemoveUnit(g, u);
          u = FirstOfGroup(g);
        }
        DestroyEffect(CelestialStar);
      }
      //Астральный взрыв
      if (Spell.ID == 'ACcv') {
        if (GetUnitTypeId(Spell.Caster) == Aegwynn) {
          SaveInteger(UnitAbilityData, GetHandleId(Spell.Caster), 0, Spell.ID);
          SaveReal(UnitAbilityData, GetHandleId(Spell.Caster), 0, GetLocationX(Spell.TargetLoc));
          SaveReal(UnitAbilityData, GetHandleId(Spell.Caster), 1, GetLocationY(Spell.TargetLoc));
          SaveLocationHandle(UnitAbilityData, GetHandleId(Spell.Caster), 0, GetUnitLoc(Spell.Caster));
        }
        Spell.TargetLoc = PolarProjectionBJ(GetUnitLoc(Spell.Caster), 700, AngleBetweenPoints(GetUnitLoc(Spell.Caster), Spell.TargetLoc));
        damage = GetHeroInt(Spell.Caster, true) * 1.5;
        
        PolledWait(0.8);
        g = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(g, Spell.TargetLoc, 95, null);
        u = FirstOfGroup(g);
        while (u != null) {
          if
          (
            IsUnitEnemy(u, GetOwningPlayer(Spell.Caster)) &&
            IsUnitAliveBJ(u) &&
            !IsUnitType(u, UNIT_TYPE_MECHANICAL) &&
            !IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) 
          )
          {
            UnitDamageTarget(Spell.Caster, u, damage, true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
          }
          GroupRemoveUnit(g, u);
          u = FirstOfGroup(g);
        }
      }

      //Звездный вихрь
      if (Spell.ID == 'S005') {
        if (GetUnitTypeId(Spell.Caster) == Aegwynn) {
          SaveInteger(UnitAbilityData, GetHandleId(Spell.Caster), 0, Spell.ID);
          SaveReal(UnitAbilityData, GetHandleId(Spell.Caster), 0, GetLocationX(Spell.TargetLoc));
          SaveReal(UnitAbilityData, GetHandleId(Spell.Caster), 1, GetLocationY(Spell.TargetLoc));
          SaveLocationHandle(UnitAbilityData, GetHandleId(Spell.Caster), 0, GetUnitLoc(Spell.Caster));
        }
        damage = (GetUnitAbilityLevel(Spell.Caster, Spell.ID) * 40) +  (GetHeroInt(Spell.Caster, true) * 0.4);
        for (1 <= index <= 5) {
          StellarStars[index] = AddSpecialEffectLoc("StarfallTarget.mdx", PolarProjectionBJ(Spell.TargetLoc, 180, 72 * index));
        }
        StellarStars[6] = AddSpecialEffectLoc("StarfallTarget.mdx", Spell.TargetLoc);
        PolledWait(1.2);
        for (1 <= index <= 5) {
          DestroyEffect(StellarStars[index]);
          StellarStars[index] = AddSpecialEffectLoc("StarfallTarget.mdx", PolarProjectionBJ(Spell.TargetLoc, 180, 72 * index));
        }
        g = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(g, Spell.TargetLoc, 95, null);
        u = FirstOfGroup(g);
        while (u != null) {
          if
          (
            IsUnitEnemy(u, GetOwningPlayer(Spell.Caster)) &&
            IsUnitAliveBJ(u) &&
            !IsUnitType(u, UNIT_TYPE_MECHANICAL) &&
            !IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) &&
            IsUnitType(u, UNIT_TYPE_GROUND) 
          )
          {
            UnitDamageTarget(Spell.Caster, u, damage, true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
          }
          GroupRemoveUnit(g, u);
          u = FirstOfGroup(g);
        }
        StellarMoveTimer = CreateTimer();
        SaveInteger(UnitAbilityData, GetHandleId(StellarMoveTimer), 0, Spell);
        TimerStart(StellarMoveTimer, 0.04, true, function StellarMove);
        PolledWait(1);
        for (1 <= index <= 6) {
          DestroyEffect(StellarStars[index]);
          StellarStars[index] = null;
        }
        FlushChildHashtable(UnitAbilityData, GetHandleId(StellarMoveTimer));
        DestroyTimer(StellarMoveTimer);
      }

      //Копия
      if (Spell.ID == 'ANsw') {
        Spell.TargetLoc = Location(LoadReal(UnitAbilityData, GetHandleId(Spell.Caster), 0), LoadReal(UnitAbilityData, GetHandleId(Spell.Caster), 1));
        LastCasterLoc = LoadLocationHandle(UnitAbilityData, GetHandleId(Spell.Caster), 0);
        Spell.ID = LoadInteger(UnitAbilityData, GetHandleId(Spell.Caster), 0);
        Mimic = CreateUnitAtLoc(GetTriggerPlayer(), MimicID, LastCasterLoc, AngleBetweenPoints(LastCasterLoc, Spell.TargetLoc));
        SetHeroLevel(Mimic, GetHeroLevel(Spell.Caster), false);
        SetHeroInt(Mimic, GetHeroInt(Spell.Caster, false), false);
        for (0 <= index <= 5) {
          UnitAddItemById(Mimic, GetItemTypeId(UnitItemInSlot(Spell.Caster, index)));
        }
        UnitAddAbility(Mimic, Spell.ID);
        SetUnitAbilityLevel(Mimic, Spell.ID, GetUnitAbilityLevel(Spell.Caster, Spell.ID));
        if (Spell.ID == 'A026') {
          IssuePointOrderLoc(Mimic, "silence", Spell.TargetLoc);
          PolledWait(2.5);
          while (Opacity > 0) {
            SetUnitVertexColor(Mimic, 200, 0, 200, Opacity);
            Opacity -= GetRandomInt(1, 30);
            TriggerSleepAction(0.01);
          }
          RemoveUnit(Mimic);
        } else if (Spell.ID == 'ACcv') {
          IssuePointOrderLoc(Mimic, "carrionswarm", Spell.TargetLoc);
          PolledWait(2.5);
          while (Opacity > 0) {
            SetUnitVertexColor(Mimic, 200, 0, 200, Opacity);
            Opacity -= GetRandomInt(1, 30);
            TriggerSleepAction(0.01);
          }
          RemoveUnit(Mimic);
        } else if (Spell.ID == 'S005') {
          Spell.Caster = Mimic;
          SetUnitAnimation(Spell.Caster, "spell");
          damage = (GetUnitAbilityLevel(Spell.Caster, Spell.ID) * 40) +  (GetHeroInt(Spell.Caster, true) * 0.4);

          for (1 <= index <= 5) {
            StellarStars[index] = AddSpecialEffectLoc("StarfallTarget.mdx", PolarProjectionBJ(Spell.TargetLoc, 180, 72 * index));
          }
          StellarStars[6] = AddSpecialEffectLoc("StarfallTarget.mdx", Spell.TargetLoc);

          PolledWait(1.2);
          for (1 <= index <= 5) {
            DestroyEffect(StellarStars[index]);
            StellarStars[index] = AddSpecialEffectLoc("StarfallTarget.mdx", PolarProjectionBJ(Spell.TargetLoc, 180, 72 * index));
          }

          g = CreateGroup();
          GroupEnumUnitsInRangeOfLoc(g, Spell.TargetLoc, 95, null);
          u = FirstOfGroup(g);
          while (u != null) {
            if
            (
              IsUnitEnemy(u, GetOwningPlayer(Spell.Caster)) &&
              IsUnitAliveBJ(u) &&
              !IsUnitType(u, UNIT_TYPE_MECHANICAL) &&
              !IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) &&
              IsUnitType(u, UNIT_TYPE_GROUND) 
            )
            {
              UnitDamageTarget(Spell.Caster, u, damage, true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
            }
            GroupRemoveUnit(g, u);
            u = FirstOfGroup(g);
          }
          StellarMoveTimer = CreateTimer();
          SaveInteger(UnitAbilityData, GetHandleId(StellarMoveTimer), 0, Spell);
          TimerStart(StellarMoveTimer, 0.04, true, function StellarMove);
          PolledWait(1);
          for (1 <= index <= 6) {
            DestroyEffect(StellarStars[index]);
            StellarStars[index] = null;
          }
          FlushChildHashtable(UnitAbilityData, GetHandleId(StellarMoveTimer));
          DestroyTimer(StellarMoveTimer);
          while (Opacity > 0) {
            SetUnitVertexColor(Spell.Caster, 200, 0, 200, Opacity);
            Opacity -= GetRandomInt(1, 30);
            TriggerSleepAction(0.01);
          }
          RemoveUnit(Spell.Caster);
        }
      }

      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
      Spell.destroy();
      damage = 0;
      CelestialStar = null;
      index = 0;
      StellarMoveTimer = null;
      Mimic = null;
      RemoveLocation(LastCasterLoc);
      LastCasterLoc = null;
      DestroyGroup(g);
      g = null;
      u = null;
    }

    function AegwynnDamaged ()  -> nothing {
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

    function IsCasterAnAegwynn ()  -> boolean {
      return GetUnitTypeId(GetTriggerUnit()) == Aegwynn || GetUnitTypeId(GetTriggerUnit()) == MimicID;
    }

    function RejuvFilter ()  -> boolean {
      return GetSpellAbilityId() == 'AEsf' && GetUnitTypeId(GetTriggerUnit()) == Aegwynn;
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(AegwynnOnDamage, function AegwynnDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(3), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      TriggerAddCondition(t, Filter(function IsCasterAnAegwynn));
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