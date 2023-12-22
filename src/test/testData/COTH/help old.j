//! zinc
  library PlayerHelp requires CothUtilities {
    boolean IsPlayerWriteHelp[12];
    integer HelpStep[12];
    integer HeroIdSelected[12];

    public function WaitWhileHeroBuyItem (unit Hero, integer ItemId)  -> nothing {
      boolean HeroHaveItem[];

      while
      (
        !HeroHaveItem[0] &&
        !HeroHaveItem[1] &&
        !HeroHaveItem[2] &&
        !HeroHaveItem[3] &&
        !HeroHaveItem[4] &&
        !HeroHaveItem[5]
      )
      {
        HeroHaveItem[0] = (GetItemTypeId(UnitItemInSlot(Hero, 0)) == ItemId);
        HeroHaveItem[1] = (GetItemTypeId(UnitItemInSlot(Hero, 1)) == ItemId);
        HeroHaveItem[2] = (GetItemTypeId(UnitItemInSlot(Hero, 2)) == ItemId);
        HeroHaveItem[3] = (GetItemTypeId(UnitItemInSlot(Hero, 3)) == ItemId);
        HeroHaveItem[4] = (GetItemTypeId(UnitItemInSlot(Hero, 4)) == ItemId);
        HeroHaveItem[5] = (GetItemTypeId(UnitItemInSlot(Hero, 5)) == ItemId);
        //Задержка перед проверкой
        TriggerSleepAction(0.05);
      }
      
    }

    public function SeparateText (player whichPlayer, real time)  -> nothing {
      DisplayTimedTextToPlayer(whichPlayer, 0, 0, time, " ");
    }


    public function Help_Selected_Hero(integer HeroId, player PlayerHelp)  -> nothing {
      integer index = 0;
      //Написал ли игрок -help
      if (!IsPlayerWriteHelp[GetPlayerId(PlayerHelp)]) {
        return;
      }
      //Обучили ли мы героя?
      if (!IsHeroUnitId(HeroId)) {
        return;
      }

      HeroIdSelected[GetPlayerId(PlayerHelp)] = HeroId;

      //Отображение подсказок для красного
      if (HeroId == Curdran) {
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Первым делом выйдите на мосты. Что бы это сделать - откройте ворота рычагом, он находится рядом с ними.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "Мосты - особая локация, находящаяся прямо перед вашей базой (она подсвечена на миникарте).");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 60, "Приведите к вашему герою 5 любых воинов. В книге заклинаний вашего героя есть телепорт. Телепортируйтесь к синему игроку.");
        HelpStep[0] = 1;
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "Прокачивайте первую и вторую способности.");
        PingMinimapLocForPlayerEx(PlayerHelp, Bridges, 60, 60, 90, 255, true);
                    
        //Задержка, что бы не перегружать человека текстом
        TriggerSleepAction(15);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "Ожидайте, пока у вас не накопится 1600 |cff99b4d1Очков Предметов.|r");
        //Ожидаем, когда у игрока накопится 1600 очков предметов

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 1600) {
          //Задержка перед проверкой
          TriggerSleepAction(0.05);
        }
          
        HelpStep[0] = 2;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Купите предмет \"|cffffcc00Шлем Энергии|r\". Оно находится в магазине |cffffcc00F (Редкая Броня)|r. Центральная строчка, 3-й предмет.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 15, "Магазины находятся в самом верхнем левом углу. Их месторасположение у вас отображается на миникарте.");
        PingMinimapLocForPlayerEx(PlayerHelp, Shop, 60, 255, 90, 30, true);
        //Ожидаем, когда он купит предмет

        WaitWhileHeroBuyItem(gg_unit_Hmbr_0462, Helm_Of_Energy_Inventory);

        HelpStep[0] = 3;
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "Молодец! Теперь дождитесь, когда у вас накопится 1350 |cff99b4d1очков предметов|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 1350) {
          TriggerSleepAction(0.05);
        }

        HelpStep[0] = 4;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Купите предмет \"|cffffcc00Самоцвет Кадгара|r\". Оно находится в магазине |cffffcc00G (Редкие Аксессуары)|r. Самая верхняя строчка, 3-й предмет.");
                        
        WaitWhileHeroBuyItem(gg_unit_Hmbr_0462, Khadgar_Gem_Inventory);
        HelpStep[0] = 5;
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "Очень хорошо. Теперь дождитесь, когда у вас скопится 600 |cff99b4d1очков предметов.|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 600) {
          TriggerSleepAction(0.05);
        }

        HelpStep[0] = 6;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Настало время по-настоящему крутых предметов! Купите \"|cff8b00ffАркан Вондер|r\". Он находится в магазине |cff8b00ffJ (Уникальные Аксессуары)|r, верхняя строчка, 1-й предмет.");
                        
        WaitWhileHeroBuyItem(gg_unit_Hmbr_0462, Arcane_Wonder_Inventory);

        HelpStep[0] = 7;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "Волшебно! Теперь вы знаете, как собирать предметы, куда стоит идти если вы играете красным, и как помогать своим союзникам.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffДушу Азуны|r\" в магазине |cff8b00ffI (Уникальная Броня)|r. Вы можете собирать её по частям, как это сделали с Аркан вондером, либо купить в 1 клик, как только вам станет хватать |cff99b4d1Очков Предметов.|r");

        WaitWhileHeroBuyItem(gg_unit_Hmbr_0462, Essence_of_Aszune_Inventory);

        HelpStep[0] = 8;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffНепробиваемый Нагрудник|r\" в магазине |cff8b00ffI (Уникальная Броня)|r.");

        WaitWhileHeroBuyItem(gg_unit_Hmbr_0462, Stonepath_Chestguard_Inventory);

        //TODO: Дописать лейт-сборку

        HelpStep[0] = 9;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь, вы отправляетесь в вольное плаванье. Вы можете сами придумывать, что вам собирать, либо же уточнить у знающих союзников");
        return;
      }



      if (HeroId == Khadgar) {

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Ваша задача - прожить как можно больше. Скорее всего, все силы орду будут направленны именно на ВАС!");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Раздайте всем союзникам контроль, что бы вдруг что и они могли спастись, и вас могли спасти. Так же откройте все ворота рычагами.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Сделайте сразу же в лесопилке улучшение на защиту, за 780 золота. Оно находится на центральной строчке, 3-ё по счету. Местоположение лесопилки у вас подсвечено на миникарте.");

        PingMinimapLocForPlayerEx(PlayerHelp, Blue_Lumbermill, 60, 60, 90, 255, true);

        HelpStep[1] = 1;
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Прокачивайте первую и вторую способности");

        TriggerSleepAction(20);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "Ожидайте, пока у вас не накопится 1600 |cff99b4d1Очков Предметов.|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 1600) {
          //Задержка перед проверкой
          TriggerSleepAction(0.05);
        }

        HelpStep[1] = 2;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Купите предмет \"|cffffcc00Шлем Энергии|r\". Оно находится в магазине |cffffcc00F (Редкая Броня)|r. Центральная строчка, 3-й предмет.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 15, "Магазины находятся в самом верхнем левом углу. Их месторасположение у вас отображается на миникарте.");
        PingMinimapLocForPlayerEx(PlayerHelp, Shop, 60, 255, 90, 30, true);
        //Ожидаем, когда он купит предмет

        WaitWhileHeroBuyItem(gg_unit_Hgam_0513, Helm_Of_Energy_Inventory);

        HelpStep[1] = 3;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "Молодец! Теперь дождитесь, когда у вас накопится 1350 |cff99b4d1очков предметов|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 1350) {
          TriggerSleepAction(0.05);
        }

        HelpStep[1] = 4;
        
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Купите предмет \"|cffffcc00Самоцвет Кадгара|r\". Оно находится в магазине |cffffcc00G (Редкие Аксессуары)|r. Самая верхняя строчка, 3-й предмет.");
                      
        WaitWhileHeroBuyItem(gg_unit_Hgam_0513, Khadgar_Gem_Inventory);
        HelpStep[1] = 5;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "Очень хорошо. Теперь дождитесь, когда у вас скопится 600 |cff99b4d1очков предметов.|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 600) {
          TriggerSleepAction(0.05);
        }

        HelpStep[1] = 6;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Настало время по-настоящему крутых предметов! Купите \"|cff8b00ffАркан Вондер|r\". Он находится в магазине |cff8b00ffJ (Уникальные Аксессуары)|r, верхняя строчка, 1-й предмет.");
                      
        WaitWhileHeroBuyItem(gg_unit_Hgam_0513, Arcane_Wonder_Inventory);

        HelpStep[1] = 7;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "Волшебно! Теперь вы знаете, как собирать предметы, как делать улучшения, и какой самый лучший герой на синем.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffПосох Молний|r\" в магазине |cff8b00ffK (Уникальные артефакты интеллекта)|r. Вы можете собирать её по частям, как это сделали с Аркан вондером, либо купить в 1 клик, как только вам станет хватать |cff99b4d1Очков Предметов.|r");

        WaitWhileHeroBuyItem(gg_unit_Hgam_0513, Lightning_Stave_Inventory);
        HelpStep[1] = 8;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffПосох Ветра|r\" в магазине |cff8b00ffK (Уникальные артефакты интеллекта)|r.");

        WaitWhileHeroBuyItem(gg_unit_Hgam_0513, Wind_Stave_Inventory);

        //TODO: Дописать лейт-сборку
        HelpStep[1] = 9;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь, вы отправляетесь в вольное плаванье. Вы можете сами придумывать, что вам собирать, либо же уточнить у знающих союзников");
        return;
      }
      if (HeroId == Galen) {

        return;
      }

      if (HeroId == Thoras) {

        return;
      }
      if (HeroId == Danath) {

        return;
      }
      if (HeroId == Anduin) {

        return;
      }
      if (HeroId == Llane) {

        return;
      }
      if (HeroId == Mara) {

        return;
      }
      if (HeroId == Daelin) {

        return;
      }
      if (HeroId == Duke) {

        return;
      }
      if (HeroId == Derek) {

        return;
      }
      if (HeroId == Mishan) {

        return;
      }
      if (HeroId == Antonidas) {

        return;
      }
      if (HeroId == Rhonin) {

        return;
      }
      if (HeroId == Kael) {

        return;
      }
      if (HeroId == Aegwynn) {

        return;
      }
      if (HeroId == Magni) {

        return;
      }
      if (HeroId == Brann) {
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "У вас - самая хорошо-защищённая база. Не пытайтесь с неё атаковать!");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "|cd5db5212ВАЖНО:|r Все войска, что находятся снизу горы - поднимите на гору. НИ В КОЕМ СЛУЧАЕ НЕ СПУСКАЙТЕСЬ С ГОРЫ!");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, " ");

        PolledWait(10);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "|cd5db5212ВАЖНО:|r Соберите 5 войск рядом с вашим героем и используйте Телепортацию в Книге Способностей вашего героя на базу синего (она снизу).");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, " ");

        PolledWait(1);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "База синего у вас отображается на мини-карте.");
        PingMinimapLocForPlayerEx(PlayerHelp, Blue_Throne, 60, 60, 90, 255, true);

        PolledWait(10);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 15, "Прокачивайте вашему герою 1-ю и 2-ю способности.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 15, " ");

        PolledWait(10);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 15, "Раздайте всем вашим союзникам контроль, если вы ещё этого не сделали. Это очень важно!");
        PolledWait(15);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "Ожидайте, пока у вас не накопится 1650 |cff99b4d1Очков Предметов.|r");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "Количество |cff99b4d1Очков Предметов|r отображаются рядом с золотом у вас.");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 1650) {
          TriggerSleepAction(0.05);
        }

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Купите предмет \"|cffffcc00Клинок Ветерана|r\". Он находится в магазине |cffffcc00E (Редкое Оружие)|r. Центральная строчка, 3-й предмет.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Магазины находятся в самом верхнем левом углу. Их месторасположение у вас отображается на миникарте.");
        PingMinimapLocForPlayerEx(PlayerHelp, Shop, 60, 255, 90, 30, true);

        WaitWhileHeroBuyItem(gg_unit_H005_0502, Veterans_Blade_Inventory);

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "Отлично! Теперь дождитесь, когда у вас накопится 2400 |cff99b4d1Очков Предметов.|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 2400) {
          TriggerSleepAction(0.05);
        }

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Купите предмет \"|cffcbd4ffГигантский Меч|r\". Он находится в магазине |cffcbd4ffA (Обычное Оружие)|r. Самая нижняя строчка, 1-й предмет.");

        WaitWhileHeroBuyItem(gg_unit_H005_0502, Great_Sword);

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "Превосходно! Теперь дождитесь, когда у вас накопится 850 |cff99b4d1Очков Предметов.|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 850) {
          TriggerSleepAction(0.05);
        }

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Настало время по-настоящему крутых предметов! Купите \"|cff8b00ffТандерфьюри|r\". Оно находится в магазине |cff8b00ffH (Уникальное Оружие)|r, центральная строчка, 1-й предмет.");
        
        WaitWhileHeroBuyItem(gg_unit_H005_0502, Thunderfury_Inventory);

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "Волшебно! Теперь вы знаете, как собирать предметы, где вам стоять, и какой самый простой и одновременно эффективный герой на оранжевом.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cffffcc00Серебрянный Меч|r\" в магазине |cffffcc00E (Редкое Оружие)|r. Вы можете собирать его по частям, как это сделали с Тандерфьюри, либо купить в 1 клик, как только вам станет хватать |cff99b4d1Очков Предметов.|r");
        
        WaitWhileHeroBuyItem(gg_unit_H005_0502, Silver_Blade_Inventory);

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffТопор Амани|r\" в магазине |cff8b00ffL (Уникальные артефакты ловкости)|r.");

        WaitWhileHeroBuyItem(gg_unit_H005_0502, Amani_Throw_Axe_Inventory);

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffФлейту Меткости|r\" в магазине |cff8b00ffL (Уникальные артефакты ловкости)|r.");

        WaitWhileHeroBuyItem(gg_unit_H005_0502, Flute_Accurance_Inventory);

        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffМеч Рока|r\" в магазине |cff8b00ffH (Уникальное оружие)|r.");

        return;
      }
      if (HeroId == Gelbin) {

        return;
      }
      if (HeroId == Muradin) {

        return;
      }
      if (HeroId == Anasterian) {

        return;
      }
      if (HeroId == Alleria) {

        return;
      }
      if (HeroId == LorThermar) {

        return;
      }
      if (HeroId == Sylvanas) {

        return;
      }
      if (HeroId == Genn) {

        return;
      }
      if (HeroId == Gavinrad) {

        return;
      }
      if (HeroId == Darius) {

        return;
      }
      if (HeroId == Uther) {

        return;
      }
      if (HeroId == Tyralion) {

        return;
      }
      if (HeroId == Tirion) {

        return;
      }
      if (HeroId == AlonSUS) {

        return;
      }
      if (HeroId == Arugal) { 

        
        ClearTextMessagesForPlayer(PlayerHelp);
        HelpStep[7] = 0;
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 15, "Ваша задача - помогать союзникам, вы будете атакованы почти в последнюю очередь.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, " ");
        PolledWait(0.8);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "|cd5db5212ВАЖНО:|r Соберите 5 войск рядом с вашим героем и используйте Телепортацию в Книге Способностей вашего героя на базу синего (она снизу).");
        PolledWait(0.8);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "База синего у вас отображается на мини-карте.");

        PingMinimapLocForPlayerEx(PlayerHelp, Blue_Throne, 60, 60, 90, 255, true);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, " ");

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 35, "Прокачивайте 1-ю 2-ю способности, они ваши основные.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, " ");

        PolledWait(15);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "|cff1518d4Информация:|r Снизу у вас корабли. Приведите туда юнитов, посадите их в корабли и приплывите к синему.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, " ");

        PingMinimapLocForPlayerEx(PlayerHelp, Pink_Shipyard, 60, 255, 74, 40, true);

        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "|cd5db5212ВАЖНО:|r Ворота открываются РЫЧАГОМ, он стоит рядом с воротами, обычно на пригорке.");
        TriggerSleepAction(25);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "Ожидайте, пока у вас не накопится 1600 |cff99b4d1Очков Предметов.|r");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 45, "Количество |cff99b4d1Очков Предметов|r отображаются рядом с золотом у вас.");
        HelpStep[7] = 1;

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 1600) {
          TriggerSleepAction(0.05);
        }
        HelpStep[7] = 2;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Купите предмет \"|cffffcc00Шлем Энергии|r\". Оно находится в магазине |cffffcc00F (Редкая Броня)|r. Центральная строчка, 3-й предмет.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Магазины находятся в самом верхнем левом углу. Их месторасположение у вас отображается на миникарте.");

        PingMinimapLocForPlayerEx(PlayerHelp, Blue_Lumbermill, 60, 255, 90, 30, true);

        WaitWhileHeroBuyItem(gg_unit_Hvsh_0480, Helm_Of_Energy_Inventory);
        HelpStep[7] = 3;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "Молодец! Теперь дождитесь, когда у вас накопится 1350 |cff99b4d1очков предметов|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 1350) {
          TriggerSleepAction(0.05);
        }
        HelpStep[7] = 4;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 30, "Купите предмет \"|cffffcc00Самоцвет Кадгара|r\". Оно находится в магазине |cffffcc00G (Редкие Аксессуары)|r. Самая верхняя строчка, 3-й предмет.");

        WaitWhileHeroBuyItem(gg_unit_Hvsh_0480, Khadgar_Gem_Inventory);
        HelpStep[7] = 5;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 25, "Белиссимо! Теперь дождитесь, когда у вас скопится 600 |cff99b4d1очков предметов.|r");

        while (GetPlayerState(PlayerHelp, PLAYER_STATE_RESOURCE_GOLD) < 600) {
          TriggerSleepAction(0.05);
        }

        HelpStep[7] = 6;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Настало время по-настоящему крутых предметов! Купите \"|cff8b00ffАркан Вондер|r\". Он находится в магазине |cff8b00ffJ (Уникальные Аксессуары)|r, верхняя строчка, 1-й предмет.");

        WaitWhileHeroBuyItem(gg_unit_Hvsh_0480, Arcane_Wonder_Inventory);

        HelpStep[7] = 7;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 20, "Волшебно! Теперь вы знаете, как собирать предметы, куда вам следовать, и какой самый простой герой на розовом.");
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffПосох Молний|r\" в магазине |cff8b00ffK (Уникальные артефакты интеллекта)|r. Вы можете собирать её по частям, как это сделали с Аркан вондером, либо купить в 1 клик, как только вам станет хватать |cff99b4d1Очков Предметов.|r");

        WaitWhileHeroBuyItem(gg_unit_Hvsh_0480, Lightning_Stave_Inventory);

        HelpStep[7] = 8;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь купите \"|cff8b00ffЖезл Смерти|r\" в магазине |cff8b00ffK (Уникальные артефакты интеллекта)|r.");

        WaitWhileHeroBuyItem(gg_unit_Hvsh_0480, Death_Edge_Inventory);

        //TODO: Дописать лейт-сборку
        HelpStep[7] = 9;
        ClearTextMessagesForPlayer(PlayerHelp);
        DisplayTimedTextToPlayer(PlayerHelp, 0, 0, 40, "Теперь, вы отправляетесь в вольное плаванье. Вы можете сами придумывать, что вам собирать, либо же уточнить у знающих союзников");
        return;
      }
      
    }

    private function SelectedHero ()  -> nothing {
      integer SelectedHeroId = GetUnitTypeId(GetTrainedUnit());

      Help_Selected_Hero(SelectedHeroId, GetTriggerPlayer());
    }



    private function HelpInit ()  -> nothing {
      if (GetTriggerPlayer() == Player(2) || GetTriggerPlayer() == Player(3) || GetTriggerPlayer() == Player(6) || GetTriggerPlayer() == Player(8)) {
        DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "Для вашей фракции данная команда пока-что не готова.");
        return;
      }

      //Красный игрок
      if ( GetTriggerPlayer() == Player(0) ) {
        if ( !IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] ) {
          ClearTextMessagesForPlayer(GetTriggerPlayer());
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "Вам рекомендуется герой Курдран. Он крайне хорошо атакует толпы юнитов, и является полу-магом, полу-танком.");
          IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] = true;
          return;
        }
        //Если мы уже начали обучение - выводим текст, который нам вывелся последним
        //Текст для Курдрана
        if (HeroIdSelected[GetPlayerId(GetTriggerPlayer())] == Curdran) {
          if (HelpStep[0] == 1) {
            DisplayTimedTextToPlayer(Player(0), 0, 0, 30, "Первым делом выйдите на мосты. Что бы это сделать - откройте ворота рычагом, он находится рядом с ними.");
            DisplayTimedTextToPlayer(Player(0), 0, 0, 45, "Мосты - особая локация, находящаяся прямо перед вашей базой (она подсвечена на миникарте).");
            DisplayTimedTextToPlayer(Player(0), 0, 0, 60, "Приведите к вашему герою 5 любых воинов. В книге заклинаний вашего героя есть телепорт. Телепортируйтесь к синему игроку.");
            DisplayTimedTextToPlayer(Player(0), 0, 0, 20, "Прокачивайте первую и вторую способности.");
            PingMinimapLocForPlayerEx(GetTriggerPlayer(), Bridges, 60, 60, 90, 255, true);
            return;
          }
          if (HelpStep[0] == 2) {
            ClearTextMessagesForPlayer(GetTriggerPlayer());
            DisplayTimedTextToPlayer(Player(0), 0, 0, 30, "Купите предмет \"|cffffcc00Шлем Энергии|r\". Оно находится в магазине |cffffcc00F (Редкая Броня)|r. Центральная строчка, 3-й предмет.");
            DisplayTimedTextToPlayer(Player(0), 0, 0, 15, "Магазины находятся в самом верхнем левом углу. Их месторасположение у вас отображается на миникарте.");

            PingMinimapLocForPlayerEx(GetTriggerPlayer(), Shop, 60, 255, 90, 30, true);
            return;
          }
          if (HelpStep[0] == 3) {
            DisplayTimedTextToPlayer(Player(0), 0, 0, 25, "Молодец! Теперь дождитесь, когда у вас накопится 1350 |cff99b4d1очков предметов|r");
            return;
          }
          if (HelpStep[0] == 4) {
            DisplayTimedTextToPlayer(Player(0), 0, 0, 30, "Купите предмет \"|cffffcc00Самоцвет Кадгара|r\". Оно находится в магазине |cffffcc00G (Редкие Аксессуары)|r. Самая верхняя строчка, 3-й предмет.");
            return;
          }
          if (HelpStep[0] == 5) {
            DisplayTimedTextToPlayer(Player(0), 0, 0, 25, "Очень хорошо. Теперь дождитесь, когда у вас скопится 600 |cff99b4d1очков предметов.|r");
            return;
          }
          if (HelpStep[0] == 6) {
            DisplayTimedTextToPlayer(Player(0), 0, 0, 40, "Настало время по-настоящему крутых предметов! Купите \"|cff8b00ffАркан Вондер|r\". Он находится в магазине |cff8b00ffJ (Уникальные Аксессуары)|r, верхняя строчка, 1-й предмет.");
            return;
          }
          if (HelpStep[0] == 7) {
            DisplayTimedTextToPlayer(Player(0), 0, 0, 40, "Волшебно! Теперь вы знаете, как собирать предметы, куда стоит идти если вы играете красным, и как помогать своим союзникам.");
            DisplayTimedTextToPlayer(Player(0), 0, 0, 40, "Теперь купите \"|cff8b00ffДушу Азуны|r\" в магазине |cff8b00ffI (Уникальная Броня)|r. Вы можете собирать её по частям, как это сделали с Аркан вондером, либо купить в 1 клик, как только вам станет хватать |cff99b4d1Очков Предметов.|r");
            return;
          }
          if (HelpStep[0] == 8) {
            DisplayTimedTextToPlayer(Player(0), 0, 0, 40, "Теперь купите \"|cff8b00ffНепробиваемый Нагрудник|r\" в магазине |cff8b00ffI (Уникальная Броня)|r.");
            return;
          }
          if (HelpStep[0] == 9) {
            DisplayTimedTextToPlayer(Player(0), 0, 0, 40, "Теперь, вы отправляетесь в вольное плаванье. Вы можете сами придумывать, что вам собирать, либо же уточнить у знающих союзников");
            return;
          }
        }
      }
      //Синий
      else if (GetTriggerPlayer() == Player(1)) {
        if ( !IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] ) {
          DisplayTimedTextToPlayer(Player(1), 0, 0, 30, "Вам рекомендуется герой Кадгар. Он крайне хорошо уничтожает толпы юнитов, и сильно мешает героям противника");
          IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] = true;
          return;
        }
        ClearTextMessagesForPlayer(Player(1));
        if (HeroIdSelected[1] == 1) {
          if (HelpStep[1] == 1) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 30, "Ваша задача - прожить как можно больше. Скорее всего, все силы орду будут направленны именно на ВАС!");
            DisplayTimedTextToPlayer(Player(1), 0, 0, 30, "Раздайте всем союзникам контроль, что бы вдруг что и они могли спастись, и вас могли спасти. Так же откройте все ворота рычагами.");
            DisplayTimedTextToPlayer(Player(1), 0, 0, 30, "Сделайте сразу же в лесопилке улучшение на защиту, за 780 золота. Оно находится на центральной строчке, 3-ё по счету. Местоположение лесопилки у вас подсвечено на миникарте.");
            return;
          }
          if (HelpStep[1] == 2) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 30, "Купите предмет \"|cffffcc00Шлем Энергии|r\". Оно находится в магазине |cffffcc00F (Редкая Броня)|r. Центральная строчка, 3-й предмет.");
            DisplayTimedTextToPlayer(Player(1), 0, 0, 15, "Магазины находятся в самом верхнем левом углу. Их месторасположение у вас отображается на миникарте.");

            return;
          }
          if (HelpStep[1] == 3) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 25, "Молодец! Теперь дождитесь, когда у вас накопится 1350 |cff99b4d1очков предметов|r");

            return;
          }
          if (HelpStep[1] == 4) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 30, "Купите предмет \"|cffffcc00Самоцвет Кадгара|r\". Оно находится в магазине |cffffcc00G (Редкие Аксессуары)|r. Самая верхняя строчка, 3-й предмет.");

            return;
          }
          if (HelpStep[1] == 5) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 25, "Очень хорошо. Теперь дождитесь, когда у вас скопится 600 |cff99b4d1очков предметов.|r");

            return;
          }
          if (HelpStep[1] == 6) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 40, "Настало время по-настоящему крутых предметов! Купите \"|cff8b00ffАркан Вондер|r\". Он находится в магазине |cff8b00ffJ (Уникальные Аксессуары)|r, верхняя строчка, 1-й предмет.");

            return;
          }
          if (HelpStep[1] == 7) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 40, "Волшебно! Теперь вы знаете, как собирать предметы, куда стоит идти если вы играете красным, и как помогать своим союзникам.");
            DisplayTimedTextToPlayer(Player(1), 0, 0, 40, "Теперь купите \"|cff8b00ffДушу Азуны|r\" в магазине |cff8b00ffI (Уникальная Броня)|r. Вы можете собирать её по частям, как это сделали с Аркан вондером, либо купить в 1 клик, как только вам станет хватать |cff99b4d1Очков Предметов.|r");

            return;
          }
          if (HelpStep[1] == 8) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 40, "Теперь купите \"|cff8b00ffНепробиваемый Нагрудник|r\" в магазине |cff8b00ffI (Уникальная Броня)|r.");

            return;
          }
          if (HelpStep[1] == 9) {
            ClearTextMessagesForPlayer(Player(1));
            DisplayTimedTextToPlayer(Player(1), 0, 0, 40, "Теперь, вы отправляетесь в вольное плаванье. Вы можете сами придумывать, что вам собирать, либо же уточнить у знающих союзников");

            return;
          }
        }
      }

      else if ( GetTriggerPlayer() == Player(3) )
      {
        if ( !IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] ) {
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "Вам рекомендуется герой Антонидас. Он простой, но при этом достаточно эффективный герой.");
          IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] = true;
          return;
        }

        if (HelpStep[4] == 1) {
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 20, "Первым делом, нажмите F11 и раздайте всем вашим союзникам контроль.");
          SeparateText(GetTriggerPlayer(), 20);
          PolledWait(5);
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 20, "Отправляйтесь на локацию \"Мосты\", она у вас отображается на миникарте.");
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 25, "|cd5db5212ВАЖНО:|r Ворота открываются РЫЧАГОМ, он стоит рядом с воротами, обычно на пригорке.");
          PingMinimapLocForPlayerEx(GetTriggerPlayer(), Bridges, 60, 60, 90, 255, false);
          SeparateText(GetTriggerPlayer(), 25);
          PolledWait(15);
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 20, "Ваша основная ударная сила - это маги. Старайтесь делать Чародеек и использовать их, они крайне сильные.");
        }

        if ( HeroIdSelected[GetPlayerId(GetTriggerPlayer())] ==  )

      }

      else if (GetTriggerPlayer() == Player(5)) {
        if ( !IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())]) {
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "Вам рекомендуется герой Бранн. Он крайне хорошо убивает героев и хорошо убивает толпы войск.");
          IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] = true;
          return;
        }

      }

      else if (GetTriggerPlayer() == Player(7)) {
        if ( !IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] ) {
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "Вам рекомендуется герой Аругал. Он крайне хорошо уничтожает войска и героев");
          IsPlayerWriteHelp[GetPlayerId(GetTriggerPlayer())] = true;
          return;
        }

        if (HelpStep[7] == 0) {
          ClearTextMessagesForPlayer(GetTriggerPlayer());
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15, "Ваша задача - помогать союзникам, вы будете атакованы почти в последнюю очередь.");
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 25, " ");
  
          PolledWait(0.8);
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 25, "|cd5db5212ВАЖНО:|r Соберите 5 войск рядом с вашим героем и используйте Телепортацию в Книге Способностей вашего героя на базу синего (она снизу).");
          PolledWait(0.8);
          DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 25, "База синего у вас отображается на мини-карте.");

          PingMinimapLocForPlayerEx(GetTriggerPlayer(), Blue_Throne, 60, 60, 90, 255, true);
        }

        if (HeroIdSelected[7] == 1) {
          if (HelpStep[7] == 0) {
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 35, "Прокачивайте 1-ю 2-ю способности, они ваши основные.");
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 25, " ");
            PolledWait(15);
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 45, "|cff1518d4Информация:|r Снизу у вас корабли. Приведите туда юнитов, посадите их в корабли и приплывите к синему.");
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 25, " ");

            PingMinimapLocForPlayerEx(GetTriggerPlayer(), Pink_Shipyard, 60, 60, 90, 255, true);
  
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 45, "|cd5db5212ВАЖНО:|r Ворота открываются РЫЧАГОМ, он стоит рядом с воротами, обычно на пригорке.");
            return;
          }

          if (HelpStep[7] == 1) {
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 45, "Ожидайте, пока у вас не накопится 1600 |cff99b4d1Очков Предметов.|r");
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 45, "Количество |cff99b4d1Очков Предметов|r отображаются рядом с золотом у вас.");
            return;
          }

          if (HelpStep[7] == 2) {
            ClearTextMessagesForPlayer(GetTriggerPlayer());
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "Купите предмет \"|cffffcc00Шлем Энергии|r\". Оно находится в магазине |cffffcc00F (Редкая Броня)|r. Центральная строчка, 3-й предмет.");
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "Магазины находятся в самом верхнем левом углу. Их месторасположение у вас отображается на миникарте.");

            PingMinimapLocForPlayerEx(GetTriggerPlayer(), Shop, 60, 255, 90, 30, true);
            return;
          }
          if (HelpStep[7] == 3) {
            ClearTextMessagesForPlayer(GetTriggerPlayer());
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 25, "Молодец! Теперь дождитесь, когда у вас накопится 1350 |cff99b4d1очков предметов|r");
            return;
          }
          if (HelpStep[7] == 4) {
            ClearTextMessagesForPlayer(GetTriggerPlayer());
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "Купите предмет \"|cffffcc00Самоцвет Кадгара|r\". Оно находится в магазине |cffffcc00G (Редкие Аксессуары)|r. Самая верхняя строчка, 3-й предмет.");
            return;
          }
          if (HelpStep[7] == 5) {
            ClearTextMessagesForPlayer(GetTriggerPlayer());
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 25, "Белиссимо! Теперь дождитесь, когда у вас скопится 600 |cff99b4d1очков предметов.|r");
            return;
          }
          if (HelpStep[7] == 6) {
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 40, "Настало время по-настоящему крутых предметов! Купите \"|cff8b00ffАркан Вондер|r\". Он находится в магазине |cff8b00ffJ (Уникальные Аксессуары)|r, верхняя строчка, 1-й предмет.");
            return;
          }
          if (HelpStep[7] == 7) {
            ClearTextMessagesForPlayer(GetTriggerPlayer());
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 20, "Волшебно! Теперь вы знаете, как собирать предметы, куда вам следовать, и какой самый простой герой на розовом.");
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 40, "Теперь купите \"|cff8b00ffПосох Молний|r\" в магазине |cff8b00ffK (Уникальные артефакты интеллекта)|r. Вы можете собирать её по частям, как это сделали с Аркан вондером, либо купить в 1 клик, как только вам станет хватать |cff99b4d1Очков Предметов.|r");
            return;
          }
          if (HelpStep[7] == 8) {
            ClearTextMessagesForPlayer(GetTriggerPlayer());
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 40, "Теперь купите \"|cff8b00ffЖезл Смерти|r\" в магазине |cff8b00ffK (Уникальные артефакты интеллекта)|r.");
            return;
          }
          if (HelpStep[7] == 9) {
            ClearTextMessagesForPlayer(GetTriggerPlayer());
            DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 40, "Теперь, вы отправляетесь в вольное плаванье. Вы можете сами придумывать, что вам собирать, либо же уточнить у знающих союзников");
            return;
          }
        }
      }
    }

  /* инициализация */
  private function onInit() {
      trigger SelectHero = CreateTrigger();
      trigger WriteHelp = CreateTrigger();
      integer index = 0;
      for (0 <= index <= 11) {
        TriggerRegisterPlayerChatEvent(WriteHelp, Player(index), "-help", true);
        TriggerRegisterPlayerUnitEvent(SelectHero, Player(index), EVENT_PLAYER_UNIT_TRAIN_FINISH, null);
      }
      TriggerAddAction(WriteHelp, function HelpInit);
      TriggerAddAction(SelectHero, function SelectedHero);

  }
  }
//! endzinc