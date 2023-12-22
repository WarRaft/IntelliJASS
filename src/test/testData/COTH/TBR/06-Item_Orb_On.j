globals
    integer DespCounterMS = 0
endglobals

function Trig_Item_Bash_Func002Func002Func001C takes nothing returns boolean
    if ( not ( udg_BashWait[udg_BashLoopIndex] <= 0.00 ) ) then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Bash_Func002Func002C takes nothing returns boolean
    if ( not ( udg_BashWait[udg_BashLoopIndex] > 0.00 ) ) then
    return false
    endif
    if ( not ( udg_BashWait[udg_BashLoopIndex] < udg_BashWaitNew ) ) then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Bash_Func003C takes nothing returns boolean
    if ( not ( udg_BashIndex > 0 ) ) then
    return false
    endif
    return true
    endfunction

function Trig_Item_Bash_Actions takes nothing returns nothing
    set udg_BashWaitNew=3.50
    set udg_BashLoopIndex=1
    loop
    exitwhen udg_BashLoopIndex > udg_BashIndex
    set udg_BashWait[udg_BashLoopIndex]=( udg_BashWait[udg_BashLoopIndex] - TimerGetElapsed(udg_BashTimer) )
    if ( Trig_Item_Bash_Func002Func002C() ) then
    set udg_BashWaitNew=udg_BashWait[udg_BashLoopIndex]
    else
    if ( Trig_Item_Bash_Func002Func002Func001C() ) then
    call GroupRemoveUnitSimple(udg_BashUnit[udg_BashLoopIndex], udg_BashGroup)
    set udg_BashUnit[udg_BashLoopIndex]=udg_BashUnit[udg_BashIndex]
    set udg_BashWait[udg_BashLoopIndex]=udg_BashWait[udg_BashIndex]
    set udg_BashLoopIndex=( udg_BashLoopIndex - 1 )
    set udg_BashIndex=( udg_BashIndex - 1 )
    else
    endif
    endif
    set udg_BashLoopIndex=udg_BashLoopIndex + 1
    endloop
    if ( Trig_Item_Bash_Func003C() ) then
    call TimerStart(udg_BashTimer, udg_BashWaitNew, false, function Trig_Item_Bash_Actions)
    else
    endif
    endfunction

function Trig_Item_Orb_Off_Func002Func002Func003Func006Func001Func001C takes nothing returns boolean
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func001Func008C takes nothing returns boolean
    if(not(udg_BashIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func001C takes nothing returns boolean
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(IsUnitInGroup(udg_OrbAttackedUnit[udg_OrbLoopIndex],udg_BashGroup)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func001Func001C takes nothing returns boolean
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func001Func008C takes nothing returns boolean
    if(not(udg_BashIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func001C takes nothing returns boolean
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(IsUnitInGroup(udg_OrbAttackedUnit[udg_OrbLoopIndex],udg_BashGroup)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func002Func001Func001C takes nothing returns boolean
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func002Func001Func008C takes nothing returns boolean
    if(not(udg_BashIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func002Func001C takes nothing returns boolean
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(IsUnitInGroup(udg_OrbAttackedUnit[udg_OrbLoopIndex],udg_BashGroup)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func002C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],'I007')==true))then
    return false
    endif
    if(not(GetRandomInt(1,25)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006Func004C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],'I025')==true))then
    return false
    endif
    if(not(GetRandomInt(1,25)<=2))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func006C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],'I00X')==true))then
    return false
    endif
    if(not(GetRandomInt(1,25)<=4))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func007C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],'I000')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func008Func001C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],'desc')==true))then
    return false
    endif
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==false))then
    return false
    endif
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_ANCIENT)==false))then
    return false
    endif
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    if(not(GetRandomInt(1,25)<=2))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func008C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],'modt')==true))then
    return false
    endif
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==false))then
    return false
    endif
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_ANCIENT)==false))then
    return false
    endif
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    if(not(GetRandomInt(1,50)<=9))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func009C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],'I01Z')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func010Func002Func001Func001C takes nothing returns boolean
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Hvwd'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Hamg'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Hkal'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Hant'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='H01S'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Hblm'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Hgam'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='H005'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='H01B'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Hpal'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Hvsh'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Ewar'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Uwar'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Nklj'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='N007'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Othr'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Orkn'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Ogld'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Odrt'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Otch'))then
    return true
    endif
    if((GetUnitTypeId(udg_OrbAttackingUnit[udg_OrbLoopIndex])=='Ntin'))then
    return true
    endif
    return false
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func010Func002Func001C takes nothing returns boolean
    if(not Trig_Item_Orb_Off_Func002Func002Func003Func010Func002Func001Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func010Func002C takes nothing returns boolean
    if(not(IsUnitType(udg_OrbAttackedUnit[udg_OrbLoopIndex],UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func010Func003Func004C takes nothing returns boolean
    if(not(GetRandomInt(1,2)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func010Func003C takes nothing returns boolean
    if(not(GetUnitStateSwap(UNIT_STATE_MANA,udg_OrbAttackedUnit[udg_OrbLoopIndex])>I2R(udg_WisdomCarverDamage)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func010C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],'lhst')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func011Func001Func002C takes nothing returns boolean
    if(not(IsUnitType(udg_CarveTarget,UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func011Func001Func005C takes nothing returns boolean
    if(not(IsUnitType(udg_CarveTarget,UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func011Func001C takes nothing returns boolean
    if(not(udg_OrbAttackedUnit[udg_OrbLoopIndex]==udg_CarveTarget))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003Func011C takes nothing returns boolean
    if(not(udg_OrbAttackingUnit[udg_OrbLoopIndex]==gg_unit_Odrt_0524))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('AIad',gg_unit_Odrt_0524)>=1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002Func003C takes nothing returns boolean
    if(not(udg_OrbWait[udg_OrbLoopIndex]<=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func002Func002C takes nothing returns boolean
    if(not(udg_OrbWait[udg_OrbLoopIndex]>0.00))then
    return false
    endif
    if(not(udg_OrbWait[udg_OrbLoopIndex]<udg_OrbWaitNew))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Func003C takes nothing returns boolean
    if(not(udg_OrbIndex>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_Off_Actions takes nothing returns nothing
    set udg_OrbWaitNew=1.25
    set udg_OrbLoopIndex=1
    loop
    exitwhen udg_OrbLoopIndex>udg_OrbIndex
    set udg_OrbWait[udg_OrbLoopIndex]=(udg_OrbWait[udg_OrbLoopIndex]-TimerGetElapsed(udg_OrbTimer))
    if(Trig_Item_Orb_Off_Func002Func002C())then
    set udg_OrbWaitNew=udg_OrbWait[udg_OrbLoopIndex]
    else
    if(Trig_Item_Orb_Off_Func002Func002Func003C())then
    set udg_TempInteger=(udg_TempInteger+1)
    set udg_TempPoint=GetUnitLoc(udg_OrbAttackingUnit[udg_OrbLoopIndex])
    call CreateNUnitsAtLoc(1,'o012',GetOwningPlayer(udg_OrbAttackingUnit[udg_OrbLoopIndex]),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006C())then
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func001C())then
    call UnitRemoveBuffBJ('Bams',udg_OrbAttackedUnit[udg_OrbLoopIndex])
    set udg_BashIndex=(udg_BashIndex+1)
    set udg_BashWait[udg_BashIndex]=3.50
    set udg_BashUnit[udg_BashIndex]=udg_OrbAttackedUnit[udg_OrbLoopIndex]
    call IssueTargetOrder(GetLastCreatedUnit(),"firebolt",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    call GroupAddUnitSimple(udg_BashUnit[udg_BashIndex],udg_BashGroup)
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func001Func008C())then
    call TimerStart(udg_BashTimer, 3.50, false, function Trig_Item_Bash_Actions)
    else
    set udg_BashWait[udg_BashIndex]=(3.50+TimerGetElapsed(udg_BashTimer))
    endif
    else
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func001Func001C())then
    call IssueTargetOrder(GetLastCreatedUnit(),"firebolt",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    else
    endif
    endif
    else
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func004C())then
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func001C())then
    call UnitRemoveBuffBJ('Bams',udg_OrbAttackedUnit[udg_OrbLoopIndex])
    set udg_BashIndex=(udg_BashIndex+1)
    set udg_BashWait[udg_BashIndex]=3.50
    set udg_BashUnit[udg_BashIndex]=udg_OrbAttackedUnit[udg_OrbLoopIndex]
    call IssueTargetOrder(GetLastCreatedUnit(),"firebolt",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    call GroupAddUnitSimple(udg_BashUnit[udg_BashIndex],udg_BashGroup)
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func001Func008C())then
    call TimerStart(udg_BashTimer, 3.50, false, function Trig_Item_Bash_Actions)
    else
    set udg_BashWait[udg_BashIndex]=(3.50+TimerGetElapsed(udg_BashTimer))
    endif
    else
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func001Func001C())then
    call IssueTargetOrder(GetLastCreatedUnit(),"firebolt",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    else
    endif
    endif
    else
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func002C())then
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func002Func001C())then
    call UnitRemoveBuffBJ('Bams',udg_OrbAttackedUnit[udg_OrbLoopIndex])
    set udg_BashIndex=(udg_BashIndex+1)
    set udg_BashWait[udg_BashIndex]=3.50
    set udg_BashUnit[udg_BashIndex]=udg_OrbAttackedUnit[udg_OrbLoopIndex]
    call IssueTargetOrder(GetLastCreatedUnit(),"firebolt",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    call GroupAddUnitSimple(udg_BashUnit[udg_BashIndex],udg_BashGroup)
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func002Func001Func008C())then
    call TimerStart(udg_BashTimer, 3.50, false, function Trig_Item_Bash_Actions)
    else
    set udg_BashWait[udg_BashIndex]=(3.50+TimerGetElapsed(udg_BashTimer))
    endif
    else
    if(Trig_Item_Orb_Off_Func002Func002Func003Func006Func004Func002Func001Func001C())then
    call IssueTargetOrder(GetLastCreatedUnit(),"firebolt",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    else
    endif
    endif
    else
    endif
    endif
    endif
    if(Trig_Item_Orb_Off_Func002Func002Func003Func007C())then
    call IssueTargetOrder(GetLastCreatedUnit(),"slow",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    else
    endif
    if(Trig_Item_Orb_Off_Func002Func002Func003Func008C())then
    call UnitDamageTargetBJ(GetLastCreatedUnit(),udg_OrbAttackedUnit[udg_OrbLoopIndex],5000.00,ATTACK_TYPE_CHAOS,DAMAGE_TYPE_UNIVERSAL)
    else
    if(Trig_Item_Orb_Off_Func002Func002Func003Func008Func001C())then
    call UnitDamageTargetBJ(GetLastCreatedUnit(),udg_OrbAttackedUnit[udg_OrbLoopIndex],5000.00,ATTACK_TYPE_CHAOS,DAMAGE_TYPE_UNIVERSAL)
    else
    endif
    endif
    if(Trig_Item_Orb_Off_Func002Func002Func003Func009C())then
    call IssueTargetOrder(GetLastCreatedUnit(),"unholyfrenzy",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    else
    endif
    if(Trig_Item_Orb_Off_Func002Func002Func003Func010C())then
    call PlaySoundOnUnitBJ(gg_snd_Feedback,100,udg_OrbAttackedUnit[udg_OrbLoopIndex])
    if(Trig_Item_Orb_Off_Func002Func002Func003Func010Func002C())then
    if(Trig_Item_Orb_Off_Func002Func002Func003Func010Func002Func001C())then
    set udg_WisdomCarverDamage=(GetHeroStatBJ(bj_HEROSTAT_INT,udg_OrbAttackedUnit[udg_OrbLoopIndex],true)/ 4)
    else
    set udg_WisdomCarverDamage=(GetHeroStatBJ(bj_HEROSTAT_INT,udg_OrbAttackedUnit[udg_OrbLoopIndex],true)/ 2)
    endif
    else
    set udg_WisdomCarverDamage=10
    endif
    if(Trig_Item_Orb_Off_Func002Func002Func003Func010Func003C())then
    call SetUnitManaBJ(udg_OrbAttackedUnit[udg_OrbLoopIndex],(GetUnitStateSwap(UNIT_STATE_MANA,udg_OrbAttackedUnit[udg_OrbLoopIndex])-I2R(udg_WisdomCarverDamage)))
    if(Trig_Item_Orb_Off_Func002Func002Func003Func010Func003Func004C())then
    call UnitDamageTargetBJ(udg_OrbAttackingUnit[udg_OrbLoopIndex],udg_OrbAttackedUnit[udg_OrbLoopIndex],I2R(udg_WisdomCarverDamage),ATTACK_TYPE_MAGIC,DAMAGE_TYPE_NORMAL)
    else
    endif
    else
    call SetUnitManaBJ(udg_OrbAttackedUnit[udg_OrbLoopIndex],0.00)
    endif
    else
    endif
    if(Trig_Item_Orb_Off_Func002Func002Func003Func011C())then
    if(Trig_Item_Orb_Off_Func002Func002Func003Func011Func001C())then
    set udg_CarveDamage=(udg_CarveDamage+(4*GetUnitAbilityLevelSwapped('AIad',gg_unit_Odrt_0524)))
    if(Trig_Item_Orb_Off_Func002Func002Func003Func011Func001Func002C())then
    call UnitDamageTargetBJ(GetLastCreatedUnit(),udg_OrbAttackedUnit[udg_OrbLoopIndex],I2R(udg_CarveDamage),ATTACK_TYPE_PIERCE,DAMAGE_TYPE_NORMAL)
    call IssueTargetOrder(GetLastCreatedUnit(),"cripple",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    else
    endif
    else
    set udg_CarveTarget=udg_OrbAttackedUnit[udg_OrbLoopIndex]
    set udg_CarveDamage=(4*GetUnitAbilityLevelSwapped('AIad',gg_unit_Odrt_0524))
    if(Trig_Item_Orb_Off_Func002Func002Func003Func011Func001Func005C())then
    call UnitDamageTargetBJ(GetLastCreatedUnit(),udg_OrbAttackedUnit[udg_OrbLoopIndex],I2R(udg_CarveDamage),ATTACK_TYPE_PIERCE,DAMAGE_TYPE_NORMAL)
    call IssueTargetOrder(GetLastCreatedUnit(),"cripple",udg_OrbAttackedUnit[udg_OrbLoopIndex])
    else
    endif
    endif
    else
    endif
    set udg_OrbAttackedUnit[udg_OrbLoopIndex]=udg_OrbAttackedUnit[udg_OrbIndex]
    set udg_OrbAttackingUnit[udg_OrbLoopIndex]=udg_OrbAttackingUnit[udg_OrbIndex]
    set udg_OrbWait[udg_OrbLoopIndex]=udg_OrbWait[udg_OrbIndex]
    set udg_OrbLoopIndex=(udg_OrbLoopIndex-1)
    set udg_OrbIndex=(udg_OrbIndex-1)
    else
    endif
    endif
    set udg_OrbLoopIndex=udg_OrbLoopIndex+1
    endloop
    if(Trig_Item_Orb_Off_Func003C())then
    call TimerStart(udg_OrbTimer, udg_OrbWaitNew, false, function Trig_Item_Orb_Off_Actions)
    else
    endif
    endfunction


function Trig_Item_Orb_On_Func001Func001Func002Func001Func013C takes nothing returns boolean
    if(not(udg_BashIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func001Func002Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetAttacker())=='ugho'))then
    return false
    endif
    if(not(GetRandomInt(1,10)<=1))then
    return false
    endif
    if(not(GetPlayerTechCountSimple('Rufb',Player(5))==1))then
    return false
    endif
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(IsUnitInGroup(GetAttackedUnitBJ(),udg_BashGroup)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func001Func002C takes nothing returns boolean
    if(not(GetUnitTypeId(GetAttacker())=='nina'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetAttacker())==Player(5)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func001C takes nothing returns boolean
    if(not(udg_FuryOn==1))then
    return false
    endif
    if(not(udg_Fury<10))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func001Func013C takes nothing returns boolean
    if(not(udg_BashIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetAttacker())=='Hmkg'))then
    return false
    endif
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(IsUnitInGroup(GetAttackedUnitBJ(),udg_BashGroup)==false))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('AHbh',GetAttacker())>0))then
    return false
    endif
    if(not(GetRandomInt(1,25)<=(GetUnitAbilityLevelSwapped('AHbh',GetAttacker())*2)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002Func002Func002C takes nothing returns boolean
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002Func002C takes nothing returns boolean
    if(not(GetRandomInt(1,20)<=(GetUnitAbilityLevelSwapped('A03L',gg_unit_Hmgd_0509)+1)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002Func003Func001C takes nothing returns boolean
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002Func003C takes nothing returns boolean
    if(not(GetRandomInt(1,20)<=((GetUnitAbilityLevelSwapped('A03L',gg_unit_Hmgd_0509)+1)*2)))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'BEsh')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetAttacker())=='Hmgd'))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('A03L',gg_unit_Hmgd_0509)>0))then
    return false
    endif
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    if(not(udg_Smite==0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetAttacker())=='Harf'))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('A042',gg_unit_Harf_0501)>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func002C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A09E',GetAttacker())>0))then
    return false
    endif
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_MECHANICAL)==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'B03N')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'B01E')==false))then
    return false
    endif
    if(not(GetUnitStateSwap(UNIT_STATE_LIFE,GetAttackedUnitBJ())<(125.00+(I2R(GetUnitAbilityLevelSwapped('A09E',GetAttacker()))*125.00))))then
    return false
    endif
    if GetUnitTypeId(GetTriggerUnit()) == 'ohwd' or GetUnitTypeId(GetTriggerUnit()) == 'oswy' then
        return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func002C takes nothing returns boolean
    if(not(GetAttacker()==gg_unit_H01Q_0521))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func003Func002Func001C takes nothing returns boolean
    if(not(udg_DespCounter<17))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func003Func002C takes nothing returns boolean
    if(not(udg_DespPrevTarget!=GetTriggerUnit()))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06F',GetAttacker())!=0))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001Func001C takes nothing returns boolean
    if(not(GetAttacker()==gg_unit_H01I_0514))then
    return false
    endif
    if(not(IsUnitType(GetAttackedUnitBJ(),UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002Func001C takes nothing returns boolean
    if(not(GetAttacker()==gg_unit_Utic_0512))then
    return false
    endif
    if(not(GetUnitStateSwap(UNIT_STATE_MANA,gg_unit_Utic_0512)>=12.00))then
    return false
    endif
    if(not(udg_DarkTouchOn==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func002C takes nothing returns boolean
    return GetAttacker()==gg_unit_Opgh_0483 and GetUnitAbilityLevelSwapped('A067',gg_unit_Opgh_0483)>= 1
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001Func002Func001Func001Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<91))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001Func002Func001Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<79))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001Func002Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<72))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001Func002Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<65))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001Func002Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<57))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001Func002Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<49))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001Func002Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<43))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001Func002C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<38))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<33))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<28))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<23))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<18))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<13))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<8))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006Func001C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<6))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003Func006C takes nothing returns boolean
    if(not(udg_ArmorArray[GetConvertedPlayerId(GetOwningPlayer(GetAttackedUnitBJ()))]<3))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func003C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetAttacker(),'I00L')==true))then
    return false
    endif
    if(not(IsUnitIdType(GetUnitTypeId(GetAttackedUnitBJ()),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'B00C')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func004Func005C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetAttacker(),'I000')==true))then
    return false
    endif
    if(not(GetRandomInt(1,20)<=3))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func004Func006Func001Func001Func004C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetAttacker(),'I002')==true))then
    return false
    endif
    if(not(IsUnitIdType(GetUnitTypeId(GetAttackedUnitBJ()),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'BIcb')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'B018')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'BHca')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'Bcsd')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func004Func006Func001Func001C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetAttacker(),'I00A')==true))then
    return false
    endif
    if(not(IsUnitIdType(GetUnitTypeId(GetAttackedUnitBJ()),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'B018')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'BHca')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'Bcsd')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func004Func006Func001C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetAttacker(),'I00Y')==true))then
    return false
    endif
    if(not(IsUnitIdType(GetUnitTypeId(GetAttackedUnitBJ()),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'BHca')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'Bcsd')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func004Func006C takes nothing returns boolean
    if(not(UnitHasItemOfTypeBJ(GetAttacker(),'tkno')==true))then
    return false
    endif
    if(not(IsUnitIdType(GetUnitTypeId(GetAttackedUnitBJ()),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'BHca')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetAttackedUnitBJ(),'Bcsd')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func004Func007C takes nothing returns boolean
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I002')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I00A')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I000')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'tkno')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I00Y')==true))then
    return true
    endif
    if (GetUnitTypeId(GetAttacker()) == 'nchr') then
        return true
    endif
    return false
    endfunction
    function Trig_Item_Orb_On_Func001Func004C takes nothing returns boolean
    if(not Trig_Item_Orb_On_Func001Func004Func007C())then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func005Func009C takes nothing returns boolean
    if(not(GetUnitTypeId(GetAttacker())=='H005'))then
    return false
    endif
    if(not(GetUnitTypeId(GetAttacker())=='H01B'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func005Func010Func001C takes nothing returns boolean
    if(not(TimerGetRemaining(udg_OrbTimer)<udg_OrbWait[udg_OrbIndex]))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func005Func010C takes nothing returns boolean
    if(not(udg_OrbIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001Func005Func011Func009001 takes nothing returns boolean
    return(GetAttacker()==gg_unit_Odrt_0524)
    endfunction
    function Trig_Item_Orb_On_Func001Func005Func011Func009002 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('AIad',gg_unit_Odrt_0524)>=1)
    endfunction
    function Trig_Item_Orb_On_Func001Func005Func011C takes nothing returns boolean
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I007')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I00X')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I025')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'desc')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'modt')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I01Z')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'I000')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetAttacker(),'lhst')==true))then
    return true
    endif
    if(GetBooleanAnd(Trig_Item_Orb_On_Func001Func005Func011Func009001(),Trig_Item_Orb_On_Func001Func005Func011Func009002()))then
    return true
    endif
    return false
    endfunction
    function Trig_Item_Orb_On_Func001Func005C takes nothing returns boolean
    if(not Trig_Item_Orb_On_Func001Func005Func011C())then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Func001C takes nothing returns boolean
    if(not(IsUnitType(GetAttacker(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(IsUnitInGroup(GetAttacker(),udg_StopGroup)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Orb_On_Actions takes nothing returns nothing
    local unit u
    if(Trig_Item_Orb_On_Func001C()) then
    
    if (GetAttacker() == gg_unit_O00M_0518) then
        
    endif
    
    if (GetAttacker() == gg_unit_Hjai_0459) then
        if (GetUnitAbilityLevel(gg_unit_Hjai_0459, 'A0CJ') > 0) then
            call SetUnitState(GetAttackedUnitBJ(), UNIT_STATE_MANA, ( GetUnitState(GetAttackedUnitBJ(), UNIT_STATE_MANA) - (GetUnitState(GetAttackedUnitBJ(), UNIT_STATE_MAX_MANA) * 0.02) ))
        endif
    endif
    if GetAttacker() == gg_unit_Opgh_0483 and GetUnitAbilityLevelSwapped('A067', gg_unit_Opgh_0483) >= 1 then
    set udg_SliceandDiceOff=1.00
    else
    if(Trig_Item_Orb_On_Func001Func002Func001C())then
    set udg_DarkTouchOff=1.00
    else
    if(Trig_Item_Orb_On_Func001Func002Func001Func001C())then
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_AGI,gg_unit_H01I_0514,bj_MODIFYMETHOD_ADD,(2+GetUnitAbilityLevelSwapped('A06Y',gg_unit_H01I_0514)))
    set udg_Fury=(udg_Fury+1)
    else
    endif
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func003C())then
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func003Func002C())then
    else
    if (DespCounterMS < 4) then
        set DespCounterMS = DespCounterMS + 1
    else
        set DespCounterMS = 4
    endif
    
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func003Func002Func001C())then
    set udg_DespCounter=(udg_DespCounter+1)
    else
    set udg_DespCounter=17
    endif
    endif
    call SetUnitAbilityLevelSwapped('A046',GetAttacker(),(udg_DespCounter*GetUnitAbilityLevelSwapped('A06F',GetAttacker())))
    call SetUnitAbilityLevelSwapped('A0FX',GetAttacker(),(DespCounterMS*GetUnitAbilityLevelSwapped('A06F',GetAttacker())))
    set udg_DespPrevTarget=GetTriggerUnit()
    else
    endif
    else
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002C())then
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func002C())then
    call SetUnitAnimation(GetAttacker(),"attack")
    call PolledWait(0.15)
    call UnitDamageTargetBJ(gg_unit_o013_0286,GetAttackedUnitBJ(),600.00,ATTACK_TYPE_CHAOS,DAMAGE_TYPE_UNIVERSAL)
    return
    else
    endif
    else
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001C())then
    set udg_HolyStrikeCount=(udg_HolyStrikeCount+1)
    else
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001C())then
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002C())then
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002Func003C())then
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002Func003Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Hmgd_0509)
    call CreateNUnitsAtLoc(1,'o008',Player(8),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('ACcb',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('ACcb',GetLastCreatedUnit(),1)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call IssueTargetOrder(GetLastCreatedUnit(),"thunderbolt",GetAttackedUnitBJ())
    set udg_Smite=1.00
    else
    set udg_TempPoint=GetUnitLoc(gg_unit_Hmgd_0509)
    call CreateNUnitsAtLoc(1,'o008',Player(8),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('ACcb',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('ACcb',GetLastCreatedUnit(),2)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call IssueTargetOrder(GetLastCreatedUnit(),"thunderbolt",GetAttackedUnitBJ())
    return
    endif
    else
    endif
    else
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002Func002C())then
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func002Func002Func002C())then
    
    
    set udg_TempPoint=GetUnitLoc(gg_unit_Hmgd_0509)
    call CreateNUnitsAtLoc(1,'o008',Player(8),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('ACcb',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('ACcb',GetLastCreatedUnit(),1)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call IssueTargetOrder(GetLastCreatedUnit(),"thunderbolt",GetAttackedUnitBJ())
    set udg_Smite=1.00
    else
    if (GetUnitTypeId(GetTriggerUnit()) == 'nogr' or GetUnitTypeId(GetTriggerUnit()) == 'nsqa' or GetUnitTypeId(GetTriggerUnit()) == 'nahy') then
        return
    endif
    set udg_TempPoint=GetUnitLoc(gg_unit_Hmgd_0509)
    call CreateNUnitsAtLoc(1,'o008',Player(8),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('ACcb',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('ACcb',GetLastCreatedUnit(),2)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call IssueTargetOrder(GetLastCreatedUnit(),"thunderbolt",GetAttackedUnitBJ())
    return
    endif
    else
    endif
    endif
    else
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func001C())then
    call UnitRemoveBuffBJ('Bams',GetAttackedUnitBJ())
    set udg_BashIndex=(udg_BashIndex+1)
    set udg_BashWait[udg_BashIndex]=3.50
    set udg_BashUnit[udg_BashIndex]=GetAttackedUnitBJ()
    set udg_TempPoint=GetUnitLoc(GetAttacker())
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(GetAttacker()),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('ACtb',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('ACtb',GetLastCreatedUnit(),2)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call IssueTargetOrder(GetLastCreatedUnit(),"creepthunderbolt",GetAttackedUnitBJ())
    call GroupAddUnitSimple(udg_BashUnit[udg_BashIndex],udg_BashGroup)
    if(Trig_Item_Orb_On_Func001Func002Func001Func001Func002Func001Func001Func001Func013C())then
    call TimerStart(udg_BashTimer, 3.50, false, function Trig_Item_Bash_Actions)
    else
    set udg_BashWait[udg_BashIndex]=(3.50+TimerGetElapsed(udg_BashTimer))
    endif
    else
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    if(Trig_Item_Orb_On_Func001Func003C())then
    set udg_TempPoint=GetUnitLoc(GetAttackedUnitBJ())
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(GetAttackedUnitBJ()),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(3.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call UnitAddAbility(GetLastCreatedUnit(), 'A0GY')
    call UnitAddAbility(GetLastCreatedUnit(), 'A0GP')
    call UnitAddAbility(GetLastCreatedUnit(), 'A0GN')
    call UnitAddAbility(GetLastCreatedUnit(), 'A0GO')
    call UnitAddAbility(GetLastCreatedUnit(), 'A0GS')
    call SetCorruptionEdgeLevels(GetAttackedUnitBJ(), GetLastCreatedUnit())
    else
    endif
    if(Trig_Item_Orb_On_Func001Func004C())then
    set udg_TempPoint=GetUnitLoc(GetAttacker())
    call CreateNUnitsAtLoc(1,'o012',GetOwningPlayer(GetAttacker()),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    if GetUnitTypeId(GetAttacker()) == 'nchr' then
        if GetRandomInt(0, 1000) >= 75 then
            set u = CreateUnit(GetOwningPlayer(GetAttacker()), 'o008', GetUnitX(GetAttacker()), GetUnitY(GetAttacker()), 270)
            call UnitApplyTimedLife(u, 'BTLF', 1)
            call UnitAddAbility(u, 'A0h1')
            call IssueTargetOrder(u, "chainlightning", GetTriggerUnit())
        endif
    endif
    if(Trig_Item_Orb_On_Func001Func004Func005C())then
    call IssueTargetOrder(GetLastCreatedUnit(),"chainlightning",GetAttackedUnitBJ())
    else
    endif
    if(Trig_Item_Orb_On_Func001Func004Func006C())then
    call SetUnitAbilityLevelSwapped('A0BX',GetLastCreatedUnit(),4)
    call IssueTargetOrder(GetLastCreatedUnit(),"faeriefire",GetAttackedUnitBJ())
    else
    if(Trig_Item_Orb_On_Func001Func004Func006Func001C())then
    call SetUnitAbilityLevelSwapped('A0BX',GetLastCreatedUnit(),3)
    call IssueTargetOrder(GetLastCreatedUnit(),"faeriefire",GetAttackedUnitBJ())
    else
    if(Trig_Item_Orb_On_Func001Func004Func006Func001Func001C())then
    call SetUnitAbilityLevelSwapped('A0BX',GetLastCreatedUnit(),2)
    call IssueTargetOrder(GetLastCreatedUnit(),"faeriefire",GetAttackedUnitBJ())
    else
    if(Trig_Item_Orb_On_Func001Func004Func006Func001Func001Func004C())then
    call SetUnitAbilityLevelSwapped('A0BX',GetLastCreatedUnit(),1)
    call IssueTargetOrder(GetLastCreatedUnit(),"faeriefire",GetAttackedUnitBJ())
    else
    endif
    endif
    endif
    endif
    else
    endif
    if(Trig_Item_Orb_On_Func001Func005C())then
    if (GetUnitTypeId(GetTriggerUnit()) == 'nogr' or GetUnitTypeId(GetTriggerUnit()) == 'nsqa' or GetUnitTypeId(GetTriggerUnit()) == 'nahy') then
        return
    endif
    set udg_TempPoint=GetUnitLoc(GetAttacker())
    set udg_TempPoint2=GetUnitLoc(GetAttackedUnitBJ())
    set udg_OrbInt=R2I(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2))
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    set udg_OrbIndex=(udg_OrbIndex+1)
    set udg_OrbAttackedUnit[udg_OrbIndex]=GetAttackedUnitBJ()
    set udg_OrbAttackingUnit[udg_OrbIndex]=GetAttacker()
    if(Trig_Item_Orb_On_Func001Func005Func009C())then
    set udg_OrbWait[udg_OrbIndex]=0.05
    else
    set udg_OrbWait[udg_OrbIndex]=((I2R(udg_OrbInt)/ 1100.00)+0.35)
    endif
    if(Trig_Item_Orb_On_Func001Func005Func010C())then
    call TimerStart(udg_OrbTimer,udg_OrbWait[udg_OrbIndex],false, function Trig_Item_Orb_Off_Actions)
    else
    if(Trig_Item_Orb_On_Func001Func005Func010Func001C())then
    set udg_OrbWait[udg_OrbIndex]=(udg_OrbWait[udg_OrbIndex]+TimerGetElapsed(udg_OrbTimer))
    else
    endif
    endif
    else
    endif
    else
    if(Trig_Item_Orb_On_Func001Func001C())then
    if(Trig_Item_Orb_On_Func001Func001Func002C())then
    set udg_TempPoint=GetUnitLoc(GetAttacker())
    call PlaySoundAtPointBJ(gg_snd_GyrocopterImpactHit1,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Item_Orb_On_Func001Func001Func002Func001C())then
    call UnitRemoveBuffBJ('Bams',GetAttackedUnitBJ())
    set udg_BashIndex=(udg_BashIndex+1)
    set udg_BashWait[udg_BashIndex]=3.50
    set udg_BashUnit[udg_BashIndex]=GetAttackedUnitBJ()
    set udg_TempPoint=GetUnitLoc(GetAttacker())
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(GetAttacker()),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('ACtb',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('ACtb',GetLastCreatedUnit(),1)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call IssueTargetOrder(GetLastCreatedUnit(),"creepthunderbolt",GetAttackedUnitBJ())
    call GroupAddUnitSimple(udg_BashUnit[udg_BashIndex],udg_BashGroup)
    if(Trig_Item_Orb_On_Func001Func001Func002Func001Func013C())then
    call TimerStart(udg_BashTimer, 3.50, false, function Trig_Item_Bash_Actions)
    else
    set udg_BashWait[udg_BashIndex]=(3.50+TimerGetElapsed(udg_BashTimer))
    endif
    else
    endif
    endif
    else
    endif
    endif
    endfunction
    function InitTrig_Item_Orb_On takes nothing returns nothing
    set gg_trg_Item_Orb_On=CreateTrigger()
    call DisableTrigger(gg_trg_Item_Orb_On)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(0),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(1),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(2),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(3),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(5),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(6),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(7),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(8),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(4),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(9),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(10),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(11),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Item_Orb_On,Player(PLAYER_NEUTRAL_AGGRESSIVE),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddAction(gg_trg_Item_Orb_On,function Trig_Item_Orb_On_Actions)
    endfunction