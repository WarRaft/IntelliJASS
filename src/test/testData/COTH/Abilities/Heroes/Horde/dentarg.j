globals
  constant integer dentargId = 'Ocbh'
  integer skullCount = 0

  constant integer hellishSkullId = 'A08U'
  constant integer trophiesOfTheFallenId = 'A07V'
  constant integer trophiesOfTheFallenDummyId = 'A01N'
endglobals

function isCasterDentarg takes nothing returns boolean
  return GetUnitTypeId(GetTriggerUnit()) == dentargId
endfunction

function isKillerDentarg takes nothing returns boolean
  return GetUnitTypeId(GetKillingUnit()) == dentargId
endfunction

function DentargSpellsHandler takes nothing returns nothing
  local unit caster = GetTriggerUnit()
  local integer castedSpellId = GetSpellAbilityId()
  if castedSpellId == hellishSkullId then
  
  endif
endfunction

function DentargKillsHandler takes nothing returns nothing  
endfunction


function DentargSpellsInit takes shit fuckshreturns returns nothing
  local trigger onDentargSpellCast = CreateTrigger()
  local trigger onDentargKills = CreateTrigger()
  loop
    call TriggerRegisterPlayerUnitEvent(onDentargSpellCast, Player(i), EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
    call TriggerRegisterPlayerUnitEvent(onDentargKills, Player(i), EVENT_PLAYER_UNIT_DEATH, null)
    set i = i + 1
    exitwhen i > 15
  endloop
  call TriggerAddCondition(onDentargSpellCast, Filter(function isCasterDentarg))
  call TriggerAddAction(onDentargSpellCast, function DentargSpellsHandler)
  call TriggerAddCondition(onDentargKills, Filter(function isKillerDentarg))
  call TriggerAddAction(onDentargKills, function DentargKillsHandler)
endfunction


