function Trig_Item_Aquired_Func001Func001Func007Func003Func004Func002Func001Func002C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='hslv'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001Func007Func003Func004Func002Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='plcl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001Func007Func003Func004Func002C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='stwp'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001Func007Func003Func004C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='srrc'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001Func007Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='sror'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001Func007C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='sres'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001Func009Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='srrc'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001Func009Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='sror'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001Func009C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='sres'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001Func001C takes nothing returns boolean
    if(not(GetItemType(UnitItemInSlotBJ(GetTriggerUnit(),1))==ITEM_TYPE_POWERUP))then
    return false
    endif
    if(not(GetItemType(UnitItemInSlotBJ(GetTriggerUnit(),2))==ITEM_TYPE_POWERUP))then
    return false
    endif
    if(not(GetItemType(UnitItemInSlotBJ(GetTriggerUnit(),3))==ITEM_TYPE_POWERUP))then
    return false
    endif
    if(not(GetItemType(UnitItemInSlotBJ(GetTriggerUnit(),4))==ITEM_TYPE_POWERUP))then
    return false
    endif
    if(not(GetItemType(UnitItemInSlotBJ(GetTriggerUnit(),5))==ITEM_TYPE_POWERUP))then
    return false
    endif
    if(not(GetItemType(UnitItemInSlotBJ(GetTriggerUnit(),6))==ITEM_TYPE_POWERUP))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func001C takes nothing returns boolean
    if(not(GetItemType(GetManipulatedItem())==ITEM_TYPE_CHARGED))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func002Func002C takes nothing returns boolean
    if(not(GetItemPlayer(GetManipulatedItem())!=GetOwningPlayer(GetManipulatingUnit())))then
    return false
    endif
    if(not(udg_Sandbox!=11.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func002C takes nothing returns boolean
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(0)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(1)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(2)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(3)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(4)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(5)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(6)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(7)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(8)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(9)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(10)))then
    return false
    endif
    if(not(GetItemPlayer(GetManipulatedItem())!=Player(11)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func003C takes nothing returns boolean
    if(not(UnitItemInSlotBJ(GetTriggerUnit(),1)!=null))then
    return false
    endif
    if(not(UnitItemInSlotBJ(GetTriggerUnit(),2)!=null))then
    return false
    endif
    if(not(UnitItemInSlotBJ(GetTriggerUnit(),3)!=null))then
    return false
    endif
    if(not(UnitItemInSlotBJ(GetTriggerUnit(),4)!=null))then
    return false
    endif
    if(not(UnitItemInSlotBJ(GetTriggerUnit(),5)!=null))then
    return false
    endif
    if(not(UnitItemInSlotBJ(GetTriggerUnit(),6)!=null))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(2)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(1)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(0)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(8)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(7)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(6)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(5)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(3)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(4)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(11)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(10)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(9)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func004C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I00K'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003Func002Func001Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(2)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003Func002Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(1)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003Func002Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(0)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(8)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(7)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(5)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(6)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(3)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(4)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(11)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(10)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetManipulatingUnit())==Player(9)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='rde4'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rst1')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func005Func001Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3155))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rst1')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'clfm')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func001003001 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(),GetForLoopIndexA()))=='spsh')
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func002Func001C takes nothing returns boolean
    if(not(udg_ItemCounter==1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func002C takes nothing returns boolean
    if(not(udg_ItemCounter>=1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func005Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3675))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'spsh')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'clsd')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func001003001 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(),GetForLoopIndexA()))=='rat9')
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func002Func001C takes nothing returns boolean
    if(not(udg_ItemCounter==1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func002C takes nothing returns boolean
    if(not(udg_ItemCounter>=1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'spsh')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3600))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'clsd')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'pmna')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3450))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'pmna')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'prvt')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func003Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func003C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func005Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func005C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'prvt')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'penr')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00C')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==2850))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00C')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'brac')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00Q')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func004Func001Func003001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==3325))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00Q')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'clfm')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I004')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00M')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func004Func001Func003001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==3725))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I004')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I009')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3705))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'shcw')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'spsh')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I008')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3125))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'spsh')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I008')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'shcw')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I008')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==3300))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I008')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'brac')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00C')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==2900))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00C')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00S')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00F')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==5000))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00F')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I011')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I002')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==4100))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00A')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func001003001 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(),GetForLoopIndexA()))=='I00H')
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func002Func001C takes nothing returns boolean
    if(not(udg_ItemCounter==1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func002C takes nothing returns boolean
    if(not(udg_ItemCounter>=1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00E')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3530))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00E')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rnec')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00E')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00V')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I008')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I004')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rst1')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3600))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I008')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I004')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rugt')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001003001 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(),GetForLoopIndexA()))=='rde3')
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func001C takes nothing returns boolean
    if(not(udg_ItemCounter==1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002C takes nothing returns boolean
    if(not(udg_ItemCounter>=1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00Q')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3175))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00Q')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'brac')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func001003001 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(),GetForLoopIndexA()))=='rhth')
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func002Func001C takes nothing returns boolean
    if(not(udg_ItemCounter==1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func002C takes nothing returns boolean
    if(not(udg_ItemCounter>=1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3055))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'prvt')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func005Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func005C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'prvt')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gvsm')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00M')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func003001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==4225))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I009')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00C')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==2870))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00C')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde2')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func001001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func005Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func005C takes nothing returns boolean
    if(not(udg_ItemCost==4530))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ssil')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit())!='Uwar'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Orex'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Opgh'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Nbbc'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Hmbr'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Ofar'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Obla'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='H01I'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Harf'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='O00M'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Hvsh'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Ewar'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Huth'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTriggerUnit())!='Nalc'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'afac')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==3600))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'afac')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I011')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'pmna')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func005Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3205))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'pmna')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ssil')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I002')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00M')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==3700))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I002')==true)
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func007Func003001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'desc')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02V'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01R'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02O'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I029'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01Q'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01P'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02S'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02X'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01O'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01N'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02I'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02T'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02H'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01L'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I027'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02E'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01H'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01K'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02Q'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006Func002C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I024'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func006C takes nothing returns boolean
    if(not(GetItemType(GetManipulatedItem())==ITEM_TYPE_CAMPAIGN))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rst1')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I007')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func004Func001Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func004Func001Func008Func001C takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit())=='Hvwd'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hamg'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hkal'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hant'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='H01S'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hblm'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hgam'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='H005'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='H01B'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Uwar'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Nklj'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='N007'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Othr'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Orkn'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Ogld'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Odrt'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Ofar'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Otch'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Ntin'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hpal'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hvsh'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Ewar'))then
    return true
    endif
    return false
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func004Func001Func008C takes nothing returns boolean
    if(not Trig_Item_Aquired_Func007Func002Func002Func004Func001Func008Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==3000))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I007')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func007Func007Func001C takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit())=='Hvwd'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hamg'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hkal'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hant'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='H01S'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hblm'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hgam'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='H005'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='H01B'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Uwar'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Nklj'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='N007'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Othr'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Orkn'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Ogld'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Odrt'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Ofar'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Ntin'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hpal'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Hvsh'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='Ewar'))then
    return true
    endif
    return false
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func007Func007C takes nothing returns boolean
    if(not Trig_Item_Aquired_Func007Func002Func002Func007Func007Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00W')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00C')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func005Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3300))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00C')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rin1')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'afac')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00D')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func004Func001Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==2980))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'afac')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00U')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'belv')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3120))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'belv')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat6')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func001003001 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(),GetForLoopIndexA()))=='rlif')
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func002Func001C takes nothing returns boolean
    if(not(udg_ItemCounter==1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func002C takes nothing returns boolean
    if(not(udg_ItemCounter>=1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func005C takes nothing returns boolean
    if(not(udg_ItemCost==2700))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde2')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func003Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func003C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func005Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func005C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde2')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00S')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'spsh')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func005Func001Func005C takes nothing returns boolean
    if(not(IsUnitAlly(GetManipulatingUnit(),Player(4))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func005Func001Func007001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3175))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func009Func008C takes nothing returns boolean
    if(not(IsUnitAlly(GetManipulatingUnit(),Player(4))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rag1')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I008')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3500))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I008')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gvsm')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rst1')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3330))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rugt')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I007')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'afac')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I002')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==4425))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I007')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'afac')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00A')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func001001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func004Func001Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func004C takes nothing returns boolean
    if(not(udg_ItemCost==2930))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rnec')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001C takes nothing returns boolean
    if(not(IsUnitAlly(GetTriggerUnit(),Player(0))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00F')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==4900))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00F')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'dthb')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func004Func001Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==2930))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00V')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func003001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001C takes nothing returns boolean
    if(not(IsUnitAlly(GetTriggerUnit(),Player(4))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I002')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==3650))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00A')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00E')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3605))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00E')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'crys')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I004')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rst1')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func004Func001Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func004C takes nothing returns boolean
    if(not(udg_ItemCost==3500))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I004')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func007Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00W')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00E')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func005Func001Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==2905))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00E')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rin1')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func001003001 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(),GetForLoopIndexA()))=='belv')
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func002Func001C takes nothing returns boolean
    if(not(udg_ItemCounter==1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func002C takes nothing returns boolean
    if(not(udg_ItemCounter>=1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'spsh')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3900))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func007003001 takes nothing returns boolean
    return(GetItemTypeId(UnitItemInSlotBJ(GetManipulatingUnit(),GetForLoopIndexA()))=='belv')
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func008Func001C takes nothing returns boolean
    if(not(udg_ItemCounter==1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func008C takes nothing returns boolean
    if(not(udg_ItemCounter>=1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func009Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rag1')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3500))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat6')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'belv')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00D')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func005Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3400))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'belv')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func009Func003001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00U')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01J'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02C'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01S'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01I'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02R'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02B'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I022'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I020'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I021'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01X'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01W'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01V'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02F'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02G'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02P'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01U'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02W'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007Func002C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01T'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func007C takes nothing returns boolean
    if(not(GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00M')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func005C takes nothing returns boolean
    if(not(udg_ItemCost==4175))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00M')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func009Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func001C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'crys')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func003Func003Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func003Func003C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func003Func005Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func003Func005C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'crys')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'desc')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00D')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3150))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func009Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'tsct')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I033'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00D')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3250))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func009Func004001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'tsct')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I031'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func004Func001Func005001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func004C takes nothing returns boolean
    if(not(udg_ItemCost==4050))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func006001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ratc')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func007Func003001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func007C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'dthb')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I030'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'pmna')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func005Func001Func006001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func005C takes nothing returns boolean
    if(not(udg_ItemCost==3490))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func007001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func008001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func009Func003001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003Func009C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetTriggerUnit(),'penr')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02Z'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008Func003C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02L'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func008C takes nothing returns boolean
    if(not(GetItemType(GetManipulatedItem())==ITEM_TYPE_ARTIFACT))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00M')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func005Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func005C takes nothing returns boolean
    if(not(udg_ItemCost==1950))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func004C takes nothing returns boolean
    if(not(udg_ItemCost==775))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1525))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00M')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1825))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1065))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'mcou')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1775))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ckng')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'pmna')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1600))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1350))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'ciri')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1700))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==775))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bgst')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rst1')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1250))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rlif')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1025))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'spsh')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1250))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rhth')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==975))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'wlsd')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func009C takes nothing returns boolean
    if(not(IsUnitAlly(GetTriggerUnit(),Player(0))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1200))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'evtl')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1100))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rst1')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'cnob')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==775))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rat9')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rwiz')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1000))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I005')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1925))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I002')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00H')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1800))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'bspd')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'spsh')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1275))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func002001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00D')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func004Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func004Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func004C takes nothing returns boolean
    if(not(udg_ItemCost==1050))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I032'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00B')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'rde3')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func005Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func005C takes nothing returns boolean
    if(not(udg_ItemCost==1650))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I003'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'gcel')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(GetTriggerUnit(),'I00D')==true)
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func002001001 takes nothing returns boolean
    return(GetItemPlayer(GetManipulatedItem())==GetFilterPlayer())
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001C takes nothing returns boolean
    if(not(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)>=udg_ItemCost))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(udg_ItemCost==1275))then
    return false
    endif
    if(not(udg_InventoryFull==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I00J'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I018'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I012'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I013'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I019'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01A'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02D'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I014'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01B'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02J'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I015'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I016'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01C'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I028'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01D'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01E'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01F'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02K'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I017'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006Func005C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02A'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001Func006C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I01G'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I02U'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Func009C takes nothing returns boolean
    if(not(GetItemType(GetManipulatedItem())==ITEM_TYPE_PURCHASABLE))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Aquired_Actions takes nothing returns nothing
    if(Trig_Item_Aquired_Func001C())then
    if(Trig_Item_Aquired_Func001Func001C())then
    if(Trig_Item_Aquired_Func001Func001Func009C())then
    call ModifyHeroStat(bj_HEROSTAT_AGI,GetTriggerUnit(),bj_MODIFYMETHOD_ADD,1)
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    if(Trig_Item_Aquired_Func001Func001Func009Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_STR,GetTriggerUnit(),bj_MODIFYMETHOD_ADD,1)
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    if(Trig_Item_Aquired_Func001Func001Func009Func001Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_INT,GetTriggerUnit(),bj_MODIFYMETHOD_ADD,1)
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    endif
    endif
    endif
    call RemoveItem(GetManipulatedItem())
    else
    if(Trig_Item_Aquired_Func001Func001Func007C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|c00FFD700You must have 6 unique items to purchase Tomes.|r ")
    call AdjustPlayerStateBJ(600,GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    else
    if(Trig_Item_Aquired_Func001Func001Func007Func003C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|c00FFD700You must have 6 unique items to purchase Tomes.|r ")
    call AdjustPlayerStateBJ(550,GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    else
    if(Trig_Item_Aquired_Func001Func001Func007Func003Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|c00FFD700You must have 6 unique items to purchase Tomes.|r ")
    call AdjustPlayerStateBJ(500,GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    else
    if(Trig_Item_Aquired_Func001Func001Func007Func003Func004Func002C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|c00FFD700Teleport Scrolls are no longer necessary, use Mass Teleport located in the Spellbook.|r ")
    else
    if(Trig_Item_Aquired_Func001Func001Func007Func003Func004Func002Func001C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Clarity Potions are no longer available, purchase mana regeneration items to restore mana.|r|n")
    else
    if(Trig_Item_Aquired_Func001Func001Func007Func003Func004Func002Func001Func002C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|c00FFD700Healing Salves are no longer necessary, use Rejuvenation located in the Spellbook to recover health.|r ")
    else
    endif
    endif
    endif
    endif
    endif
    endif
    call RemoveItem(GetManipulatedItem())
    endif
    return
    else
    endif
    if(Trig_Item_Aquired_Func002C())then
    call SetItemPlayer(GetManipulatedItem(),GetOwningPlayer(GetManipulatingUnit()),true)
    else
    if(Trig_Item_Aquired_Func002Func002C())then
    call UnitRemoveItemSwapped(GetManipulatedItem(),GetManipulatingUnit())
    return
    else
    endif
    endif
    if(Trig_Item_Aquired_Func003C())then
    set udg_InventoryFull=1
    else
    set udg_InventoryFull=0
    endif
    if(Trig_Item_Aquired_Func004C())then
    if(Trig_Item_Aquired_Func004Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(9),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(10),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(11),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(4),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(3),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(5),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(6),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(7),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(8),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001Func001Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(0),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001Func001Func001Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(1),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func004Func002Func002Func001Func001Func002Func002Func001Func001Func001Func001Func001Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Glacial_Shield_On,Player(2),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    return
    else
    endif
    if(Trig_Item_Aquired_Func005C())then
    if(Trig_Item_Aquired_Func005Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(9),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(10),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(11),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(4),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(3),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(6),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(5),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(7),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003Func002C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(8),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003Func002Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(0),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003Func002Func001Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(1),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    if(Trig_Item_Aquired_Func005Func002Func001Func002Func001Func002Func002Func001Func003Func002Func001Func001Func001C())then
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Deaths_Edge_On,Player(2),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    else
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    return
    else
    endif
    if(Trig_Item_Aquired_Func006C())then
    set udg_ItemCounter=0.00
    if(Trig_Item_Aquired_Func006Func002C())then
    set udg_ItemCost=3155
    if(Trig_Item_Aquired_Func006Func002Func002C())then
    set udg_ItemCost=(udg_ItemCost-1775)
    if(Trig_Item_Aquired_Func006Func002Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rst1'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'clfm'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I023',GetTriggerUnit())
    call SetItemPlayer(GetLastCreatedItem(),GetOwningPlayer(GetTriggerUnit()),true)
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rst1'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I023',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func002Func005Func001Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003C())then
    set udg_ItemCost=3675
    if(Trig_Item_Aquired_Func006Func002Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1250)
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'clsd'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('mort',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func001003001())then
    set udg_ItemCounter=(udg_ItemCounter+1)
    else
    call DoNothing()
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func002C())then
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    set udg_ItemCost=(udg_ItemCost-1300)
    endif
    else
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('mort',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func002Func005Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    set udg_ItemCounter=0.00
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003C())then
    set udg_ItemCost=3600
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1250)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'clsd'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00Y',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func001003001())then
    set udg_ItemCounter=(udg_ItemCounter+1)
    else
    call DoNothing()
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func002C())then
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    set udg_ItemCost=(udg_ItemCost-650)
    endif
    else
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00Y',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    set udg_ItemCounter=0.00
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003C())then
    set udg_ItemCost=3550
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1600)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003C())then
    set udg_ItemCost=(udg_ItemCost-1350)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func005C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'penr'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'prvt'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('hval',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func005Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func003C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'penr'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('hval',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func003Func003Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-1350)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func007001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func008001())then
    set udg_ItemCost=(udg_ItemCost-450)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'pmna'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'prvt'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('hval',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func001001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func002001())then
    set udg_ItemCost=(udg_ItemCost-450)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func003001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func004001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'pmna'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('hval',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func002Func001Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003C())then
    set udg_ItemCost=2850
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1100)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-850)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00C'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'brac'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('sbch',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-850)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00C'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('sbch',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func002Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3325
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1775)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-820)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00Q'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'clfm'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I026',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-820)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00Q'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I026',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func002Func004Func001Func003001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3725
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1825)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I004'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I009'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('tkno',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-900)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I004'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00M'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('tkno',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func002Func004Func001Func003001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3705
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-775)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'shcw'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('lgdh',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('lgdh',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3125
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-775)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I008'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'shcw'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ches',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I008'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ches',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3300
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1100)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I008'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'brac'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I006',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I008'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I006',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=2900
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1025)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-850)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00C'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00S'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('dsum',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-850)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00C'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('dsum',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=5000
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1925)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-2400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00F'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I011'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00N',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-2400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00F'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00N',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=4100
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1800)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00A'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00L',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-925)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I002'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00L',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3530
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1200)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00E'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00V'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rde4',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-1200)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func007001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func008001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00E'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rnec'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rde4',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func001003001())then
    set udg_ItemCounter=(udg_ItemCounter+1)
    else
    call DoNothing()
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func002C())then
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    set udg_ItemCost=(udg_ItemCost-1200)
    endif
    else
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func003001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func004001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00E'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rde4',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    set udg_ItemCounter=0.00
    endif
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3600
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-775)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I008'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I004'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rugt'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('engs',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I008'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I004'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rst1'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('engs',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3175
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1100)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-820)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00Q'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'brac'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('kybl',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001003001())then
    set udg_ItemCounter=(udg_ItemCounter+1)
    else
    call DoNothing()
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002C())then
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    set udg_ItemCost=(udg_ItemCost-450)
    endif
    else
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-820)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00Q'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('kybl',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    set udg_ItemCounter=0.00
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3055
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-975)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003C())then
    set udg_ItemCost=(udg_ItemCost-1350)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func005C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gvsm'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'prvt'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('esaz',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func005Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gvsm'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('esaz',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-1350)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func007001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func008001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'prvt'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('esaz',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func001003001())then
    set udg_ItemCounter=(udg_ItemCounter+1)
    else
    call DoNothing()
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func002C())then
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    set udg_ItemCost=(udg_ItemCost-950)
    endif
    else
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func004001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('esaz',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    set udg_ItemCounter=0.00
    endif
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=4225
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1825)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I009'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I001',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-900)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00M'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I001',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004Func001Func003001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=2870
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1065)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-850)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00C'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde2'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00K',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-850)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00C'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00K',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001C())then
    set udg_ItemCost=4530
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003C())then
    set udg_ItemCost=(udg_ItemCost-1700)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func007001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func008001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ssil'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('stel',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func003001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func004001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('stel',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func005Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func001001001)),"|c00FFD700You cannot purchase that item.|r ")
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=3600
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002C())then
    set udg_ItemCost=(udg_ItemCost-1925)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-975)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'afac'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I011'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I02N',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-975)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'afac'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I02N',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003C())then
    set udg_ItemCost=3205
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1700)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-450)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'pmna'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ssil'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00T',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-450)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'pmna'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00T',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func005Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003C())then
    set udg_ItemCost=3950
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1950)
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-925)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I002'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'desc'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('modt',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func007Func003001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-925)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-900)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I002'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00M'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('modt',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func006Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func003Func002Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    return
    else
    endif
    if(Trig_Item_Aquired_Func007C())then
    set udg_ItemCounter=0.00
    if(Trig_Item_Aquired_Func007Func002C())then
    set udg_ItemCost=3000
    if(Trig_Item_Aquired_Func007Func002Func002C())then
    set udg_ItemCost=(udg_ItemCost-1250)
    if(Trig_Item_Aquired_Func007Func002Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-950)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I007'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00W'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    if(Trig_Item_Aquired_Func007Func002Func002Func007Func007C())then
    call UnitAddItemByIdSwapped('I025',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    call UnitAddItemByIdSwapped('I00X',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    endif
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-950)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rst1'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I007'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    if(Trig_Item_Aquired_Func007Func002Func002Func004Func001Func008C())then
    call UnitAddItemByIdSwapped('I025',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    call UnitAddItemByIdSwapped('I00X',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    endif
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func002Func004Func001Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003C())then
    set udg_ItemCost=3300
    if(Trig_Item_Aquired_Func007Func002Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-775)
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-850)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00C'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rin1'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ofro',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-850)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00C'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ofro',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func002Func005Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003C())then
    set udg_ItemCost=2980
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1275)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-975)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'afac'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00U'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00R',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-975)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'afac'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00D'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00R',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func002Func004Func001Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003C())then
    set udg_ItemCost=3120
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1000)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'belv'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat6'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ratf',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'belv'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ratf',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003C())then
    set udg_ItemCost=2700
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1025)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003C())then
    set udg_ItemCost=(udg_ItemCost-1065)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func005C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00S'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde2'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rde1',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func005Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func003C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00S'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rde1',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func003Func003Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-1065)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func007001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func008001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde2'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rde1',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func001003001())then
    set udg_ItemCounter=(udg_ItemCounter+1)
    else
    call DoNothing()
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func002C())then
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    set udg_ItemCost=(udg_ItemCost-780)
    endif
    else
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func003001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func004001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rde1',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func002Func001Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    set udg_ItemCounter=0.00
    endif
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3175
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1275)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rag1'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func009Func008C())then
    call UnitAddItemByIdSwapped('odef',GetTriggerUnit())
    else
    call UnitAddItemByIdSwapped('wild',GetTriggerUnit())
    endif
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func005Func001Func005C())then
    call UnitAddItemByIdSwapped('odef',GetTriggerUnit())
    else
    call UnitAddItemByIdSwapped('wild',GetTriggerUnit())
    endif
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func002Func005Func001Func007001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3500
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-975)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I008'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gvsm'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00P',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I008'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00P',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3330
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-775)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rugt'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00O',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rst1'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00O',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=4425
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1800)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-950)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-975)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'afac'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I007'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00A'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00I',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-950)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-975)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-925)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'afac'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I007'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I002'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00I',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003C())then
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001C())then
    set udg_ItemCost=2930
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003C())then
    set udg_ItemCost=(udg_ItemCost-1200)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func006001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rnec'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00Z',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00Z',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func003Func004Func001Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func001Func001001001)),"|c00FFD700That item can only be purchased by Alliance heroes.|r ")
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=4900
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002C())then
    set udg_ItemCost=(udg_ItemCost-1650)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-2400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00F'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'dthb'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I000',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-2400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00F'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I000',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func002Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003C())then
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001C())then
    set udg_ItemCost=2930
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002C())then
    set udg_ItemCost=(udg_ItemCost-1200)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00V'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I010',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I010',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func002Func004Func001Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func001Func003001001)),"|c00FFD700That item can only be purchased by Horde heroes.|r ")
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002C())then
    set udg_ItemCost=3875
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002C())then
    set udg_ItemCost=(udg_ItemCost-1800)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00A'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I01Z',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-925)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I002'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I01Z',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func002Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003C())then
    set udg_ItemCost=3605
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1525)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00E'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'crys'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ward',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00E'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ward',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003C())then
    set udg_ItemCost=3500
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1250)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func006001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I004'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00W'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('glsk',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func007Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I004'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rst1'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('glsk',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func002Func004Func001Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003C())then
    set udg_ItemCost=2905
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-775)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00E'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rin1'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('kpin',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00E'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('kpin',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func002Func005Func001Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003C())then
    set udg_ItemCost=3900
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1275)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func007003001())then
    set udg_ItemCounter=(udg_ItemCounter+1)
    else
    call DoNothing()
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func008C())then
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func008Func001C())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    set udg_ItemCost=(udg_ItemCost-2000)
    endif
    else
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'belv'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'belv'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rag1'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00G',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func009Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    set udg_ItemCounter=0.00
    endif
    else
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func001003001())then
    set udg_ItemCounter=(udg_ItemCounter+1)
    else
    call DoNothing()
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func002C())then
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    set udg_ItemCost=(udg_ItemCost-2000)
    endif
    else
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'belv'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'belv'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00G',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_ItemCounter=0.00
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    set udg_ItemCounter=0.00
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3500
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1000)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat6'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('lhst',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('lhst',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003C())then
    set udg_ItemCost=3400
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1275)
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'belv'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00U'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('hcun',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func009Func003001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'belv'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00D'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('hcun',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func007Func002Func003Func003Func003Func003Func003Func003Func003Func003Func003Func002Func003Func002Func003Func003Func003Func003Func003Func003Func002Func005Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    else
    endif
    if(Trig_Item_Aquired_Func008C())then
    set udg_ItemCounter=0.00
    if(Trig_Item_Aquired_Func008Func003C())then
    set udg_ItemCost=4175
    if(Trig_Item_Aquired_Func008Func003Func002C())then
    set udg_ItemCost=(udg_ItemCost-1950)
    if(Trig_Item_Aquired_Func008Func003Func002Func003C())then
    set udg_ItemCost=(udg_ItemCost-1525)
    if(Trig_Item_Aquired_Func008Func003Func002Func003Func005C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'desc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'crys'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ajen',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func002Func003Func005Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func002Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func002Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func002Func003Func003C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'desc'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ajen',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func002Func003Func003Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func002Func001C())then
    set udg_ItemCost=(udg_ItemCost-1525)
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func007001())then
    set udg_ItemCost=(udg_ItemCost-900)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func008001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00M'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'crys'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ajen',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func002Func001Func009Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func001001())then
    set udg_ItemCost=(udg_ItemCost-900)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func002001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func004001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func008Func003Func002Func001Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00M'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ajen',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func002Func001Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func003C())then
    set udg_ItemCost=3490
    if(Trig_Item_Aquired_Func008Func003Func003Func003C())then
    set udg_ItemCost=(udg_ItemCost-1600)
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func007001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func008001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'penr'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('bzbe',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func003Func003Func009Func003001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func003001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func004001())then
    set udg_ItemCost=(udg_ItemCost-450)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func003Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'pmna'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('bzbe',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func003Func003Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001C())then
    set udg_ItemCost=4050
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func003C())then
    set udg_ItemCost=(udg_ItemCost-1650)
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func003Func006001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func003Func007C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'dthb'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('gmfr',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func007Func003001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func003Func003001())then
    set udg_ItemCost=(udg_ItemCost-1700)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func003Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func003Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ratc'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('gmfr',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func003Func001Func003Func004Func001Func005001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001C())then
    set udg_ItemCost=3250
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003C())then
    set udg_ItemCost=(udg_ItemCost-1050)
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func007001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func008001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'tsct'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('mcri',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func009Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func001001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func002001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func003001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func004001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00D'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('mcri',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func003Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001C())then
    set udg_ItemCost=3150
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002C())then
    set udg_ItemCost=(udg_ItemCost-1050)
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func007001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func008001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func009C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'tsct'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('moon',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func009Func004001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func001001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func002001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func003001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func004001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00D'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('moon',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func008Func003Func003Func001Func001Func001Func002Func005Func001Func006001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    endif
    else
    endif
    endif
    endif
    endif
    endif
    return
    else
    endif
    if(Trig_Item_Aquired_Func009C())then
    if(Trig_Item_Aquired_Func009Func001C())then
    set udg_ItemCost=1950
    if(Trig_Item_Aquired_Func009Func001Func003001())then
    set udg_ItemCost=(udg_ItemCost-900)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func004001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00M'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('desc',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func005Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006C())then
    set udg_ItemCost=775
    if(Trig_Item_Aquired_Func009Func001Func006Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func003001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('shcw',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005C())then
    set udg_ItemCost=1525
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('crys',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005C())then
    set udg_ItemCost=1825
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-900)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00M'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I009',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005C())then
    set udg_ItemCost=1065
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rde2',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005C())then
    set udg_ItemCost=1775
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-1000)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'mcou'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('clfm',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1600
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-450)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ckng'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'pmna'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('penr',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1350
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('prvt',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1700
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'ciri'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('ssil',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=775
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rin1',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1250
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rst1'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bgst'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00W',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1025
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-390)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rlif'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00S',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1250
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('clsd',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=975
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-475)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rhth'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('gvsm',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1200
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'wlsd'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func009C())then
    call UnitAddItemByIdSwapped('rnec',GetTriggerUnit())
    else
    call UnitAddItemByIdSwapped('I00V',GetTriggerUnit())
    endif
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1100
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'evtl'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('brac',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=775
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-175)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rst1'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'cnob'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rugt',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1000
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-325)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-400)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rat9'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rwiz'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rat6',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1925
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-775)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I005'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I011',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1800
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-925)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-600)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00H'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I002'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00A',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1275
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func002001())then
    set udg_ItemCost=(udg_ItemCost-350)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-650)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'spsh'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'bspd'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('rag1',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    set udg_ItemCost=1275
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func003001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func004001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'gcel'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00D'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('I00U',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001C())then
    set udg_ItemCost=1650
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func003001())then
    set udg_ItemCost=(udg_ItemCost-875)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func004001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func005C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func005Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00B'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('dthb',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func005Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001C())then
    set udg_ItemCost=1050
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func002001())then
    set udg_ItemCost=(udg_ItemCost-500)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func003001())then
    set udg_ItemCost=(udg_ItemCost-225)
    else
    call DoNothing()
    endif
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func004C())then
    call DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetTriggerUnit())),"|cffffd700Inventory is full.|r")
    else
    if(Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func004Func001C())then
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'I00D'))
    call RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(),'rde3'))
    call SetPlayerStateBJ(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD,(GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)-udg_ItemCost))
    call UnitAddItemByIdSwapped('tsct',GetTriggerUnit())
    call AddSpecialEffectTargetUnitBJ("origin",GetTriggerUnit(),"Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    set udg_ItemCost=(udg_ItemCost-GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD))
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Item_Aquired_Func009Func001Func006Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func005Func001Func001Func004Func001Func002001001)),("|c00FFD700You require|r "+(I2S(udg_ItemCost)+" |c00FFD700more item points to purchase this item.|r ")))
    endif
    endif
    else
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    else
    endif
    endfunction
    function InitTrig_Item_Aquired2 takes nothing returns nothing
    set gg_trg_Item_Aquired2=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Item_Aquired2,EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddAction(gg_trg_Item_Aquired2,function Trig_Item_Aquired_Actions)
    endfunction