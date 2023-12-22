function Trig_Self_Mutilate_Drop_Actions takes nothing returns nothing
    call SetItemUserData(GetManipulatedItem(),0)
    endfunction
    function InitTrig_Self_Mutilate_Drop takes nothing returns nothing
    set gg_trg_Self_Mutilate_Drop=CreateTrigger()
    call TriggerAddAction(gg_trg_Self_Mutilate_Drop,function Trig_Self_Mutilate_Drop_Actions)
    endfunction