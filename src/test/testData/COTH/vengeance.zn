//! zinc
  library GennVengeance {

    function Vengeance_Conditions ()  -> boolean {
        return (!IsUnitType(GetDyingUnit(), UNIT_TYPE_STRUCTURE) && IsUnitEnemy(GetKillingUnit(), GetOwningPlayer(GetDyingUnit())));
    }

    function IsLearnedSpellAVengeance ()  -> boolean {
        return (GetLearnedSkill() == 'A03W');
    }

    function Vengeance_Downgrade ()  -> nothing {
        if ( (GetUnitTypeId(GetRevivingUnit())!='Hpb2') ) return;
        if (GetUnitAbilityLevel(GetRevivingUnit(), 'A0GJ') >= 1) {
            SetUnitAbilityLevel(GetRevivingUnit(), 'A0GJ', (GetUnitAbilityLevel(GetRevivingUnit(), 'A0GJ') / 2));
            SetUnitAbilityLevel(GetRevivingUnit(), 'A0GI', (GetUnitAbilityLevel(GetRevivingUnit(), 'A0GI') / 2));
            SetUnitAbilityLevel(GetRevivingUnit(), 'A03U', (GetUnitAbilityLevel(GetRevivingUnit(), 'A03U') / 2));
            SetUnitAbilityLevel(GetRevivingUnit(), 'A03T', (GetUnitAbilityLevel(GetRevivingUnit(), 'A03T') / 2));
            SetUnitAbilityLevel(GetRevivingUnit(), 'A03V', (GetUnitAbilityLevel(GetRevivingUnit(), 'A03V') / 2));
        }   
    }

    function Vengeance_Upgrade ()  -> nothing {
        if (IsUnitDeadBJ(udg_Greymane)) return;

        if (GetUnitAbilityLevel(udg_Greymane, 'A03W') < 1) return;

        if (GetUnitAbilityLevel(udg_Greymane, 'A0GJ') <= (GetUnitAbilityLevel(udg_Greymane, 'A03W') * 5)) {
            IncUnitAbilityLevel(udg_Greymane, 'A0GJ');
            IncUnitAbilityLevel(udg_Greymane, 'A0GI');
        }
        if (GetUnitAbilityLevel(udg_Greymane, 'A03W') >= 1 && GetUnitAbilityLevel(udg_Greymane, 'A03U') < 11) {
            IncUnitAbilityLevel(udg_Greymane, 'A03U');
        }
        if (GetUnitAbilityLevel(udg_Greymane, 'A03W') >= 2 && GetUnitAbilityLevel(udg_Greymane, 'A03T') < 11) {
            IncUnitAbilityLevel(udg_Greymane, 'A03T');
        }
        if (GetUnitAbilityLevel(udg_Greymane, 'A03W') >= 3 && GetUnitAbilityLevel(udg_Greymane, 'A03V') < 11) {
            IncUnitAbilityLevel(udg_Greymane, 'A03V');
        }
    }

    function Add_Vengeance ()  -> nothing {
        if (GetLearnedSkillLevel() == 1) {
            UnitAddAbility(GetTriggerUnit(), 'A03U');
        } else if (GetLearnedSkillLevel() == 2) {
            UnitAddAbility(GetTriggerUnit(), 'A03T');
        } else if (GetLearnedSkillLevel() == 3) {
            UnitAddAbility(GetTriggerUnit(), 'A03V');
        }
    }

    function onInit ()  -> nothing {
        trigger t = CreateTrigger();
        TriggerRegisterPlayerUnitEvent(t, Player(7), EVENT_PLAYER_HERO_SKILL, Condition(function IsLearnedSpellAVengeance));
        TriggerAddAction(t, function Add_Vengeance);
        t = CreateTrigger();
        TriggerRegisterPlayerUnitEvent(t, Player(7), EVENT_PLAYER_UNIT_DEATH, Condition(function Vengeance_Conditions));
        TriggerAddAction(t, function Vengeance_Upgrade);
        TriggerSleepAction(1);
        t = CreateTrigger();
        TriggerRegisterUnitEvent( t, gg_unit_n00S_0289, EVENT_UNIT_HERO_REVIVE_FINISH );
        TriggerRegisterUnitEvent( t, gg_unit_n00P_0298, EVENT_UNIT_HERO_REVIVE_FINISH );
        TriggerAddAction(t, function Vengeance_Downgrade);
    }
  }
//! endzinc