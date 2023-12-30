library Typecasting

    globals
        private hashtable Data = InitHashtable()
    endglobals

    //! textmacro Typecasting takes ParentName, parenttype, TypeName, type
    function $ParentName$2$TypeName$ takes $parenttype$ object returns $type$
        call Save$ParentName$Handle(Data,0,0,object)
        return Load$TypeName$Handle(Data,0,0)
    endfunction
    //! endtextmacro
    //! runtextmacro Typecasting ("Agent","agent","Widget","widget")
    //! runtextmacro Typecasting ("Agent","agent","Group","group")
    //! runtextmacro Typecasting ("Agent","agent","Trigger","trigger")
    //! runtextmacro Typecasting ("Agent","agent","Timer","timer")
    //! runtextmacro Typecasting ("Agent","agent","Location","location")
    //! runtextmacro Typecasting ("Agent","agent","Effect","effect")
    //! runtextmacro Typecasting ("Agent","agent","Unit","unit")
    //! runtextmacro Typecasting ("Agent","agent","Item","item")
    //! runtextmacro Typecasting ("Widget","widget","Unit","unit")
    //! runtextmacro Typecasting ("Widget","widget","Destructable","destructable")
    //! runtextmacro Typecasting ("Widget","widget","Item","item")

    //! textmacro Typecasting_I2X takes TypeName, type
    function Int2$TypeName$ takes integer id returns $type$
        call SaveFogStateHandle(Data,0,0,ConvertFogState(id))
        return Load$TypeName$Handle(Data,0,0)
    endfunction
    //! endtextmacro
    //! runtextmacro Typecasting_I2X("Unit", "unit")
    //! runtextmacro Typecasting_I2X("Effect", "effect")
    //! runtextmacro Typecasting_I2X("Trigger", "trigger")
    //! runtextmacro Typecasting_I2X("Timer", "timer")
    //! runtextmacro Typecasting_I2X("Widget", "widget")
    //! runtextmacro Typecasting_I2X("Group", "group")
    //! runtextmacro Typecasting_I2X("Location", "location")
    //! runtextmacro Typecasting_I2X("Item", "item")
    //! runtextmacro Typecasting_I2X("Destructable", "destructable")
    //! runtextmacro Typecasting_I2X("Ability", "ability")
    //! runtextmacro Typecasting_I2X("TriggerCondition", "triggercondition")
    //! runtextmacro Typecasting_I2X("TriggerAction", "triggeraction")
    //! runtextmacro Typecasting_I2X("Force", "force")
    //! runtextmacro Typecasting_I2X("Rect", "rect")
    //! runtextmacro Typecasting_I2X("Sound", "sound")
    //! runtextmacro Typecasting_I2X("UnitPool", "unitpool")
    //! runtextmacro Typecasting_I2X("ItemPool", "itempool")
    //! runtextmacro Typecasting_I2X("Quest", "quest")
    //! runtextmacro Typecasting_I2X("QuestItem", "questitem")
    //! runtextmacro Typecasting_I2X("DefeatCondition", "defeatcondition")
    //! runtextmacro Typecasting_I2X("TimerDialog", "timerdialog")
    //! runtextmacro Typecasting_I2X("Leaderboard", "leaderboard")
    //! runtextmacro Typecasting_I2X("Multiboard", "multiboard")
    //! runtextmacro Typecasting_I2X("MultiboardItem", "multiboarditem")
    //! runtextmacro Typecasting_I2X("Trackable", "trackable")
    //! runtextmacro Typecasting_I2X("Dialog", "dialog")
    //! runtextmacro Typecasting_I2X("Button", "button")
    //! runtextmacro Typecasting_I2X("TextTag", "texttag")
    //! runtextmacro Typecasting_I2X("Image", "image")
    //! runtextmacro Typecasting_I2X("Ubersplat", "ubersplat")
    //! runtextmacro Typecasting_I2X("Region", "region")
    //! runtextmacro Typecasting_I2X("FogState", "fogstate")
    //! runtextmacro Typecasting_I2X("FogModifier", "fogmodifier")
endlibrary