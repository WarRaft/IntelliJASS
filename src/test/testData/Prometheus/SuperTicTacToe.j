// https://bitbucket.org/Prometheus3375/super-tic-tac-toe/src/master/Scripts/SuperTicTacToe%20v1.1%20ndopt.w3x.j
globals
string array o
constant real V=GetCameraMargin(CAMERA_MARGIN_LEFT)
constant real E=GetCameraMargin(CAMERA_MARGIN_RIGHT)
constant real X=GetCameraMargin(CAMERA_MARGIN_BOTTOM)
constant real O=GetCameraMargin(CAMERA_MARGIN_TOP)
player R
constant integer I=$A
constant player A=Player(0)
constant player B=Player(1)
constant hashtable C=InitHashtable()
integer N
integer K
integer D
integer f
integer F
integer G
integer h=0
boolean H
constant integer j=$B
constant integer J=$C
constant integer k=$A
integer array l
integer array L
integer m=-1
rect M
real P
real q
real Q
real S
integer array T
integer U=0
integer array W
integer Y
integer Z
boolexpr vv
player ev
constant integer xv=$A
integer array ov
constant real rv=1.25+.75
constant timer iv=CreateTimer()
constant timer av=CreateTimer()
constant timer nv=CreateTimer()
constant integer Vv=$B
boolean Ev=true
string Xv
constant integer Ov=$F
integer Rv
integer Iv
integer Av
integer Nv
integer bv=-1
integer Bv=0
integer cv
integer Cv=0
integer array dv
string array Dv
constant integer fv=$F
constant integer Fv=Ov+1
boolexpr gv
unit Gv
integer hv
integer Hv
integer jv
integer Jv
integer kv
integer Kv
integer lv
integer Lv
integer mv
integer Mv
integer pv
integer Pv
integer qv
integer Qv
integer sv
integer Sv
integer tv
integer Tv
constant string uv="|cffffffffWelcome to Super tic-tac-toe game!|r

"+"             "+"Choose the field size"
constant string Uv="|cffffffffWelcome to Super tic-tac-toe game!|r

"+"              "+"Choose your token"
code wv
integer Wv
integer yv
integer Yv
integer zv=0
string Zv
string ve
sound ee
sound xe
sound oe
sound re
sound ie
sound ae
constant real ne=-2048.
constant real Ve=-2048.
constant real Ee=(ne+2048.)/ 2.
constant real Xe=(Ve+2048.)/ 2.
multiboard Oe
integer Re=0
constant real Ie=3.*.005
constant real Ae=18.*.005
constant real Ne=14.*.005
constant real be=2.*.005
constant real Be=17.*.005
constant real ce=20.*.005
multiboarditem Ce
multiboarditem de
multiboarditem De
multiboarditem array fe
multiboarditem Fe
constant trigger ge=CreateTrigger()
constant trigger Ge=CreateTrigger()
constant trigger he=CreateTrigger()
integer He
integer je
constant trigger Je=CreateTrigger()
integer ke=0
integer Ke=0
integer array le
integer array Le
boolean array me
integer array Me
string array pe
boolean array Pe
integer array qe
button array Qe
integer array se
integer Se=0
integer te=0
integer array Te
dialog array ue
force array Ue
trigger array we
integer array We
integer array ye
integer array Ye
integer array ze
string array Ze
timer array vx
integer ex=0
integer xx=0
integer array ox
integer array rx
integer array ix
integer array ax
boolean array nx
integer Vx=0
integer Ex=0
integer array Xx
image array Ox
unit array Rx
integer array Ix
real array Ax
real array Nx
integer array bx
integer array Bx
image array cx
integer array Cx
integer Dx=0
integer fx=0
integer array Fx
player array gx
boolean array Gx
string array hx
integer array Hx
multiboarditem array jx
integer array Jx
integer array kx
string array Kx
boolean array lx
timer array Lx
trigger mx
trigger array Mx
trigger array px
trigger array Px
unit qx
integer Qx
integer sx
integer Sx
real tx
real Tx
integer ux
endglobals
native UnitAlive takes unit id returns boolean
function bo takes nothing returns integer
local integer Bo=ke
if(Bo!=0)then
set ke=le[Bo]
else
set Ke=Ke+1
set Bo=Ke
endif
if(Bo>8190)then
return 0
endif
set le[Bo]=-1
return Bo
endfunction
function co takes nothing returns integer
local integer Bo=Dx
if(Bo!=0)then
set Dx=Fx[Bo]
else
set fx=fx+1
set Bo=fx
endif
if(Bo>8190)then
return 0
endif
set Fx[Bo]=-1
return Bo
endfunction
function Co takes nothing returns integer
local integer Bo=Vx
if(Bo!=0)then
set Vx=Xx[Bo]
else
set Ex=Ex+1
set Bo=Ex
endif
if(Bo>$7FE)then
return 0
endif
set Bx[Bo]=(Bo-1)*4
set Cx[Bo]=0
set Xx[Bo]=-1
return Bo
endfunction
function do takes nothing returns integer
local integer Bo=ex
if(Bo!=0)then
set ex=ox[Bo]
else
set xx=xx+1
set Bo=xx
endif
if(Bo>8190)then
return 0
endif
set nx[Bo]=true
set ox[Bo]=-1
return Bo
endfunction
function Do takes integer Bo returns nothing
if Bo==null then
return
elseif(ox[Bo]!=-1)then
return
endif
set ox[Bo]=ex
set ex=Bo
endfunction
function fo takes nothing returns integer
local integer Bo=Se
if(Bo!=0)then
set Se=Te[Bo]
else
set te=te+1
set Bo=te
endif
if(Bo>$665)then
return 0
endif
set Ye[Bo]=(Bo-1)*5
set ue[Bo]=DialogCreate()
set Ue[Bo]=CreateForce()
set we[Bo]=CreateTrigger()
set We[Bo]=-1
set Te[Bo]=-1
return Bo
endfunction
function Fo takes integer i, unit a1 returns nothing
set qx=a1
call TriggerExecute(px[i])
endfunction
function go takes integer i, integer a1, integer a2, integer a3, real a4, real a5 returns nothing
set Qx=a1
set sx=a2
set Sx=a3
set tx=a4
set Tx=a5
call TriggerExecute(Px[i])
endfunction
function Go takes nothing returns nothing
set o[0]=""
set o[48]="0"
set o[49]="1"
set o[50]="2"
set o[51]="3"
set o[52]="4"
set o[53]="5"
set o[54]="6"
set o[55]="7"
set o[56]="8"
set o[57]="9"
set o[65]="A"
set o[66]="B"
set o[67]="C"
set o[68]="D"
set o[69]="E"
set o[70]="F"
set o[71]="G"
set o[72]="H"
set o[73]="I"
set o[74]="J"
set o[75]="K"
set o[76]="L"
set o[77]="M"
set o[78]="N"
set o[79]="O"
set o[80]="P"
set o[81]="Q"
set o[82]="R"
set o[83]="S"
set o[84]="T"
set o[85]="U"
set o[86]="V"
set o[87]="W"
set o[88]="X"
set o[89]="Y"
set o[90]="Z"
endfunction
function ho takes string s, real Ho returns nothing
call DisplayTimedTextToPlayer(R, .0, .0, Ho, s)
endfunction
function Jo takes integer a, integer n returns boolean
return a/ n*n==a
endfunction
function ko takes real r returns integer
local integer i=R2I(r)
if r-i==1. then
return i+1
endif
return i
endfunction
function Ko takes boolean b returns integer
if b then
return 1
endif
return 0
endfunction
function lo takes player p returns boolean
return GetPlayerController(p)==MAP_CONTROL_USER and GetPlayerSlotState(p)==PLAYER_SLOT_STATE_PLAYING
endfunction
function Lo takes nothing returns nothing
call PauseUnit(GetFilterUnit(), bj_pauseAllUnitsFlag)
endfunction
function mo takes string Mo, real po, real x, real y, integer Po returns image
set bj_lastCreatedImage=CreateImage(Mo, po, po, .0, x, y, .0, po/ 2., po/ 2., .0, Po)
call SetImageRenderAlways(bj_lastCreatedImage, true)
return bj_lastCreatedImage
endfunction
function EndThread takes nothing returns nothing
set bj_forLoopAIndex=1/ 0
endfunction
function qo takes nothing returns nothing
set R=GetLocalPlayer()
endfunction
function GetCustomTimer takes nothing returns integer
return LoadInteger(C, I, GetHandleId(GetExpiredTimer()))
endfunction
function GetCustomDialog takes nothing returns integer
return LoadInteger(C, j, GetHandleId(GetClickedDialog()))
endfunction
function GetCustomButton takes nothing returns integer
return LoadInteger(C, J, GetHandleId(GetClickedButton()))
endfunction
function Qo takes integer Bo, string t returns nothing
if me[Bo]then
set Qe[Bo]=DialogAddQuitButton(ue[Le[Bo]], false, t, Me[Bo])
else
set Qe[Bo]=DialogAddButton(ue[Le[Bo]], t, Me[Bo])
endif
set se[Bo]=GetHandleId(Qe[Bo])
call SaveInteger(C, J, se[Bo], Bo)
endfunction
function so takes integer Bo returns nothing
if H then
if Pe[Bo]then
call Qo(Bo, pe[Bo]+("     |cffffff66("+I2S((ze[Le[Bo]]))+")"))
else
call Qo(Bo, pe[Bo]+"         ")
endif
else
call Qo(Bo, pe[Bo])
endif
endfunction
function So takes integer Bo, boolean To returns nothing
set Pe[Bo]=To
call so(Bo)
endfunction
function uo takes integer d, boolean Uo, string t, boolean To returns integer
local integer Bo=bo()
set Le[Bo]=d
set me[Bo]=Uo
set Me[Bo]=l[We[d]]
set pe[Bo]=("[|cffee6600"+o[(Me[Bo])]+"|r] ")+t
set qe[Bo]=We[d]
set Pe[Bo]=To
return Bo
endfunction
function wo takes integer Bo returns nothing
if Qe[Bo]!=null then
call RemoveSavedInteger(C, J, se[Bo])
call so(Bo)
endif
endfunction
function Wo takes integer Bo returns nothing
if Qe[Bo]!=null then
call RemoveSavedInteger(C, j, se[Bo])
set Qe[Bo]=null
endif
endfunction
function yo takes integer Bo returns nothing
set vx[Bo]=CreateTimer()
call SaveInteger(C, I, GetHandleId(vx[Bo]), Bo)
endfunction
function Yo takes string zo, code Zo returns integer
local integer Bo=fo()
call yo(Bo)
call TriggerAddCondition(we[Bo], Filter(Zo))
call TriggerRegisterDialogEvent(we[Bo], ue[Bo])
call SaveInteger(C, j, GetHandleId(ue[Bo]), Bo)
set Ze[Bo]=zo
set m=m+1
set L[m]=Bo
return Bo
endfunction
function vr takes integer Bo, boolean Uo, string zo, boolean er returns integer
set We[Bo]=We[Bo]+1
set ye[Ye[Bo]+We[Bo]]=uo(Bo, Uo, zo, er)
return ye[Ye[Bo]+We[Bo]]
endfunction
function xr takes integer Bo returns nothing
call DialogSetMessage(ue[Bo], Ze[Bo])
set ze[Bo]=k
endfunction
function rr takes integer Bo returns nothing
local integer a=0
call xr(Bo)
loop
call so(ye[Ye[Bo]+a])
set a=a+1
exitwhen a>We[Bo]
endloop
endfunction
function ar takes integer Bo, player p, boolean nr returns nothing
call DialogDisplay(p, ue[Bo], nr)
if nr then
call ForceAddPlayer(Ue[Bo], p)
else
call ForceRemovePlayer(Ue[Bo], p)
if p==R then
call EnableUserControl(true)
endif
endif
endfunction
function Vr takes integer Bo, boolean nr returns nothing
if IsPlayerInForce(R, Ue[Bo])then
call DialogDisplay(R, ue[Bo], nr)
endif
endfunction
function Er takes integer Bo returns nothing
local integer a=0
call PauseTimer(vx[Bo])
if IsPlayerInForce(R, Ue[Bo])then
call EnableUserControl(true)
endif
call ForceClear(Ue[Bo])
call DialogClear(ue[Bo])
loop
call Wo(ye[Ye[Bo]+a])
set a=a+1
exitwhen a>We[Bo]
endloop
endfunction
function Xr takes nothing returns boolean
local integer Bo=(LoadInteger(C, I, GetHandleId(GetExpiredTimer())))
local integer a
set ze[Bo]=ze[Bo]-1
if ze[Bo]==0 then
call Er(Bo)
return true
endif
call DialogClear(ue[Bo])
call DialogSetMessage(ue[Bo], Ze[Bo])
set a=0
loop
exitwhen a>We[Bo]
call wo(ye[Ye[Bo]+a])
set a=a+1
endloop
call Vr(Bo, true)
return false
endfunction
function Rr takes nothing returns nothing
set l[0]=81
set l[1]=87
set l[2]=69
set l[3]=82
set l[4]=84
endfunction
function Ir takes integer Ar, integer Nr returns integer
local integer Bo=do()
local integer mod
set rx[Bo]=Ar
if Nr==0 then
set ix[Bo]=1
set ax[Bo]=Ar+N-1
elseif Nr==1 then
set ix[Bo]=N
set ax[Bo]=Ar+(N-1)*N
elseif Nr==2 then
set ix[Bo]=N+1
if Jo(Ar, N)then
set ax[Bo]=U-1-Ar/ N
else
set ax[Bo]=U-1-Ar*N
endif
else
set ix[Bo]=N-1
if Jo(Ar+1, N)then
set ax[Bo]=U-N+Ar/ N
else
set ax[Bo]=Ar*N
endif
endif
loop
set bx[Bx[T[Ar]]+Nr]=Bo
exitwhen Ar==ax[Bo]
set Ar=Ar+ix[Bo]
endloop
return Bo
endfunction
function br takes integer Bo, integer Br returns boolean
local integer a=1
local integer Ar=Ix[Br]
local integer to=Ix[Br]
loop
set Ar=Ar-ix[Bo]
exitwhen Ar<rx[Bo]or Cx[T[Ar]]!=Cx[Br]
set a=a+1
endloop
set Ar=Ar+ix[Bo]
loop
set to=to+ix[Bo]
exitwhen to>ax[Bo]or Cx[T[to]]!=Cx[Br]
set a=a+1
endloop
set to=to-ix[Bo]
if a>=K then
call go(1, Ar, to, ix[Bo], (Ax[T[Ar]]+Ax[T[to]])/ 2., (Nx[T[Ar]]+Nx[T[to]])/ 2.)
return true
endif
return false
endfunction
function cr takes integer Bo returns boolean
local integer i=rx[Bo]
local integer a=1
local integer st
local integer Cr
loop
exitwhen Cx[T[i]]!=0
set i=i+ix[Bo]
set a=a+1
if a==K then
return false
endif
endloop
set st=Cx[T[i]]
set i=i+ix[Bo]
loop
set Cr=Cx[T[i]]
if Cr==0 or Cr==st then
set a=a+1
if a==K then
return false
endif
else
set a=1
set st=Cr
endif
set i=i+ix[Bo]
exitwhen i>ax[Bo]
endloop
set nx[Bo]=false
set Z=Z-1
if Z==0 then
call TriggerExecute(Mx[(1)])
return true
endif
return false
endfunction
function dr takes integer Bo, integer Br returns boolean
return Bo!=0 and nx[Bo]and br(Bo, Br)
endfunction
function Dr takes integer Bo returns boolean
return Bo!=0 and nx[Bo]and cr(Bo)
endfunction
function fr takes real x, real y, integer i returns integer
local integer Bo=Co()
set Ox[Bo]=mo("Textures\\Pavement.blp", 256., x, y, 4)
set Rx[Bo]=CreateUnit(gx[F], 't000', x, y, 270.)
set Ix[Bo]=i
set Ax[Bo]=x
set Nx[Bo]=y
return Bo
endfunction
function Fr takes integer Bo, boolean gr returns boolean
local integer a=0
if gr then
set Cx[Bo]=1
set cx[Bo]=mo("Textures\\X.blp", 128., Ax[Bo], Nx[Bo], 1)
else
set Cx[Bo]=2
set cx[Bo]=mo("Textures\\O.blp", 128., Ax[Bo], Nx[Bo], 1)
endif
loop
if dr(bx[Bx[Bo]+a], Bo)then
return true
endif
set a=a+1
exitwhen a==4
endloop
set a=0
loop
if Dr(bx[Bx[Bo]+a])then
return true
endif
set a=a+1
exitwhen a==4
endloop
return false
endfunction
function Gr takes integer Bo returns nothing
call DestroyImage(Ox[Bo])
set Ox[Bo]=null
if UnitAlive(Rx[Bo])then
call RemoveUnit(Rx[Bo])
endif
set Rx[Bo]=null
if cx[Bo]!=null then
call DestroyImage(cx[Bo])
set cx[Bo]=null
endif
set bx[Bx[Bo]+2]=0
set bx[Bx[Bo]+3]=0
endfunction
function hr takes integer Bo returns nothing
if Bo==null then
return
elseif(Xx[Bo]!=-1)then
return
endif
call Gr(Bo)
set Xx[Bo]=Vx
set Vx=Bo
endfunction
function Hr takes nothing returns nothing
local integer jr=N-K+1
local integer a=0
local integer i=0
local integer Jr
loop
set W[a]=Ir(i, 0)
set a=a+1
set i=i+N
exitwhen i==U
endloop
set i=0
loop
set W[a]=Ir(i, 1)
set a=a+1
set i=i+1
exitwhen i==N
endloop
set i=0
set Jr=jr*N
loop
set W[a]=Ir(i, 2)
set a=a+1
set i=i+N
exitwhen i==Jr
endloop
set i=1
loop
exitwhen i==jr
set W[a]=Ir(i, 2)
set a=a+1
set i=i+1
endloop
set i=N-1
set Jr=jr*N+N-1
loop
set W[a]=Ir(i, 3)
set a=a+1
set i=i+N
exitwhen i==Jr
endloop
set i=K-1
set Jr=N-1
loop
exitwhen i==Jr
set W[a]=Ir(i, 3)
set a=a+1
set i=i+1
endloop
set Y=a
set Z=a
endfunction
function kr takes nothing returns nothing
local integer a=0
local real x=(1-N)*64.
local real y=-x
set q=x
set S=x
set P=y
set Q=y
set M=Rect(x-256., x-256., y+256., y+256.)
set bj_lastCreatedFogModifier=CreateFogModifierRect(gx[D], FOG_OF_WAR_VISIBLE, M, true, false)
call FogModifierStart(bj_lastCreatedFogModifier)
set U=N*N
loop
set T[a]=fr(x, y, a)
set x=x+128.
if x>P then
set y=y-128.
exitwhen y<S
set x=q
endif
set a=a+1
endloop
call ExecuteFunc("Hr")
endfunction
function Kr takes nothing returns nothing
call DestroyFogModifier(bj_lastCreatedFogModifier)
call SetFogStateRect(gx[D], FOG_OF_WAR_MASKED, M, true)
call RemoveRect(M)
loop
set U=U-1
call hr(T[U])
exitwhen U==0
endloop
loop
set Y=Y-1
call Do(W[Y])
exitwhen Y==0
endloop
endfunction
function lr takes boolean gr, real x, real y returns boolean
local integer i=ko(((Q-y)*N+x-q)/ 128.)
call SetImageColor(bj_lastCreatedImage, $FF, $FF, $FF, $FF)
if Fr(T[i], gr)then
return false
endif
call SetImageColor(bj_lastCreatedImage, 51, $CC, 51, $FF)
return true
endfunction
function Lr takes nothing returns nothing
call SetUnitOwner(GetFilterUnit(), ev, true)
endfunction
function mr takes nothing returns nothing
set ev=gx[Nv]
call GroupEnumUnitsOfPlayer(bj_lastCreatedGroup, gx[Av], vv)
endfunction
function Mr takes nothing returns nothing
set vv=Filter(function Lr)
endfunction
function pr takes integer Pr returns string
if Pr==1 then
return"
You have |cffffff661|r second for this."
endif
return"
You have |cffffff66"+I2S(Pr)+"|r seconds for this."
endfunction
function qr takes integer Bo returns nothing
set Lx[Bo]=CreateTimer()
call SaveInteger(C, I, GetHandleId(Lx[Bo]), Bo)
endfunction
function Qr takes player p returns nothing
local integer Bo=co()
set gx[Bo]=p
set Gx[Bo]=p==R
call qr(Bo)
call TriggerRegisterPlayerUnitEvent(Ge, p, EVENT_PLAYER_UNIT_UPGRADE_START, null)
call TriggerRegisterPlayerChatEvent(Je, p, "", false)
set h=h+1
if h==1 then
set D=Bo
set ov[0]=Bo
set hx[Bo]="|cffff0000"+GetPlayerName(p)+"|r"
else
set f=Bo
set ov[1]=Bo
set hx[Bo]="|cff0000ff"+GetPlayerName(p)+"|r"
endif
endfunction
function sr takes integer Bo, boolean Sr returns nothing
set lx[Bo]=Sr
if Sr then
set F=Bo
call SetPlayerTechMaxAllowed(gx[Bo], 'x000', 1)
call SetPlayerTechMaxAllowed(gx[Bo], 'o000', 0)
else
set G=Bo
call SetPlayerTechMaxAllowed(gx[Bo], 'o000', 1)
call SetPlayerTechMaxAllowed(gx[Bo], 'x000', 0)
endif
endfunction
function tr takes integer Bo, real x, real y returns boolean
if lr(lx[Bo], x, y)then
if N>=8 and not Gx[Bo]then
call PingMinimapEx(x, y, 3., 51, $CC, 51, true)
call SetCameraQuickPosition(x, y)
endif
return true
endif
return false
endfunction
function Tr takes integer Bo returns nothing
call SetPlayerTechMaxAllowed(gx[Bo], 'x000', Ko(not lx[Bo]))
call SetPlayerTechMaxAllowed(gx[Bo], 'o000', Ko(lx[Bo]))
set lx[Bo]=not lx[Bo]
endfunction
function ur takes integer Bo returns nothing
call PauseTimer(Lx[Bo])
set Jx[Bo]=0
if Gx[Bo]then
call ClearTextMessages()
endif
endfunction
function Ur takes nothing returns boolean
local integer Bo=(LoadInteger(C, I, GetHandleId(GetExpiredTimer())))
local integer a
set kx[Bo]=kx[Bo]-1
if kx[Bo]==0 then
call ur(Bo)
return true
endif
if Gx[Bo]then
call ClearTextMessages()
endif
call DisplayTimedTextToPlayer(gx[(Bo)], .0, .0, 10., (Kx[Bo]+pr(kx[Bo])))
return false
endfunction
function wr takes integer Bo, integer e, string s, code Wr returns nothing
set Jx[Bo]=e
call DisplayTimedTextToPlayer(gx[(Bo)], .0, .0, 10., (s+pr(xv)))
set Kx[Bo]=s
set kx[Bo]=xv
call TimerStart(Lx[Bo], 1., true, Wr)
endfunction
function yr takes integer Bo returns nothing
set Hx[Bo]=Hx[Bo]+1
call MultiboardSetItemValue(jx[Bo], I2S(Hx[Bo]))
endfunction
function Yr takes integer Bo returns nothing
call MultiboardReleaseItem(jx[Bo])
set jx[Bo]=null
call PauseTimer(Lx[Bo])
endfunction
function InitGlobals takes nothing returns nothing
endfunction
function No takes nothing returns nothing
call ho(Xv, 10.)
call StartSound(ae)
set Ev=true
endfunction
function zr takes nothing returns nothing
local string Pr
set bv=bv+1
if bv==60 then
set bv=0
set Bv=Bv+1
endif
set Pr="Game time: |cffee6600"
if Bv<$A then
set Pr=Pr+"0"
endif
set Pr=Pr+I2S(Bv)+":"
if bv<$A then
set Pr=Pr+"0"
endif
set Pr=Pr+I2S(bv)
call MultiboardSetItemValue(Fe, Pr)
endfunction
function Zr takes nothing returns nothing
set Gv=GetFilterUnit()
endfunction
function vi takes nothing returns nothing
local string ei
set cv=cv-1
if cv==0 then
call GroupEnumUnitsOfPlayer(bj_lastCreatedGroup, gx[Av], gv)
call Fo(1, Gv)
else
set ei="Turn ends in "
if cv<6 and Gx[Av]then
set ei=ei+"|cffcc3333"
call StartSound(ee)
else
set ei=ei+"|cffcc80cc"
endif
set ei=ei+I2S(cv)+"|r second"
if cv!=1 then
set ei=ei+"s"
endif
call MultiboardSetTitleText(Oe, ei)
endif
endfunction
function xi takes nothing returns nothing
set Rv=Rv+1
if Ev and N>=8 and(Rv==3 or Rv==Vv)then
if Rv==3 then
set Xv="|cff33cc33HINT|r|cff80cccc - Press|r |cffffcc00Space|r|cff80cccc to immediately jump to the latest token of your opponent."
else
set Xv="|cff33cc33HINT|r|cff80cccc - Press|r |cffffcc00F8|r|cff80cccc to select one of places for token."
endif
set Ev=false
call TimerStart(nv, 2., false, function No)
endif
if Gx[Av]then
call StopSound(xe, false, false)
call StartSound(xe)
endif
set cv=Iv
call vi()
call TimerStart(av, 1., true, function vi)
endfunction
function oi takes nothing returns nothing
if H then
call mr()
set bj_randDistCount=Av
set Av=Nv
set Nv=bj_randDistCount
call xi()
else
call Tr(Av)
endif
endfunction
function ri takes unit ii returns nothing
if tr(Av, GetUnitX(ii), GetUnitY(ii))then
call oi()
endif
call RemoveUnit(ii)
endfunction
function ai takes nothing returns nothing
call EnableUserControl(true)
call ho("
Let's start!", 10.)
set Rv=0
call xi()
endfunction
function ni takes nothing returns nothing
call DisableTrigger(Je)
call MultiboardSetItemValue(Ce, "|cffcc80cc"+I2S(N)+"x"+I2S(N)+"|r field")
call MultiboardSetItemValue(de, "|cffcc80cc"+I2S(K)+"|r tokens to win")
call kr()
call MultiboardDisplay(Oe, true)
endfunction
function Vi takes integer p returns nothing
if H then
set zv=zv+1
if zv==2 then
call ClearTextMessages()
set Av=F
set Nv=G
call MultiboardSetTitleText(Oe, "Game is starting...")
call ni()
call StartSound(oe)
call EnableUserControl(false)
call ho("Current game rules:
Field size is |cffcc80cc"+I2S(N)+"x"+I2S(N)+"|r.
Put |cffcc80cc"+I2S(K)+"|r tokens in a straight line to win.", 10.)
call TimerStart(av, 1.5, false, function ai)
else
call DisplayTimedTextToPlayer(gx[(p)], .0, .0, 10., ("Wait until your opponent completes selecting his or her options."))
endif
else
call sr(D, true)
set Av=F
call ni()
endif
endfunction
function Ei takes string Xi, real Oi returns nothing
call PauseTimer(nv)
set Ev=true
call MultiboardDisplay(Oe, false)
call ClearSelection()
call EnableUserControl(false)
set Ze[(hv)]=(Xi)
call TimerStart(av, Oi, false, wv)
endfunction
function Draw takes nothing returns nothing
if H then
call StartSound(ie)
endif
set Cv=Cv+1
call MultiboardSetItemValue(De, I2S(Cv))
call Ei("|cffffffffDraw!", .5)
endfunction
function Ri takes nothing returns nothing
set Iv=Fv
call Vi(yv)
endfunction
function Ii takes nothing returns nothing
if Ur()then
call Ri()
endif
endfunction
function Ai takes nothing returns nothing
if Gx[yv]then
call ClearTextMessages()
endif
call Vi(yv)
endfunction
function Ni takes integer n returns nothing
if Ov<=n and n<=90 then
set Iv=n
call ur(yv)
call DisplayTimedTextToPlayer(gx[(yv)], .0, .0, 10., ("The duration of player's turn is set to |cffcc80cc"+I2S(n)+"|r seconds."))
call TimerStart(Lx[yv], 3., false, function Ai)
endif
endfunction
function bi takes nothing returns nothing
local integer b=(LoadInteger(C, J, GetHandleId(GetClickedButton())))
call Er((LoadInteger(C, j, GetHandleId(GetClickedDialog()))))
if b==Sv then
set Iv=16
elseif b==tv then
set Iv=31
elseif b==Tv then
set Iv=61
else
call wr(yv, 3, ve, function Ii)
return
endif
call Vi(yv)
endfunction
function Bi takes nothing returns nothing
if Xr()then
call Ri()
endif
endfunction
function ci takes nothing returns nothing
call rr(kv)
call ar(kv, gx[yv], true)
call TimerStart(vx[(kv)], 1., true, (function Bi))
endfunction
function Ci takes nothing returns nothing
local integer b=(LoadInteger(C, J, GetHandleId(GetClickedButton())))
call Er((LoadInteger(C, j, GetHandleId(GetClickedDialog()))))
call sr(Wv, b!=sv)
call sr(yv, b==sv)
call ci()
endfunction
function di takes nothing returns nothing
if Xr()then
call sr(Wv, false)
call sr(yv, true)
call ci()
endif
endfunction
function Di takes nothing returns nothing
call rr(Jv)
call ar(Jv, gx[yv], true)
call TimerStart(vx[(Jv)], 1., true, (function di))
endfunction
function fi takes nothing returns nothing
if N>=5 then
set K=5
else
set K=3
endif
call Vi(Wv)
endfunction
function Fi takes nothing returns nothing
if Ur()then
call fi()
endif
endfunction
function gi takes nothing returns nothing
if Gx[Wv]then
call ClearTextMessages()
endif
call Vi(Wv)
endfunction
function Gi takes integer n returns nothing
if 3<=n and n<=N then
set K=n
call ur(Wv)
call DisplayTimedTextToPlayer(gx[(Wv)], .0, .0, 10., ("The amount of tokens for victory is set to |cffcc80cc"+I2S(n)+"|r."))
call TimerStart(Lx[Wv], 3., false, function gi)
endif
endfunction
function hi takes nothing returns nothing
local integer b=(LoadInteger(C, J, GetHandleId(GetClickedButton())))
call Er((LoadInteger(C, j, GetHandleId(GetClickedDialog()))))
if b==pv then
set K=3
elseif b==Pv then
set K=4
elseif b==qv then
set K=5
else
call wr(Wv, 2, ("Please, enter any integer between |cffcc80cc"+I2S((3))+"|r and |cffcc80cc"+I2S((N))+"|r (including specified bounds)."), function Fi)
return
endif
call Vi(Wv)
endfunction
function Hi takes nothing returns nothing
if Xr()then
call fi()
endif
endfunction
function ji takes nothing returns nothing
if N==3 then
set K=3
call Vi(Wv)
return
endif
call xr(jv)
call So(pv, N<5)
call so(Pv)
if N>4 then
call so(qv)
if N>5 then
call so(Qv)
endif
endif
call ar(jv, gx[Wv], true)
if H then
call TimerStart(vx[(jv)], 1., true, (function Hi))
endif
endfunction
function Ji takes nothing returns nothing
set N=fv
call ji()
endfunction
function ki takes nothing returns nothing
if Ur()then
call Ji()
endif
endfunction
function Ki takes nothing returns nothing
if Gx[Wv]then
call ClearTextMessages()
endif
call ji()
endfunction
function li takes integer n returns nothing
if 3<=n and n<=27 then
set N=n
call ur(Wv)
call DisplayTimedTextToPlayer(gx[(Wv)], .0, .0, 10., ("The field size is set to |cffcc80cc"+I2S(n)+"x"+I2S(n)+"|r."))
call TimerStart(Lx[Wv], 3., false, function Ki)
endif
endfunction
function Li takes nothing returns nothing
local integer b=(LoadInteger(C, J, GetHandleId(GetClickedButton())))
call Er((LoadInteger(C, j, GetHandleId(GetClickedDialog()))))
if b==lv then
set N=3
elseif b==Lv then
set N=5
elseif b==mv then
set N=$F
elseif b==Mv then
set N=19
else
call wr(Wv, 1, Zv, function ki)
return
endif
call ji()
endfunction
function mi takes nothing returns nothing
if Xr()then
call Ji()
endif
endfunction
function Mi takes nothing returns nothing
call rr(Hv)
call ar(Hv, gx[Wv], true)
if H then
call TimerStart(vx[(Hv)], 1., true, (function mi))
endif
endfunction
function pi takes nothing returns nothing
call PanCameraToTimed(.0, .0, .0)
call EnableTrigger(Je)
if H then
call ClearTextMessages()
call SetCameraQuickPosition(.0, .0)
set bj_randDistCount=Wv
set Wv=yv
set yv=bj_randDistCount
call Di()
endif
call Mi()
endfunction
function Pi takes nothing returns nothing
if Xr()then
call pi()
endif
endfunction
function qi takes nothing returns nothing
local integer p=(ov[GetPlayerId((GetTriggerPlayer()))])
local integer d=(LoadInteger(C, j, GetHandleId(GetClickedDialog())))
local integer b=(LoadInteger(C, J, GetHandleId(GetClickedButton())))
if H then
call ar(d, gx[p], false)
if b==Kv then
set Yv=Yv+1
if Yv==2 then
call Er(d)
call pi()
else
call DisplayTimedTextToPlayer(gx[(p)], .0, .0, 10., ("Wait until your opponent completes selecting his or her options."))
endif
endif
else
call Er(d)
if b==Kv then
call pi()
endif
endif
endfunction
function Qi takes nothing returns nothing
call EnableUserControl(true)
call Kr()
call rr(hv)
call ar(hv, R, true)
if H then
set Yv=0
set zv=0
call TimerStart(vx[(hv)], 1., true, (function Pi))
endif
endfunction
function Si takes nothing returns integer
set Re=Re+1
call MultiboardSetRowCount(Oe, Re)
return Re-1
endfunction
function ti takes nothing returns nothing
local multiboarditem Ti
local integer x
set Oe=CreateMultiboard()
call MultiboardSetTitleTextColor(Oe, $FF, $FF, $FF, $FF)
call MultiboardSetColumnCount(Oe, 3)
call MultiboardSetItemsStyle(Oe, true, false)
call MultiboardSetItemsWidth(Oe, Ie)
set Ce=MultiboardGetItem(Oe, Si(), 0)
call MultiboardSetItemWidth(Ce, Ae)
set de=MultiboardGetItem(Oe, Si(), 0)
call MultiboardSetItemWidth(de, Ae)
set Ti=MultiboardGetItem(Oe, Si(), 0)
call MultiboardSetItemWidth(Ti, ce)
call MultiboardSetItemValue(Ti, "----------------------------------------")
call MultiboardReleaseItem(Ti)
set x=Si()
set Ti=MultiboardGetItem(Oe, x, 0)
call MultiboardSetItemWidth(Ti, Ne)
call MultiboardSetItemValueColor(Ti, $99, $99, $99, $FF)
call MultiboardSetItemValue(Ti, "Draws|cffffffff: ")
call MultiboardReleaseItem(Ti)
set De=MultiboardGetItem(Oe, x, 2)
call MultiboardSetItemWidth(Ti, be)
call MultiboardSetItemValueColor(De, $CC, $80, $CC, $FF)
call MultiboardSetItemValue(De, "0")
set Ti=MultiboardGetItem(Oe, Si(), 0)
call MultiboardSetItemWidth(Ti, Ne)
call MultiboardSetItemValueColor(Ti, 51, $CC, 51, $FF)
call MultiboardSetItemValue(Ti, "Wins")
call MultiboardReleaseItem(Ti)
if H then
set x=Si()
set Ti=MultiboardGetItem(Oe, x, 0)
call MultiboardSetItemWidth(Ti, Ne)
call MultiboardSetItemValueColor(Ti, $FF, $FF, $FF, $FF)
call MultiboardSetItemValue(Ti, hx[D]+": ")
call MultiboardReleaseItem(Ti)
set jx[D]=MultiboardGetItem(Oe, x, 2)
call MultiboardSetItemWidth(Ti, be)
call MultiboardSetItemValueColor(jx[D], $CC, $80, $CC, $FF)
call MultiboardSetItemValue(jx[D], "0")
set x=Si()
set Ti=MultiboardGetItem(Oe, x, 0)
call MultiboardSetItemWidth(Ti, Ne)
call MultiboardSetItemValueColor(Ti, $FF, $FF, $FF, $FF)
call MultiboardSetItemValue(Ti, hx[f]+": ")
call MultiboardReleaseItem(Ti)
set jx[f]=MultiboardGetItem(Oe, x, 2)
call MultiboardSetItemWidth(Ti, be)
call MultiboardSetItemValueColor(jx[f], $CC, $80, $CC, $FF)
call MultiboardSetItemValue(jx[f], "0")
set Ti=MultiboardGetItem(Oe, Si(), 0)
call MultiboardSetItemWidth(Ti, ce)
call MultiboardSetItemValue(Ti, "----------------------------------------")
call MultiboardReleaseItem(Ti)
set Fe=MultiboardGetItem(Oe, Si(), 0)
call MultiboardSetItemWidth(Fe, Be)
else
set x=Si()
set Ti=MultiboardGetItem(Oe, x, 0)
call MultiboardSetItemWidth(Ti, Ne)
call MultiboardSetItemValueColor(Ti, $FF, $FF, $FF, $FF)
call MultiboardSetItemValue(Ti, "Crosses: ")
call MultiboardReleaseItem(Ti)
set fe[1]=MultiboardGetItem(Oe, x, 2)
call MultiboardSetItemWidth(Ti, be)
call MultiboardSetItemValueColor(fe[1], $CC, $80, $CC, $FF)
call MultiboardSetItemValue(fe[1], "0")
set x=Si()
set Ti=MultiboardGetItem(Oe, x, 0)
call MultiboardSetItemWidth(Ti, Ne)
call MultiboardSetItemValueColor(Ti, $FF, $FF, $FF, $FF)
call MultiboardSetItemValue(Ti, "Zeros: ")
call MultiboardReleaseItem(Ti)
set fe[0]=MultiboardGetItem(Oe, x, 2)
call MultiboardSetItemWidth(Ti, be)
call MultiboardSetItemValueColor(fe[0], $CC, $80, $CC, $FF)
call MultiboardSetItemValue(fe[0], "0")
call MultiboardSetTitleText(Oe, "Singleplayer game")
endif
call MultiboardMinimize(Oe, false)
set Ti=null
endfunction
function ui takes nothing returns nothing
call DestroyTimer(GetExpiredTimer())
set Ze[(Hv)]=("Choose the field size")
set Ze[(Jv)]=("Choose your token")
endfunction
function Ui takes nothing returns nothing
call Mi()
if H then
call Di()
call TimerStart(CreateTimer(), k, false, function ui)
else
set Ze[(Hv)]=("Choose the field size")
endif
call ti()
call zr()
call TimerStart(iv, 1., true, function zr)
endfunction
function Wi takes nothing returns nothing
call ri(GetTriggerUnit())
endfunction
function InitTrig_UpgradeStart takes nothing returns nothing
call TriggerAddAction(Ge, function Wi)
endfunction
function yi takes nothing returns nothing
local integer b=(LoadInteger(C, J, GetHandleId(GetClickedButton())))
call Er((LoadInteger(C, j, GetHandleId(GetClickedDialog()))))
if b==je then
if U>0 then
call Kr()
endif
call EnableTrigger(Je)
set Cv=0
call PanCameraToTimed(.0, .0, .0)
call DestroyMultiboard(Oe)
set Re=0
call ti()
call Mi()
endif
endfunction
function Yi takes nothing returns nothing
local integer a=0
set h=1
set H=false
call MultiboardDisplay(Oe, false)
call MultiboardReleaseItem(Fe)
set Fe=null
call Yr(D)
call Yr(f)
call PauseTimer(av)
call PauseTimer(nv)
loop
call Er(L[a])
set a=a+1
exitwhen a>m
endloop
call StopCamera()
if GetTriggerPlayer()==gx[D]then
set D=f
endif
set Wv=D
set He=Yo("|cffffffffYour opponent has left the game!|r

   Would you like to play alone?", function yi)
set je=vr(He, false, "Keep playing", false)
call vr(He, true, "Leave", false)
call rr(He)
call ar(He, gx[D], true)
call DisableTrigger(GetTriggeringTrigger())
endfunction
function InitTrig_PlayerLeft takes nothing returns nothing
call TriggerAddAction(he, function Yi)
endfunction
function zi takes nothing returns nothing
local integer e=Jx[(ov[GetPlayerId((GetTriggerPlayer()))])]
local integer Zi=S2I(GetEventPlayerChatString())
if e==1 then
call li(Zi)
elseif e==3 then
call Ni(Zi)
else
call Gi(Zi)
endif
endfunction
function va takes nothing returns boolean
return Jx[(ov[GetPlayerId((GetTriggerPlayer()))])]!=0
endfunction
function InitCustomPlayerSlots takes nothing returns nothing
call SetPlayerStartLocation(Player(0), 0)
call ForcePlayerStartLocation(Player(0), 0)
call SetPlayerColor(Player(0), ConvertPlayerColor(0))
call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
call SetPlayerRaceSelectable(Player(0), false)
call SetPlayerController(Player(0), MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(1), 1)
call ForcePlayerStartLocation(Player(1), 1)
call SetPlayerColor(Player(1), ConvertPlayerColor(1))
call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
call SetPlayerRaceSelectable(Player(1), false)
call SetPlayerController(Player(1), MAP_CONTROL_USER)
endfunction
function InitCustomTeams takes nothing returns nothing
call SetPlayerTeam(Player(0), 0)
call SetPlayerTeam(Player(1), 1)
endfunction
function InitAllyPriorities takes nothing returns nothing
call SetStartLocPrioCount(0, 1)
call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(1, 1)
call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
endfunction
function main takes nothing returns nothing
call SetCameraBounds(ne+V, Ve+X, 2048.-E, 2048.-O, ne+V, 2048.-O, 2048.-E, Ve+X)
call TriggerRegisterTimerEvent(ge, 1./ 64., false)
call TriggerAddAction(ge, function Ui)
call TriggerAddAction(Ge, function Wi)
call TriggerAddAction(he, function Yi)
call TriggerAddCondition(Je, Filter(function va))
call TriggerAddAction(Je, function zi)
call ExecuteFunc("xa")
call ExecuteFunc("Go")
call ExecuteFunc("qo")
call ExecuteFunc("Rr")
call ExecuteFunc("Mr")
set gv=Filter(function Zr)
set Dv[0]="|cffffffffZeros win!"
set Dv[1]="|cffffffffCrosses win!"
set ee=CreateSound("Sound\\Interface\\BattleNetTick.wav", false, false, false, $A, $A, "DefaultEAXON")
call SetSoundParamsFromLabel(ee, "ChatroomTimerTick")
call SetSoundDuration(ee, 476)
call SetSoundVolume(ee, $7F)
set oe=CreateSound("Sound\\Interface\\ArrangedTeamInvitation.wav", false, false, false, $A, $A, "DefaultEAXON")
call SetSoundParamsFromLabel(oe, "ArrangedTeamInvitation")
call SetSoundDuration(oe, $B62)
call SetSoundVolume(oe, $7F)
set xe=CreateSound("Sound\\Interface\\GoodJob.wav", false, false, false, $A, $A, "DefaultEAXON")
call SetSoundParamsFromLabel(xe, "GoodJob")
call SetSoundDuration(xe, $9F4)
call SetSoundVolume(xe, $7F)
set re=CreateSound("Sound\\Interface\\ClanInvitation.wav", false, false, false, $A, $A, "DefaultEAXON")
call SetSoundParamsFromLabel(re, "ClanInvitation")
call SetSoundDuration(re, 4296)
call SetSoundVolume(re, $7F)
set ie=CreateSound("Sound\\Interface\\Rescue.wav", false, false, false, $A, $A, "DefaultEAXON")
call SetSoundParamsFromLabel(ie, "Rescue")
call SetSoundDuration(ie, $ED4)
call SetSoundVolume(ie, $7F)
set ae=CreateSound("Sound\\Interface\\Hint.wav", false, false, false, $A, $A, "DefaultEAXON")
call SetSoundParamsFromLabel(ae, "No")
call SetSoundDuration(ae, $7D6)
call SetSoundVolume(ae, $7F)
call SetGameSpeed(MAP_SPEED_FASTEST)
call SetMapFlag(MAP_LOCK_SPEED, true)
call SetMapFlag(MAP_USE_HANDICAPS, false)
call SetAllyColorFilterState(0)
call SetCreepCampFilterState(false)
call EnableMinimapFilterButtons(false, false)
call SetFloatGameState(GAME_STATE_TIME_OF_DAY, 12.)
call SuspendTimeOfDay(true)
call ClearMapMusic()
if lo(A)then
call Qr(A)
endif
if lo(B)then
call Qr(B)
endif
set H=h==2
if H then
call TriggerRegisterPlayerEvent(he, A, EVENT_PLAYER_LEAVE)
call TriggerRegisterPlayerEvent(he, B, EVENT_PLAYER_LEAVE)
call SetPlayerAlliance(A, B, ALLIANCE_SHARED_VISION, true)
call SetPlayerAlliance(B, A, ALLIANCE_SHARED_VISION, true)
endif
set wv=function Qi
set hv=Yo(null, function qi)
set Kv=vr(hv, false, "Restart", true)
call vr(hv, true, "Leave", false)
set Zv=("Please, enter any integer between |cffcc80cc"+I2S((3))+"|r and |cffcc80cc"+I2S((27))+"|r (including specified bounds).")
set Hv=Yo(uv, function Li)
set lv=vr(Hv, false, "3x3", false)
set Lv=vr(Hv, false, "5x5", false)
set mv=vr(Hv, false, "15x15", true)
set Mv=vr(Hv, false, "19x19", false)
call vr(Hv, false, "Custom", false)
set jv=Yo("Choose the amount of tokens for victory", function hi)
set pv=vr(jv, false, "3", false)
set Pv=vr(jv, false, "4", false)
set qv=vr(jv, false, "5", true)
set Qv=vr(jv, false, "Custom", false)
if H then
set Jv=Yo(Uv, function Ci)
set sv=vr(Jv, false, "Select 'X'", true)
call vr(Jv, false, "Select 'O'", false)
set ve=("Please, enter any integer between |cffcc80cc"+I2S((Ov))+"|r and |cffcc80cc"+I2S((90))+"|r (including specified bounds).")
set kv=Yo("Choose the duration of player's turn", function bi)
set Sv=vr(kv, false, "15 seconds", true)
set tv=vr(kv, false, "30 seconds", false)
set Tv=vr(kv, false, "1 minute", false)
call vr(kv, false, "Custom", false)
set yv=f
endif
set Wv=D
endfunction
function config takes nothing returns nothing
local player p
call SetMapName("TRIGSTR_001")
call SetMapDescription("TRIGSTR_029")
call SetPlayers(2)
call SetTeams(2)
set p=Player(0)
call DefineStartLocation(0, Ee, Xe)
call SetPlayerStartLocation(p, 0)
call SetPlayerColor(p, ConvertPlayerColor(0))
call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
call SetPlayerRaceSelectable(p, true)
call SetPlayerController(p, MAP_CONTROL_USER)
call SetPlayerTeam(p, 0)
set p=Player(1)
call DefineStartLocation(1, Ee, Xe)
call SetPlayerStartLocation(p, 1)
call SetPlayerColor(p, ConvertPlayerColor(1))
call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
call SetPlayerRaceSelectable(p, true)
call SetPlayerController(p, MAP_CONTROL_USER)
call SetPlayerTeam(p, 1)
set p=null
endfunction
function oa takes nothing returns boolean
local integer Bo=ux
call DestroyImage(Ox[Bo])
set Ox[Bo]=null
if UnitAlive(Rx[Bo])then
call RemoveUnit(Rx[Bo])
endif
set Rx[Bo]=null
if cx[Bo]!=null then
call DestroyImage(cx[Bo])
set cx[Bo]=null
endif
set bx[Bx[Bo]+2]=0
set bx[Bx[Bo]+3]=0
return true
endfunction
function ra takes nothing returns boolean
call ri(qx)
return true
endfunction
function ia takes nothing returns boolean
local integer Ar=Qx
local integer to=sx
local integer aa=Sx
local real x=tx
local real y=Tx
local integer t=Ko(lx[Av])
if H then
call StartSound(re)
call PanCameraToTimed(x, y, 1.25)
call yr(Av)
call Ei(Dv[t], rv)
else
set dv[t]=dv[t]+1
call MultiboardSetItemValue(fe[t], I2S(dv[t]))
call Ei(Dv[t], .5)
endif
loop
call SetImageColor(cx[T[Ar]], $CC, 51, 51, $FF)
exitwhen Ar==to
set Ar=Ar+aa
endloop
return true
endfunction
function na takes nothing returns boolean
if H then
call StartSound(ie)
endif
set Cv=Cv+1
call MultiboardSetItemValue(De, I2S(Cv))
call Ei("|cffffffffDraw!", .5)
return true
endfunction
function xa takes nothing returns nothing
set mx=CreateTrigger()
call TriggerAddCondition(mx, Condition(function oa))
set px[1]=CreateTrigger()
call TriggerAddAction(px[1], function ra)
call TriggerAddCondition(px[1], Condition(function ra))
set Px[1]=CreateTrigger()
call TriggerAddAction(Px[1], function ia)
call TriggerAddCondition(Px[1], Condition(function ia))
set Mx[1]=CreateTrigger()
call TriggerAddAction(Mx[1], function na)
call TriggerAddCondition(Mx[1], Condition(function na))
endfunction
