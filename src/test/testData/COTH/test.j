//! zinc
  library Test requires CothUtilities {

    hashtable TestHash = InitHashtable();

    function UnitDamaged ()  -> nothing {
      DisableTrigger(GetTriggeringTrigger());
      BJDebugMsg("Mara name: " + GetUnitName(Int2Unit(GetHandleId(MaraUnit))) );
    }

    function UnitAttacked ()  -> nothing {
      trigger t = CreateTrigger();
      TriggerRegisterUnitEvent(t, GetTriggerUnit(), EVENT_UNIT_DAMAGED);
      SaveTriggerActionHandle(TestHash, GetHandleId(t), 0, TriggerAddAction(t, function UnitDamaged));
      PolledWait(10);
      TriggerRemoveAction(t, LoadTriggerActionHandle(TestHash, GetHandleId(t), 0));
      FlushChildHashtable(TestHash, GetHandleId(t));
      DestroyTrigger(t);
      t = null;
    }

    function onInit ()  -> nothing {
      trigger t = CreateTrigger();
      return;
      TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED);
      TriggerAddAction(t, function UnitAttacked);
    }
  }
//! endzinc