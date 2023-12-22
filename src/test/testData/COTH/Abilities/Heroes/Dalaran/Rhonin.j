//! zinc

  library RhoninAbils requires CothUtilities {

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

    function ShieldPositionUpdate()  -> nothing {
      unit ShieldOwner = LoadUnitHandle(UnitAbilityData, GetHandleId(GetExpiredTimer()), 0);
      texttag Shield = LoadTextTagHandle(UnitAbilityData, GetHandleId(GetExpiredTimer()), 1);
      SetTextTagPosUnit(Shield, ShieldOwner, 0);
      if ( IsUnitVisible(ShieldOwner, GetLocalPlayer()) ) {
        SetTextTagVisibility(Shield, true);
      } else {
        SetTextTagVisibility(Shield, false);
      }
      ShieldOwner = null;
      Shield = null;
    }

    function ManaFlareFilter()  -> boolean {
      return
      (
        IsUnitEnemy(GetFilterUnit(), GetTriggerPlayer()) &&
        IsUnitAliveBJ(GetFilterUnit()) &&
        !IsUnit(GetFilterUnit(), GetSpellTargetUnit()) &&
        GetUnitState(GetFilterUnit(), UNIT_STATE_MAX_MANA) > 0
      );
    }

    function UseAbility ()  -> nothing {
      effect RejuvEffectStart;
      effect RejuvEffectHeal;
      timer RejuvTimer;

      AbilityData Spell = AbilityData.create();

      unit ManaBomb;
      group Targets;
      unit Target;
      effect Boom;

      texttag RhoninShield;
      real ShieldAmount;
      timer ShieldPositionUpdater;

      group ManaFlareTargets;
      unit ManaFlareUnit;
      real AdditionalDamage = 0;
      
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
      //Мана-Бомба
      if (Spell.ID == 'A027') {
        ManaBomb = CreateUnitAtLoc(GetTriggerPlayer(), 'ncgb', Spell.TargetLoc, 0);
        UnitApplyTimedLife(ManaBomb, 'BTLF', 2);
        PolledWait(2);
        Boom = AddSpecialEffectLoc("Units\\NightElf\\Wisp\\WispExplode.mdl", Spell.TargetLoc);
        DestroyEffect(Boom);
        Targets = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(Targets, Spell.TargetLoc, 120, null);
        Target = FirstOfGroup(Targets);
        while (Target != null) {
          if
          (
            IsUnitEnemy(Target, GetOwningPlayer(Spell.Caster)) &&
            !IsUnitType(Target, UNIT_TYPE_MAGIC_IMMUNE)
          )
          {
            UnitDamageTarget(Spell.Caster, Target, (GetUnitAbilityLevel(Spell.Caster, Spell.ID) * 65 + 45), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
            UnitRemoveMana(Target, 10 + 10 * GetUnitAbilityLevel(Spell.Caster, Spell.ID) + GetUnitState(Target, UNIT_STATE_MAX_MANA) * 0.05);
          }
          GroupRemoveUnit(Targets, Target);
          Target = FirstOfGroup(Targets);
        }
      }
      //Мана щит
      if ( Spell.ID == 'AIdb' ) {
        RhoninShield = LoadTextTagHandle(UnitAbilityData, GetHandleId(Spell.Caster), 0);
        ShieldAmount = LoadReal(UnitAbilityData, GetHandleId(Spell.Caster), 0);
        ShieldAmount += Spell.Level * 100 + GetUnitState(Spell.Caster, UNIT_STATE_MAX_MANA) * (0.1 + 0.05 * Spell.Level);
        if ( RhoninShield == null ) {
          RhoninShield = CreateTextTagUnitBJ( I2S(R2I(ShieldAmount)), Spell.Caster, 0, 10, 49, 75, 100, 0 );
          ShieldPositionUpdater = CreateTimer();
          SaveTextTagHandle(UnitAbilityData, GetHandleId(ShieldPositionUpdater), 0, RhoninShield);
          SaveUnitHandle(UnitAbilityData, GetHandleId(ShieldPositionUpdater), 1, Spell.Caster);
          TimerStart(ShieldPositionUpdater, 0, true, function ShieldPositionUpdate);
        } else {
          SetTextTagText(RhoninShield, I2S(R2I(ShieldAmount)), 0);
        }
        SaveReal(UnitAbilityData, GetHandleId(Spell.Caster), 0, ShieldAmount);
        SaveTextTagHandle(UnitAbilityData, GetHandleId(Spell.Caster), 0, RhoninShield);
      }
      //Вспышка маны
      if ( Spell.ID == 'A082' ) {
        ManaFlareTargets = CreateGroup();
        GroupEnumUnitsInRangeOfLoc(ManaFlareTargets, Spell.TargetLoc, 175, Filter(function ManaFlareFilter));
        ManaFlareUnit = FirstOfGroup(ManaFlareTargets);
        while (ManaFlareUnit != null) {
          ManaFlareUnit = FirstOfGroup(ManaFlareTargets);
          AdditionalDamage += (GetUnitState(ManaFlareUnit, UNIT_STATE_MAX_MANA) - GetUnitState(ManaFlareUnit, UNIT_STATE_MANA)) * 0.5;
          GroupRemoveUnit(ManaFlareTargets, ManaFlareUnit);
        }
        UnitDamageTarget(Spell.Caster, Spell.Target, AdditionalDamage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS);
      }
      
      RejuvEffectStart = null;
      RejuvEffectHeal = null;
      RejuvTimer = null;
      Spell.destroy();
    }

    function RhoninDamaged ()  -> nothing {
      effect RejuvEffectStart = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10000);
      effect RejuvEffectHeal = LoadEffectHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 10001);
      timer RejuvTimer;

      texttag Shield = LoadTextTagHandle(UnitAbilityData, GetHandleId(GetTriggerUnit()), 0);
      real ShieldAmount = LoadReal(UnitAbilityData, GetHandleId(GetTriggerUnit()), 0);
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

      if ( Shield != null && ShieldAmount > 0) { 
        UnitAddMana( GetTriggerUnit(), GetEventDamage() * 0.1 );
        if ( ShieldAmount > GetEventDamage() ) {
          ShieldAmount -= GetEventDamage();
          SetTextTagText(Shield, I2S(R2I(ShieldAmount)), 0);
          SetUnitState(GetTriggerUnit(), UNIT_STATE_LIFE, GetUnitState(GetTriggerUnit(), UNIT_STATE_LIFE) + GetEventDamage());
        } else {
          SetUnitState(GetTriggerUnit(), UNIT_STATE_LIFE, GetUnitState(GetTriggerUnit(), UNIT_STATE_LIFE) + (GetEventDamage() - ShieldAmount) );
          SetTextTagText(Shield, "", 0);
          UnitRemoveAbility(GetTriggerUnit(), 'BNms');
          ShieldAmount = 0;
        }
        SaveReal(UnitAbilityData, GetHandleId(GetTriggerUnit()), 0, ShieldAmount);
      }
    }

    function RhoninLearnSkill ()  -> nothing {
      if (GetLearnedSkill() != 'AUts') return;
      if (GetLearnedSkillLevel() == 1) UnitAddAbility(GetTriggerUnit(), 'Arll');
      if (GetLearnedSkillLevel() == 2) UnitAddAbility(GetTriggerUnit(), 'A03A');
      if (GetLearnedSkillLevel() == 3) UnitAddAbility(GetTriggerUnit(), 'A03B');
      if (GetLearnedSkillLevel() == 3) UnitAddAbility(GetTriggerUnit(), 'A03C');
    }

    function IsCasterAnRhonin ()  -> boolean {
      return GetUnitTypeId(GetTriggerUnit()) == Rhonin;
    }

    function RejuvFilter ()  -> boolean {
      return GetSpellAbilityId() == 'AEsf' && GetUnitTypeId(GetTriggerUnit()) == Rhonin;
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerAddAction(RhoninOnDamage, function RhoninDamaged);
      TriggerRegisterPlayerUnitEvent(t, Player(3), EVENT_PLAYER_UNIT_SPELL_EFFECT, null);
      TriggerAddAction(t, function UseAbility);
      TriggerAddCondition(t, Filter(function IsCasterAnRhonin));
      t = CreateTrigger();
      TriggerRegisterPlayerUnitEvent(t, Player(3), EVENT_PLAYER_HERO_SKILL, null);
      TriggerAddAction(t, function RhoninLearnSkill);
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