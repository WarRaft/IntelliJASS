//! zinc
  library ItemAquired requires CothUtilities {

    public
    {
      group Stonepath_Owners = CreateGroup();
      boolean IsDisplayWarningWindow[11];

      function IsItemRare (integer ItemID)  -> boolean {
        return LoadInteger(ItemDataHashtable, 6, ItemID) == ITEM_TYPE_RARE;
      }

      function GetHeroFreeSlots (unit whichHero)  -> integer {
        integer index;
        integer count = 0;
        for (0 <= index <= 5) {
            if (GetItemTypeId(UnitItemInSlot(whichHero, index)) == 0) count += 1;
        }
        return count;
      }

      function IsItemUnique (integer itemId)  -> boolean {
        return LoadInteger(ItemDataHashtable, 6, itemId) == ITEM_TYPE_UNIQUE;
      }

      function IsHeroInventoryFullWithUniqueItems (unit whicHero)  -> boolean {
        integer index;
        integer count = 0;
        for (0 <= index <= 5) {
          if (IsItemUnique(GetItemTypeId(UnitItemInSlot(whicHero, index)))) {
            count += 1;
          }
        }
        return count == 6;
      }

      function Item_Aquired (unit whichHero, item whichItemItem)  -> item {
        integer whichItem = GetItemTypeId(whichItemItem);
        integer Requirements[];
        integer RequirementItem[];
        integer ChildItem[];
        integer RequirementIndex;
        integer RequirementChildIndex;
        integer InventoryIndex = 0;
        integer PlayerItemPoints = GetPlayerState(GetOwningPlayer(whichHero), PLAYER_STATE_RESOURCE_GOLD);
        integer ItemCost = LoadInteger(ItemDataHashtable, 0, whichItem);
        boolean IsItemHaveTwoVariants = false;
        integer ChildRequirementItem[];
        integer CountOfRemovedItems = 0;
        effect e;
        integer CountOfHeroFreeSlots = GetHeroFreeSlots(whichHero);
        item i;
        Requirements[1] = LoadInteger(ItemDataHashtable, 1, whichItem);
        Requirements[2] = LoadInteger(ItemDataHashtable, 2, whichItem);
        Requirements[3] = LoadInteger(ItemDataHashtable, 3, whichItem);
        IsDisplayWarningWindow[GetPlayerId(GetOwningPlayer(whichHero))] = true;
        //Проверка, купили ли мы неактуальный предмет
        if (whichItem == 'stwp' || whichItem == 'plcl' || whichItem == 'hslv') {
          DisplayTimedTextToPlayer(GetOwningPlayer(whichHero), 0, 0, 10, "Этот предмет больше не актуален!");
          RemoveItem(GetItemOfTypeFromUnitBJ(whichHero, whichItem));
          return null;
        }
        //Проверка, купили ли мы книгу
        if (whichItem == Book_of_Agillity || whichItem == Book_of_Intelligence || whichItem == Book_of_Strength) {
          //Если мы купили книгу - смотрим, все ли 6 предметов у нас - уникальные
          if (!IsHeroInventoryFullWithUniqueItems(whichHero)) {
            DisplayTimedTextToPlayer(GetOwningPlayer(whichHero), 0, 0, 15, "Необходимо, что бы у вас инвентарь был заполнен уникальными предметами!");
            SetPlayerState(GetOwningPlayer(whichHero), PLAYER_STATE_RESOURCE_GOLD, PlayerItemPoints + ItemCost);
            return null;
          }
          //Если у нас все уникальные - добавляем триггерно характеристику
          if (whichItem == Book_of_Agillity) SetHeroAgi(whichHero, GetHeroAgi(whichHero, false) + 1, true);
          if (whichItem == Book_of_Intelligence) SetHeroInt(whichHero, GetHeroInt(whichHero, false) + 1, true);
          if (whichItem == Book_of_Strength) SetHeroStr(whichHero, GetHeroStr(whichHero, false) + 1, true);
          return null;
        }
        //Проверка купили ли мы урну/талисман природы, что лишь для альянса/орды
        if (whichItem == Urn) {
          if (!IsPlayerInForce(GetOwningPlayer(whichHero), HordeForce)) {
            DisplayTimedTextToPlayer(GetOwningPlayer(whichHero), 0, 0, 15, "Этот предмет доступен только игрокам орды! Его аналог для альянса - Талисман Природы");
            return null;
          }
        }
        if (whichItem == Talisman_of_the_Wild) {
          if (!IsPlayerInForce(GetOwningPlayer(whichHero), AllianceForce)) {
            DisplayTimedTextToPlayer(GetOwningPlayer(whichHero), 0, 0, 15, "Этот предмет доступен только игрокам альянса! Его аналог для орды - Урна");
            return null;
          }
        }
        //Проверка, пытаемся ли мы купить Конец Путешествия на тех, на кого его нельзя
        if (whichItem == Journeys_End) {
          if
          (
            GetUnitTypeId(whichHero) == Aegwynn ||
            GetUnitTypeId(whichHero) == Archimonde ||
            GetUnitTypeId(whichHero) == Arugal ||
            GetUnitTypeId(whichHero) == Blackhand ||
            GetUnitTypeId(whichHero) == ChoGall ||
            GetUnitTypeId(whichHero) == Fenris ||
            GetUnitTypeId(whichHero) == Galen ||
            GetUnitTypeId(whichHero) == Garona ||
            GetUnitTypeId(whichHero) == Grom ||
            GetUnitTypeId(whichHero) == Curdran ||
            GetUnitTypeId(whichHero) == Maim ||
            GetUnitTypeId(whichHero) == Thoras ||
            GetUnitTypeId(whichHero) == Darius ||
            GetUnitTypeId(whichHero) == Tyralion
          )
          {
            DisplayTimedTextToPlayer(GetOwningPlayer(whichHero), 0, 0, 15, "Этот предмет не доступен для вашего героя!");
            return null;
          }
        }

        IsItemHaveTwoVariants = (LoadInteger(ItemDataHashtable, 5, whichItem) != 0);

        //Проверка, купили ли мы обычный айтем
        if (Requirements[1] == 0 && Requirements[2] == 0 && Requirements[3] == 0) {
          SetItemPlayer(whichItemItem, GetOwningPlayer(whichHero), false);
          return null;
        }

        for (1 <= RequirementIndex <= 3) {
          InventoryIndex = 0;
          while (InventoryIndex <= 5) {
            //Если мы пытаемся найти несуществующий предмет - просто выходим из цикла
            if (GetObjectName( Requirements[RequirementIndex] ) == "Default string" ) {
              break;
            }
            //Мы нашли нужный нам предмет, временно его удаляем, что бы повторно на него не сработать, и выходим из цикла
            if ( GetItemTypeId(UnitItemInSlot(whichHero, InventoryIndex)) == Requirements[RequirementIndex] && Requirements[RequirementIndex] != 0) {
              RequirementItem[InventoryIndex] = Requirements[RequirementIndex];
              RemoveItem(UnitItemInSlot(whichHero, InventoryIndex));
              ItemCost -= LoadInteger(ItemDataHashtable, 0, Requirements[RequirementIndex]);
              CountOfRemovedItems += 1;
              break;
            }
            InventoryIndex += 1;
            }
            //Если мы не нашли этот предмет - смотрим, есть ли у него зависимости
            if (RequirementItem[InventoryIndex] == null) {
              if (IsItemRare(Requirements[RequirementIndex])) {
                //Если есть - получаем их
                ChildItem[RequirementIndex] = LoadInteger(ItemDataHashtable, RequirementIndex + 6, whichItem);
                for (1 <= RequirementChildIndex <= 3) {
                  InventoryIndex = 0;
                  ChildRequirementItem[RequirementChildIndex] = LoadInteger(ItemDataHashtable, RequirementChildIndex, ChildItem[RequirementIndex]);
                  //Проверяем в каждом слоте, есть ли нужный нам предмет?
                  while (InventoryIndex <= 5) {
                    //Если нужный нам предмет не существует - выходим из цикла
                    if ( GetObjectName(ChildRequirementItem[RequirementChildIndex] ) == "Default string" ) {
                      break;
                    }
                    //Если есть - временно его удаляем, отнимаем от общей стоимости его стоимость и выходим из цикла
                    if (GetItemTypeId(UnitItemInSlot(whichHero, InventoryIndex)) == ChildRequirementItem[RequirementChildIndex] && ChildRequirementItem[RequirementChildIndex] != 0) {
                      ItemCost -= LoadInteger(ItemDataHashtable, 0, ChildRequirementItem[RequirementChildIndex]);
                      RequirementItem[InventoryIndex] = ChildRequirementItem[RequirementChildIndex];
                      RemoveItem( UnitItemInSlot(whichHero, InventoryIndex) );
                      CountOfRemovedItems += 1;
                      break;
                    }
                    InventoryIndex += 1;
                  }
                }
              }
            }
          }
            //Проверка, достаточно ли у нас свободных слотов
            if (CountOfRemovedItems < 1 && CountOfHeroFreeSlots < 1) {
                DisplayTimedTextToPlayer(GetOwningPlayer(whichHero), 0, 0, 15, "У вас полон инвентарь!");
                return null;
            }
            
            if ( PlayerItemPoints >= ItemCost) {
                SetPlayerState(GetOwningPlayer(whichHero), PLAYER_STATE_RESOURCE_GOLD, PlayerItemPoints - ItemCost);
                e = AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl", GetTriggerWidget(), "origin");
                DestroyEffect(e);
                if (IsItemHaveTwoVariants) {
                    if (IsHeroRange(whichHero)) {
                        i = UnitAddItemById(whichHero, LoadInteger(ItemDataHashtable, 5, whichItem));
                    } else {
                        i = UnitAddItemById(whichHero, LoadInteger(ItemDataHashtable, 4, whichItem));
                    }
                } else {
                    i = UnitAddItemById(whichHero, LoadInteger(ItemDataHashtable, 4, whichItem));
                }
                SetItemPlayer(i, GetOwningPlayer(whichHero), false);
                return i;
            } else {
                DisplayTimedTextToPlayer(GetOwningPlayer(whichHero), 0, 0, 15, "Вам не хватает: " + I2S(ItemCost - PlayerItemPoints) + " очков предметов, для покупки.");
                for (0 <= InventoryIndex <= 5) {
                    UnitAddItemById(whichHero, RequirementItem[InventoryIndex]);
                }
                return null;
            }
            return null;
        }
    }
    
    function Item_AquiredStart ()  -> nothing {
        if (GetItemPlayer(GetManipulatedItem()) != Player(15) && GetItemPlayer(GetManipulatedItem()) != GetOwningPlayer(GetTriggerUnit()) && udg_Sandbox != 11) {
            DisplayTimedTextToPlayer(GetOwningPlayer(GetTriggerUnit()), 0, 0, 15, "Ты не можешь поднять чужой предмет!");
            UnitRemoveItem(GetTriggerUnit(), GetManipulatedItem());
            return;
        }
        /*if (GetItemTypeId(GetManipulatedItem()) != HelpLoadTargetItem(GetTriggerPlayer()) && HelpLoadTargetItem(GetTriggerPlayer()) != 0) {
            if (IsDisplayWarningWindow[GetPlayerId(GetTriggerPlayer())]) {
                DisplayTimedTextToPlayerSimple(GetTriggerPlayer(), 20, "Вы уверены, что хотите купить этот предмет? Гайд вам рекомендует предмет: " + GetObjectName(HelpLoadTargetItem(GetTriggerPlayer())));
                return;
            }
            IsDisplayWarningWindow[GetPlayerId(GetTriggerPlayer())] = !IsDisplayWarningWindow[GetPlayerId(GetTriggerPlayer())];
        }*/
        Item_Aquired(GetTriggerUnit(), GetManipulatedItem());
    }

    function Stonepath_Armor ()  -> nothing {
      unit TriggerUnit = GetTriggerUnit();
      player TriggerPlayer = GetTriggerPlayer();
      TriggerSleepAction(0.01);
      if (UnitHasItemOfTypeBJ(TriggerUnit, Stonepath_Chestguard_Inventory)) {
        GroupAddUnit(Stonepath_Owners, TriggerUnit);
        UnitAddAbility(TriggerUnit, 'A0GT');
        UnitAddAbility(TriggerUnit, 'A0GV');
        UnitAddAbility(TriggerUnit, 'A0GU');
      } else {
        GroupRemoveUnit(Stonepath_Owners, TriggerUnit);
        UnitRemoveAbility(TriggerUnit, 'A0GT');
        UnitRemoveAbility(TriggerUnit, 'A0GV');
        UnitRemoveAbility(TriggerUnit, 'A0GU');
        UnitRemoveAbility(TriggerUnit, 'B04O');
        UnitRemoveAbility(TriggerUnit, 'B04N');
      }
      TriggerUnit = null;
      TriggerPlayer = null;
    }

    function Update ()  -> nothing {
      real HeroArmor = GetHeroArmor(GetEnumUnit()) * 0.25;
      string HeroArmorStr = R2SW(HeroArmor, 2, 2);
      unit EnumUnit = GetEnumUnit();
      if (IsUnitDeadBJ(EnumUnit)) return;
      debug BJDebugMsg("Армор юнита: " + R2SW(GetHeroArmor(GetEnumUnit()), 2, 2));
      debug BJDebugMsg("Грудак даёт армора: " + HeroArmorStr);
      if (HeroArmor >= 100) {
        SetUnitAbilityLevel(EnumUnit, 'A0GU', S2I(SubString(HeroArmorStr, 0, 1)) + 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GT', S2I(SubString(HeroArmorStr, 1, 2)) + 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GV', S2I(SubString(HeroArmorStr, 2, 3)) + 1);

        SetUnitAbilityLevel(EnumUnit, 'A0GQ', S2I(SubString(HeroArmorStr, 4, 5)) + 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GR', S2I(SubString(HeroArmorStr, 5, 6)) + 1);
      } else if (HeroArmor >= 10) {
        SetUnitAbilityLevel(EnumUnit, 'A0GU', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GT', S2I(SubString(HeroArmorStr, 0, 1)) + 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GV', S2I(SubString(HeroArmorStr, 1, 2)) + 1);

        SetUnitAbilityLevel(EnumUnit, 'A0GQ', S2I(SubString(HeroArmorStr, 3, 4)) + 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GR', S2I(SubString(HeroArmorStr, 4, 5)) + 1);
      } else if (HeroArmor >= 1) {
        SetUnitAbilityLevel(EnumUnit, 'A0GU', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GT', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GV', S2I(SubString(HeroArmorStr, 0, 1)) + 1);

        SetUnitAbilityLevel(EnumUnit, 'A0GQ', S2I(SubString(HeroArmorStr, 2, 3)) + 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GR', S2I(SubString(HeroArmorStr, 3, 4)) + 1);
      } else if (HeroArmor >= 0.1) {
        SetUnitAbilityLevel(EnumUnit, 'A0GU', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GT', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GV', 1);

        SetUnitAbilityLevel(EnumUnit, 'A0GQ', S2I(SubString(HeroArmorStr, 1, 2)) + 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GR', S2I(SubString(HeroArmorStr, 2, 3)) + 1);
      } else if (HeroArmor >= 0.01) {
        SetUnitAbilityLevel(EnumUnit, 'A0GU', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GT', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GV', 1);

        SetUnitAbilityLevel(EnumUnit, 'A0GQ', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GR', S2I(SubString(HeroArmorStr, 1, 2)) + 1);
      } else {
        SetUnitAbilityLevel(EnumUnit, 'A0GU', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GT', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GV', 1);

        SetUnitAbilityLevel(EnumUnit, 'A0GQ', 1);
        SetUnitAbilityLevel(EnumUnit, 'A0GR', 1);
      }
      if (IsUnitInGroup(GetEnumUnit(), Stonepath_Owners)) {
        UnitAddAbility(GetEnumUnit(), 'A0GT');
        UnitAddAbility(GetEnumUnit(), 'A0GV');
        UnitAddAbility(GetEnumUnit(), 'A0GU');
      } else {
        UnitRemoveAbility(GetEnumUnit(), 'A0GT');
        UnitRemoveAbility(GetEnumUnit(), 'A0GV');
        UnitRemoveAbility(GetEnumUnit(), 'A0GU');
      }
      EnumUnit = null;
    }
    
    function Stonepath_Update ()  -> nothing {
      ForGroup(Stonepath_Owners, function Update);
    }

    private function onInit ()  -> nothing {
        trigger t = CreateTrigger();
        TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM);
        TriggerAddAction(t, function Item_AquiredStart);
        t = CreateTrigger();
        TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM);
        TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM);
        TriggerAddAction(t, function Stonepath_Armor);
        //Регулярное обновление того, сколько стоунпас даёт брони
        t = CreateTrigger();
        TriggerRegisterTimerEvent(t, 0.1, true);
        TriggerAddAction(t, function Stonepath_Update);
    }
  }
//! endzinc
