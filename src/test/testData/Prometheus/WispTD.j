// https://bitbucket.org/Prometheus3375/wisptd/src/master/Map%20releases/WispTD%20v3.-1.16.1%20ndopt.w3x.j
globals
    constant real        V  = GetCameraMargin(CAMERA_MARGIN_LEFT)
    constant real        E  = GetCameraMargin(CAMERA_MARGIN_RIGHT)
    constant real        X  = GetCameraMargin(CAMERA_MARGIN_BOTTOM)
    constant real        O  = GetCameraMargin(CAMERA_MARGIN_TOP)
    constant real        R  = .023/ 10.
    constant real        I  = .071/ 128.
    player               A
    constant integer     B  = $D00A6
    constant integer     C  = $D00A5
    constant integer     D  = $D00FA
    constant integer     F  = $D0097
    constant integer     G  = $D00FE
    constant integer     H  = $D0057
    constant integer     j  = $D0106
    constant integer     J  = $D0019
    constant integer     K  = $D0012
    constant integer     L  = $D0003
    constant integer     M  = $D0004
    constant integer     P  = $D0058
    constant integer     Q  = $D0008
    constant integer     S  = $D0005
    constant integer     U  = $400
    integer              W  = U
    constant hashtable   Y  = InitHashtable()
    boolean              Z  = true
    constant integer     vv = $A
    player array         ev
    integer              xv
    constant playercolor ov = PLAYER_COLOR_RED
    constant group       rv = bj_lastCreatedGroup
    constant unittype    iv = UNIT_TYPE_MECHANICAL
    constant unittype    av = UNIT_TYPE_GIANT
    constant unittype    nv = UNIT_TYPE_SAPPER
    constant unittype    Vv = UNIT_TYPE_TAUREN
    constant unittype    Ev = UNIT_TYPE_ANCIENT
    region               Xv
    region               Ov
    boolexpr             Rv
    integer              Iv = -1
    integer              Av = -1
    integer              Nv
    sound                bv
    sound                Bv
    sound                cv
    sound                Cv
    boolean              dv = true
    boolean              Dv = true
    integer              fv = 0
    constant timer       Fv = CreateTimer()
    integer              gv = -1
    integer              Gv = 0
    integer              hv = 1
    integer              Hv = 91
    boolean              jv = true
    boolean              Jv = true
    constant integer     kv = $B
    constant integer     Kv = $B
    constant integer     lv = $E
    constant real        Lv = 3./ 8.
    string               mv
    integer              Mv
    constant real        pv = 2.-.8
    constant integer     Pv = $F
    constant integer     qv = $F
    constant real        Qv = (1920.+1408.)/ 2.
    constant real        sv = -1472.
    constant real        Sv = -1792.
    constant real        tv = -1920.
    constant real        Tv = 640.-1408.
    constant real        uv = -8448.
    constant real        Uv = (tv+1152.)/ 2.
    constant integer     wv = $80
    constant integer     Wv = 256/ 64
    constant integer     yv = 608-16*Wv
    constant integer     Yv = yv+16
    integer array        zv
    integer array        Zv
    integer array        ve
    integer array        ee
    integer array        xe
    integer array        oe
    integer array        re
    integer array        ie
    constant integer     ae = $C
    constant integer     ne = $BB8
    constant integer     Ve = $3E8
    constant integer     Ee = H
    constant integer     Xe = P
    integer array        Oe
    boolean array        Re
    player               Ie = null
    constant integer     Ae = $A
    constant integer     Ne = $C
    constant integer     be = -25
    constant integer     Be = -25
    integer              ce = 0
    integer              Ce = 0
    constant real        de = 1./ 16.
    boolexpr array       De
    constant integer     fe = $E
    constant integer     Fe = $80
    trigger              ge = null
    trigger              Ge = null
    trigger              he = null
    trigger              He = null
    trigger              je = null
    trigger              Je = null
    trigger              ke = null
    trigger              Ke = null
    trigger              le = null
    trigger              Le = null
    trigger              me = null
    trigger              Me = null
    trigger              pe = null
    trigger              Pe = null
    trigger              qe = null
    trigger              Qe = null
    trigger              se = null
    trigger              Se = null
    trigger              te = null
    trigger              Te = null
    trigger              ue = null
    trigger              Ue = null
    constant trigger     we = CreateTrigger()
    boolexpr             We
    integer              ye
    integer              Ye
    integer              ze
    integer              Ze
    integer              vx
    integer              ex
    integer              xx
    integer              ox
    constant integer     rx = $E
    integer              ax
    integer              nx
    integer              Vx
    integer              Ex
    integer              Xx
    integer              Ox
    integer              Rx
    integer              Ix
    integer              Ax
    integer              Nx
    integer              bx
    integer              Bx
    integer              Cx
    integer              Dx
    integer              fx
    integer              Fx
    constant integer     gx = $E
    constant integer     Gx = $B
    integer              hx
    boolexpr             Hx
    boolexpr             jx
    integer              Jx
    sound                kx
    sound                Kx
    sound                lx
    sound                Lx
    sound                mx
    sound                Mx
    sound array          px
    sound array          Px
    constant real        qx = -8960.
    constant real        Qx = -1920.
    constant real        sx = (qx+6912.)/ 2.
    constant real        Sx = (Qx+1920.)/ 2.
    multiboard           tx
    integer              Tx = 0
    integer              ux = 0
    multiboarditem       Ux
    multiboarditem       wx
    multiboarditem       Wx
    multiboarditem       yx
    multiboarditem       Yx
    multiboarditem       zx
    multiboarditem       Zx
    real                 vo
    constant integer     eo = $FF
    constant real        xo = 3./ 4.
    multiboarditem       oo
    integer              ro = -1
    integer              io
    integer              ao
    integer              no
    integer              Vo
    integer              Eo
    integer              Xo
    integer              Oo
    integer              Ro
    integer              Io
    integer              Ao
    integer              No
    integer              bo
    integer              Bo
    integer array        co
    integer array        Co
    integer array        do
    string array         Do
    string array         fo
    integer              Fo = 0
    integer              go = 0
    integer array        Go
    real array           ho
    integer array        Ho
    integer array        jo
    integer              Jo = -1
    integer array        ko
    integer              Ko = -1
    integer              lo = 0
    integer              Lo = 0
    integer array        mo
    integer array        Mo
    integer array        po
    integer array        Po
    integer              qo = 0
    integer              Qo = 0
    integer array        so
    integer array        So
    integer array        to
    integer array        To
    integer              uo = 0
    integer              Uo = 0
    integer array        wo
    integer array        Wo
    integer array        yo
    integer array        Yo
    integer              zo = 0
    integer              Zo = 0
    integer array        vr
    integer array        er
    integer array        xr
    integer array        rr
    integer              ir = 0
    integer              ar = 0
    integer array        nr
    integer array        Vr
    integer array        Er
    integer array        Xr
    integer              Rr = 0
    integer              Ir = 0
    integer array        Ar
    integer array        Nr
    integer array        br
    integer array        Br
    integer              cr = 0
    integer              Cr = 0
    integer array        dr
    integer array        Dr
    integer array        fr
    integer array        Fr
    integer              gr = 0
    integer              Gr = 0
    integer array        hr
    integer array        Hr
    integer array        jr
    integer array        Jr
    integer array        kr
    boolean array        Kr
    boolean array        lr
    integer array        Lr
    integer array        mr
    integer array        Mr
    integer array        pr
    integer array        Pr
    integer array        qr
    integer              Qr = 0
    integer              sr = 0
    integer array        Sr
    integer array        tr
    integer array        Tr
    integer              ur = 0
    integer              Ur = 0
    integer array        wr
    integer array        Wr
    integer array        yr
    integer array        Yr
    real array           zr
    real array           Zr
    real array           vi
    real array           ei
    real array           xi
    rect array           oi
    rect array           ri
    rect array           ii
    rect array           ni
    rect array           Vi
    rect array           Ei
    fogmodifier array    Xi
    fogmodifier array    Oi
    integer array        Ri
    integer array        Ii
    integer array        Ai
    integer array        Ni
    timer array          bi
    code                 Bi
    boolean array        ci
    integer              Ci = 0
    integer              di = 0
    integer array        Di
    unit array           fi
    integer array        Fi
    integer array        gi
    integer array        Gi
    integer array        hi
    timer array          Hi
    integer              ji = 0
    integer              Ji = 0
    integer array        ki
    integer array        Ki
    integer array        li
    integer array        Li
    integer array        mi
    real array           Mi
    integer array        pi
    integer array        Pi
    real array           qi
    integer              Qi = 0
    integer              si = 0
    integer array        Si
    integer array        ti
    integer array        Ti
    integer array        ui
    integer array        Ui
    integer array        wi
    real array           Wi
    integer array        yi
    integer array        Yi
    integer array        zi
    real array           Zi
    integer array        va
    integer array        ea
    integer array        xa
    boolean array        oa
    integer array        ra
    integer array        ia
    integer array        aa
    boolean array        na
    integer array        Va
    integer array        Ea
    integer array        Xa
    integer array        Oa
    integer array        Ra
    integer array        Ia
    integer array        Aa
    integer array        Na
    integer array        ba
    integer array        Ba
    integer array        ca
    integer array        Ca
    boolean array        da
    integer array        Da
    integer array        fa
    integer array        Fa
    boolean array        ga
    integer array        Ga
    integer array        ha
    integer array        Ha
    boolean array        ja
    integer array        Ja
    integer array        ka
    integer array        Ka
    boolean array        la
    integer              La = 0
    integer              ma = 0
    integer array        Ma
    integer              pa = 0
    integer array        Pa
    boolean array        qa
    boolean array        Qa
    integer array        sa
    integer array        Sa
    real array           ta
    boolean array        Ta
    real array           ua
    integer array        Ua
    integer              wa = 0
    integer              Wa = 0
    integer array        ya
    integer              Ya = 0
    integer array        za
    integer array        Za
    boolean array        vn
    boolean array        en
    boolean array        xn
    boolean array        on
    real array           rn
    real array           an
    real array           nn
    integer              Vn = 0
    integer array        En
    integer array        Xn
    integer array        On
    integer array        Rn
    integer array        In
    trigger array        An
    integer              Nn = 0
    integer              bn = 0
    integer array        Bn
    integer              cn = 0
    integer              Cn = 0
    integer array        dn
    integer array        Dn
    integer array        fn
    integer array        Fn
    integer array        gn
    integer array        Gn
    integer array        hn
    real array           Hn
    integer array        jn
    integer array        Jn
    integer array        kn
    integer array        Kn
    integer array        ln
    integer array        Ln
    boolean array        mn
    boolean array        Mn
    integer array        pn
    integer array        Pn
    integer array        qn
    integer array        Qn
    integer array        sn
    integer array        Sn
    integer array        tn
    integer array        Tn
    integer array        un
    integer array        Un
    real array           wn
    real array           Wn
    real array           yn
    real array           Yn
    real array           zn
    real array           Zn
    integer array        vV
    real array           eV
    integer array        xV
    integer array        oV
    integer array        rV
    integer array        iV
    integer array        aV
    integer array        nV
    integer array        VV
    integer              EV = -1
    integer              XV = -1
    integer              OV = -1
    integer              RV = -1
    integer              IV = 1093677093
    integer              AV = 1093677102
    integer              NV = 1093677103
    integer              bV = 1093677120
    integer array        BV
    integer array        cV
    integer array        CV
    integer array        dV
    integer              DV = 0
    integer array        fV
    integer array        FV
    integer array        gV
    integer array        GV
    trigger array        hV
    integer              HV = 0
    real array           jV
    real array           JV
    boolean array        kV
    boolean array        KV
    boolean array        lV
    integer array        LV
    integer array        mV
    integer array        MV
    trigger array        pV
    integer array        PV
    boolean array        qV
    integer array        QV
    integer array        sV
    integer array        SV
    integer array        tV
    integer array        TV
    integer array        uV
    integer array        UV
    integer array        wV
    integer array        WV
    real array           yV
    integer array        YV
    real array           zV
    integer array        ZV
    boolexpr array       vE
    real array           eE
    integer array        xE
    boolean array        oE
    integer array        rE
    integer array        iE
    integer              aE = 0
    integer array        nE
    integer array        VE
    integer array        EE
    integer array        XE
    string array         OE
    integer              RE = 0
    integer              IE = 0
    integer array        AE
    integer              NE = 0
    integer array        bE
    integer array        BE
    integer array        cE
    integer array        CE
    integer array        dE
    integer array        DE
    integer array        fE
    integer array        FE
    integer array        gE
    integer array        GE
    string array         hE
    integer              HE = 0
    integer              jE = 0
    integer array        JE
    integer              kE = 0
    integer array        KE
    integer array        lE
    integer array        LE
    integer array        mE
    integer array        ME
    integer array        pE
    integer array        PE
    integer array        qE
    integer array        QE
    string array         sE
    integer              SE = 0
    integer              tE = 0
    integer array        TE
    integer array        uE
    integer array        UE
    integer array        wE
    integer array        WE
    integer array        yE
    integer array        YE
    boolean array        zE
    integer array        ZE
    boolean array        vX
    integer array        eX
    integer              xX = 0
    integer              oX = 0
    integer array        rX
    player array         iX
    integer array        aX
    string array         nX
    string array         VX
    integer array        EX
    integer array        XX
    boolean array        OX
    boolean array        RX
    boolean array        IX
    player array         AX
    boolean array        NX
    integer array        bX
    integer array        BX
    integer array        cX
    integer array        CX
    integer array        dX
    integer array        DX
    real array           fX
    integer array        FX
    integer array        gX
    integer array        GX
    integer array        hX
    integer array        HX
    multiboarditem array jX
    multiboarditem array JX
    multiboarditem array kX
    multiboarditem array KX
    multiboarditem array lX
    multiboarditem array LX
    multiboarditem array mX
    multiboarditem array MX
    multiboarditem array pX
    image array          PX
    integer array        qX
    boolean array        QX
    unit array           sX
    unit array           SX
    unit array           tX
    unit array           TX
    unit array           uX
    integer array        UX
    integer array        wX
    integer array        WX
    integer array        yX
    integer array        YX
    integer array        zX
    integer array        ZX
    integer array        vO
    integer array        eO
    integer array        xO
    integer array        oO
    integer array        rO
    integer array        iO
    integer array        aO
    integer array        nO
    integer array        VO
    integer array        EO
    integer array        XO
    integer array        OO
    integer array        RO
    integer array        IO
    integer array        AO
    item array           NO
    item array           bO
    item array           BO
    sound array          cO
    sound array          CO
    integer array        dO
    timer array          DO
    timer array          fO
    code                 FO
    code                 gO
    integer              GO
    integer              hO = 0
    integer              HO = 0
    integer array        jO
    integer              JO
    integer array        kO
    integer array        KO
    integer array        lO
    integer array        LO
    unit array           mO
    integer array        MO
    integer array        pO
    integer array        PO
    boolean array        qO
    boolean array        QO
    boolean array        sO
    integer array        SO
    integer array        tO
    real array           TO
    real array           uO
    real array           UO
    real array           wO
    integer array        WO
    item array           yO
    item array           YO
    item array           zO
    item array           ZO
    item array           vR
    item array           eR
    real array           xR
    real array           oR
    real array           rR
    integer array        iR
    integer array        aR
    integer array        nR
    integer array        VR
    integer array        ER
    integer array        XR
    timer array          OR
    boolexpr             RR
    code                 IR
    code                 AR
    integer              NR = 0
    integer              bR = 0
    integer array        BR
    integer array        cR
    integer array        CR
    unit array           dR
    integer array        DR
    integer array        fR
    integer array        FR
    boolean array        gR
    integer array        GR
    integer array        hR
    timer array          HR
    integer              jR = 0
    integer              JR = 0
    integer array        kR
    integer array        KR
    unit array           lR
    integer array        LR
    integer array        mR
    integer              MR = 0
    integer              pR = 0
    integer array        PR
    integer array        qR
    integer array        QR
    real array           sR
    integer array        SR
    integer array        tR
    integer              TR = 0
    integer              uR = 0
    integer array        UR
    integer array        wR
    integer array        WR
    integer              yR
    integer              YR
    integer              zR
    integer              ZR
    integer              vI
    integer              eI
    integer              xI
    integer              oI
    integer              rI
    boolean array        iI
    integer              aI
    integer              nI
    integer              VI
    integer              EI
    integer              XI
    integer              OI = 0
    integer              RI = 0
    integer array        II
    unit array           AI
    integer array        NI
    integer              bI = 0
    integer              BI = 0
    integer array        cI
    constant real        CI = 1./ 64.
    constant integer     dI = $CC
    constant integer     DI = $CC
    unit array           fI
    image array          FI
    timer array          gI
    integer              GI = 0
    integer              hI = 0
    integer array        HI
    code                 jI
    integer array        JI
    integer array        kI
    integer array        KI
    boolean array        lI
    timer array          LI
    integer              mI
    boolexpr             MI
    integer              pI
    integer              PI
    real                 qI
    integer              QI
    integer              sI
    integer              SI
    integer              tI
    integer              TI
    integer array        uI
    integer array        UI
    integer array        wI
    integer              WI
    boolexpr             yI
    integer              YI
    integer              zI
    constant integer     ZI = $F
    integer              vA
    integer array        eA
    boolexpr             xA
    integer              oA
    boolean              rA
    constant integer     iA = $A
    integer              aA
    boolean array        nA
    integer array        VA
    integer array        EA
    integer array        XA
    boolexpr             OA
    integer              RA
    integer              IA
    constant integer     AA = D
    integer              NA
    integer array        bA
    integer              BA
    boolexpr             cA
    integer              CA
    integer              dA
    real                 DA
    integer              fA
    boolexpr             FA
    code                 gA
    timer array          GA
    integer              hA
    integer              HA
    real                 jA
    integer              JA = 0
    integer              kA = 0
    integer array        KA
    unit                 lA
    integer              LA
    real                 mA
    real                 MA
    integer array        pA
    unit array           PA
    integer array        qA
    integer array        QA
    boolean array        sA
    real array           SA
    real array           tA
    real array           TA
    real array           uA
    integer array        UA
    integer array        wA
    real array           WA
    integer array        yA
    integer array        YA
    integer array        zA
    timer array          ZA
    image array          vN
    integer array        eN
    boolean array        xN
    integer array        oN
    integer array        rN
    integer array        iN
    integer array        aN
    item array           nN
    item array           VN
    item array           EN
    item array           XN
    integer array        ON
    integer array        RN
    code                 IN
    boolexpr             AN
    integer              NN
    boolexpr             bN
    integer              BN
    integer              cN
    integer              CN
    integer              dN
    integer              DN
    integer              fN
    integer              FN
    integer array        gN
    integer              GN
    integer array        hN
    integer              HN
    integer array        jN
    integer              JN
    integer array        kN
    integer array        KN
    integer              lN
    integer array        LN
    integer              mN
    integer              MN
    integer              pN
    integer              PN
    integer              qN
    integer              QN
    integer              sN = 0
    integer              SN = 0
    integer array        tN
    integer              TN
    integer array        uN
    integer array        UN
    constant integer     wN = G
    code                 WN
    item array           yN
    real array           YN
    real array           zN
    real array           ZN
    real array           vb
    integer array        eb
    timer array          xb
    constant integer     ob = G
    constant real        rb = -.15
    constant real        ib = 1./ 2.
    code                 ab
    item array           nb
    real array           Vb
    real array           Eb
    integer array        Xb
    timer array          Ob
    boolexpr             Rb
    integer              Ib
    constant real        Ab = -.3
    constant integer     Nb = -25
    real array           bb
    code                 Bb
    code                 cb
    real array           Cb
    real array           db
    real array           Db
    real array           fb
    real array           Fb
    timer array          gb
    timer array          Gb
    constant integer     hb = F
    constant real        Hb = -.25
    integer array        jb
    boolean array        Jb
    integer array        kb
    timer array          Kb
    code                 lb
    real array           Lb
    real array           mb
    constant integer     Mb = $80
    constant integer     pb = $CC
    constant integer     Pb = $FF
    constant integer     qb = $A
    code                 Qb
    code                 sb
    integer array        Sb
    image array          tb
    unit array           Tb
    effect array         ub
    integer array        Ub
    integer array        wb
    timer array          Wb
    boolexpr             yb
    integer              Yb
    boolexpr             zb
    integer              Zb
    integer              vB
    boolexpr             eB
    boolean              xB
    constant integer     oB = C
    constant integer     rB = B
    constant integer     iB = $A
    constant real        aB = 1.-.1
    constant real        nB = -.01
    integer array        VB
    real array           EB
    real array           XB
    boolean array        OB
    integer array        RB
    item array           IB
    integer array        AB
    timer array          NB
    integer              bB
    integer array        BB
    integer              cB
    integer              CB
    integer              dB
    integer              DB
    integer              fB
    integer              FB
    integer              gB
    integer array        GB
    integer              hB
    integer              HB = 0
    trigger array        jB
    string array         JB
    integer array        kB
    boolean array        KB
    string array         lB
    integer              LB = 0
    integer              mB = 0
    integer array        MB
    integer              pB = -1
    integer              PB
    integer              qB
    integer              QB
    integer              sB
    integer              SB
    integer              tB
    integer              TB
    integer              uB
    integer              UB
    integer              wB
    integer              WB
    integer              yB
    integer              YB
    integer              zB
    integer              ZB
    integer              vc
    integer              ec
    integer              xc
    integer              oc
    integer array        rc
    real array           ic
    boolean array        ac
    boolean array        nc
    integer array        Vc
    trigger array        Ec
    trigger array        Xc
    trigger array        Oc
    trigger array        Rc
    trigger array        Ic
    trigger array        Ac
    trigger array        Nc
    trigger array        bc
    trigger array        Bc
    trigger array        cc
    trigger array        Cc
    trigger array        dc
    trigger array        Dc
    trigger array        fc
    trigger array        Fc
    trigger array        gc
    trigger array        Gc
    trigger array        hc
    trigger array        Hc
    trigger array        jc
    trigger array        Jc
    trigger array        kc
    trigger array        Kc
    trigger array        lc
    trigger array        Lc
    trigger array        mc
    trigger array        Mc
    trigger array        Pc
    trigger array        qc
    trigger array        Qc
    trigger array        sc
    trigger array        Sc
    integer array        tc
    trigger array        Tc
    integer array        uc
    trigger array        Uc
    integer array        wc
    trigger array        Wc
    integer array        yc
    trigger array        Yc
    integer array        zc
    trigger array        Zc
    integer array        vC
    trigger array        eC
    trigger              xC
    trigger              oC
    trigger              rC
    trigger              iC
    trigger              aC
    trigger              nC
    trigger              VC
    trigger              EC
    trigger              XC
    trigger              OC
    trigger              RC
    trigger              IC
    trigger              AC
    trigger              NC
    trigger              bC
    trigger              BC
    trigger              cC
    trigger              CC
    trigger              dC
    trigger              DC
    trigger              fC
    trigger              FC
    trigger array        gC
    integer              GC
    trigger array        hC
    trigger array        HC
    trigger array        jC
    trigger array        JC
    trigger array        kC
    trigger array        KC
    trigger array        lC
    trigger array        LC
    integer              mC
    integer              MC
    integer              pC
    player               PC
    real                 qC
    real                 QC
    boolean              sC
    unit                 SC
    integer              tC
    real                 TC
    boolean              uC
endglobals
native UnitAlive takes unit id returns boolean
function s__Column__allocate takes nothing returns integer
    local integer bd = LB
    if(bd!=0)then
        set LB = MB[bd]
    else
        set mB = mB+1
        set bd = mB
    endif
    if(bd>8190)then
        return 0
    endif
    set MB[bd] = -1
    return bd
endfunction
function Bd takes nothing returns integer
    local integer bd = Fo
    if(bd!=0)then
        set Fo = Go[bd]
    else
        set go = go+1
        set bd = go
    endif
    if(bd>$9F)then
        return 0
    endif
    set Ho[bd] = (bd-1)*51
    set Go[bd] = -1
    return bd
endfunction
function Cd takes nothing returns integer
    local integer bd = lo
    if(bd!=0)then
        set lo = mo[bd]
    else
        set Lo = Lo+1
        set bd = Lo
    endif
    if(bd>67)then
        return 0
    endif
    set po[bd] = (bd-1)*120
    set Po[bd] = -1
    set mo[bd] = -1
    return bd
endfunction
function Dd takes nothing returns integer
    local integer bd = qo
    if(bd!=0)then
        set qo = so[bd]
    else
        set Qo = Qo+1
        set bd = Qo
    endif
    if(bd>77)then
        return 0
    endif
    set to[bd] = (bd-1)*105
    set To[bd] = -1
    set so[bd] = -1
    return bd
endfunction
function fd takes nothing returns integer
    local integer bd = uo
    if(bd!=0)then
        set uo = wo[bd]
    else
        set Uo = Uo+1
        set bd = Uo
    endif
    if(bd>77)then
        return 0
    endif
    set yo[bd] = (bd-1)*105
    set Yo[bd] = -1
    set wo[bd] = -1
    return bd
endfunction
function Fd takes nothing returns integer
    local integer bd = zo
    if(bd!=0)then
        set zo = vr[bd]
    else
        set Zo = Zo+1
        set bd = Zo
    endif
    if(bd>77)then
        return 0
    endif
    set xr[bd] = (bd-1)*105
    set rr[bd] = -1
    set vr[bd] = -1
    return bd
endfunction
function gd takes nothing returns integer
    local integer bd = ir
    if(bd!=0)then
        set ir = nr[bd]
    else
        set ar = ar+1
        set bd = ar
    endif
    if(bd>77)then
        return 0
    endif
    set Er[bd] = (bd-1)*105
    set Xr[bd] = -1
    set nr[bd] = -1
    return bd
endfunction
function Gd takes nothing returns integer
    local integer bd = Rr
    if(bd!=0)then
        set Rr = Ar[bd]
    else
        set Ir = Ir+1
        set bd = Ir
    endif
    if(bd>77)then
        return 0
    endif
    set br[bd] = (bd-1)*105
    set Br[bd] = -1
    set Ar[bd] = -1
    return bd
endfunction
function Hd takes integer m, integer T returns integer
    set mC = m
    set MC = T
    call TriggerEvaluate(FC)
    return GC
endfunction
function jd takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(Sc[vC[bd]])
endfunction
function Jd takes nothing returns integer
    local integer bd = sN
    if(bd!=0)then
        set sN = tN[bd]
    else
        set SN = SN+1
        set bd = SN
    endif
    if(bd>8190)then
        return 0
    endif
    set vC[bd] = 108
    set tN[bd] = -1
    return bd
endfunction
function kd takes integer bd returns nothing
    if bd==null then
        return
    elseif(tN[bd]!=-1)then
        return
    endif
    set tC = bd
    call TriggerEvaluate(eC[vC[bd]])
    set tN[bd] = sN
    set sN = bd
endfunction
function Kd takes nothing returns integer
    local integer bd = cr
    if(bd!=0)then
        set cr = dr[bd]
    else
        set Cr = Cr+1
        set bd = Cr
    endif
    if(bd>77)then
        return 0
    endif
    set fr[bd] = (bd-1)*105
    set Fr[bd] = -1
    set dr[bd] = -1
    return bd
endfunction
function ld takes nothing returns integer
    local integer bd = gr
    if(bd!=0)then
        set gr = hr[bd]
    else
        set Gr = Gr+1
        set bd = Gr
    endif
    if(bd>8190)then
        return 0
    endif
    set Kr[bd] = true
    set hr[bd] = -1
    return bd
endfunction
function Ld takes integer bd returns nothing
    if bd==null then
        return
    elseif(hr[bd]!=-1)then
        return
    endif
    set hr[bd] = gr
    set gr = bd
endfunction
function md takes nothing returns integer
    local integer bd = Qr
    if(bd!=0)then
        set Qr = Sr[bd]
    else
        set sr = sr+1
        set bd = sr
    endif
    if(bd>8190)then
        return 0
    endif
    set tr[bd] = 0
    set Sr[bd] = -1
    return bd
endfunction
function Md takes integer bd returns nothing
    if bd==null then
        return
    elseif(Sr[bd]!=-1)then
        return
    endif
    set Sr[bd] = Qr
    set Qr = bd
endfunction
function pd takes integer bd returns nothing
    set tC = bd
    call TriggerExecute(xC)
endfunction
function Pd takes integer bd returns nothing
    set tC = bd
    call TriggerExecute(oC)
endfunction
function qd takes integer bd returns nothing
    set tC = bd
    call TriggerExecute(rC)
endfunction
function Qd takes integer bd returns nothing
    set tC = bd
    call TriggerExecute(iC)
endfunction
function sd takes integer bd, integer q returns nothing
    set tC = bd
    set mC = q
    call TriggerExecute(aC)
endfunction
function Sd takes nothing returns integer
    local integer bd = ur
    if(bd!=0)then
        set ur = wr[bd]
    else
        set Ur = Ur+1
        set bd = Ur
    endif
    if(bd>$C)then
        return 0
    endif
    set Yr[bd] = (bd-1)*608
    set Ri[bd] = (bd-1)*$A
    set Ai[bd] = (bd-1)*38
    set Ni[bd] = 0
    set wr[bd] = -1
    return bd
endfunction
function td takes nothing returns integer
    local integer bd = Ci
    if(bd!=0)then
        set Ci = Di[bd]
    else
        set di = di+1
        set bd = di
    endif
    if(bd>8190)then
        return 0
    endif
    set Di[bd] = -1
    return bd
endfunction
function Td takes integer bd returns nothing
    if bd==null then
        return
    elseif(Di[bd]!=-1)then
        return
    endif
    set Di[bd] = Ci
    set Ci = bd
endfunction
function ud takes nothing returns integer
    local integer bd = ji
    if(bd!=0)then
        set ji = ki[bd]
    else
        set Ji = Ji+1
        set bd = Ji
    endif
    if(bd>8190)then
        return 0
    endif
    set Li[bd] = 0
    set mi[bd] = 0
    set tc[bd] = 27
    set ki[bd] = -1
    return bd
endfunction
function Ud takes integer bd returns nothing
    if bd==null then
        return
    elseif(ki[bd]!=-1)then
        return
    endif
    set tC = bd
    call TriggerEvaluate(Tc[tc[bd]])
    set ki[bd] = ji
    set ji = bd
endfunction
function wd takes nothing returns integer
    local integer bd = ud()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set tc[bd] = 28
    set Wd = bd
    set Mi[bd] = .0
    return bd
endfunction
function yd takes nothing returns integer
    local integer bd = ud()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set tc[bd] = 29
    set Wd = bd
    set pi[bd] = 0
    return bd
endfunction
function Yd takes nothing returns integer
    local integer bd = ud()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set tc[bd] = 30
    set Wd = bd
    set Pi[bd] = 0
    set qi[bd] = .0
    return bd
endfunction
function zd takes nothing returns integer
    local integer bd = Qi
    if(bd!=0)then
        set Qi = Si[bd]
    else
        set si = si+1
        set bd = si
    endif
    if(bd>8190)then
        return 0
    endif
    set ti[bd] = 0
    set ui[bd] = 0
    set wi[bd] = 0
    set Wi[bd] = .0
    set zi[bd] = 0
    set Zi[bd] = .0
    set ea[bd] = 0
    set xa[bd] = 0
    set oa[bd] = false
    set ia[bd] = 0
    set aa[bd] = 0
    set na[bd] = false
    set Ea[bd] = 0
    set Xa[bd] = 0
    set Ra[bd] = 0
    set Ia[bd] = 0
    set Na[bd] = 0
    set ba[bd] = 0
    set ca[bd] = 0
    set Ca[bd] = 0
    set da[bd] = false
    set fa[bd] = 0
    set Fa[bd] = 0
    set ga[bd] = false
    set ha[bd] = 0
    set Ha[bd] = 0
    set ja[bd] = false
    set ka[bd] = 0
    set Ka[bd] = 0
    set la[bd] = false
    set Si[bd] = -1
    return bd
endfunction
function Zd takes nothing returns integer
    local integer bd = La
    if(bd!=0)then
        set La = Ma[bd]
    else
        set ma = ma+1
        set bd = ma
    endif
    if(bd>8190)then
        return 0
    endif
    set Ma[bd] = -1
    return bd
endfunction
function vD takes integer bd returns nothing
    if bd==null then
        return
    elseif(Ma[bd]!=-1)then
        return
    endif
    set Ma[bd] = La
    set La = bd
endfunction
function eD takes nothing returns integer
    local integer bd = wa
    if(bd!=0)then
        set wa = ya[bd]
    else
        set Wa = Wa+1
        set bd = Wa
    endif
    if(bd>8190)then
        return 0
    endif
    set ya[bd] = -1
    return bd
endfunction
function xD takes integer bd returns nothing
    if bd==null then
        return
    elseif(ya[bd]!=-1)then
        return
    endif
    set ya[bd] = wa
    set wa = bd
endfunction
function oD takes unit u returns nothing
    set SC = u
    call TriggerExecute(dC)
endfunction
function rD takes integer bd, boolean iD returns real
    set tC = bd
    set sC = iD
    call TriggerEvaluate(lc[zc[bd]])
    return TC
endfunction
function aD takes integer bd, boolean iD returns real
    set tC = bd
    set sC = iD
    call TriggerEvaluate(Lc[zc[bd]])
    return TC
endfunction
function nD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(mc[zc[bd]])
endfunction
function VD takes integer bd, integer m returns nothing
    set tC = bd
    set mC = m
    call TriggerEvaluate(Mc[zc[bd]])
endfunction
function ED takes integer bd, integer XD returns nothing
    set tC = bd
    set mC = XD
    call TriggerExecute(Pc[zc[bd]])
endfunction
function OD takes integer RD, integer ID, real x, real y returns nothing
    set mC = RD
    set MC = ID
    set qC = x
    set QC = y
    call TriggerExecute(DC)
endfunction
function AD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(qc[zc[bd]])
endfunction
function ND takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(Qc[zc[bd]])
endfunction
function bD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(sc[zc[bd]])
endfunction
function BD takes nothing returns integer
    local integer bd = JA
    if(bd!=0)then
        set JA = KA[bd]
    else
        set kA = kA+1
        set bd = kA
    endif
    if(bd>8190)then
        return 0
    endif
    set sA[bd] = false
    set WA[bd] = 1.
    set eN[bd] = 0
    set oN[bd] = 0
    set rN[bd] = 0
    set ON[bd] = 0
    set RN[bd] = -1
    set zc[bd] = 91
    set KA[bd] = -1
    return bd
endfunction
function cD takes integer bd returns nothing
    if bd==null then
        return
    elseif(KA[bd]!=-1)then
        return
    endif
    set tC = bd
    call TriggerEvaluate(Zc[zc[bd]])
    set KA[bd] = JA
    set JA = bd
endfunction
function CD takes nothing returns integer
    local integer bd = Nn
    if(bd!=0)then
        set Nn = Bn[bd]
    else
        set bn = bn+1
        set bd = bn
    endif
    if(bd>$AA9)then
        return 0
    endif
    set VV[bd] = (bd-1)*3
    set kn[bd] = 1
    set zn[bd] = .0
    set Zn[bd] = .0
    set rV[bd] = 0
    set aV[bd] = 0
    set Bn[bd] = -1
    return bd
endfunction
function dD takes integer bd returns nothing
    if bd==null then
        return
    elseif(Bn[bd]!=-1)then
        return
    endif
    set Bn[bd] = Nn
    set Nn = bd
endfunction
function fD takes nothing returns integer
    local integer bd = RE
    if(bd!=0)then
        set RE = AE[bd]
    else
        set IE = IE+1
        set bd = IE
    endif
    if(bd>$AA9)then
        return 0
    endif
    set dE[bd] = (bd-1)*3
    set fE[bd] = (bd-1)*3
    set cE[bd] = 0
    set AE[bd] = -1
    return bd
endfunction
function FD takes nothing returns integer
    local integer bd = HE
    if(bd!=0)then
        set HE = JE[bd]
    else
        set jE = jE+1
        set bd = jE
    endif
    if(bd>681)then
        return 0
    endif
    set LE[bd] = (bd-1)*4
    set pE[bd] = (bd-1)*$C
    set mE[bd] = 0
    set JE[bd] = -1
    return bd
endfunction
function gD takes integer m, integer id returns integer
    set mC = m
    set MC = id
    call TriggerEvaluate(cC)
    return GC
endfunction
function GD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(hc[yc[bd]])
endfunction
function hD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(Hc[yc[bd]])
endfunction
function HD takes integer bd, real r returns nothing
    set tC = bd
    set qC = r
    call TriggerEvaluate(CC)
endfunction
function jD takes integer bd, integer JD returns nothing
    set tC = bd
    set mC = JD
    call TriggerEvaluate(jc[yc[bd]])
endfunction
function kD takes integer bd, integer JD, integer KD, integer lD returns boolean
    set tC = bd
    set mC = JD
    set MC = KD
    set pC = lD
    call TriggerEvaluate(Jc[yc[bd]])
    return uC
endfunction
function LD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(kc[yc[bd]])
endfunction
function mD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(Kc[yc[bd]])
endfunction
function MD takes nothing returns integer
    local integer bd = GI
    if(bd!=0)then
        set GI = HI[bd]
    else
        set hI = hI+1
        set bd = hI
    endif
    if(bd>8190)then
        return 0
    endif
    set kI[bd] = 0
    set lI[bd] = false
    set yc[bd] = 77
    set HI[bd] = -1
    return bd
endfunction
function pD takes integer bd returns nothing
    if bd==null then
        return
    elseif(HI[bd]!=-1)then
        return
    endif
    set tC = bd
    call TriggerEvaluate(Yc[yc[bd]])
    set HI[bd] = GI
    set GI = bd
endfunction
function PD takes nothing returns integer
    local integer bd = bI
    if(bd!=0)then
        set bI = cI[bd]
    else
        set BI = BI+1
        set bd = BI
    endif
    if(bd>8190)then
        return 0
    endif
    set cI[bd] = -1
    return bd
endfunction
function qD takes nothing returns integer
    local integer bd = OI
    if(bd!=0)then
        set OI = II[bd]
    else
        set RI = RI+1
        set bd = RI
    endif
    if(bd>8190)then
        return 0
    endif
    set II[bd] = -1
    return bd
endfunction
function QD takes integer bd returns nothing
    set tC = bd
    call TriggerExecute(VC)
endfunction
function sD takes nothing returns integer
    local integer bd = SE
    if(bd!=0)then
        set SE = TE[bd]
    else
        set tE = tE+1
        set bd = tE
    endif
    if(bd>389)then
        return 0
    endif
    set UE[bd] = (bd-1)*21
    set WE[bd] = (bd-1)*$E
    set YE[bd] = (bd-1)*$B
    set ZE[bd] = (bd-1)*$E
    set eX[bd] = 0
    set TE[bd] = -1
    return bd
endfunction
function SD takes integer bd returns nothing
    if bd==null then
        return
    elseif(TE[bd]!=-1)then
        return
    endif
    set TE[bd] = SE
    set SE = bd
endfunction
function tD takes player p, integer i returns nothing
    set PC = p
    set mC = i
    call TriggerExecute(EC)
endfunction
function TD takes integer bd returns nothing
    set tC = bd
    call TriggerExecute(XC)
endfunction
function uD takes integer bd returns nothing
    set tC = bd
    call TriggerExecute(OC)
endfunction
function UD takes nothing returns integer
    local integer bd = xX
    if(bd!=0)then
        set xX = rX[bd]
    else
        set oX = oX+1
        set bd = oX
    endif
    if(bd>67)then
        return 0
    endif
    set qX[bd] = (bd-1)*120
    set iO[bd] = (bd-1)*$B
    set OX[bd] = true
    set RX[bd] = true
    set NX[bd] = false
    set CX[bd] = ne
    set dX[bd] = 0
    set DX[bd] = 40
    set fX[bd] = .0
    set FX[bd] = Ve
    set gX[bd] = 50
    set GX[bd] = 0
    set hX[bd] = 0
    set HX[bd] = 0
    set QX[bd] = true
    set vO[bd] = 0
    set eO[bd] = 800
    set aO[bd] = 0
    set nO[bd] = 0
    set VO[bd] = 0
    set dO[bd] = 0
    set rX[bd] = -1
    return bd
endfunction
function wD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(RC)
endfunction
function WD takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(Ec[uc[bd]])
endfunction
function yD takes integer bd returns real
    set tC = bd
    call TriggerEvaluate(Xc[uc[bd]])
    return TC
endfunction
function YD takes integer bd returns integer
    set tC = bd
    call TriggerEvaluate(Oc[uc[bd]])
    return GC
endfunction
function zD takes integer bd returns integer
    set tC = bd
    call TriggerEvaluate(Rc[uc[bd]])
    return GC
endfunction
function ZD takes integer bd returns boolean
    set tC = bd
    call TriggerEvaluate(Ic[uc[bd]])
    return uC
endfunction
function vf takes integer bd returns boolean
    set tC = bd
    call TriggerEvaluate(Ac[uc[bd]])
    return uC
endfunction
function ef takes integer bd returns boolean
    set tC = bd
    call TriggerEvaluate(Nc[uc[bd]])
    return uC
endfunction
function xf takes integer bd returns boolean
    set tC = bd
    call TriggerEvaluate(bc[uc[bd]])
    return uC
endfunction
function of takes integer bd returns boolean
    set tC = bd
    call TriggerEvaluate(Bc[uc[bd]])
    return uC
endfunction
function rf takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(cc[uc[bd]])
endfunction
function af takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(Cc[uc[bd]])
endfunction
function nf takes integer bd, real Vf returns real
    set tC = bd
    set qC = Vf
    call TriggerEvaluate(dc[uc[bd]])
    return TC
endfunction
function Ef takes integer bd, real Vf returns real
    set tC = bd
    set qC = Vf
    call TriggerEvaluate(Dc[uc[bd]])
    return TC
endfunction
function Xf takes integer bd, real Vf returns real
    set tC = bd
    set qC = Vf
    call TriggerEvaluate(fc[uc[bd]])
    return TC
endfunction
function Of takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(Fc[uc[bd]])
endfunction
function Rf takes integer bd returns nothing
    set tC = bd
    call TriggerEvaluate(gc[uc[bd]])
endfunction
function If takes integer bd, boolean Af, integer Nf, integer RD returns nothing
    set tC = bd
    set sC = Af
    set mC = Nf
    set MC = RD
    call TriggerExecute(IC)
endfunction
function bf takes nothing returns integer
    local integer bd = hO
    if(bd!=0)then
        set hO = jO[bd]
    else
        set HO = HO+1
        set bd = HO
    endif
    if(bd>8190)then
        return 0
    endif
    set qO[bd] = true
    set QO[bd] = false
    set sO[bd] = false
    set SO[bd] = 0
    set WO[bd] = -1
    set iR[bd] = -1
    set aR[bd] = -1
    set nR[bd] = -1
    set VR[bd] = -1
    set ER[bd] = -1
    set XR[bd] = -1
    set uc[bd] = 56
    set jO[bd] = -1
    return bd
endfunction
function Bf takes integer bd returns nothing
    if bd==null then
        return
    elseif(jO[bd]!=-1)then
        return
    endif
    set tC = bd
    call TriggerEvaluate(Uc[uc[bd]])
    set jO[bd] = hO
    set hO = bd
endfunction
function cf takes integer Cf, unit df, integer id returns integer
    set mC = Cf
    set SC = df
    set MC = id
    call TriggerEvaluate(AC)
    return GC
endfunction
function Df takes integer bd returns boolean
    set tC = bd
    call TriggerEvaluate(Gc[wc[bd]])
    return uC
endfunction
function ff takes nothing returns integer
    local integer bd = NR
    if(bd!=0)then
        set NR = BR[bd]
    else
        set bR = bR+1
        set bd = bR
    endif
    if(bd>8190)then
        return 0
    endif
    set DR[bd] = 0
    set FR[bd] = 0
    set gR[bd] = false
    set wc[bd] = 57
    set BR[bd] = -1
    return bd
endfunction
function Ff takes integer bd returns nothing
    if bd==null then
        return
    elseif(BR[bd]!=-1)then
        return
    endif
    set tC = bd
    call TriggerEvaluate(Wc[wc[bd]])
    set BR[bd] = NR
    set NR = bd
endfunction
function gf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 63
    set Wd = bd
    return bd
endfunction
function Gf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 62
    set Wd = bd
    return bd
endfunction
function hf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 61
    set Wd = bd
    return bd
endfunction
function Hf takes nothing returns integer
    local integer bd = TR
    if(bd!=0)then
        set TR = UR[bd]
    else
        set uR = uR+1
        set bd = uR
    endif
    if(bd>8190)then
        return 0
    endif
    set UR[bd] = -1
    return bd
endfunction
function jf takes integer bd returns nothing
    if bd==null then
        return
    elseif(UR[bd]!=-1)then
        return
    endif
    set UR[bd] = TR
    set TR = bd
endfunction
function Jf takes nothing returns integer
    local integer bd = MR
    if(bd!=0)then
        set MR = PR[bd]
    else
        set pR = pR+1
        set bd = pR
    endif
    if(bd>8190)then
        return 0
    endif
    set SR[bd] = 0
    set tR[bd] = 0
    set PR[bd] = -1
    return bd
endfunction
function kf takes integer bd returns nothing
    if bd==null then
        return
    elseif(PR[bd]!=-1)then
        return
    endif
    set PR[bd] = MR
    set MR = bd
endfunction
function Kf takes nothing returns integer
    local integer bd = jR
    if(bd!=0)then
        set jR = kR[bd]
    else
        set JR = JR+1
        set bd = JR
    endif
    if(bd>8190)then
        return 0
    endif
    set kR[bd] = -1
    return bd
endfunction
function lf takes nothing returns integer
    local integer bd = BD()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set zc[bd] = 124
    set Wd = bd
    return bd
endfunction
function Lf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 64
    set Wd = bd
    return bd
endfunction
function mf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 65
    set Wd = bd
    return bd
endfunction
function Mf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 66
    set Wd = bd
    return bd
endfunction
function pf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 67
    set Wd = bd
    return bd
endfunction
function Pf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 68
    set Wd = bd
    return bd
endfunction
function qf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 69
    set Wd = bd
    return bd
endfunction
function Qf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 70
    set Wd = bd
    return bd
endfunction
function sf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 71
    set Wd = bd
    return bd
endfunction
function Sf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 72
    set Wd = bd
    return bd
endfunction
function tf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 73
    set Wd = bd
    return bd
endfunction
function Tf takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 74
    set Wd = bd
    return bd
endfunction
function uf takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 78
    set Wd = bd
    return bd
endfunction
function Uf takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 79
    set Wd = bd
    return bd
endfunction
function wf takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 80
    set Wd = bd
    return bd
endfunction
function Wf takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 81
    set Wd = bd
    return bd
endfunction
function yf takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 82
    set Wd = bd
    return bd
endfunction
function Yf takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 83
    set Wd = bd
    set uI[bd] = 2
    return bd
endfunction
function zf takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 84
    set Wd = bd
    return bd
endfunction
function Zf takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 85
    set Wd = bd
    return bd
endfunction
function vF takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 86
    set Wd = bd
    set eA[bd] = 0
    return bd
endfunction
function eF takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 87
    set Wd = bd
    set nA[bd] = false
    set VA[bd] = 0
    set EA[bd] = 0
    set XA[bd] = 0
    return bd
endfunction
function xF takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 88
    set Wd = bd
    set bA[bd] = 0
    return bd
endfunction
function oF takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 89
    set Wd = bd
    return bd
endfunction
function rF takes integer m, integer id returns integer
    local integer bd = gD(m, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set yc[bd] = 90
    set Wd = bd
    return bd
endfunction
function iF takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 92
    set Wd = bd
    return bd
endfunction
function aF takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 93
    set Wd = bd
    return bd
endfunction
function nF takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 94
    set Wd = bd
    return bd
endfunction
function VF takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 95
    set Wd = bd
    return bd
endfunction
function EF takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 96
    set Wd = bd
    return bd
endfunction
function XF takes integer Cf, unit df, integer id returns integer
    local integer bd = cf(Cf, df, id)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set wc[bd] = 97
    set Wd = bd
    return bd
endfunction
function OF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 98
    set Wd = bd
    return bd
endfunction
function RF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 99
    set Wd = bd
    return bd
endfunction
function IF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 100
    set Wd = bd
    return bd
endfunction
function AF takes integer p, real x, real y, integer ls returns integer
    set mC = p
    set qC = x
    set QC = y
    set MC = ls
    call TriggerEvaluate(fC)
    return GC
endfunction
function NF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 101
    set Wd = bd
    return bd
endfunction
function bF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 102
    set Wd = bd
    return bd
endfunction
function BF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 103
    set Wd = bd
    return bd
endfunction
function cF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 104
    set Wd = bd
    return bd
endfunction
function CF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 105
    set Wd = bd
    return bd
endfunction
function dF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 106
    set Wd = bd
    return bd
endfunction
function DF takes nothing returns integer
    local integer bd = bf()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set uc[bd] = 107
    set Wd = bd
    return bd
endfunction
function fF takes integer m, integer T returns integer
    local integer bd = Hd(m, T)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set vC[bd] = 109
    set Wd = bd
    set YN[bd] = 10.
    set zN[bd] = .0
    set ZN[bd] = 1.
    set vb[bd] = 2.
    return bd
endfunction
function FF takes integer m, integer T returns integer
    local integer bd = Hd(m, T)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set vC[bd] = 110
    set Wd = bd
    set Vb[bd] = 8.
    set Eb[bd] = .0
    return bd
endfunction
function gF takes integer m, integer T returns integer
    local integer bd = Hd(m, T)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set vC[bd] = 111
    set Wd = bd
    set bb[bd] = 4.
    return bd
endfunction
function GF takes integer m, integer T returns integer
    local integer bd = Hd(m, T)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set vC[bd] = 112
    set Wd = bd
    set Db[bd] = .0
    set fb[bd] = .1
    set Fb[bd] = .5
    return bd
endfunction
function hF takes integer m, integer T returns integer
    local integer bd = Hd(m, T)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set vC[bd] = 113
    set Wd = bd
    set jb[bd] = 0
    set Jb[bd] = false
    return bd
endfunction
function HF takes integer m, integer T returns integer
    local integer bd = Hd(m, T)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set vC[bd] = 114
    set Wd = bd
    set Lb[bd] = .0
    set mb[bd] = .0
    return bd
endfunction
function jF takes integer m, integer T returns integer
    local integer bd = Hd(m, T)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set vC[bd] = 115
    set Wd = bd
    set Sb[bd] = 2
    return bd
endfunction
function JF takes integer m, integer T returns integer
    local integer bd = Hd(m, T)
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set vC[bd] = 116
    set Wd = bd
    set VB[bd] = 0
    set EB[bd] = .1
    set XB[bd] = aB
    set OB[bd] = false
    set AB[bd] = 0
    return bd
endfunction
function kF takes nothing returns integer
    local integer bd = BD()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set zc[bd] = 117
    set Wd = bd
    return bd
endfunction
function KF takes nothing returns integer
    local integer bd = BD()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set zc[bd] = 118
    set Wd = bd
    return bd
endfunction
function lF takes nothing returns integer
    local integer bd = BD()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set zc[bd] = 119
    set Wd = bd
    return bd
endfunction
function LF takes nothing returns integer
    local integer bd = BD()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set zc[bd] = 120
    set Wd = bd
    return bd
endfunction
function mF takes nothing returns integer
    local integer bd = BD()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set zc[bd] = 121
    set Wd = bd
    return bd
endfunction
function MF takes nothing returns integer
    local integer bd = BD()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set zc[bd] = 122
    set Wd = bd
    return bd
endfunction
function pF takes nothing returns integer
    local integer bd = BD()
    local integer Wd
    if(bd==0)then
        return 0
    endif
    set zc[bd] = 123
    set Wd = bd
    return bd
endfunction
function PF takes integer i, integer a1 returns integer
    set mC = a1
    call TriggerEvaluate(gC[i])
    return GC
endfunction
function qF takes integer i, integer a1 returns nothing
    set mC = a1
    call TriggerExecute(hC[i])
endfunction
function QF takes integer i, integer a1, integer a2, integer a3 returns nothing
    set mC = a1
    set MC = a2
    set pC = a3
    call TriggerExecute(HC[i])
endfunction
function sF takes string s returns nothing
endfunction
function SF takes boolean tF, string s returns nothing
endfunction
function TF takes integer z returns integer
    if z<0 then
        return-z
    endif
    return z
endfunction
function uF takes real z returns real
    if z<0 then
        return-z
    endif
    return z
endfunction
function UF takes integer z1, integer z2 returns integer
    if z1>z2 then
        return z1
    endif
    return z2
endfunction
function wF takes integer a returns boolean
    return a/ 2*2==a
endfunction
function WF takes integer a returns boolean
    return a/ 2*2!=a
endfunction
function yF takes integer a, integer n returns boolean
    return a/ n*n==a
endfunction
function YF takes integer a, integer n returns boolean
    return a/ n*n!=a
endfunction
function zF takes integer a, integer n returns integer
    return a-a/ n*n
endfunction
function ZF takes real r returns integer
    local integer i = R2I(r)
    if r>.0 or not(i!=r)then
        return i
    endif
    return i-1
endfunction
function vg takes real r returns integer
    local integer i = ZF(r)
    if r-i==1. then
        return i+1
    endif
    return i
endfunction
function eg takes real r returns integer
    local integer i = ZF(r)
    if r==i then
        return i
    endif
    return i+1
endfunction
function xg takes real r returns integer
    local integer i = ZF(r)
    local real og = i+.5
    if(r==og and wF(i))or r<og then
        return i
    endif
    return i+1
endfunction
function rg takes boolean b returns integer
    if b then
        return 1
    endif
    return 0
endfunction
function ig takes boolean b returns string
    if b then
        return"true"
    endif
    return"false"
endfunction
function ag takes integer i returns string
    if i>0 then
        return"+"+I2S(i)
    endif
    return I2S(i)
endfunction
function ng takes string s, unit u, player p, real Vg, real Eg, real Xg, real Og returns texttag
    set bj_lastCreatedTextTag = CreateTextTag()
    call SetTextTagText(bj_lastCreatedTextTag, s, Vg*R)
    call SetTextTagPosUnit(bj_lastCreatedTextTag, u, .0)
    call SetTextTagVelocity(bj_lastCreatedTextTag, .0, Eg*I)
    call SetTextTagVisibility(bj_lastCreatedTextTag, A==p)
    call SetTextTagPermanent(bj_lastCreatedTextTag, false)
    call SetTextTagLifespan(bj_lastCreatedTextTag, Xg)
    call SetTextTagFadepoint(bj_lastCreatedTextTag, Og)
    return bj_lastCreatedTextTag
endfunction
function Rg takes real x1, real y1, real x2, real y2 returns real
    return SquareRoot((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))
endfunction
function Ig takes unit u1, unit u2 returns real
    local real dx = GetUnitX(u1)-GetUnitX(u2)
    local real dy = GetUnitY(u1)-GetUnitY(u2)
    return SquareRoot(dx*dx+dy*dy)
endfunction
function Ag takes string Ng, real Vg, real x, real y, integer bg returns image
    set bj_lastCreatedImage = CreateImage(Ng, Vg, Vg, .0, x, y, .0, Vg/ 2., Vg/ 2., .0, bg)
    call SetImageRenderAlways(bj_lastCreatedImage, true)
    return bj_lastCreatedImage
endfunction
function Bg takes player p, string Ng, real Vg, real x, real y, integer bg returns image
    set bj_lastCreatedImage = CreateImage(Ng, Vg, Vg, .0, x, y, .0, Vg/ 2., Vg/ 2., .0, bg)
    call SetImageRenderAlways(bj_lastCreatedImage, A==p)
    return bj_lastCreatedImage
endfunction
function cg takes player p, string s, widget w, string Cg returns effect
    if A!=p then
        set s = ""
    endif
    return AddSpecialEffectTarget(s, w, Cg)
endfunction
function WidescreenSupported takes nothing returns boolean
    return JASS_MAX_ARRAY_SIZE>8192
endfunction
function EndThread takes nothing returns nothing
    call I2R(1/ 0)
endfunction
function dg takes nothing returns nothing
    set A = GetLocalPlayer()
endfunction
function GetRandomFactor takes nothing returns integer
    return W
endfunction
function ResetRandomFactor takes nothing returns nothing
    set W = U
endfunction
function Dg takes integer fg, integer Fg returns integer
    return fg+GetRandomInt(0, (TF(Fg-fg)+1)*W-1)/ W
endfunction
function GetRandomBoolean takes nothing returns boolean
    return GetRandomInt(1, W*2)<=W
endfunction
function GetCustomTimer takes nothing returns integer
    return LoadInteger(Y, 8, GetHandleId(GetExpiredTimer()))
endfunction
function gg takes timer t returns nothing
    call PauseTimer(t)
    call RemoveSavedInteger(Y, 8, GetHandleId(t))
    call DestroyTimer(t)
endfunction
function IsFilterUnitTower takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), iv))!=null
endfunction
function Gg takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(), nv))!=null
endfunction
function hg takes real Hg, real x, real y, integer bg, integer jg, integer Jg, integer kg, integer Kg returns image
    call Ag("Textures\\RangeIndicator.blp", Hg*2., x, y, bg)
    call SetImageColor(bj_lastCreatedImage, jg, Jg, kg, Kg)
    return bj_lastCreatedImage
endfunction
function lg takes player p, real Hg, real x, real y, integer bg, integer jg, integer Jg, integer kg, integer Kg returns image
    call Bg(p, "Textures\\RangeIndicator.blp", Hg*2., x, y, bg)
    call SetImageColor(bj_lastCreatedImage, jg, Jg, kg, Kg)
    return bj_lastCreatedImage
endfunction
function Lg takes image mg, boolean Mg, string pg returns nothing
    if mg==null then
        set Iv = Iv+1
        call PreloadGenClear()
        call Preload("\" )        "+("An attempt to show or hide null image. null image was passed from "+pg+" with argument "+ig(Mg))+".                                //")
        call PreloadGenEnd("WispTD\\Debug\\ShowNullImage"+I2S(Iv)+".txt")
    else
        call ShowImage(mg, Mg)
    endif
endfunction
function Pg takes image mg, string pg returns nothing
    if mg==null then
        set Av = Av+1
        call PreloadGenClear()
        call Preload("\" )        "+("An attempt to destroy null image. null image was passed from "+pg)+".                                //")
        call PreloadGenEnd("WispTD\\Debug\\DestroyNullImage"+I2S(Av)+".txt")
    else
        call DestroyImage(mg)
    endif
endfunction
function qg takes nothing returns nothing
    set Ov = CreateRegion()
    set Xv = CreateRegion()
    set Rv = Filter(function Gg)
    call CreateImage("Textures\\Pavement.blp", .0, .0, .0, .0, .0, .0, .0, .0, .0, 4)
endfunction
function Qg takes nothing returns integer
    set ro = ro+1
    return ro
endfunction
function sg takes nothing returns nothing
    local integer i = Qg()
    set co[i] = $FF
    set Co[i] = 3
    set do[i] = 3
    set Do[i] = "|cffff0303"
    set fo[i] = "Icons\\Player colors\\00. Red.blp"
    set i = Qg()
    set co[i] = 0
    set Co[i] = 66
    set do[i] = $FF
    set Do[i] = "|cff0042ff"
    set fo[i] = "Icons\\Player colors\\01. Blue.blp"
    set i = Qg()
    set co[i] = 28
    set Co[i] = $E6
    set do[i] = $B9
    set Do[i] = "|cff1ce6b9"
    set fo[i] = "Icons\\Player colors\\02. Teal.blp"
    set i = Qg()
    set co[i] = 84
    set Co[i] = 0
    set do[i] = $81
    set Do[i] = "|cff540081"
    set fo[i] = "Icons\\Player colors\\03. Purple.blp"
    set i = Qg()
    set co[i] = $FF
    set Co[i] = $FC
    set do[i] = 0
    set Do[i] = "|cfffffc00"
    set fo[i] = "Icons\\Player colors\\04. Yellow.blp"
    set i = Qg()
    set co[i] = $FE
    set Co[i] = $8A
    set do[i] = $E
    set Do[i] = "|cfffe8a0e"
    set fo[i] = "Icons\\Player colors\\05. Orange.blp"
    set i = Qg()
    set co[i] = 32
    set Co[i] = $C0
    set do[i] = 0
    set Do[i] = "|cff20c000"
    set fo[i] = "Icons\\Player colors\\06. Green.blp"
    set i = Qg()
    set co[i] = $E5
    set Co[i] = 91
    set do[i] = $B0
    set Do[i] = "|cffe55bb0"
    set fo[i] = "Icons\\Player colors\\07. Pink.blp"
    set i = Qg()
    set co[i] = $95
    set Co[i] = $96
    set do[i] = $97
    set Do[i] = "|cff959697"
    set fo[i] = "Icons\\Player colors\\08. Gray.blp"
    set i = Qg()
    set co[i] = $7E
    set Co[i] = $BF
    set do[i] = $F1
    set Do[i] = "|cff7ebff1"
    set fo[i] = "Icons\\Player colors\\09. Light Blue.blp"
    set i = Qg()
    set co[i] = 16
    set Co[i] = 98
    set do[i] = 70
    set Do[i] = "|cff106246"
    set fo[i] = "Icons\\Player colors\\10. Dark Green.blp"
    set i = Qg()
    set co[i] = 78
    set Co[i] = 42
    set do[i] = 4
    set Do[i] = "|cff4e2a04"
    set fo[i] = "Icons\\Player colors\\11. Brown.blp"
    set i = Qg()
    set co[i] = $9B
    set Co[i] = 0
    set do[i] = 0
    set Do[i] = "|cff9b0000"
    set fo[i] = "Icons\\Player colors\\12. Maroon.blp"
    set i = Qg()
    set co[i] = 0
    set Co[i] = 0
    set do[i] = $C3
    set Do[i] = "|cff0000c3"
    set fo[i] = "Icons\\Player colors\\13. Navy.blp"
    set i = Qg()
    set co[i] = 0
    set Co[i] = $EA
    set do[i] = $FF
    set Do[i] = "|cff00eaff"
    set fo[i] = "Icons\\Player colors\\14. Turquoise.blp"
    set i = Qg()
    set co[i] = $BE
    set Co[i] = 0
    set do[i] = $FE
    set Do[i] = "|cffbe00fe"
    set fo[i] = "Icons\\Player colors\\15. Violet.blp"
    set i = Qg()
    set co[i] = $EB
    set Co[i] = $CD
    set do[i] = $87
    set Do[i] = "|cffebcd87"
    set fo[i] = "Icons\\Player colors\\16. Wheat.blp"
    set i = Qg()
    set co[i] = $F8
    set Co[i] = $A4
    set do[i] = $8B
    set Do[i] = "|cfff8a48b"
    set fo[i] = "Icons\\Player colors\\17. Peach.blp"
    set i = Qg()
    set co[i] = $BF
    set Co[i] = $FF
    set do[i] = $80
    set Do[i] = "|cffbfff80"
    set fo[i] = "Icons\\Player colors\\18. Mint.blp"
    set i = Qg()
    set co[i] = $DC
    set Co[i] = $B9
    set do[i] = $EB
    set Do[i] = "|cffdcb9eb"
    set fo[i] = "Icons\\Player colors\\19. Lavender.blp"
    set i = Qg()
    set co[i] = 40
    set Co[i] = 40
    set do[i] = 40
    set Do[i] = "|cff282828"
    set fo[i] = "Icons\\Player colors\\20. Coal.blp"
    set i = Qg()
    set co[i] = $EB
    set Co[i] = $F0
    set do[i] = $FF
    set Do[i] = "|cffebf0ff"
    set fo[i] = "Icons\\Player colors\\21. Snow.blp"
    set i = Qg()
    set co[i] = 0
    set Co[i] = 120
    set do[i] = 30
    set Do[i] = "|cff00781e"
    set fo[i] = "Icons\\Player colors\\22. Emerald.blp"
    set i = Qg()
    set co[i] = $A4
    set Co[i] = 111
    set do[i] = 51
    set Do[i] = "|cffa46f33"
    set fo[i] = "Icons\\Player colors\\23. Peanut.blp"
endfunction
function Sg takes nothing returns nothing
    call sg()
    set io = Qg()
    set co[io] = $FF
    set Co[io] = $FF
    set do[io] = $FF
    set Do[io] = "|cffffff"
    set ao = Qg()
    set co[ao] = $E2
    set Co[ao] = $B0
    set do[ao] = 7
    set Do[ao] = "|cffe2b007"
    set no = Qg()
    set co[no] = $7F
    set Co[no] = $CC
    set do[no] = $FF
    set Do[no] = "|cff7fccff"
    set Vo = Qg()
    set co[Vo] = $D1
    set Co[Vo] = 91
    set do[Vo] = $8F
    set Do[Vo] = "|cffd15b8f"
    set Eo = Qg()
    set co[Eo] = 118
    set Co[Eo] = $A5
    set do[Eo] = $AF
    set Do[Eo] = "|cff76a5af"
    set Xo = Qg()
    set co[Xo] = 0
    set Co[Xo] = $BB
    set do[Xo] = 46
    set Do[Xo] = "|cff00bb2e"
    set Oo = Qg()
    set co[Oo] = $CC
    set Co[Oo] = 33
    set do[Oo] = 33
    set Do[Oo] = "|cffcc3333"
    set Ro = Qg()
    set co[Ro] = 0
    set Co[Ro] = $CC
    set do[Ro] = $FF
    set Do[Ro] = "|cff00ccff"
    set Io = Qg()
    set co[Io] = $FF
    set Co[Io] = $CC
    set do[Io] = $80
    set Do[Io] = "|cffffcc80"
    set Ao = Qg()
    set co[Ao] = 51
    set Co[Ao] = $CC
    set do[Ao] = 51
    set Do[Ao] = "|cff33cc33"
    set Bo = Qg()
    set co[Bo] = $F
    set Co[Bo] = $F
    set do[Bo] = $F
    set Do[Bo] = "|cff0f0f0f"
    set No = Oo
    set bo = Oo
endfunction
function tg takes nothing returns nothing
    set Nv = Bd()
    set ho[Ho[Nv]] = 1.
    set ho[Ho[Nv]+1] = 1.075
    set ho[Ho[Nv]+2] = 1.155625
    set ho[Ho[Nv]+3] = 1.242297
    set ho[Ho[Nv]+4] = 1.335469
    set ho[Ho[Nv]+5] = 1.435629
    set ho[Ho[Nv]+6] = 1.543302
    set ho[Ho[Nv]+7] = 1.659049
    set ho[Ho[Nv]+8] = 1.783478
    set ho[Ho[Nv]+9] = 1.917239
    set ho[Ho[Nv]+$A] = 2.061032
    set ho[Ho[Nv]+$B] = 2.215609
    set ho[Ho[Nv]+$C] = 2.38178
    set ho[Ho[Nv]+$D] = 2.560413
    set ho[Ho[Nv]+$E] = 2.752444
    set ho[Ho[Nv]+$F] = 2.958877
    set ho[Ho[Nv]+16] = 3.180793
    set ho[Ho[Nv]+17] = 3.419353
    set ho[Ho[Nv]+18] = 3.675804
    set ho[Ho[Nv]+19] = 3.951489
    set ho[Ho[Nv]+20] = 4.247851
    set ho[Ho[Nv]+21] = 4.56644
    set ho[Ho[Nv]+22] = 4.908923
    set ho[Ho[Nv]+23] = 5.277092
    set ho[Ho[Nv]+24] = 5.672874
    set ho[Ho[Nv]+25] = 6.09834
    set ho[Ho[Nv]+26] = 6.555715
    set ho[Ho[Nv]+27] = 7.047394
    set ho[Ho[Nv]+28] = 7.575948
    set ho[Ho[Nv]+29] = 8.144144
    set ho[Ho[Nv]+30] = 8.754955
    set ho[Ho[Nv]+31] = 9.411577
    set ho[Ho[Nv]+32] = 10.117445
    set ho[Ho[Nv]+33] = 10.876253
    set ho[Ho[Nv]+34] = 11.691972
    set ho[Ho[Nv]+35] = 12.56887
    set ho[Ho[Nv]+36] = 13.511536
    set ho[Ho[Nv]+37] = 14.524901
    set ho[Ho[Nv]+38] = 15.614268
    set ho[Ho[Nv]+39] = 16.785339
    set ho[Ho[Nv]+40] = 18.044239
    set ho[Ho[Nv]+41] = 19.397557
    set ho[Ho[Nv]+42] = 20.852374
    set ho[Ho[Nv]+43] = 22.416302
    set ho[Ho[Nv]+44] = 24.097524
    set ho[Ho[Nv]+45] = 25.904839
    set ho[Ho[Nv]+46] = 27.847702
    set ho[Ho[Nv]+47] = 29.936279
    set ho[Ho[Nv]+48] = 32.1815
    set ho[Ho[Nv]+49] = 34.595113
    set ho[Ho[Nv]+50] = 37.189746
endfunction
function Tg takes nothing returns nothing
    call tg()
endfunction
function ug takes unit u, integer id returns item
    call IncUnitAbilityLevel(u, 1093677104)
    set bj_lastCreatedItem = UnitAddItemById(u, id)
    call SetItemUserData(bj_lastCreatedItem, (GetUnitAbilityLevel((u), 1093677104)-2))
    return bj_lastCreatedItem
endfunction
function Ug takes unit u, item i returns nothing
    local integer wg = GetItemUserData(i)
    local integer Wg = (GetUnitAbilityLevel((u), 1093677104)-2)
    local integer yg
    call RemoveItem(i)
    loop
        exitwhen wg==Wg
        set yg = wg
        set wg = wg+1
        set i = UnitItemInSlot(u, wg)
        call SetItemDroppable(i, true)
        call UnitDropItemSlot(u, i, yg)
        call SetItemUserData(i, yg)
        call SetItemDroppable(i, false)
    endloop
    call DecUnitAbilityLevel(u, 1093677104)
endfunction
function GetToD takes nothing returns real
    return GetFloatGameState(GAME_STATE_TIME_OF_DAY)
endfunction
function Yg takes nothing returns nothing
    call StopSound(Cv, false, true)
    call StartSound(cv)
endfunction
function zg takes nothing returns nothing
    call StopSound(cv, false, true)
    call StartSound(Cv)
endfunction
function Zg takes string vG, string eG returns nothing
    set cv = CreateMIDISound(vG, 20, 20)
    set Cv = CreateMIDISound(eG, 20, 20)
    set bv = CreateSoundFromLabel("RoosterSound", false, false, false, $2710, $2710)
    set Bv = CreateSoundFromLabel("WolfSound", false, false, false, $2710, $2710)
endfunction
function xG takes nothing returns nothing
    if Dv then
        call StopSound(cv, false, true)
    else
        call StopSound(Cv, false, true)
    endif
endfunction
function oG takes nothing returns nothing
    call SetFloatGameState(GAME_STATE_TIME_OF_DAY, ((12.)*1.))
    call StartSound(cv)
endfunction
function IsDay takes nothing returns boolean
    return Dv
endfunction
function IsNight takes nothing returns boolean
    return not Dv
endfunction
function rG takes nothing returns string
    if dv then
        return "|cfff1f178Day|r"
    endif
    return "|cff674ea7Night|r"
endfunction
function CurrentWave takes nothing returns integer
    return hv-1
endfunction
function PauseWaving takes nothing returns nothing
    set jv = false
endfunction
function UnpauseWaving takes nothing returns nothing
    set jv = true
endfunction
function ToggleWaving takes nothing returns nothing
    set jv = not jv
endfunction
function iG takes nothing returns nothing
    local string s = rG()+" wave "+Do[Ro]+I2S(hv)+"|r in "
    if RX[xv]and Hv<4 then
        set s = s+Do[No]
        call StartSound(lx)
    else
        set s = s+Do[Ro]
    endif
    set s = s+I2S(Hv)+"|r second"
    if Hv!=1 then
        set s = s+"s"
    endif
    call MultiboardSetTitleText(tx, s)
endfunction
function aG takes nothing returns nothing
    set Hv = Hv-1
    if Hv==0 then
        set hv = hv+1
        set Hv = 45
        call TriggerExecute(ge)
    endif
    if Z then
        call iG()
    endif
endfunction
function nG takes nothing returns nothing
    local string s
    set gv = gv+1
    if gv==60 then
        set gv = 0
        set Gv = Gv+1
    endif
    if Gv<$A then
        set s = "0"
    else
        set s = ""
    endif
    set s = s+I2S(Gv)+":"
    if gv<$A then
        set s = s+"0"
    endif
    set s = s+I2S(gv)
    call MultiboardSetItemValue(Zx, s)
    if jv then
        call aG()
    endif
endfunction
function VG takes integer EG returns string
    if EG>1 then
        return mv+"Game will end in "+Do[Ro]+I2S(EG)+"|r seconds."
    elseif EG==1 then
        return mv+"Game will end in "+Do[Ro]+"1|r second."
    endif
    return mv+"Game is ending..."
endfunction
function XG takes nothing returns nothing
    set Hv = Hv-1
    call ClearTextMessages()
    call DisplayTimedTextToPlayer(A, .0, .0, ((3.)*1.), (VG(Hv)))
    if Hv==0 then
        call EndGame(true)
    endif
endfunction
function OG takes string RG, integer EG returns nothing
    set Hv = EG+1
    if RG!="" then
        set mv = RG+"

"
    else
        set mv = ""
    endif
    call XG()
    call TimerStart(CreateTimer(), 1., true, function XG)
endfunction
function IG takes string RG, integer EG returns nothing
    set Z = false
    set jv = false
    call OG(RG, EG)
endfunction
function AG takes nothing returns nothing
    local integer a = 1
    loop
        exitwhen a>HB
        call DisableTrigger(jB[(a)])
        set a = a+1
    endloop
endfunction
function NG takes nothing returns nothing
    call DisableTrigger(Ge)
    call DisableTrigger(he)
    call DisableTrigger(He)
    call DisableTrigger(je)
    call DisableTrigger(Je)
    call DisableTrigger(ke)
    call DisableTrigger(Ke)
    call DisableTrigger(le)
    call DisableTrigger(Le)
    call DisableTrigger(me)
    call DisableTrigger(Me)
    call DisableTrigger(pe)
    call DisableTrigger(Pe)
    call DisableTrigger(qe)
    call DisableTrigger(Qe)
    call DisableTrigger(se)
    call DisableTrigger(Se)
endfunction
function bG takes string BG, string cG returns nothing
    if Z then
        call PreloadGenClear()
        call Preload("\" )        "+("Error: "+BG)+".                                //")
        call PreloadGenEnd("WispTD\\Errors\\"+cG+".txt")
        call ClearSelection()
        call StopMusic(false)
        call ClearMapMusic()
        call xG()
        call MultiboardSetTitleText(tx, "An internal error occurred")
        call NG()
        call TriggerExecute(Ue)
        call IG("An internal error occurred. Error code: "+Do[bo]+cG+"|r.", qv)
    endif
    call I2R(1/ 0)
endfunction
function CG takes integer dG returns integer
    set Jo = Jo+1
    set jo[(Jo)] = dG
    return Jo
endfunction
function DG takes integer dG returns nothing
    set Ko = Ko+1
    set ko[(Ko)] = dG
    set BX[dG] = Ko
endfunction
function fG takes integer dG returns nothing
    local integer i = BX[dG]
    if i>-1 then
        if Ko>i then
            set ko[(i)] = ko[(Ko)]
            set BX[ko[(i)]] = i
        endif
        set Ko = Ko-1
        set BX[dG] = -1
    else
        call bG("an attempt of CustomPlayer "+I2S(dG)+" to be deleted from PlayingPlayers second time", "PlayingPlayersDelete")
    endif
endfunction
function s__PlayingPlayers_reset takes nothing returns nothing
    set Ko = -1
endfunction
function FG takes integer bd, integer dG returns nothing
    if RN[dG]==-1 then
        set Po[bd] = Po[bd]+1
        set Mo[po[bd]+Po[bd]] = dG
        set RN[dG] = Po[bd]
    else
        call bG("an attempt of Tower "+I2S(dG)+" to be added to TowerArray "+I2S(bd)+" second time", "TowerArrayAdd")
    endif
endfunction
function gG takes integer bd, integer dG returns nothing
    local integer i = RN[dG]
    if i>-1 then
        if Po[bd]>i then
            set Mo[po[bd]+i] = Mo[po[bd]+Po[bd]]
            set RN[Mo[po[bd]+i]] = i
        endif
        set Po[bd] = Po[bd]-1
        set RN[dG] = -1
    else
        call bG("an attempt of Tower "+I2S(dG)+" to be deleted from TowerArray "+I2S(bd)+" second time", "TowerArrayDelete")
    endif
endfunction
function GG takes integer bd, integer dG returns nothing
    if iR[dG]==-1 then
        set To[bd] = To[bd]+1
        if To[bd]==105 then
            call bG("not enough cells in ForceArray "+I2S(bd)+". Current amount of cells is "+I2S(105), "ForceArrayCells")
        endif
        set So[to[bd]+To[bd]] = dG
        set iR[dG] = To[bd]
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be added to ForceArray "+I2S(bd)+" second time", "ForceArrayAdd")
    endif
endfunction
function hG takes integer bd, integer dG returns nothing
    local integer i = iR[dG]
    if i>-1 then
        if To[bd]>i then
            set So[to[bd]+i] = So[to[bd]+To[bd]]
            set iR[So[to[bd]+i]] = i
        endif
        set To[bd] = To[bd]-1
        set iR[dG] = -1
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be deleted from ForceArray "+I2S(bd)+" second time", "ForceArrayDelete")
    endif
endfunction
function HG takes integer bd, integer dG returns nothing
    if aR[dG]==-1 then
        set Yo[bd] = Yo[bd]+1
        if Yo[bd]==105 then
            call bG("not enough cells in SpawnArray "+I2S(bd)+". Current amount of cells is "+I2S(105), "SpawnArrayCells")
        endif
        set Wo[yo[bd]+Yo[bd]] = dG
        set aR[dG] = Yo[bd]
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be added to SpawnArray "+I2S(bd)+" second time", "SpawnArrayAdd")
    endif
endfunction
function jG takes integer bd, integer dG returns nothing
    local integer i = aR[dG]
    if i>-1 then
        if Yo[bd]>i then
            set Wo[yo[bd]+i] = Wo[yo[bd]+Yo[bd]]
            set aR[Wo[yo[bd]+i]] = i
        endif
        set Yo[bd] = Yo[bd]-1
        set aR[dG] = -1
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be deleted from SpawnArray "+I2S(bd)+" second time", "SpawnArrayDelete")
    endif
endfunction
function JG takes integer bd, integer dG returns nothing
    if VR[dG]==-1 then
        set rr[bd] = rr[bd]+1
        if rr[bd]==105 then
            call bG("not enough cells in MinionArray "+I2S(bd)+". Current amount of cells is "+I2S(105), "MinionArrayCells")
        endif
        set er[xr[bd]+rr[bd]] = dG
        set VR[dG] = rr[bd]
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be added to MinionArray "+I2S(bd)+" second time", "MinionArrayAdd")
    endif
endfunction
function kG takes integer bd, integer dG returns nothing
    local integer i = VR[dG]
    if i>-1 then
        if rr[bd]>i then
            set er[xr[bd]+i] = er[xr[bd]+rr[bd]]
            set VR[er[xr[bd]+i]] = i
        endif
        set rr[bd] = rr[bd]-1
        set VR[dG] = -1
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be deleted from MinionArray "+I2S(bd)+" second time", "MinionArrayDelete")
    endif
endfunction
function KG takes integer bd, integer dG returns nothing
    if XR[dG]==-1 then
        set Xr[bd] = Xr[bd]+1
        if Xr[bd]==105 then
            call bG("not enough cells in DeadArray "+I2S(bd)+". Current amount of cells is "+I2S(105), "DeadArrayCells")
        endif
        set Vr[Er[bd]+Xr[bd]] = dG
        set XR[dG] = Xr[bd]
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be added to DeadArray "+I2S(bd)+" second time", "DeadArrayAdd")
    endif
endfunction
function lG takes integer bd, integer dG returns nothing
    local integer i = XR[dG]
    if i>-1 then
        if Xr[bd]>i then
            set Vr[Er[bd]+i] = Vr[Er[bd]+Xr[bd]]
            set XR[Vr[Er[bd]+i]] = i
        endif
        set Xr[bd] = Xr[bd]-1
        set XR[dG] = -1
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be deleted from DeadArray "+I2S(bd)+" second time", "DeadArrayDelete")
    endif
endfunction
function LG takes integer bd, integer dG returns nothing
    if ER[dG]==-1 then
        set Br[bd] = Br[bd]+1
        if Br[bd]==105 then
            call bG("not enough cells in SentMinionArray "+I2S(bd)+". Current amount of cells is "+I2S(105), "SentMinionArrayCells")
        endif
        set Nr[br[bd]+Br[bd]] = dG
        set ER[dG] = Br[bd]
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be added to SentMinionArray "+I2S(bd)+" second time", "SentMinionArrayAdd")
    endif
endfunction
function mG takes integer bd, integer dG returns nothing
    local integer i = ER[dG]
    if i>-1 then
        if Br[bd]>i then
            set Nr[br[bd]+i] = Nr[br[bd]+Br[bd]]
            set ER[Nr[br[bd]+i]] = i
        endif
        set Br[bd] = Br[bd]-1
        set ER[dG] = -1
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be deleted from SentMinionArray "+I2S(bd)+" second time", "SentMinionArrayDelete")
    endif
endfunction
function MG takes integer bd, integer dG returns nothing
    if nR[dG]==-1 then
        set Fr[bd] = Fr[bd]+1
        if Fr[bd]==105 then
            call bG("not enough cells in SentSpawnArray "+I2S(bd)+". Current amount of cells is "+I2S(105), "SentSpawnArrayCells")
        endif
        set Dr[fr[bd]+Fr[bd]] = dG
        set nR[dG] = Fr[bd]
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be added to SentSpawnArray "+I2S(bd)+" second time", "SentSpawnArrayAdd")
    endif
endfunction
function pG takes integer bd, integer dG returns nothing
    local integer i = nR[dG]
    if i>-1 then
        if Fr[bd]>i then
            set Dr[fr[bd]+i] = Dr[fr[bd]+Fr[bd]]
            set nR[Dr[fr[bd]+i]] = i
        endif
        set Fr[bd] = Fr[bd]-1
        set nR[dG] = -1
    else
        call bG("an attempt of Minion "+I2S(dG)+" to be deleted from SentSpawnArray "+I2S(bd)+" second time", "SentSpawnArrayDelete")
    endif
endfunction
function PG takes integer f, integer i returns integer
    local integer bd = ld()
    set Jr[bd] = f
    set kr[bd] = i
    set jr[bd] = 38-i/ 16
    set Hr[bd] = jr[bd]
    set lr[bd] = i<yv
    return bd
endfunction
function qG takes integer bd returns nothing
    if kr[bd]<16 then
        set Lr[bd] = 0
    else
        set Lr[bd] = yr[Yr[Jr[bd]]+kr[bd]-16]
    endif
    if kr[bd]+16>608 then
        set pr[bd] = 0
    else
        set pr[bd] = yr[Yr[Jr[bd]]+kr[bd]+16]
    endif
    if yF(kr[bd]+1, 16)then
        set Mr[bd] = 0
    else
        set Mr[bd] = yr[Yr[Jr[bd]]+kr[bd]+1]
    endif
    if yF(kr[bd], 16)then
        set mr[bd] = 0
    else
        set mr[bd] = yr[Yr[Jr[bd]]+kr[bd]-1]
    endif
endfunction
function QG takes integer bd returns boolean
    return bd!=0 and lr[bd]and Kr[bd]
endfunction
function sG takes integer bd returns integer
    local integer SG = tr[bd]
    set tr[bd] = Pr[SG]
    return SG
endfunction
function tG takes integer bd, integer c returns nothing
    if(tr[(bd)]==0)then
        set tr[bd] = c
        set Tr[bd] = c
        set Pr[c] = 0
    else
        set Pr[Tr[bd]] = c
        set qr[c] = Tr[bd]
        set Pr[c] = 0
        set Tr[bd] = c
    endif
endfunction
function TG takes integer bd, integer c, integer uG returns nothing
    if QG(c)then
        call tG(bd, c)
        set lr[(c)] = false
        set Hr[(c)] = (uG)
    endif
endfunction
function UG takes integer f returns integer
    local integer bd = md()
    local integer a = Yv
    loop
        set a = a-1
        call tG(bd, yr[Yr[f]+a])
        exitwhen a<yv
    endloop
    return bd
endfunction
function wG takes integer bd returns nothing
    set bi[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((bi[bd])), (bd))
endfunction
function WG takes integer bd returns nothing
    call gg(bi[bd])
    set bi[bd] = null
endfunction
function yG takes integer p returns integer
    local integer bd = Sd()
    local real YG = uv+aX[p]*(1024.+512.)
    local real zG = YG+1024.
    set Wr[bd] = p
    set zr[bd] = zG
    set Zr[bd] = YG
    set ei[bd] = zG-64.
    set xi[bd] = YG+64.
    set vi[bd] = (YG+zG)/ 2.
    set oi[bd] = Rect(YG, 1408., zG, 1920.)
    set ri[bd] = Rect(YG, 640., zG, 1152.)
    set ni[bd] = Rect(YG, tv, zG, Sv)
    set ii[bd] = Rect(xi[bd], sv, ei[bd], 320.)
    set Vi[bd] = Rect(YG, tv, zG, 1152.)
    set Ei[bd] = Rect(YG, tv, zG, 1920.)
    call RegionAddRect(Ov, ri[bd])
    call RegionAddRect(Xv, ni[bd])
    call Pd(bd)
    call wG(bd)
    return bd
endfunction
function ZG takes integer bd returns nothing
    local integer a = -1
    local integer p
    loop
        set a = a+1
        set p = (jo[(a)])
        if OX[p]then
            set Oi[Ri[bd]+a] = CreateFogModifierRect(iX[Wr[bd]], FOG_OF_WAR_VISIBLE, Vi[bX[p]], false, false)
            call FogModifierStart(Oi[Ri[bd]+a])
        endif
        exitwhen a==Jo
    endloop
    set Xi[bd] = CreateFogModifierRect(iX[Wr[bd]], FOG_OF_WAR_VISIBLE, oi[bd], false, false)
    call FogModifierStart(Xi[bd])
endfunction
function vh takes integer bd returns nothing
    local integer a = -1
    local integer Ad = aX[Wr[bd]]
    local integer f
    local integer p
    loop
        set a = a+1
        set p = (jo[(a)])
        if NX[p]then
            set f = bX[p]
            call DestroyFogModifier(Oi[Ri[f]+Ad])
            set Oi[Ri[f]+Ad] = null
            call SetFogStateRect(iX[p], FOG_OF_WAR_MASKED, Vi[bd], true)
        endif
        exitwhen a==Jo
    endloop
    call SetFogStateRect(iX[Wr[bd]], FOG_OF_WAR_MASKED, oi[bd], true)
    call DestroyFogModifier(Xi[bd])
    set Xi[bd] = null
endfunction
function eh takes integer bd returns nothing
    call vh(bd)
    call WG(bd)
endfunction
function xh takes integer bd returns nothing
    call eh(bd)
    call qd(bd)
    call RemoveRect(Ei[bd])
    set Ei[bd] = null
    call RemoveRect(Vi[bd])
    set Vi[bd] = null
    call RemoveRect(oi[bd])
    set oi[bd] = null
    call RemoveRect(ri[bd])
    set ri[bd] = null
    call RemoveRect(ni[bd])
    set ni[bd] = null
    call RemoveRect(ii[bd])
    set ii[bd] = null
endfunction
function oh takes integer bd returns nothing
    if bi[bd]!=null then
        call eh(bd)
    endif
endfunction
function rh takes nothing returns nothing
    call xh(((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))))
endfunction
function ih takes integer bd returns nothing
    call RegionClearRect(Xv, ni[bd])
    call RegionClearRect(Ov, ri[bd])
    call TimerStart(bi[bd], 5., false, Bi)
endfunction
function ah takes integer bd, real y returns integer
    local integer iy = R2I(640.-y)/ 64
    if iy==38 then
        set iy = 38-1
    endif
    return iy
endfunction
function nh takes integer bd, real x returns integer
    local integer ix = R2I(x-Zr[bd])/ 64
    if ix==16 then
        set ix = 16-1
    endif
    return ix
endfunction
function Vh takes integer bd, real x, real y returns integer
    return yr[Yr[bd]+nh(bd, x)+ah(bd, y)*16]
endfunction
function Eh takes integer bd, integer Xh returns nothing
    set Ii[Ai[bd]+Xh] = Ii[Ai[bd]+Xh]+1
    if Ni[bd]<=Xh then
        set Ni[bd] = Xh+1
    endif
endfunction
function Oh takes integer bd, integer Xh returns nothing
    set Ii[Ai[bd]+Xh] = Ii[Ai[bd]+Xh]-1
    if Ni[bd]==Xh+1 and Ii[Ai[bd]+Xh]==0 then
        set Xh = Ni[bd]
        loop
            exitwhen Xh==0 or Ii[Ai[bd]+Xh-1]>0
            set Xh = Xh-1
        endloop
        set Ni[bd] = Xh
    endif
endfunction
function Rh takes integer bd, real x, real y returns boolean
    return YF(R2I(x-xi[bd]), wv)or YF(R2I(y-sv), wv)
endfunction
function Ih takes integer bd, real x0, real y0, integer Ah returns boolean
    local real array Nh
    local real array bh
    local real array Bh
    local real array ch
    local integer n = -1
    local integer ns = 0
    local integer i = 0
    local integer a
    local boolean Ch = false
    local boolean dh = false
    local real Dh = ei[bd]
    local real fh = xi[bd]
    loop
        exitwhen n==Po[Ah]
        set n = n+1
        set Nh[n] = TA[(Mo[po[(Ah)]+(n)])]
        set bh[n] = uA[(Mo[po[(Ah)]+(n)])]
    endloop
    set Bh[0] = x0
    set ch[0] = y0
    loop
        exitwhen i>ns
        set x0 = Bh[i]
        set y0 = ch[i]
        if x0==Dh then
            set Ch = true
        elseif x0==fh then
            set dh = true
        endif
        exitwhen dh and Ch
        set a = 0
        loop
            exitwhen a>n
            if Rg(x0, y0, Nh[a], bh[a])<256. then
                set ns = ns+1
                set Bh[ns] = Nh[a]
                set ch[ns] = bh[a]
                set Nh[a] = Nh[n]
                set bh[a] = bh[n]
                set n = n-1
            else
                set a = a+1
            endif
        endloop
        set i = i+1
    endloop
    return dh and Ch
endfunction
function Fh takes integer bd returns nothing
    local integer q = UG(bd)
    call sd(bd, q)
    if ci[bd]then
        call bG("updating ground distaces in field "+I2S(bd)+" was not finished", "BFS")
    endif
    call Md(q)
    call Qd(bd)
endfunction
function gh takes nothing returns nothing
    set Bi = function rh
endfunction
function Gh takes integer bd returns nothing
    set Hi[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((Hi[bd])), (bd))
endfunction
function hh takes integer bd returns nothing
    call gg(Hi[bd])
    set Hi[bd] = null
endfunction
function Hh takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    set hi[bd] = hi[bd]-8
    if hi[bd]>0 then
        call SetUnitVertexColor(fi[bd], $FF, $FF, $FF, hi[bd])
    else
        call RemoveUnit(fi[bd])
        set fi[bd] = null
        call hh(bd)
        call Td(bd)
        call sF("MinionDeleter "+I2S(bd)+" is ended.")
    endif
endfunction
function jh takes unit m, integer r, integer g, integer b, integer a returns nothing
    local integer bd = td()
    set fi[bd] = m
    set Fi[bd] = r
    set Gi[bd] = g
    set gi[bd] = b
    set hi[bd] = a
    call Gh(bd)
    call SetUnitInvulnerable(m, true)
    call IssueImmediateOrderById(m, J)
    call TimerStart(Hi[bd], .05, true, function Hh)
    call sF("MinionDeleter "+I2S(bd)+" is started.")
endfunction
function Jh takes integer bd, integer kh, integer Kh returns nothing
    if bd==0 then
        call bG("MBSNode struct has run out of indexes. Current amount of indexes is 8190", "MBSNode")
    endif
    set Ki[bd] = kh
    set li[bd] = Kh
endfunction
function lh takes integer bd returns nothing
    if Li[bd]!=0 then
        set mi[Li[bd]] = mi[bd]
    endif
    if mi[bd]!=0 then
        set Li[mi[bd]] = Li[bd]
    endif
endfunction
function Lh takes integer bd, integer dG returns integer
    local integer mh = ud()
    if ui[bd]==0 then
        set Ti[bd] = mh
    else
        set mi[mh] = Ti[bd]
        set Li[Ti[bd]] = mh
        set Ti[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set ui[bd] = ui[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function Mh takes integer bd, integer mh returns nothing
    set ui[bd] = ui[bd]-1
    if Ti[bd]==mh then
        set Ti[bd] = mi[mh]
    endif
    call lh(mh)
    call Ud(mh)
endfunction
function ph takes integer bd, integer dG returns integer
    local integer mh = wd()
    if wi[bd]==0 then
        set Ui[bd] = mh
    else
        set mi[mh] = Ui[bd]
        set Li[Ui[bd]] = mh
        set Ui[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set wi[bd] = wi[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function Ph takes integer bd, integer mh returns nothing
    set wi[bd] = wi[bd]-1
    if Ui[bd]==mh then
        set Ui[bd] = mi[mh]
    endif
    set Wi[bd] = Wi[bd]-Mi[mh]
    call lh(mh)
    call Ud(mh)
endfunction
function qh takes integer bd, integer mh, real Qh returns nothing
    set Wi[bd] = Wi[bd]-Mi[mh]+Qh
    set Mi[mh] = Qh
endfunction
function sh takes integer bd, real Vf returns real
    local integer mh = Ui[bd]
    local integer Sh
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        set Vf = Vf-Mi[mh]
        if Vf>=.0 then
            call Ff(Ki[mh])
            exitwhen Vf<=.0
        else
            call qh(bd, mh, -Vf)
            return .0
        endif
        set mh = Sh
    endloop
    return Vf
endfunction
function th takes integer bd, integer dG returns integer
    local integer mh = wd()
    if zi[bd]==0 then
        set yi[bd] = mh
        set Yi[bd] = mh
    else
        set mi[mh] = yi[bd]
        set Li[yi[bd]] = mh
        set yi[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set zi[bd] = zi[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function Th takes integer bd returns nothing
    if zi[bd]==0 then
        set Zi[bd] = .0
    elseif Mi[Yi[bd]]<=.0 then
        set Zi[bd] = Mi[yi[bd]]
    elseif Mi[yi[bd]]>=.0 then
        set Zi[bd] = Mi[Yi[bd]]
    else
        set Zi[bd] = Mi[yi[bd]]+Mi[Yi[bd]]
    endif
endfunction
function uh takes integer bd, integer mh returns nothing
    set zi[bd] = zi[bd]-1
    if yi[bd]==mh then
        set yi[bd] = mi[mh]
    endif
    if Yi[bd]==mh then
        set Yi[bd] = Li[mh]
    endif
    call Th(bd)
    call lh(mh)
    call Ud(mh)
endfunction
function Uh takes integer bd, integer mh returns nothing
    local integer n = mi[mh]
    local integer p = Li[mh]
    if n!=0 and Mi[mh]>Mi[n]then
        if p!=0 then
            set mi[p] = n
        endif
        set Li[n] = p
        set p = n
        set n = mi[n]
        set mi[p] = mh
        set mi[mh] = n
        set Li[mh] = p
        if p==Yi[bd]then
            set Yi[bd] = mh
        endif
        if mh==yi[bd]then
            set yi[bd] = p
        endif
        loop
            exitwhen n==0
            set Li[n] = mh
            exitwhen Mi[mh]<=Mi[n]
            set mi[p] = n
            set Li[n] = p
            set p = n
            set n = mi[n]
            set mi[p] = mh
            set mi[mh] = n
            set Li[mh] = p
            if p==Yi[bd]then
                set Yi[bd] = mh
            endif
        endloop
    endif
    if p!=0 and Mi[mh]<Mi[p]then
        if n!=0 then
            set Li[n] = p
        endif
        set mi[p] = n
        set n = p
        set p = Li[p]
        set Li[n] = mh
        set Li[mh] = p
        set mi[mh] = n
        if n==yi[bd]then
            set yi[bd] = mh
        endif
        if mh==Yi[bd]then
            set Yi[bd] = n
        endif
        loop
            exitwhen p==0
            set mi[p] = mh
            exitwhen Mi[mh]>=Mi[p]
            set Li[n] = p
            set mi[p] = n
            set n = p
            set p = Li[p]
            set Li[n] = mh
            set Li[mh] = p
            set mi[mh] = n
            if n==yi[bd]then
                set yi[bd] = mh
            endif
        endloop
    endif
endfunction
function wh takes integer bd, integer mh, real Qh returns nothing
    set Mi[mh] = Qh
    call Uh(bd, mh)
    call Th(bd)
endfunction
function zh takes integer bd, integer dG returns integer
    local integer mh = yd()
    if ia[bd]==0 then
        set ra[bd] = mh
    else
        set mi[mh] = ra[bd]
        set Li[ra[bd]] = mh
        set ra[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set ia[bd] = ia[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function Zh takes integer bd, integer mh returns nothing
    set ia[bd] = ia[bd]-1
    if ra[bd]==mh then
        set ra[bd] = mi[mh]
    endif
    set aa[bd] = aa[bd]-pi[mh]
    set na[bd] = aa[bd]>0
    call lh(mh)
    call Ud(mh)
endfunction
function vH takes integer bd, integer mh, boolean Qh returns nothing
    local integer v = rg(Qh)
    set aa[bd] = aa[bd]-pi[mh]+v
    set na[bd] = aa[bd]>0
    set pi[mh] = v
endfunction
function eH takes integer bd, integer dG returns integer
    local integer mh = yd()
    if Ea[bd]==0 then
        set Va[bd] = mh
    else
        set mi[mh] = Va[bd]
        set Li[Va[bd]] = mh
        set Va[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set Ea[bd] = Ea[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function xH takes integer bd, integer mh returns nothing
    set Ea[bd] = Ea[bd]-1
    if Va[bd]==mh then
        set Va[bd] = mi[mh]
    endif
    set Xa[bd] = Xa[bd]-pi[mh]
    call lh(mh)
    call Ud(mh)
endfunction
function oH takes integer bd, integer mh, integer Qh returns nothing
    set Xa[bd] = Xa[bd]-pi[mh]+Qh
    set pi[mh] = Qh
endfunction
function rH takes integer bd, integer dG returns integer
    local integer mh = yd()
    if Ra[bd]==0 then
        set Oa[bd] = mh
    else
        set mi[mh] = Oa[bd]
        set Li[Oa[bd]] = mh
        set Oa[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set Ra[bd] = Ra[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function iH takes integer bd, integer mh returns nothing
    set Ra[bd] = Ra[bd]-1
    if Oa[bd]==mh then
        set Oa[bd] = mi[mh]
    endif
    set Ia[bd] = Ia[bd]-pi[mh]
    call lh(mh)
    call Ud(mh)
endfunction
function aH takes integer bd, integer mh, integer Qh returns nothing
    set Ia[bd] = Ia[bd]-pi[mh]+Qh
    set pi[mh] = Qh
endfunction
function nH takes integer bd, integer dG returns integer
    local integer mh = yd()
    if Na[bd]==0 then
        set Aa[bd] = mh
    else
        set mi[mh] = Aa[bd]
        set Li[Aa[bd]] = mh
        set Aa[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set Na[bd] = Na[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function VH takes integer bd, integer mh returns nothing
    set Na[bd] = Na[bd]-1
    if Aa[bd]==mh then
        set Aa[bd] = mi[mh]
    endif
    set ba[bd] = ba[bd]-pi[mh]
    call lh(mh)
    call Ud(mh)
endfunction
function EH takes integer bd, integer mh, integer Qh returns nothing
    set ba[bd] = ba[bd]-pi[mh]+Qh
    set pi[mh] = Qh
endfunction
function XH takes integer bd, integer dG returns integer
    local integer mh = Yd()
    if ca[bd]==0 then
        set Ba[bd] = mh
    else
        set mi[mh] = Ba[bd]
        set Li[Ba[bd]] = mh
        set Ba[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set ca[bd] = ca[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function OH takes integer bd, integer mh returns nothing
    set ca[bd] = ca[bd]-1
    if Ba[bd]==mh then
        set Ba[bd] = mi[mh]
    endif
    set Ca[bd] = Ca[bd]-Pi[mh]
    set da[bd] = Ca[bd]>0
    call lh(mh)
    call Ud(mh)
endfunction
function RH takes integer bd, integer mh, boolean Qh returns nothing
    local integer v = rg(Qh)
    set Ca[bd] = Ca[bd]-Pi[mh]+v
    set da[bd] = Ca[bd]>0
    set Pi[mh] = v
endfunction
function bH takes integer bd, integer dG returns integer
    local integer mh = Yd()
    if ha[bd]==0 then
        set Ga[bd] = mh
    else
        set mi[mh] = Ga[bd]
        set Li[Ga[bd]] = mh
        set Ga[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set ha[bd] = ha[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function BH takes integer bd, integer mh returns nothing
    set ha[bd] = ha[bd]-1
    if Ga[bd]==mh then
        set Ga[bd] = mi[mh]
    endif
    set Ha[bd] = Ha[bd]-Pi[mh]
    set ja[bd] = Ha[bd]>0
    call lh(mh)
    call Ud(mh)
endfunction
function cH takes integer bd, integer mh, boolean Qh returns nothing
    local integer v = rg(Qh)
    set Ha[bd] = Ha[bd]-Pi[mh]+v
    set ja[bd] = Ha[bd]>0
    set Pi[mh] = v
endfunction
function CH takes integer bd, integer dG returns integer
    local integer mh = yd()
    if ka[bd]==0 then
        set Ja[bd] = mh
    else
        set mi[mh] = Ja[bd]
        set Li[Ja[bd]] = mh
        set Ja[bd] = mh
    endif
    set ti[bd] = ti[bd]+1
    set ka[bd] = ka[bd]+1
    call Jh(mh, dG, ti[bd])
    return mh
endfunction
function dH takes integer bd, integer mh returns nothing
    set ka[bd] = ka[bd]-1
    if Ja[bd]==mh then
        set Ja[bd] = mi[mh]
    endif
    set Ka[bd] = Ka[bd]-pi[mh]
    set la[bd] = Ka[bd]>0
    call lh(mh)
    call Ud(mh)
endfunction
function DH takes integer bd, integer mh, boolean Qh returns nothing
    local integer v = rg(Qh)
    set Ka[bd] = Ka[bd]-pi[mh]+v
    set la[bd] = Ka[bd]>0
    set pi[mh] = v
endfunction
function fH takes integer bd, real Vf returns nothing
    if ca[bd]>0 and(ha[bd]==0 or li[Ba[bd]]>li[Ga[bd]])then
        set qi[Ba[bd]] = qi[Ba[bd]]+Vf
    else
        set qi[Ga[bd]] = qi[Ga[bd]]+Vf
    endif
endfunction
function FH takes integer bd, real Vf returns nothing
    if fa[bd]>0 and(ha[bd]==0 or li[Da[bd]]>li[Ga[bd]])then
        set qi[Da[bd]] = qi[Da[bd]]+Vf
    else
        set qi[Ga[bd]] = qi[Ga[bd]]+Vf
    endif
endfunction
function gH takes integer bd, real Vf returns nothing
    set qi[Ga[bd]] = qi[Ga[bd]]+Vf
endfunction
function GH takes integer bd returns nothing
    local integer mh = yi[bd]
    local integer Sh
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        if qa[fR[Ki[mh]]]then
            call Ff(Ki[mh])
        endif
        set mh = Sh
    endloop
    set mh = va[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
endfunction
function hH takes integer bd returns nothing
    local integer mh = Ti[bd]
    local integer Sh
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        if qa[fR[Ki[mh]]]then
            call Ff(Ki[mh])
        endif
        set mh = Sh
    endloop
    set mh = yi[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        if qa[fR[Ki[mh]]]then
            call Ff(Ki[mh])
        endif
        set mh = Sh
    endloop
    set mh = va[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Va[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        if qa[fR[Ki[mh]]]then
            call Ff(Ki[mh])
        endif
        set mh = Sh
    endloop
    set mh = Oa[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        if qa[fR[Ki[mh]]]then
            call Ff(Ki[mh])
        endif
        set mh = Sh
    endloop
    set mh = Aa[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        if qa[fR[Ki[mh]]]then
            call Ff(Ki[mh])
        endif
        set mh = Sh
    endloop
endfunction
function HH takes integer bd returns nothing
    local integer mh = Ti[bd]
    local integer Sh
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Ui[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = yi[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = va[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = ra[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Va[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Oa[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Aa[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Ba[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Da[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Ga[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Ja[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
endfunction
function jH takes integer bd returns nothing
    if bd==null then
        return
    elseif(Si[bd]!=-1)then
        return
    endif
    call HH(bd)
    set Si[bd] = Qi
    set Qi = bd
endfunction
function JH takes nothing returns integer
    local integer bd = Zd()
    set pa = pa+1
    set Pa[bd] = pa
    set zv[pa] = bd
    return bd
endfunction
function kH takes integer bd, boolean KH, boolean lH returns nothing
    set qa[bd] = KH
    set Qa[bd] = lH
endfunction
function LH takes integer bd, integer mH, integer MH, real pH returns nothing
    set sa[bd] = mH
    set Sa[bd] = MH
    set ta[bd] = pH
    set ua[bd] = pH/ mH
    set Ta[bd] = MH>1
endfunction
function PH takes integer bd returns integer
    local integer qH = Zd()
    set Pa[qH] = Pa[bd]
    set qa[qH] = qa[bd]
    set Qa[qH] = Qa[bd]
    set sa[qH] = sa[bd]
    set Sa[qH] = Sa[bd]
    set ta[qH] = ta[bd]
    set ua[qH] = ua[bd]
    set Ta[qH] = Ta[bd]
    set Ua[qH] = Ua[bd]
    return qH
endfunction
function QH takes nothing returns integer
    local integer bd = eD()
    set Ya = Ya+1
    set za[bd] = Ya
    set Zv[Ya] = bd
    return bd
endfunction
function sH takes integer bd, boolean SH, boolean tH, boolean TH, boolean uH returns nothing
    set vn[bd] = SH
    set en[bd] = tH
    set xn[bd] = TH
    set on[bd] = uH
endfunction
function UH takes integer bd, real wH, real cd returns nothing
    set an[bd] = wH
    if en[bd]then
        set nn[bd] = wH
    else
        set nn[bd] = cd
    endif
endfunction
function WH takes integer bd, integer yH, integer YH returns nothing
    set Za[bd] = yH
    set ve[za[bd]] = YH
endfunction
function zH takes integer bd returns integer
    local integer qH = eD()
    set za[qH] = za[bd]
    set Za[qH] = Za[bd]
    set vn[qH] = vn[bd]
    set en[qH] = en[bd]
    set xn[qH] = xn[bd]
    set on[qH] = on[bd]
    set rn[qH] = rn[bd]
    set an[qH] = an[bd]
    set nn[qH] = nn[bd]
    return qH
endfunction
function ZH takes integer vj, integer ej, integer xj, integer oj, integer rj, code up returns integer
    local integer bd = Vn+1
    set Vn = bd
    call SaveInteger(Y, Ne, vj, bd)
    set En[bd] = vj
    set Xn[bd] = ej
    set On[bd] = xj
    set Rn[bd] = oj
    set In[bd] = rj
    if up!=null then
        set An[bd] = CreateTrigger()
        call TriggerAddAction(An[bd], up)
    endif
    return Vn
endfunction
function ij takes nothing returns integer
    local integer bd = CD()
    set cn = cn+1
    set dn[bd] = cn
    set ee[cn] = bd
    return bd
endfunction
function aj takes integer bd, integer jg, integer Jg, integer kg, integer Kg returns nothing
    set Dn[bd] = jg
    set fn[bd] = Jg
    set Fn[bd] = kg
    set gn[bd] = Kg
endfunction
function nj takes integer bd, integer Vj, integer Ej, real Xj, integer Oj returns nothing
    set Gn[bd] = Vj
    set hn[bd] = Ej
    set Hn[bd] = Xj
    set jn[bd] = Oj
endfunction
function Rj takes integer bd, integer Ij, integer Aj returns nothing
    set Kn[bd] = Ij
    set ln[bd] = Aj
endfunction
function Nj takes integer bd, integer bj, boolean Bj, boolean cj returns nothing
    set Ln[bd] = bj
    set mn[bd] = not Bj
    set Mn[bd] = not cj
endfunction
function Cj takes integer bd, integer dj, integer Dj, integer fj, integer Fj returns nothing
    if Dj>0 then
        call SaveInteger(Y, Ae, Dj, dn[bd])
        set Pn[bd] = Dj
    endif
    set pn[bd] = dj
    set qn[bd] = fj
    set oe[dn[bd]] = Fj
endfunction
function gj takes integer bd, integer Gj, integer ID returns nothing
    set un[bd] = Gj
    set Un[bd] = ID
endfunction
function hj takes integer bd, integer Gj, integer ID, integer Hj, integer Oj, integer jj, boolean Jj returns nothing
    set Qn[bd] = Gj
    set sn[bd] = ID
    set Sn[bd] = Hj
    set Tn[bd] = Oj
    set tn[bd] = jj
    if Jj then
        call gj(bd, Gj, ID)
    endif
endfunction
function kj takes integer bd, real Kj, real lj, integer Lj returns nothing
    set wn[bd] = Kj
    set yn[bd] = Kj
    set lj = (lj/ 1.)*Kj/ 180.*.25
    set Wn[bd] = lj
    set Yn[bd] = lj
    set vV[bd] = Lj
endfunction
function mj takes integer bd, real Mj, integer pj, integer Pj returns nothing
    set eV[bd] = Mj
    set xV[bd] = pj
    set oV[bd] = Pj
endfunction
function qj takes integer bd, integer id returns nothing
    if aV[bd]<3 then
        set nV[VV[bd]+aV[bd]] = (id)
        set aV[bd] = aV[bd]+1
    endif
endfunction
function Qj takes integer dj, integer Fj returns integer
    local integer bd = ij()
    call Rj(bd, -5, 4)
    call Nj(bd, 4, true, false)
    call kj(bd, 1000., 1., Nv)
    call mj(bd, 1., 0, 0)
    call Cj(bd, dj, 0, 1093677139, Fj)
    call qj(bd, Ex)
    call qj(bd, Xx)
    call qj(bd, Ox)
    return bd
endfunction
function sj takes integer bd returns integer
    local integer qH = CD()
    local integer a = 0
    set dn[qH] = dn[bd]
    set Dn[qH] = Dn[bd]
    set fn[qH] = fn[bd]
    set Fn[qH] = Fn[bd]
    set gn[qH] = gn[bd]
    set Gn[qH] = Gn[bd]
    set hn[qH] = hn[bd]
    set Hn[qH] = Hn[bd]
    set jn[qH] = jn[bd]
    set Jn[qH] = Jn[bd]
    set kn[qH] = kn[bd]
    set Kn[qH] = Kn[bd]
    set ln[qH] = ln[bd]
    set Ln[qH] = Ln[bd]
    set mn[qH] = mn[bd]
    set Mn[qH] = Mn[bd]
    set pn[qH] = pn[bd]
    set Pn[qH] = Pn[bd]
    set qn[qH] = qn[bd]
    set Qn[qH] = Qn[bd]
    set sn[qH] = sn[bd]
    set Sn[qH] = Sn[bd]
    set Tn[qH] = Tn[bd]
    set tn[qH] = tn[bd]
    set un[qH] = un[bd]
    set Un[qH] = Un[bd]
    set wn[qH] = wn[bd]
    set Wn[qH] = Wn[bd]
    set yn[qH] = yn[bd]
    set Yn[qH] = Yn[bd]
    set zn[qH] = zn[bd]
    set Zn[qH] = Zn[bd]
    set vV[qH] = vV[bd]
    set eV[qH] = eV[bd]
    set xV[qH] = xV[bd]
    set oV[qH] = oV[bd]
    set rV[qH] = rV[bd]
    set iV[qH] = iV[bd]
    set aV[qH] = aV[bd]
    loop
        exitwhen a==aV[qH]
        set nV[VV[qH]+a] = nV[VV[bd]+a]
        set a = a+1
    endloop
    return qH
endfunction
function Sj takes integer bd returns nothing
    set rV[bd] = sj(bd)
    set rV[rV[bd]] = rV[bd]
    set Cn = Cn+1
    set xe[Cn] = rV[bd]
endfunction
function tj takes integer bd returns real
    return Hn[bd]*kn[bd]
endfunction
function Tj takes integer bd returns integer
    return Gn[bd]*kn[bd]
endfunction
function uj takes integer bd returns integer
    return hn[bd]*kn[bd]
endfunction
function Uj takes integer bd returns integer
    return jn[bd]*kn[bd]
endfunction
function wj takes integer bd returns integer
    if(rV[(bd)]!=0)then
        return rV[bd]
    endif
    return sj(bd)
endfunction
function Yj takes integer bd, integer zj returns nothing
    set xV[bd] = xV[bd]+zj
endfunction
function Zj takes integer bd, integer zj returns nothing
    set oV[bd] = oV[bd]+zj
endfunction
function vJ takes integer eJ returns integer
    if eJ>20 then
        return 20
    elseif eJ<0 then
        return 0
    else
        return eJ
    endif
endfunction
function xJ takes integer bd, integer eJ returns nothing
    set yn[bd] = (wn[bd]+zn[bd])*(ho[Ho[(vV[bd])]+(eJ)])
    set Yn[bd] = (Wn[bd]+Zn[bd])*(ho[Ho[(vV[bd])]+(eJ)])
endfunction
function oJ takes integer bd, real Vf, integer rJ returns real
    set zn[bd] = zn[bd]+Vf
    set Vf = (ho[Ho[(vV[bd])]+(rJ)])*Vf
    set yn[bd] = yn[bd]+Vf
    return Vf
endfunction
function iJ takes integer bd, real Vf, integer rJ returns real
    set Zn[bd] = Zn[bd]+Vf
    set Vf = (ho[Ho[(vV[bd])]+(rJ)])*Vf
    set Yn[bd] = Yn[bd]+Vf
    return Vf
endfunction
function aJ takes integer qH returns nothing
    if Ln[qH]==1 then
        set EV = EV+1
        set BV[(EV)] = qH
    elseif Ln[qH]==2 then
        set XV = XV+1
        set cV[(XV)] = qH
    elseif Ln[qH]==3 then
        set OV = OV+1
        set CV[(OV)] = qH
    elseif Ln[qH]==5 then
        set RV = RV+1
        set dV[(RV)] = qH
    endif
endfunction
function s__Mercs_GetRandomWarrior takes nothing returns integer
    return Pn[BV[(Dg(0, EV))]]
endfunction
function s__Mercs_GetRandomSupport takes nothing returns integer
    return Pn[cV[(Dg(0, XV))]]
endfunction
function s__Mercs_GetRandomHeavy takes nothing returns integer
    return Pn[CV[(Dg(0, OV))]]
endfunction
function s__Mercs_GetRandomBoss takes nothing returns integer
    return Pn[dV[(Dg(0, RV))]]
endfunction
function nJ takes nothing returns nothing
    local integer eJ = vJ(hv-Kv+1)
    local integer a = 0
    loop
        exitwhen a>Cn
        call xJ(xe[a], eJ)
        set a = a+1
    endloop
endfunction
function VJ takes nothing returns nothing
    local integer EJ = IV
    local integer XJ = AV
    local integer OJ = NV
    local integer RJ = bV
    local integer IJ
    local boolean AJ
    local integer i = 0
    local integer p
    if hv>=Kv then
        set IV = (Pn[BV[(Dg(0, EV))]])
        set AV = (Pn[cV[(Dg(0, XV))]])
        set NV = (Pn[CV[(Dg(0, OV))]])
        set IJ = zF(hv-Kv+1, 4)
        set AJ = hv>=lv and hv<=30
        if AJ and IJ==0 then
            set bV = (Pn[dV[(Dg(0, RV))]])
            call nJ()
        elseif hv>30 then
            set bV = 1093677180
        else
            set bV = 1093677120
        endif
        set AJ = AJ and IJ!=0
        set IJ = IJ+1
    else
        set IV = 1093677093
        set AV = 1093677102
        set NV = 1093677103
        set bV = 1093677120
        set AJ = false
    endif
    loop
        exitwhen i>Ko
        set p = (ko[(i)])
        call UnitRemoveAbility(uX[p], EJ)
        call UnitAddAbility(uX[p], IV)
        call UnitRemoveAbility(uX[p], XJ)
        call UnitAddAbility(uX[p], AV)
        call UnitRemoveAbility(uX[p], OJ)
        call UnitAddAbility(uX[p], NV)
        call UnitRemoveAbility(uX[p], RJ)
        call UnitAddAbility(uX[p], bV)
        if AJ then
            call SetUnitAbilityLevel(uX[p], bV, IJ)
        endif
        set i = i+1
    endloop
endfunction
function NJ takes nothing returns nothing
    if Z then
        call VJ()
    endif
endfunction
function bJ takes integer BJ, integer b1, integer b2, integer b3, code YH returns integer
    local integer bd = DV+1
    set DV = bd
    set fV[bd] = BJ
    set FV[bd] = b1
    set gV[bd] = b2
    set GV[bd] = b3
    set hV[bd] = CreateTrigger()
    call TriggerAddCondition(hV[bd], Filter(YH))
    return bd
endfunction
function cJ takes nothing returns integer
    set HV = HV+1
    return HV
endfunction
function CJ takes integer bd, real dJ, real DJ returns nothing
    set jV[bd] = dJ
    set JV[bd] = DJ
endfunction
function fJ takes integer bd, boolean FJ, boolean gJ, boolean GJ returns nothing
    set kV[bd] = FJ
    set KV[bd] = gJ
    set lV[bd] = GJ
endfunction
function hJ takes integer bd, integer HJ, integer jJ, integer BJ, code JJ returns nothing
    set mV[bd] = HJ
    set LV[bd] = jJ
    call SaveInteger(Y, fe, jJ, bd)
    set MV[bd] = BJ
    set pV[bd] = CreateTrigger()
    call TriggerAddCondition(pV[bd], Filter(JJ))
endfunction
function kJ takes integer bd, integer Vj, boolean KJ, integer Oj returns nothing
    set PV[bd] = Vj
    set qV[bd] = KJ
    set QV[bd] = Oj
endfunction
function lJ takes integer bd, integer LJ, integer mJ, integer MJ, integer pJ, integer PJ, integer qJ, integer QJ returns nothing
    set sV[bd] = LJ
    set SV[bd] = mJ
    set tV[bd] = MJ
    set TV[bd] = pJ
    set uV[bd] = PJ
    set UV[bd] = qJ
    set wV[bd] = QJ
endfunction
function sJ takes integer bd, real SJ, integer yj, real cd, integer tJ, integer TJ, real Hg, integer n, boolean uJ, integer UJ, integer wJ returns nothing
    set yV[bd] = SJ
    set YV[bd] = yj
    set zV[bd] = cd
    set ZV[bd] = tJ
    set vE[bd] = De[TJ]
    set eE[bd] = Hg
    set xE[bd] = n
    set oE[bd] = uJ
    set rE[bd] = UJ
    set iE[bd] = wJ
endfunction
function WJ takes integer yJ, integer YJ, integer zJ, integer ZJ, string yH returns integer
    local integer bd = aE+1
    set aE = bd
    call SaveInteger(Y, 16, YJ, bd)
    set nE[bd] = yJ
    set VE[bd] = YJ
    set EE[bd] = zJ
    set XE[bd] = ZJ
    set OE[bd] = yH
    return bd
endfunction
function vk takes integer bd, integer p returns nothing
    call UnitAddAbility(TX[p], VE[bd])
    call UnitAddAbility(TX[p], EE[bd])
    call UnitAddAbility(sX[p], XE[bd])
endfunction
function ek takes integer bd, player p, boolean xk returns nothing
    call SetPlayerAbilityAvailable(p, XE[bd], xk)
    call SetPlayerAbilityAvailable(p, EE[bd], xk)
    call SetPlayerAbilityAvailable(p, VE[bd], not xk)
endfunction
function ok takes integer rk returns integer
    local integer bd = fD()
    set NE = NE+1
    set bE[bd] = NE
    set BE[bd] = rk
    set re[NE] = bd
    return bd
endfunction
function ik takes integer bd, integer ak, integer nk, integer Vk returns nothing
    set DE[fE[bd]] = ak
    set DE[fE[bd]+1] = nk
    set DE[fE[bd]+2] = Vk
endfunction
function Ek takes integer bd, integer ZJ, integer Xk, integer Ok, string yH returns nothing
    set FE[bd] = ZJ
    set gE[bd] = Xk
    set GE[bd] = Ok
    set hE[bd] = yH
endfunction
function Rk takes integer bd, integer id returns nothing
    if cE[bd]<3 then
        set CE[dE[bd]+cE[bd]] = (id)
        set cE[bd] = cE[bd]+1
    endif
endfunction
function Ik takes integer Ak, integer Nk, integer bk, integer Bk, integer ck, integer Ck, integer dk, string yH returns integer
    local integer bd = FD()
    set kE = kE+1
    set KE[bd] = kE
    set lE[LE[bd]] = Ak
    set lE[LE[bd]+1] = Nk
    set lE[LE[bd]+2] = bk
    set lE[LE[bd]+3] = Bk
    set PE[bd] = ck
    set qE[bd] = Ck
    set QE[bd] = dk
    set sE[bd] = yH
    set ie[kE] = bd
    return bd
endfunction
function Dk takes integer bd, integer id returns nothing
    if mE[bd]<ae then
        set ME[pE[bd]+mE[bd]] = (id)
        set mE[bd] = mE[bd]+1
    endif
endfunction
function fk takes integer p returns nothing
    local integer a
    local integer f1 = EO[p]
    local integer f2 = XO[p]
    call UnitAddAbility(sX[p], qE[f1])
    call UnitAddAbility(sX[p], QE[f2])
    call UnitAddAbility(TX[p], gE[PE[f1]])
    call UnitAddAbility(TX[p], GE[PE[f2]])
    set a = 0
    loop
        call UnitAddAbility(SX[p], Pn[ee[lE[LE[f1]+a]]])
        set a = a+1
        exitwhen a==4
    endloop
    set a = 0
    loop
        exitwhen a==mE[f1]
        call UnitAddAbility(tX[p], En[ME[pE[f1]+a]])
        set a = a+1
    endloop
endfunction
function Fk takes nothing returns integer
    local integer bd = sD()
    local integer a = 1
    set vX[bd] = false
    loop
        set uE[UE[bd]+a] = PH(zv[a])
        set a = a+1
        exitwhen a>pa
    endloop
    set a = 1
    loop
        set wE[WE[bd]+a] = zH(Zv[a])
        set a = a+1
        exitwhen a>Ya
    endloop
    set a = 1
    loop
        set yE[YE[bd]+a] = wj(ee[a])
        set a = a+1
        exitwhen a>cn
    endloop
    return bd
endfunction
function gk takes integer bd returns integer
    local integer Gk = sD()
    local integer a = 1
    if bd==0 then
        call bG("PlayerMinionData struct has run out of indexes. Current amount of indexes is 8190", "PlayerMinionData")
    endif
    set vX[Gk] = true
    loop
        set uE[UE[Gk]+a] = PH(uE[UE[bd]+a])
        set a = a+1
        exitwhen a>pa
    endloop
    set a = 1
    loop
        set wE[WE[Gk]+a] = zH(wE[WE[bd]+a])
        set a = a+1
        exitwhen a>Ya
    endloop
    set a = 1
    loop
        set yE[YE[Gk]+a] = sj(yE[YE[bd]+a])
        set a = a+1
        exitwhen a>cn
    endloop
    set a = 1
    loop
        set zE[ZE[Gk]+a] = zE[ZE[bd]+a]
        set a = a+1
        exitwhen a>Vn
    endloop
    call sF("PlayerMinionData "+I2S(Gk)+" is copied.")
    return Gk
endfunction
function hk takes integer bd returns nothing
    set eX[bd] = eX[bd]+1
endfunction
function Hk takes integer bd returns nothing
    if vX[bd]then
        set eX[bd] = eX[bd]-1
        if eX[bd]==0 then
            call QD(bd)
        endif
    endif
endfunction
function jk takes integer bd returns nothing
    set DO[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((DO[bd])), (bd))
endfunction
function Jk takes integer bd returns nothing
    set fO[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((fO[bd])), (bd))
endfunction
function kk takes integer bd returns nothing
    call gg(fO[bd])
    set fO[bd] = null
endfunction
function Kk takes integer bd, integer c returns nothing
    set EX[bd] = c
    set Re[c] = true
    set VX[bd] = Do[c]+nX[bd]+"|r"
endfunction
function lk takes integer bd, integer Lk returns nothing
    set XX[bd] = Lk
    call MultiboardSetItemIcon(kX[bd], fo[EX[Lk]])
    if IX[bd]then
        call MultiboardSetItemIcon(Wx, fo[EX[Lk]])
    endif
    if IX[Lk]then
        call MultiboardSetItemIcon(Ux, fo[EX[bd]])
    endif
endfunction
function mk takes integer bd, integer id returns nothing
    set rO[iO[bd]+id] = rO[iO[bd]+id]+1
    if rO[iO[bd]+id]==Jn[yE[YE[xO[bd]]+id]]then
        call SetPlayerAbilityAvailable(iX[bd], Pn[yE[YE[xO[bd]]+id]], false)
    endif
endfunction
function Mk takes integer bd, integer id returns nothing
    set rO[iO[bd]+id] = rO[iO[bd]+id]-1
    call SetPlayerAbilityAvailable(iX[bd], Pn[yE[YE[xO[bd]]+id]], true)
endfunction
function pk takes integer bd returns nothing
    local integer a = 0
    loop
        set rO[iO[bd]+a] = 0
        call SetPlayerAbilityAvailable(iX[bd], Pn[yE[YE[xO[bd]]+a]], true)
        set a = a+1
        exitwhen a>cn
    endloop
endfunction
function Pk takes integer bd returns nothing
    set oO[bd] = gk(xO[bd])
endfunction
function qk takes integer bd returns nothing
    local integer Qk = OO[bd]
    local integer Gk = RO[bd]
    local integer a = 0
    loop
        call UnitRemoveAbility(SX[bd], Pn[ee[lE[LE[Qk]+a]]])
        call UnitAddAbility(SX[bd], Pn[ee[lE[LE[Gk]+a]]])
        set a = a+1
        exitwhen a==4
    endloop
    set OO[bd] = Gk
    set RO[bd] = Qk
endfunction
function sk takes integer bd returns nothing
    local integer Qk = IO[bd]
    local integer Gk = AO[bd]
    local integer a = 0
    loop
        exitwhen a==mE[Qk]
        call UnitRemoveAbility(tX[bd], En[ME[pE[Qk]+a]])
        set a = a+1
    endloop
    set a = 0
    loop
        exitwhen a==mE[Gk]
        call UnitAddAbility(tX[bd], En[ME[pE[Gk]+a]])
        set a = a+1
    endloop
    set IO[bd] = Gk
    set AO[bd] = Qk
endfunction
function Sk takes integer bd, integer UJ returns nothing
    set iV[(yE[YE[xO[bd]]+BE[aO[bd]]])] = (nE[UJ])
    if VO[bd]!=0 then
        if PO[VO[bd]]!=0 then
            call pD(PO[VO[bd]])
        endif
        call wD(VO[bd])
    endif
    call ek(nO[bd], iX[bd], false)
    call ek(UJ, iX[bd], true)
    call MultiboardSetItemIcon(lX[bd], OE[UJ])
    set nO[bd] = UJ
endfunction
function tk takes integer bd, integer Tk returns boolean
    local integer UJ = (LoadInteger(Y, 16, (Tk)))
    if UJ>0 then
        call Sk(bd, UJ)
        return true
    endif
    return false
endfunction
function uk takes integer bd, integer hd returns nothing
    local integer a
    set aO[bd] = hd
    call UnitRemoveAbility(TX[bd], gE[hd])
    call UnitRemoveAbility(TX[bd], GE[hd])
    call UnitRemoveAbility(sX[bd], 1093677364)
    call UnitAddAbility(sX[bd], FE[hd])
    call MultiboardSetItemIcon(KX[bd], hE[hd])
    set a = 0
    loop
        call vk(DE[fE[hd]+a], bd)
        set a = a+1
        exitwhen a==3
    endloop
    set a = 0
    loop
        exitwhen a==cE[hd]
        call UnitAddAbility(TX[bd], En[CE[dE[hd]+a]])
        set a = a+1
    endloop
    call Sk(bd, DE[fE[hd]])
endfunction
function Uk takes integer bd returns nothing
    set dO[bd] = 0
    if IX[bd]then
        call ClearTextMessages()
    endif
endfunction
function wk takes nothing returns nothing
    set dO[((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer()))))] = 0
endfunction
function Wk takes integer bd, string s returns nothing
    if dO[bd]==5 then
        call Uk(bd)
    endif
    call DisplayTimedTextToPlayer(iX[bd], .0, .0, 5., s)
    set dO[bd] = dO[bd]+1
    call TimerStart(DO[bd], 5., false, FO)
endfunction
function yk takes integer bd, sound Yk, string s returns nothing
    call Wk(bd, s)
    if IX[bd]then
        call StartSound(Yk)
    endif
endfunction
function zk takes integer bd, string Zk returns nothing
    call yk(bd, CO[bd], Do[Ao]+"Research complete|r: "+Zk+".")
endfunction
function vK takes integer bd, boolean eK returns nothing
    local integer a
    if QX[bd]!=eK then
        set QX[bd] = eK
        set a = 0
        loop
            call Lg(PX[qX[bd]+a], eK, "CustomPlayer.showGrid")
            set a = a+1
            exitwhen a==120
        endloop
    endif
endfunction
function xK takes integer bd, integer oK returns nothing
    if RX[bd]and NX[bd]then
        if oK==Ee then
            call vK(bd, false)
        elseif oK==Xe then
            call vK(bd, true)
        endif
    endif
endfunction
function rK takes nothing returns nothing
    call AddUnitAnimationProperties(sX[((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer()))))], "work", false)
endfunction
function iK takes integer bd returns nothing
    set vO[bd] = vJ(vO[bd]+1)
    set eO[bd] = (xg(((800*(ho[Ho[(Nv)]+(vO[bd])]))*1.)/ 10.)*$A)
    call MultiboardSetItemValue(LX[bd], I2S(vO[bd]))
endfunction
function aK takes integer bd returns nothing
    set GX[bd] = GX[bd]+1
    if IX[bd]then
        call MultiboardSetItemValue(zx, I2S(GX[bd]))
    endif
    call MultiboardSetItemValue(pX[bd], I2S(GX[bd]))
endfunction
function nK takes integer bd, integer VK returns nothing
    if VK!=0 then
        set FX[bd] = FX[bd]+VK
        if IX[bd]then
            call MultiboardSetItemValue(yx, I2S(FX[bd]))
        endif
        call MultiboardSetItemValue(mX[bd], I2S(FX[bd]))
    endif
endfunction
function EK takes integer bd, integer Qh returns nothing
    if Qh!=CX[bd]then
        if Qh>=99999 then
            set CX[bd] = 99999
        elseif Qh<=0 then
            set CX[bd] = 0
        else
            set CX[bd] = Qh
        endif
        call SetPlayerState(iX[bd], PLAYER_STATE_RESOURCE_GOLD, CX[bd])
    endif
endfunction
function XK takes integer bd returns nothing
    call yk(bd, cO[bd], Do[bo]+"Error|r: not enough Gold.")
endfunction
function OK takes integer bd, integer Vf returns boolean
    if(CX[(bd)]-(Vf)>=0)then
        return true
    endif
    call XK(bd)
    return false
endfunction
function RK takes integer bd, integer Qh returns nothing
    if Qh>0 then
        call EK(bd, CX[bd]+Qh)
    endif
endfunction
function IK takes integer bd, integer Vf returns nothing
    if Vf>0 then
        call EK(bd, CX[bd]-Vf)
    endif
endfunction
function AK takes integer bd, integer Vf returns boolean
    if(CX[(bd)]-(Vf)>=0)then
        call IK(bd, Vf)
        return true
    endif
    return false
endfunction
function NK takes integer bd, integer Vf returns boolean
    if OK(bd, Vf)then
        call IK(bd, Vf)
        return true
    endif
    return false
endfunction
function bK takes integer bd, integer Qh returns nothing
    local integer yg = CX[bd]
    call RK(bd, Qh)
    set Qh = CX[bd]-yg
    if Qh>0 then
        set hX[bd] = hX[bd]+Qh
        call SetPlayerState(iX[bd], PLAYER_STATE_GOLD_GATHERED, hX[bd])
    endif
endfunction
function BK takes integer bd, unit u, integer Qh returns nothing
    if Qh!=0 then
        call ng((ag(Qh)), (u), (iX[bd]), 9., 48., 4., 3.)
        call SetTextTagColor(bj_lastCreatedTextTag, co[ao], Co[ao], do[ao], $FF)
    endif
endfunction
function cK takes integer bd, integer Qh returns nothing
    if Qh!=dX[bd]then
        if Qh>=99999 then
            set dX[bd] = 99999
        elseif Qh<=0 then
            set dX[bd] = 0
        else
            set dX[bd] = Qh
        endif
        call SetPlayerState(iX[bd], PLAYER_STATE_RESOURCE_LUMBER, dX[bd])
    endif
endfunction
function CK takes integer bd, integer Vf returns boolean
    if(dX[(bd)]-(Vf)>=0)then
        return true
    endif
    call yk((bd), kx, Do[bo]+"Error|r: not enough Experience.")
    return false
endfunction
function dK takes integer bd, integer Qh returns nothing
    if Qh>0 then
        call cK(bd, dX[bd]+Qh)
    endif
endfunction
function DK takes integer bd, integer Vf returns nothing
    if Vf>0 then
        call cK(bd, dX[bd]-Vf)
    endif
endfunction
function fK takes integer bd, integer Vf returns boolean
    if(dX[(bd)]-(Vf)>=0)then
        call DK(bd, Vf)
        return true
    endif
    return false
endfunction
function FK takes integer bd, integer Vf returns boolean
    if CK(bd, Vf)then
        call DK(bd, Vf)
        return true
    endif
    return false
endfunction
function gK takes integer bd, integer Qh returns nothing
    local integer yg = dX[bd]
    call dK(bd, Qh)
    set Qh = dX[bd]-yg
    if Qh>0 then
        set HX[bd] = HX[bd]+Qh
        call SetPlayerState(iX[bd], PLAYER_STATE_LUMBER_GATHERED, HX[bd])
    endif
endfunction
function GK takes integer bd, unit u, integer Qh returns nothing
    if Qh!=0 then
        call ng((ag(Qh)), (u), (iX[bd]), 9., 48., 4., 3.)
        call SetTextTagColor(bj_lastCreatedTextTag, co[no], Co[no], do[no], $FF)
    endif
endfunction
function hK takes integer bd, unit u, integer Gj, integer ID returns nothing
    local string HK = ""
    if Gj!=0 then
        set HK = HK+Do[ao]+ag(Gj)+"|r
"
    endif
    if ID!=0 then
        set HK = HK+Do[no]+ag(ID)+"|r
"
    endif
    if HK!="" then
        call ng((HK), (u), (iX[bd]), 9., 48., 4., 3.)
    endif
endfunction
function jK takes integer bd, real Qh returns nothing
    local integer f
    if Qh!=fX[bd]then
        set fX[bd] = Qh
        set f = eg(fX[bd])
        call SetPlayerState(iX[bd], PLAYER_STATE_RESOURCE_FOOD_USED, f)
        if f<0 then
            call bG("Supply usage of player "+I2S(bd)+" is negative", "NegativeSupply")
        elseif f>DX[bd]then
            call bG("Supply usage of player "+I2S(bd)+" is bigger than maximum", "BiggerSupply")
        endif
    endif
endfunction
function JK takes integer bd, real Qh returns boolean
    return fX[bd]+Qh<=DX[bd]
endfunction
function kK takes integer bd, real Qh returns boolean
    if JK(bd, Qh)then
        return true
    endif
    call yk(((bd)), kx, Do[bo]+"Error|r: "+("unable to create a minion due to the maximum supply limit."))
    return false
endfunction
function KK takes integer bd, real Qh returns nothing
    if Qh>0 then
        call jK(bd, fX[bd]-Qh)
    endif
endfunction
function lK takes integer bd, real Qh returns nothing
    if Qh>0 then
        call jK(bd, fX[bd]+Qh)
    endif
endfunction
function LK takes integer bd, integer l returns nothing
    if l!=gX[bd]then
        if l>=999 then
            set gX[bd] = 999
        elseif l<=0 then
            set gX[bd] = 0
        else
            set gX[bd] = l
        endif
        if IX[bd]then
            call MultiboardSetItemValue(Yx, I2S(gX[bd]))
        endif
        call MultiboardSetItemValue(MX[bd], I2S(gX[bd]))
    endif
endfunction
function mK takes integer bd, integer l returns nothing
    call LK(bd, gX[bd]+l)
endfunction
function MK takes integer bd, integer l returns nothing
    if l==0 then
        return
    elseif l<-1 then
        call yk(bd, Lx, Do[No]+"Warning|r: you lost "+Do[Ro]+I2S(-l)+"|r lives.")
    elseif l==-1 then
        call yk(bd, Lx, Do[No]+"Warning|r: you lost "+Do[Ro]+"1|r life.")
    elseif l==1 then
        call yk(bd, mx, Do[Ao]+"Note|r: you received "+Do[Ro]+"1|r life.")
    elseif l>1 then
        call yk(bd, mx, Do[Ao]+"Note|r: you received "+Do[Ro]+I2S(l)+"|r lives.")
    endif
    call mK(bd, l)
endfunction
function pK takes integer bd returns nothing
    local integer PK
    if gX[bd]>1 then
        set PK = eg(gX[bd]*Lv)
        if gX[bd]-PK<1 then
            set PK = gX[bd]-1
        endif
        if PK==1 then
            call yk(bd, Mx, Do[No]+"Attention|r: the game lasts too long! You lost "+Do[Ro]+"1|r life.")
        else
            call yk(bd, Mx, Do[No]+"Attention|r: the game lasts too long! You lost "+Do[Ro]+I2S(PK)+"|r lives.")
        endif
        call mK(bd, -PK)
    endif
endfunction
function qK takes integer bd returns nothing
    if IX[bd]then
        call MultiboardSetItemStyle((Ux), false, false)
        call MultiboardSetItemStyle((wx), false, false)
        call MultiboardSetItemStyle((Wx), false, false)
    endif
    call MultiboardSetItemValueColor((jX[bd]), co[Bo], Co[Bo], do[Bo], eo)
    call MultiboardSetItemStyle((JX[bd]), false, false)
    call MultiboardSetItemStyle((kX[bd]), false, false)
    call MultiboardSetItemStyle((KX[bd]), false, false)
    call MultiboardSetItemStyle((lX[bd]), false, false)
    call MultiboardSetItemValueColor((LX[bd]), co[Bo], Co[Bo], do[Bo], eo)
    call MultiboardSetItemValueColor((mX[bd]), co[Bo], Co[Bo], do[Bo], eo)
    call MultiboardSetItemValueColor((MX[bd]), co[Bo], Co[Bo], do[Bo], eo)
    call MultiboardSetItemValueColor((pX[bd]), co[Bo], Co[Bo], do[Bo], eo)
endfunction
function QK takes integer bd returns nothing
    call RemoveUnit(sX[bd])
    set sX[bd] = null
    call RemoveUnit(SX[bd])
    set SX[bd] = null
    call RemoveUnit(TX[bd])
    set TX[bd] = null
    call RemoveUnit(uX[bd])
    set uX[bd] = null
    call RemoveUnit(tX[bd])
    set tX[bd] = null
    set NO[bd] = null
    set bO[bd] = null
    set BO[bd] = null
endfunction
function sK takes integer bd returns boolean
    if RX[bd]then
        set RX[bd] = false
        call ih(bX[bd])
        call fG(bd)
        call kk(bd)
        if NX[bd]then
            set GO = bd
            call TriggerExecute(we)
            if not Z then
                call I2R(1/ 0)
            endif
            call uD(bd)
            call qK(bd)
            call QK(bd)
        endif
        call sF("Player "+I2S(bd)+" is flushed.")
        return true
    endif
    return false
endfunction
function SK takes integer bd returns boolean
    set OX[bd] = false
    return sK(bd)
endfunction
function tK takes integer bd returns nothing
    set RX[bd] = false
    set Mv = bd
    call vK(bd, false)
    call SetUnitPosition(sX[bd], vi[bX[bd]], Uv)
    call GroupEnumUnitsInRect(rv, Ei[bX[bd]], We)
    call SetPlayerState(iX[bd], PLAYER_STATE_GAME_RESULT, 0)
endfunction
function TK takes integer bd returns nothing
    call oh(bX[bd])
    if RX[bd]then
        set RX[bd] = false
        set OX[bd] = false
        call vK(bd, false)
        call GroupEnumUnitsInRect(rv, Ei[bX[bd]], We)
    endif
endfunction
function UK takes integer bd returns nothing
    set OR[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((OR[bd])), (bd))
endfunction
function wK takes integer bd returns nothing
    call gg(OR[bd])
    set OR[bd] = null
endfunction
function WK takes integer p, integer id returns boolean
    local integer d = yE[YE[xO[p]]+LoadInteger(Y, Ae, id)]
    if d>0 then
        if kK(p, tj(d))and OK(p, Tj(d))and FK(p, uj(d))then
            call lK(p, tj(d))
            call IK(p, Tj(d))
            call nK(p, Uj(d))
            call mk(p, dn[d])
            set id = 1
            loop
                call PF(oe[dn[d]], p)
                exitwhen id==kn[d]
                set id = id+1
            endloop
            return true
        endif
    endif
    return false
endfunction
function yK takes integer p returns nothing
    if aO[p]!=0 and VO[p]==0 then
        set VO[p] = PF(oe[BE[aO[p]]], p)
    endif
endfunction
function YK takes integer p, integer id returns boolean
    local integer zK = LoadInteger(Y, Ne, id)
    if zK>0 then
        if OK(p, Rn[zK])and FK(p, In[zK])then
            call IK(p, Rn[zK])
            set zE[ZE[xO[p]]+zK] = true
            set JO = p
            call TriggerExecute(An[zK])
            call SetPlayerAbilityAvailable(iX[p], id, false)
            call SetPlayerTechResearched(iX[p], On[zK], 1)
            call zk(p, GetObjectName(id))
            return true
        endif
    endif
    return false
endfunction
function ZK takes nothing returns nothing
    if(IsUnitType(GetFilterUnit(), nv))then
        call IssueImmediateOrderById(GetFilterUnit(), M)
    endif
endfunction
function vl takes integer bd, integer oK returns nothing
    if(rV[(tO[bd])]!=0)and oK==L then
        call PauseUnit(mO[bd], true)
        call IssueImmediateOrderById(mO[bd], M)
        call PauseUnit(mO[bd], false)
    endif
endfunction
function el takes integer bd returns boolean
    return not(qO[bd]or QO[bd]or sO[bd])
endfunction
function xl takes integer bd returns boolean
    return not(qO[bd]or QO[bd])
endfunction
function ol takes integer bd, player p, integer Tk, real x, real y, real rl returns nothing
    set mO[bd] = CreateUnit(p, Tk, x, y, rl)
    set MO[bd] = GetHandleId(mO[bd])
    call SetUnitUserData(mO[bd], bd)
    call SetUnitVertexColor(mO[bd], Dn[tO[bd]], fn[tO[bd]], Fn[tO[bd]], gn[tO[bd]])
endfunction
function il takes integer bd returns nothing
    set PO[bd] = PF(ve[iV[tO[bd]]], bd)
endfunction
function al takes integer bd, integer p, integer id, real x, real y returns nothing
    local integer a
    local integer Tk
    set KO[bd] = p
    set kO[bd] = id
    set tO[bd] = yE[YE[xO[p]]+id]
    call ol(bd, iX[p], pn[tO[bd]], x, y, 270.)
    call UnitAddAbility(mO[bd], 1098282348)
    call UnitMakeAbilityPermanent(mO[bd], true, 1098282348)
    call UnitAddAbility(mO[bd], qn[tO[bd]])
    call UnitMakeAbilityPermanent(mO[bd], true, qn[tO[bd]])
    set a = 0
    loop
        exitwhen a==aV[tO[bd]]
        set Tk = Xn[nV[VV[tO[bd]]+a]]
        call UnitAddAbility(mO[bd], Tk)
        call UnitMakeAbilityPermanent(mO[bd], true, Tk)
        set a = a+1
    endloop
    if(rV[(tO[bd])]!=0)then
        call UnitAddAbility(mO[bd], 1093677143)
        if(Ln[(tO[bd])]==5)then
            call UnitAddAbility(mO[bd], 1093677179)
            call UnitAddAbility(mO[bd], 1093677146)
        endif
    else
        call UnitAddAbility(mO[bd], 1093677099)
        call UnitMakeAbilityPermanent(mO[bd], true, 1093677099)
        if(Ln[(tO[bd])]!=4)then
            call UnitAddAbility(mO[bd], 1093677122)
            call UnitMakeAbilityPermanent(mO[bd], true, 1093677122)
        endif
    endif
    call GG(wX[p], bd)
    call il(bd)
endfunction
function nl takes integer bd, integer p, integer id returns nothing
    call al(bd, p, id, vi[bX[p]], Qv)
endfunction
function Vl takes integer bd, integer p, integer id returns nothing
    call al(bd, p, id, GetRandomReal(Zr[bX[p]], zr[bX[p]]), GetRandomReal(1408., 1920.))
endfunction
function El takes integer bd, integer p, integer id returns nothing
    if(rV[(ee[id])]!=0)then
        call nl(bd, p, id)
    else
        call Vl(bd, p, id)
    endif
endfunction
function Xl takes integer bd, integer p, integer id returns nothing
    local integer Tk
    call Vl(bd, p, id)
    set id = 0
    loop
        exitwhen id==cE[aO[p]]
        set Tk = Xn[CE[dE[aO[p]]+id]]
        call UnitAddAbility(mO[bd], Tk)
        call UnitMakeAbilityPermanent(mO[bd], true, Tk)
        set id = id+1
    endloop
endfunction
function Ol takes integer bd returns nothing
    call hG(wX[KO[bd]], bd)
    call DestroyEffect(AddSpecialEffect(("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdx"), ((GetUnitX(mO[bd]))*1.), ((GetUnitY(mO[bd]))*1.)))
    call RemoveUnit(mO[bd])
    call Bf(bd)
    call sF("Minion "+I2S(bd)+" is sold.")
endfunction
function Rl takes integer id, integer Vf, integer Il returns nothing
    local integer a = To[Il]
    loop
        if kO[(So[to[(Il)]+(a)])]==id then
            call Ol((So[to[(Il)]+(a)]))
            set Vf = Vf-1
            exitwhen Vf==0
        endif
        set a = a-1
        exitwhen a==-1
    endloop
endfunction
function Al takes integer bd returns nothing
    local integer qH = tO[bd]
    local integer Il = wX[KO[bd]]
    call Mk(KO[bd], kO[bd])
    call nK(KO[bd], -Uj(qH))
    call KK(KO[bd], tj(qH))
    call RK(KO[bd], Tj(qH))
    call dK(KO[bd], uj(qH))
    call hK(KO[bd], mO[bd], Tj(qH), uj(qH))
    call Ol(bd)
    if kn[qH]>1 and To[Il]>-1 then
        call Rl(dn[qH], kn[qH]-1, Il)
    endif
endfunction
function Nl takes integer bd, integer bl returns nothing
    set SO[bd] = bl
    set tO[bd] = yE[YE[bl]+kO[bd]]
    call hk(bl)
    if(rV[(tO[bd])]!=0)then
        set lO[bd] = KO[bd]
    else
        set lO[bd] = XX[KO[bd]]
    endif
    set LO[bd] = bX[lO[bd]]
    call HG(WX[lO[bd]], bd)
    call MG(zX[KO[bd]], bd)
    call UnitRemoveAbility(mO[bd], 1093677146)
    call UnitRemoveAbility(mO[bd], 1093677099)
    call UnitRemoveAbility(mO[bd], 1093677122)
    call SetUnitOwner(mO[bd], AX[lO[bd]], false)
    call SetUnitMoveSpeed(mO[bd], 256.)
    call SetUnitX(mO[bd], GetUnitX(mO[bd])-Zr[bX[KO[bd]]]+Zr[LO[bd]])
    call SetUnitY(mO[bd], GetUnitY(mO[bd])+Tv)
    set qO[bd] = false
    set QO[bd] = true
    set UO[bd] = GetRandomReal(Zr[LO[bd]], zr[LO[bd]])
    set wO[bd] = tv
    call IssuePointOrderById(mO[bd], K, UO[bd], wO[bd])
endfunction
function Bl takes integer bd returns nothing
    call jG(WX[lO[bd]], bd)
    call pG(zX[KO[bd]], bd)
    call KK(KO[bd], Hn[tO[bd]])
    call RemoveUnit(mO[bd])
    call Bf(bd)
    call sF("Spawned "+I2S(bd)+" is deleted.")
endfunction
function cl takes integer bd returns nothing
    local real Sh = (Wi[pO[(bd)]])
    if Sh>.0 then
        call UnitAddAbility(mO[bd], 1093677105)
    else
        call UnitRemoveAbility(mO[bd], 1093677105)
    endif
    call SetItemCharges(YO[bd], eg(Sh))
endfunction
function Cl takes integer bd returns real
    return TO[bd]/(yn[tO[(bd)]])
endfunction
function dl takes integer bd, real Qh returns nothing
    local real Dl
    if Qh!=TO[bd]then
        set Dl = (yn[tO[(bd)]])
        if Qh<.0 then
            set Qh = .0
        elseif Qh>Dl then
            set Qh = Dl
        endif
        set TO[bd] = Qh
        if TO[bd]>.0 then
            call SetItemCharges(yO[bd], eg(TO[bd]))
            call SetWidgetLife(mO[bd], 3.+TO[bd]/ Dl*1000.)
        else
            call If(bd, false, 0, 0)
        endif
    endif
endfunction
function fl takes integer bd, real Qh returns nothing
    call dl(bd, TO[bd]+Qh)
endfunction
function Fl takes integer bd, real Qh, string gl, string Cg returns nothing
    if TO[bd]<(yn[tO[(bd)]])then
        call fl(bd, Qh)
        if gl!=null and gl!="" then
            call DestroyEffect(AddSpecialEffectTarget((gl), (mO[bd]), (Cg)))
        endif
    endif
endfunction
function Gl takes integer bd, real hl, string gl, string Cg returns nothing
    call Fl(bd, (yn[tO[(bd)]])*hl, gl, Cg)
endfunction
function Hl takes integer bd returns integer
    local integer zj
    set ce = YD(bd)
    set zj = ce+Xa[pO[bd]]+ba[pO[bd]]
    if zj>75 then
        return 75
    elseif zj<be then
        return be
    endif
    return zj
endfunction
function jl takes integer bd returns integer
    local integer zj
    set Ce = zD(bd)
    set zj = Ce+Ia[pO[bd]]+ba[pO[bd]]
    if zj>75 then
        return 75
    elseif zj<Be then
        return Be
    endif
    return zj
endfunction
function Jl takes integer bd returns nothing
    local real yj = yD(bd)
    local real kl = Zi[pO[bd]]
    local real Kl
    call SetUnitMoveSpeed(mO[bd], 256.*(yj+kl))
    set Kl = GetUnitMoveSpeed(mO[bd])
    set kl = Kl/ 256.-yj
    if kl>.0 then
        call UnitRemoveAbility(mO[bd], 1093677134)
        call UnitAddAbility(mO[bd], 1093677128)
    elseif kl<.0 then
        call UnitRemoveAbility(mO[bd], 1093677128)
        call UnitAddAbility(mO[bd], 1093677134)
    else
        call UnitRemoveAbility(mO[bd], 1093677134)
        call UnitRemoveAbility(mO[bd], 1093677128)
    endif
    call SetItemCharges(vR[bd], vg(Kl/ 256.*100.))
endfunction
function ll takes integer bd returns nothing
    if(oa[pO[(bd)]])then
        call IssueImmediateOrderById(mO[bd], S)
        call UnitAddAbility(mO[bd], 1093677142)
    else
        call IssuePointOrderById(mO[bd], K, UO[bd], wO[bd])
        call UnitRemoveAbility(mO[bd], 1093677142)
    endif
endfunction
function Ll takes integer bd returns nothing
    call GH(pO[bd])
    call Jl(bd)
    call ll(bd)
    call sF("Minion is Unstoppable!")
endfunction
function ml takes integer bd returns nothing
    if not(oa[pO[(bd)]])then
        call IssuePointOrderById(mO[bd], K, UO[bd], wO[bd])
    endif
endfunction
function Ml takes integer bd, item it, integer Tk returns item
    if GetItemTypeId(it)!=Tk and UnitAlive(mO[bd])then
        call RemoveItem(it)
        return UnitAddItemById(mO[bd], Tk)
    endif
    return it
endfunction
function pl takes integer bd returns nothing
    local integer zj = Hl(bd)
    local integer Pl = ce
    if zj>0 then
        set zO[bd] = Ml(bd, zO[bd], 1227894846)
        call SetItemCharges(zO[bd], zj)
    elseif zj<0 then
        set zO[bd] = Ml(bd, zO[bd], 1227894853)
        call SetItemCharges(zO[bd], -zj)
    else
        set zO[bd] = Ml(bd, zO[bd], 1227894840)
    endif
    if zj>Pl then
        call UnitRemoveAbility(mO[bd], 1093677089)
        call UnitAddAbility(mO[bd], 1093677147)
    elseif zj<Pl then
        call UnitRemoveAbility(mO[bd], 1093677147)
        call UnitAddAbility(mO[bd], 1093677089)
    else
        call UnitRemoveAbility(mO[bd], 1093677089)
        call UnitRemoveAbility(mO[bd], 1093677147)
    endif
endfunction
function ql takes integer bd returns nothing
    local integer zj = jl(bd)
    local integer Pl = Ce
    if zj>0 then
        set ZO[bd] = Ml(bd, ZO[bd], 1227894844)
        call SetItemCharges(ZO[bd], zj)
    elseif zj<0 then
        set ZO[bd] = Ml(bd, ZO[bd], 1227894845)
        call SetItemCharges(ZO[bd], -zj)
    else
        set ZO[bd] = Ml(bd, ZO[bd], 1227894837)
    endif
    if zj>Pl then
        call UnitRemoveAbility(mO[bd], 1093677150)
        call UnitAddAbility(mO[bd], 1093677149)
    elseif zj<Pl then
        call UnitRemoveAbility(mO[bd], 1093677149)
        call UnitAddAbility(mO[bd], 1093677150)
    else
        call UnitRemoveAbility(mO[bd], 1093677150)
        call UnitRemoveAbility(mO[bd], 1093677149)
    endif
endfunction
function Ql takes integer bd returns nothing
    local integer zj = Hl(bd)
    local integer Pl = ce
    if zj>0 then
        set zO[bd] = Ml(bd, zO[bd], 1227894846)
        call SetItemCharges(zO[bd], zj)
    elseif zj<0 then
        set zO[bd] = Ml(bd, zO[bd], 1227894853)
        call SetItemCharges(zO[bd], -zj)
    else
        set zO[bd] = Ml(bd, zO[bd], 1227894840)
    endif
    if zj>Pl then
        call UnitRemoveAbility(mO[bd], 1093677089)
        call UnitAddAbility(mO[bd], 1093677147)
    elseif zj<Pl then
        call UnitRemoveAbility(mO[bd], 1093677147)
        call UnitAddAbility(mO[bd], 1093677089)
    else
        call UnitRemoveAbility(mO[bd], 1093677089)
        call UnitRemoveAbility(mO[bd], 1093677147)
    endif
    set zj = jl(bd)
    set Pl = Ce
    if zj>0 then
        set ZO[bd] = Ml(bd, ZO[bd], 1227894844)
        call SetItemCharges(ZO[bd], zj)
    elseif zj<0 then
        set ZO[bd] = Ml(bd, ZO[bd], 1227894845)
        call SetItemCharges(ZO[bd], -zj)
    else
        set ZO[bd] = Ml(bd, ZO[bd], 1227894837)
    endif
    if zj>Pl then
        call UnitRemoveAbility(mO[bd], 1093677150)
        call UnitAddAbility(mO[bd], 1093677149)
    elseif zj<Pl then
        call UnitRemoveAbility(mO[bd], 1093677149)
        call UnitAddAbility(mO[bd], 1093677150)
    else
        call UnitRemoveAbility(mO[bd], 1093677150)
        call UnitRemoveAbility(mO[bd], 1093677149)
    endif
endfunction
function sl takes integer bd returns boolean
    return(la[pO[(bd)]])or(ja[pO[(bd)]])or vf(bd)
endfunction
function Sl takes integer bd, integer lD returns boolean
    return(la[pO[(bd)]])or(ja[pO[(bd)]])or vf(bd)or(lD==1227894834 and((da[pO[(bd)]])or ef(bd)))or(lD==1227894841 and((ga[pO[(bd)]])or xf(bd)))or(lD==1227894832 and of(bd))
endfunction
function tl takes integer bd, integer Tl returns boolean
    return qa[zv[Tl]]and((la[pO[(bd)]])or(Qa[zv[Tl]]and ZD(bd)))
endfunction
function ul takes integer bd, integer mh, real Qh returns nothing
    call qh(pO[bd], mh, Qh)
    call cl(bd)
endfunction
function Ul takes integer bd, integer mh, real Qh returns nothing
    call wh(pO[bd], mh, Qh)
    call Jl(bd)
endfunction
function Wl takes integer bd, integer mh, boolean Qh returns nothing
    local boolean yl = not(na[pO[(bd)]])
    call vH(pO[bd], mh, Qh)
    if Qh and yl then
        call Ll(bd)
    endif
endfunction
function Yl takes integer bd, integer mh, integer Qh returns nothing
    call oH(pO[bd], mh, Qh)
    call pl(bd)
endfunction
function zl takes integer bd, integer mh, integer Qh returns nothing
    call aH(pO[bd], mh, Qh)
    call ql(bd)
endfunction
function Zl takes integer bd, integer mh, integer Qh returns nothing
    call EH(pO[bd], mh, Qh)
    call Ql(bd)
endfunction
function vL takes integer bd, integer mh, boolean Qh returns nothing
    local boolean yl = not(la[pO[(bd)]])
    call DH(pO[bd], mh, Qh)
    if Qh then
        if yl then
            call hH(pO[bd])
            call Jl(bd)
            call ll(bd)
            call Ql(bd)
            call UnitAddType(mO[bd], Ev)
            call sF("Minion is Invulnerable!")
        endif
    elseif not(la[pO[(bd)]])then
        call UnitRemoveType(mO[(bd)], Ev)
    endif
endfunction
function eL takes integer bd, integer kh, real Qh returns integer
    local integer mh = ph(pO[bd], kh)
    call ul(bd, mh, Qh)
    return mh
endfunction
function xL takes integer bd, integer kh, real Qh returns integer
    local integer mh = th(pO[bd], kh)
    call Ul(bd, mh, Qh)
    return mh
endfunction
function oL takes integer bd, integer kh returns integer
    local integer mh = zh(pO[bd], kh)
    call Wl(bd, mh, true)
    return mh
endfunction
function rL takes integer bd, integer kh, integer Qh returns integer
    local integer mh = eH(pO[bd], kh)
    call Yl(bd, mh, Qh)
    return mh
endfunction
function iL takes integer bd, integer kh, integer Qh returns integer
    local integer mh = rH(pO[bd], kh)
    call zl(bd, mh, Qh)
    return mh
endfunction
function aL takes integer bd, integer kh, integer Qh returns integer
    local integer mh = nH(pO[bd], kh)
    call Zl(bd, mh, Qh)
    return mh
endfunction
function nL takes integer bd, integer kh returns integer
    local integer mh = XH(pO[bd], kh)
    call RH(pO[(bd)], (mh), (true))
    return mh
endfunction
function VL takes integer bd, integer kh returns integer
    local integer mh = bH(pO[bd], kh)
    call cH(pO[(bd)], (mh), (true))
    return mh
endfunction
function EL takes integer bd, integer kh returns integer
    local integer mh = CH(pO[bd], kh)
    call vL(bd, mh, true)
    return mh
endfunction
function XL takes integer bd, integer mh returns nothing
    call Ph(pO[bd], mh)
    call cl(bd)
endfunction
function OL takes integer bd, integer mh returns nothing
    call uh(pO[bd], mh)
    call Jl(bd)
endfunction
function RL takes integer bd, integer mh returns nothing
    call xH(pO[bd], mh)
    call pl(bd)
endfunction
function IL takes integer bd, integer mh returns nothing
    call iH(pO[bd], mh)
    call ql(bd)
endfunction
function AL takes integer bd, integer mh returns nothing
    call VH(pO[bd], mh)
    call Ql(bd)
endfunction
function NL takes integer bd, integer mh returns nothing
    call dH(pO[bd], mh)
    call UnitRemoveType(mO[(bd)], Ev)
endfunction
function bL takes integer bd returns integer
    if IsUnitType(mO[bd], UNIT_TYPE_FLYING)then
        return jr[Vh(LO[bd], GetUnitX(mO[bd]), GetUnitY(mO[bd]))]
    endif
    return Hr[Vh(LO[bd], GetUnitX(mO[bd]), GetUnitY(mO[bd]))]
endfunction
function BL takes integer bd, integer cL, integer Gj, integer ID, integer Oj, integer jj returns nothing
    local string HK = ""
    if Gj>0 then
        call bK(cL, Gj)
        set HK = HK+Do[ao]+"+"+I2S(Gj)+"|r
"
    endif
    if ID>0 then
        call gK(cL, ID)
        set HK = HK+Do[no]+"+"+I2S(ID)+"|r
"
    endif
    if Oj>0 then
        call nK(cL, Oj)
        set HK = HK+Do[Eo]+"+"+I2S(Oj)+"|r
"
    endif
    if jj>0 then
        call mK(cL, jj)
        set HK = HK+Do[Xo]+"+"+I2S(jj)+"|r
"
    endif
    if HK!="" then
        call ng((HK), (mO[bd]), (iX[cL]), 9., 48., 4., 3.)
    endif
endfunction
function CL takes integer bd, integer cL returns nothing
    call BL(bd, cL, Qn[tO[bd]], sn[tO[bd]], Tn[tO[bd]], tn[tO[bd]])
endfunction
function dL takes integer bd, integer cL returns nothing
    call BL(bd, cL, un[tO[bd]], Un[tO[bd]], 0, 0)
endfunction
function DL takes integer bd, real Vf returns real
    return(100-Hl(bd))*Vf/ 100.
endfunction
function fL takes integer bd, real Vf returns real
    return(100-jl(bd))*Vf/ 100.
endfunction
function FL takes integer bd, real Vf, integer lD returns real
    if(la[pO[(bd)]])then
        return .0
    endif
    if lD==1227894834 then
        if(da[pO[(bd)]])or(ja[pO[(bd)]])then
            call fH(pO[bd], Vf)
            return .0
        endif
        return nf(bd, Vf)
    endif
    if lD==1227894841 then
        if(ga[pO[(bd)]])or(ja[pO[(bd)]])then
            call FH(pO[bd], Vf)
            return .0
        endif
        return Ef(bd, Vf)
    endif
    if lD==1227894832 then
        if(ja[pO[(bd)]])then
            call gH(pO[bd], ((yn[tO[((bd))]])*((Vf)*1.)/ 1000.))
            return .0
        endif
        return Xf(bd, Vf)
    endif
    call sF("Unrecognized damage type!")
    return .0
endfunction
function gL takes integer bd, real Vf returns real
    set Vf = sh(pO[bd], Vf)
    call cl(bd)
    return Vf
endfunction
function GL takes integer bd, integer RD, real Vf, integer lD, boolean hL returns boolean
    if not Sl(bd, lD)then
        call QF(1, bd, RD, lD)
    endif
    set Vf = FL(bd, Vf, lD)
    if Vf<=.0 then
        return true
    endif
    set Vf = TO[bd]-gL(bd, Vf)
    if Vf>.0 then
        call dl(bd, Vf)
        return true
    endif
    set TO[bd] = .0
    call If(bd, hL, pA[RD], RD)
    return false
endfunction
function HL takes integer bd returns nothing
    call kG(yX[lO[bd]], bd)
    call mG(YX[KO[bd]], bd)
    call KK(KO[bd], Hn[tO[bd]])
    call jH(pO[bd])
    call FlushChildHashtable(Y, MO[bd])
    call RemoveItem(yO[bd])
    set yO[bd] = null
    call RemoveItem(YO[bd])
    set YO[bd] = null
    call RemoveItem(zO[bd])
    set zO[bd] = null
    call RemoveItem(ZO[bd])
    set ZO[bd] = null
    call RemoveItem(vR[bd])
    set vR[bd] = null
    call RemoveItem(eR[bd])
    set eR[bd] = null
    call UnitRemoveAbility(mO[bd], 1093677105)
    call UnitRemoveAbility(mO[bd], 1093677128)
    call UnitRemoveAbility(mO[bd], 1093677134)
    call UnitRemoveAbility(mO[bd], 1093677142)
    call UnitRemoveAbility(mO[bd], 1093677149)
    call UnitRemoveAbility(mO[bd], 1093677150)
    call UnitRemoveAbility(mO[bd], 1093677147)
    call UnitRemoveAbility(mO[bd], 1093677089)
endfunction
function jL takes integer bd returns nothing
    call wK(bd)
    call HL(bd)
    call Bf(bd)
    call sF("Minion "+I2S(bd)+" is deleted.")
endfunction
function JL takes integer bd returns nothing
    local integer Xh = ah(LO[bd], GetUnitY(mO[bd]))
    local real r
    if Xh!=WO[bd]then
        set WO[bd] = Xh
        set r = GetUnitX(mO[bd])
        if(Xh>=Ni[LO[bd]])and(uF(r-UO[bd])>16.)then
            set UO[bd] = r
            call ml(bd)
        endif
    endif
endfunction
function kL takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    local real r
    set uO[bd] = uO[bd]-.25
    if uO[bd]>.0 then
        call SetItemCharges(eR[bd], eg(uO[bd]))
    else
        call jh(mO[bd], Dn[tO[bd]], fn[tO[bd]], Fn[tO[bd]], gn[tO[bd]])
        call jL(bd)
        return
    endif
    call JL(bd)
    set r = (Yn[tO[(bd)]])
    if r!=.0 then
        call fl(bd, r)
    endif
endfunction
function KL takes integer bd returns nothing
    set uO[bd] = 60.
    call UnitAddAbility(mO[bd], 1093677118)
    call UnitMakeAbilityPermanent(mO[bd], true, 1093677118)
    call UnitAddAbility(mO[bd], 1093677113)
    call UnitMakeAbilityPermanent(mO[bd], true, 1093677113)
    set yO[bd] = UnitAddItemById(mO[bd], 1227894836)
    set YO[bd] = UnitAddItemById(mO[bd], 1227894847)
    set zO[bd] = UnitAddItemById(mO[bd], 1227894840)
    set ZO[bd] = UnitAddItemById(mO[bd], 1227894837)
    set vR[bd] = UnitAddItemById(mO[bd], 1227894848)
    set eR[bd] = UnitAddItemById(mO[bd], 1227894849)
    call SetItemCharges(eR[bd], eg(uO[bd]))
    call TriggerRegisterUnitEvent(Se, mO[bd], EVENT_UNIT_DAMAGED)
    call TimerStart(OR[bd], .25, true, IR)
    set pO[bd] = zd()
    call JG(yX[lO[bd]], bd)
    call LG(YX[KO[bd]], bd)
endfunction
function lL takes integer bd returns nothing
    call Jl(bd)
    call Ql(bd)
    set sO[bd] = true
endfunction
function LL takes integer bd returns nothing
    call jG(WX[lO[bd]], bd)
    call pG(zX[KO[bd]], bd)
    call UK(bd)
    call KL(bd)
    call SetUnitInvulnerable(mO[bd], false)
    call dl(bd, (yn[tO[(bd)]]))
    call lL(bd)
    call JL(bd)
    set QO[bd] = false
    if PO[bd]!=0 then
        call GD(PO[bd])
    endif
endfunction
function mL takes integer bd returns boolean
    return JK(KO[bd], Hn[tO[bd]])
endfunction
function ML takes integer bd, integer Tk, real hl returns nothing
    call lG(ZX[lO[bd]], bd)
    call RemoveUnit(mO[bd])
    call ol(bd, AX[lO[bd]], Tk, xR[bd], oR[bd], rR[bd])
    call SetUnitColor(mO[bd], GetPlayerColor(iX[KO[bd]]))
    call lK(KO[bd], Hn[tO[bd]])
    call KL(bd)
    call dl(bd, (yn[tO[(bd)]])*hl)
    call lL(bd)
    call ml(bd)
    call mD(PO[bd])
    call Rf(bd)
    call sF("Minion "+I2S(bd)+" is resurrected.")
endfunction
function pL takes integer bd, real hl returns nothing
    call ML(bd, GetUnitTypeId(mO[bd]), hl)
endfunction
function PL takes integer bd returns nothing
    call lG(ZX[lO[bd]], bd)
    call wK(bd)
    call RemoveUnit(mO[bd])
    call Bf(bd)
    call sF("Corpse "+I2S(bd)+" is removed.")
endfunction
function qL takes nothing returns nothing
    call PL(((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))))
endfunction
function QL takes integer bd returns nothing
    call RemoveUnit(mO[bd])
    call jL(bd)
endfunction
function sL takes integer bd, integer Nf, integer RD returns nothing
    if RD!=0 then
        call AD(RD)
        set Nf = pA[RD]
    endif
    if Nf!=0 then
        call aK(Nf)
        call CL(bd, Nf)
    endif
    call OD(RD, Sn[tO[bd]], GetUnitX(mO[bd]), GetUnitY(mO[bd]))
endfunction
function SL takes integer bd, boolean Af, integer Nf, integer RD returns nothing
    call SetUnitExploded(mO[bd], Af)
    call KillUnit(mO[bd])
    set sO[bd] = false
    call LD(PO[bd])
    call sL(bd, Nf, RD)
    if Af or Mn[tO[bd]]then
        call jL(bd)
    else
        call HL(bd)
        call KG(ZX[lO[bd]], bd)
        set xR[bd] = GetUnitX(mO[bd])
        set oR[bd] = GetUnitY(mO[bd])
        set rR[bd] = GetUnitFacing(mO[bd])
        call TimerStart(OR[bd], 15., false, AR)
        call sF("Minion "+I2S(bd)+" is killed.")
    endif
endfunction
function tL takes integer bd returns nothing
    if xl(bd)then
        call wK(bd)
        if sO[bd]then
            call jH(pO[bd])
        endif
    endif
    call SetUnitInvulnerable(mO[bd], true)
    call IssueImmediateOrderById(mO[bd], J)
    call Bf(bd)
endfunction
function TL takes nothing returns nothing
    set RR = Filter(function ZK)
    set IR = function kL
    set AR = function qL
endfunction
function uL takes integer p returns nothing
    local integer m
    local integer a
    if NK(p, eO[p])then
        call iK(p)
        set a = 1
        loop
            call xJ(yE[YE[xO[p]]+a], vO[p])
            set a = a+1
            exitwhen a>cn
        endloop
        call SetItemCharges(bO[p], vO[p])
        if vO[p]==20 then
            call Ug(tX[p], BO[p])
        else
            call SetItemCharges(BO[p], eO[p]+1)
        endif
        call zk(p, ("Minion Health Upgrade (level "+I2S((vO[p]))+")"))
    else
        call SetItemCharges(BO[p], eO[p]+1)
    endif
endfunction
function UL takes integer bd returns nothing
    set HR[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((HR[bd])), (bd))
endfunction
function wL takes integer bd returns nothing
    call gg(HR[bd])
    set HR[bd] = null
endfunction
function WL takes integer bd, unit df returns nothing
    set dR[bd] = df
    if DR[bd]!=0 then
        call Hk(DR[bd])
    endif
    if(IsUnitType((df), nv))then
        set DR[bd] = SO[(GetUnitUserData(dR[bd]))]
        call hk(DR[bd])
    elseif(IsUnitType((df), iv))then
        set DR[bd] = xO[pA[(GetUnitUserData(dR[bd]))]]
    else
        call bG("Invalid source of a MinionBuff instance", "MinionBuffSource")
    endif
    set fR[bd] = uE[UE[DR[bd]]+cR[bd]]
endfunction
function yL takes integer Cf, unit df, integer id returns integer
    local integer bd = ff()
    if bd==0 then
        call bG("MinionBuff struct has run out of indexes. Current amount of indexes is 8190", "MinionBuff")
    endif
    set cR[bd] = id
    set CR[bd] = Cf
    call WL(bd, df)
    call UL(bd)
    call SaveInteger(Y, MO[CR[bd]], id, bd)
    return bd
endfunction
function YL takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    set FR[bd] = FR[bd]-1
    if Df(bd)then
        call SF(BR[bd]!=-1, "Buff "+I2S(bd)+" with id "+I2S(cR[bd])+" is freed twice.")
        call Ff(bd)
    endif
endfunction
function zL takes integer bd, integer ZL returns nothing
    set FR[bd] = FR[bd]+ZL
    if FR[bd]>Sa[fR[bd]]then
        set FR[bd] = Sa[fR[bd]]
    endif
endfunction
function vm takes integer bd, real em returns nothing
    set FR[bd] = sa[fR[bd]]
    call UnitAddAbility(mO[CR[bd]], Ua[fR[bd]])
    call TimerStart(HR[bd], em, Ta[fR[bd]], function YL)
    set gR[bd] = true
endfunction
function xm takes integer bd returns nothing
    call vm(bd, ua[fR[bd]])
endfunction
function om takes integer bd, unit df returns nothing
    call WL(bd, df)
    if Ta[fR[bd]]then
        call zL(bd, sa[fR[bd]])
    else
        call xm(bd)
    endif
endfunction
function rm takes integer m returns integer
    local integer bd = Kf()
    set KR[bd] = m
    set lR[bd] = CreateUnit(iX[pA[m]], 1685417325, TA[m], uA[m], .0)
    call SetUnitPathing(lR[bd], false)
    call SetUnitFlyHeight(lR[bd], SA[m], .0)
    call UnitAddType(lR[bd], av)
    set mR[bd] = rE[YA[m]]
    call UnitAddAbility(lR[bd], mR[bd])
    call SetUnitUserData(lR[bd], m)
    set LR[bd] = iE[YA[m]]
    call sF("TowerAttacker "+I2S(bd)+" is created.")
    return bd
endfunction
function im takes integer bd returns integer
    return GetUnitAbilityLevel(lR[bd], mR[bd])
endfunction
function am takes integer bd returns nothing
    call IncUnitAbilityLevel(lR[bd], mR[bd])
endfunction
function nm takes integer bd, integer Vm, integer Em, integer eJ returns nothing
    if mR[bd]!=Vm then
        call UnitRemoveAbility(lR[bd], mR[bd])
        set mR[bd] = Vm
        call UnitAddAbility(lR[bd], Vm)
        set LR[bd] = Em
        call SetUnitAbilityLevel(lR[bd], Vm, eJ)
    endif
endfunction
function Xm takes integer bd, integer Vm, integer Em returns nothing
    call nm(bd, Vm, Em, im(bd))
endfunction
function Om takes integer bd, integer eJ returns nothing
    call nm(bd, rE[YA[KR[bd]]], iE[YA[KR[bd]]], eJ)
endfunction
function Rm takes integer bd returns nothing
    call Om(bd, im(bd))
endfunction
function Im takes integer bd, real x, real y returns boolean
    return IssuePointOrderById(lR[bd], LR[bd], x, y)
endfunction
function Am takes integer bd, widget JD returns boolean
    return IssueTargetOrderById(lR[bd], LR[bd], JD)
endfunction
function Nm takes integer bd returns nothing
    call RemoveUnit(lR[bd])
    set lR[bd] = null
    call sF("TowerAttacker "+I2S(bd)+" is deleted.")
endfunction
function bm takes integer bd returns nothing
    if bd==null then
        return
    elseif(kR[bd]!=-1)then
        return
    endif
    call Nm(bd)
    set kR[bd] = jR
    set jR = bd
endfunction
function Bm takes integer m returns integer
    local integer bd = Jf()
    set qR[bd] = m
    set QR[bd] = bL(m)
    set sR[bd] = TO[m]
    return bd
endfunction
function cm takes integer bd, integer Cm returns nothing
    set tR[bd] = Cm
    set SR[bd] = SR[Cm]
    if SR[bd]!=0 then
        set tR[SR[bd]] = bd
    endif
    set SR[Cm] = bd
endfunction
function dm takes integer bd, integer Cm returns nothing
    set SR[bd] = Cm
    set tR[bd] = tR[Cm]
    if tR[bd]!=0 then
        set SR[tR[bd]] = bd
    endif
    set tR[Cm] = bd
endfunction
function Dm takes integer bd returns integer
    local integer SG = wR[bd]
    local integer m = qR[SG]
    set wR[bd] = tR[SG]
    if(wR[(bd)]!=0)then
        set SR[wR[bd]] = 0
    endif
    call kf(SG)
    return m
endfunction
function fm takes integer Fm, integer gm returns integer
    local integer bd = Hf()
    set wR[bd] = Fm
    set WR[bd] = gm
    return bd
endfunction
function Gm takes integer bd returns nothing
    local integer n = wR[bd]
    local integer hm
    loop
        exitwhen n==0
        set hm = tR[n]
        call kf(n)
        set n = hm
    endloop
endfunction
function Hm takes integer Cf returns integer
    local group g = CreateGroup()
    local unit u
    local integer c
    local integer mh
    local integer gm = 0
    local integer Fm = 0
    call GroupEnumUnitsInRange(g, TA[Cf], uA[Cf], eE[YA[Cf]], vE[YA[Cf]])
    loop
        set u = FirstOfGroup(g)
        exitwhen u==null
        call GroupRemoveUnit(g, u)
        set c = Bm(GetUnitUserData(u))
        set mh = gm
        loop
            if mh==0 then
                if Fm==0 then
                    set gm = c
                    set Fm = c
                else
                    call cm(c, Fm)
                    set Fm = c
                endif
                exitwhen true
            elseif QR[c]>=QR[mh]then
                call dm(c, mh)
                if mh==gm then
                    set gm = c
                endif
                exitwhen true
            endif
            set mh = SR[mh]
        endloop
    endloop
    call DestroyGroup(g)
    set g = null
    if Fm==0 then
        return 0
    endif
    return fm(Fm, gm)
endfunction
function jm takes nothing returns boolean
    local integer m = GetUnitUserData(GetFilterUnit())
    return((IsUnitType(GetFilterUnit(), nv))and sO[m]and not(la[pO[(m)]]))!=null
endfunction
function Jm takes nothing returns boolean
    local integer m = GetUnitUserData(GetFilterUnit())
    return((IsUnitType(GetFilterUnit(), nv))and IsUnitType(mO[m], UNIT_TYPE_GROUND)and sO[m]and not(la[pO[(m)]]))!=null
endfunction
function km takes nothing returns boolean
    local integer m = GetUnitUserData(GetFilterUnit())
    return((IsUnitType(GetFilterUnit(), nv))and IsUnitType(mO[m], UNIT_TYPE_FLYING)and sO[m]and not(la[pO[(m)]]))!=null
endfunction
function Km takes nothing returns nothing
    set De[0] = Filter(function jm)
    set De[1] = Filter(function Jm)
    set De[2] = Filter(function km)
endfunction
function lm takes integer bd, real Lm returns nothing
    set GR[bd] = xL(CR[bd], bd, Lm)
    call xm(bd)
endfunction
function mm takes integer Cf, real Lm returns nothing
    if(not tl((Cf), (yR)))then
        if((LoadInteger(Y, MO[((Cf))], ((yR))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (yR))), mO[Cf])
        else
            call lm(hf(Cf, mO[Cf], yR), Lm)
        endif
    endif
endfunction
function pm takes integer bd, real Lm returns nothing
    set GR[bd] = xL(CR[bd], bd, Lm)
    call xm(bd)
endfunction
function Pm takes integer Cf, integer qm, real Lm returns nothing
    if(not tl((Cf), (YR)))then
        if((LoadInteger(Y, MO[((Cf))], ((YR))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (YR))), mO[qm])
        else
            call pm(Gf(Cf, mO[qm], YR), Lm)
        endif
    endif
endfunction
function sm takes integer bd, integer zj returns nothing
    set GR[bd] = iL(CR[bd], bd, zj)
    call xm(bd)
endfunction
function Sm takes integer Cf, integer qm, integer zj returns nothing
    if(not tl((Cf), (zR)))then
        if((LoadInteger(Y, MO[((Cf))], ((zR))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (zR))), mO[qm])
        else
            call sm(gf(Cf, mO[qm], zR), zj)
        endif
    endif
endfunction
function Tm takes integer bd returns nothing
    set GR[bd] = VL(CR[bd], bd)
    set hR[bd] = oL(CR[bd], bd)
    call AddUnitAnimationProperties(mO[CR[bd]], "Defend", true)
    call DestroyEffect(AddSpecialEffectTarget(("Abilities\\Spells\\Human\\Defend\\DefendCaster.mdx"), (mO[CR[bd]]), ("origin")))
    call xm(bd)
endfunction
function um takes integer Cf returns nothing
    if(not tl((Cf), (ZR)))then
        if((LoadInteger(Y, MO[((Cf))], ((ZR))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (ZR))), mO[Cf])
        else
            call Tm(Lf(Cf, mO[Cf], ZR))
        endif
    endif
endfunction
function wm takes integer bd returns nothing
    set GR[bd] = VL(CR[bd], bd)
    call xm(bd)
endfunction
function Wm takes integer Cf, integer qm returns nothing
    if(not tl((Cf), (vI)))then
        if((LoadInteger(Y, MO[((Cf))], ((vI))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (vI))), mO[qm])
        else
            call wm(mf(Cf, mO[qm], vI))
        endif
    endif
endfunction
function Ym takes integer bd returns nothing
    set GR[bd] = EL(CR[bd], bd)
    call xm(bd)
endfunction
function zm takes integer Cf returns nothing
    if(not tl((Cf), (eI)))then
        if((LoadInteger(Y, MO[((Cf))], ((eI))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (eI))), mO[Cf])
        else
            call Ym(Mf(Cf, mO[Cf], eI))
        endif
    endif
endfunction
function vM takes integer bd, integer zj returns nothing
    set GR[bd] = rL(CR[bd], bd, zj)
    call xm(bd)
endfunction
function eM takes integer bd, unit df, integer zj returns nothing
    if pi[(GR[bd])]<25 then
        call Yl(CR[bd], GR[bd], pi[(GR[bd])]+zj)
    endif
    call om(bd, df)
endfunction
function xM takes integer Cf, integer qm, integer zj returns nothing
    if(not tl((Cf), (xI)))then
        if((LoadInteger(Y, MO[((Cf))], ((xI))))>0)then
            call eM(((LoadInteger(Y, MO[(Cf)], (xI)))), mO[qm], zj)
        else
            call vM(pf(Cf, mO[qm], xI), zj)
        endif
    endif
endfunction
function rM takes integer bd, real iM returns nothing
    set GR[bd] = eL(CR[bd], bd, iM)
    call xm(bd)
endfunction
function aM takes integer Cf, real iM returns nothing
    if(not tl((Cf), (oI)))then
        if((LoadInteger(Y, MO[((Cf))], ((oI))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (oI))), mO[Cf])
        else
            call rM(Pf(Cf, mO[Cf], oI), iM)
        endif
    endif
endfunction
function VM takes integer bd returns nothing
    set GR[bd] = nL(CR[bd], bd)
    call AddUnitAnimationProperties(mO[CR[bd]], "Defend", true)
    call DestroyEffect(AddSpecialEffectTarget(("Abilities\\Spells\\Human\\Defend\\DefendCaster.mdx"), (mO[CR[bd]]), ("origin")))
    call xm(bd)
endfunction
function EM takes integer Cf returns nothing
    if(not tl((Cf), (rI)))then
        if((LoadInteger(Y, MO[((Cf))], ((rI))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (rI))), mO[Cf])
        else
            call VM(qf(Cf, mO[Cf], rI))
        endif
    endif
endfunction
function OM takes integer bd, boolean up, integer zj, real Lm returns nothing
    if up then
        set GR[bd] = aL(CR[bd], bd, zj)
    else
        set GR[bd] = rL(CR[bd], bd, zj)
    endif
    set iI[bd] = up
    set hR[bd] = xL(CR[bd], bd, Lm)
    call xm(bd)
endfunction
function RM takes integer bd, unit df, boolean up, integer zj returns nothing
    if up and(not iI[bd])then
        set iI[bd] = true
        call RL(CR[bd], GR[bd])
        set GR[bd] = aL(CR[bd], bd, zj)
    endif
    call om(bd, df)
endfunction
function IM takes integer Cf, integer qm, boolean up, integer zj, real Lm returns nothing
    if(not tl((Cf), (aI)))then
        if((LoadInteger(Y, MO[((Cf))], ((aI))))>0)then
            call RM(((LoadInteger(Y, MO[(Cf)], (aI)))), mO[qm], up, zj)
        else
            call OM(Qf(Cf, mO[qm], aI), up, zj, Lm)
        endif
    endif
endfunction
function NM takes integer bd returns nothing
    set GR[bd] = (Lh(pO[(CR[bd])], (bd)))
    call xm(bd)
endfunction
function bM takes integer Cf, integer qm returns nothing
    if(not tl((Cf), (nI)))then
        if((LoadInteger(Y, MO[((Cf))], ((nI))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (nI))), mO[qm])
        else
            call NM(sf(Cf, mO[qm], nI))
        endif
    endif
endfunction
function cM takes integer bd returns nothing
    set GR[bd] = EL(CR[bd], bd)
    call xm(bd)
endfunction
function CM takes integer Cf returns nothing
    if(not tl((Cf), (VI)))then
        if((LoadInteger(Y, MO[((Cf))], ((VI))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (VI))), mO[Cf])
        else
            call cM(Sf(Cf, mO[Cf], VI))
        endif
    endif
endfunction
function DM takes integer bd returns nothing
    set GR[bd] = EL(CR[bd], bd)
    call xm(bd)
endfunction
function fM takes integer Cf, integer qm returns nothing
    if(not tl((Cf), (EI)))then
        if((LoadInteger(Y, MO[((Cf))], ((EI))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (EI))), mO[qm])
        else
            call DM(tf(Cf, mO[qm], EI))
        endif
    endif
endfunction
function gM takes integer bd returns nothing
    set GR[bd] = (Lh(pO[(CR[bd])], (bd)))
    call xm(bd)
endfunction
function GM takes integer Cf, integer qm returns nothing
    if(not tl((Cf), (XI)))then
        if((LoadInteger(Y, MO[((Cf))], ((XI))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (XI))), mO[qm])
        else
            call gM(Tf(Cf, mO[qm], XI))
        endif
    endif
endfunction
function HM takes integer a, unit m, player p, integer UJ, integer Em returns integer
    local integer bd = qD()
    set AI[bd] = CreateUnit(p, 1685417325, GetUnitX(m), GetUnitY(m), .0)
    call SetUnitPathing(AI[bd], false)
    call UnitAddAbility(AI[bd], UJ)
    call UnitAddType(AI[bd], Vv)
    call SetUnitUserData(AI[bd], a)
    set NI[bd] = Em
    call sF("MinionDummy "+I2S(bd)+" is created.")
    return bd
endfunction
function jM takes integer bd, real x, real y returns nothing
    call SetUnitX(AI[bd], x)
    call SetUnitY(AI[bd], y)
endfunction
function JM takes integer bd, real x, real y returns boolean
    return IssuePointOrderById(AI[bd], NI[bd], x, y)
endfunction
function kM takes integer bd returns nothing
    call RemoveUnit(AI[bd])
    set AI[bd] = null
    call sF("MinionDummy "+I2S(bd)+" is deleted.")
endfunction
function KM takes integer bd returns nothing
    if bd==null then
        return
    elseif(II[bd]!=-1)then
        return
    endif
    call kM(bd)
    set II[bd] = OI
    set OI = bd
endfunction
function lM takes integer bd returns nothing
    set gI[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((gI[bd])), (bd))
endfunction
function LM takes integer bd returns nothing
    call gg(gI[bd])
    set gI[bd] = null
endfunction
function mM takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    call SetImagePosition(FI[bd], GetUnitX(fI[bd]), GetUnitY(fI[bd]), .0)
endfunction
function MM takes unit u, real Hg returns integer
    local integer bd = PD()
    set fI[bd] = u
    set FI[bd] = hg(Hg, GetUnitX(u), GetUnitY(u), 3, dI, 51, 51, DI)
    call lM(bd)
    call TimerStart(gI[bd], CI, true, function mM)
    return bd
endfunction
function pM takes integer bd returns nothing
    call LM(bd)
    call Pg(FI[bd], "MMRI.onDestroy")
    set FI[bd] = null
    set fI[bd] = null
endfunction
function PM takes integer bd returns nothing
    if bd==null then
        return
    elseif(cI[bd]!=-1)then
        return
    endif
    call pM(bd)
    set cI[bd] = bI
    set bI = bd
endfunction
function qM takes integer bd returns nothing
    if LI[bd]==null then
        set LI[bd] = CreateTimer()
        call SaveInteger(Y, 8, GetHandleId((LI[bd])), (bd))
    endif
endfunction
function QM takes integer bd returns nothing
    if LI[bd]!=null then
        call gg(LI[bd])
        set LI[bd] = null
    endif
endfunction
function sM takes integer bd returns nothing
    set kI[bd] = SO[JI[bd]]
    set KI[bd] = wE[WE[SO[JI[bd]]]+za[KI[bd]]]
    if vn[KI[bd]]then
        call qM(bd)
        if an[KI[bd]]>.0 then
            call TimerStart(LI[bd], an[KI[bd]], en[KI[bd]], jI)
        else
            set lI[bd] = true
        endif
    endif
endfunction
function SM takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    set lI[bd] = not en[KI[bd]]
    call hD(bd)
endfunction
function tM takes integer bd returns nothing
    set lI[bd] = false
    call TimerStart(LI[bd], nn[KI[bd]], en[KI[bd]], jI)
endfunction
function TM takes integer bd, integer JD, integer KD, integer lD returns boolean
    if lI[bd]and(not(xn[KI[bd]]and(oa[pO[(JI[bd])]])))and IsUnitInRange(mO[JD], mO[JI[bd]], rn[KI[bd]])then
        return kD(bd, JD, KD, lD)
    endif
    return false
endfunction
function uM takes nothing returns nothing
    set jI = function SM
endfunction
function UM takes integer m returns integer
    local integer bd = uf(m, mI)
    call sF(SubString("s__AbilShadowMeld_create", 3, StringLength("s__AbilShadowMeld_create")-7)+" "+I2S(bd)+" is created.")
    return bd
endfunction
function wM takes integer bd returns nothing
    if(not Dv)then
        call mm(JI[(bd)], .15)
    endif
endfunction
function WM takes integer bd returns nothing
    call sM(bd)
    call wM(bd)
endfunction
function zM takes nothing returns nothing
    local integer m = GetUnitUserData(GetFilterUnit())
    local real d
    if(IsUnitType(GetFilterUnit(), nv))and sO[m]and KO[m]==KO[pI]and mn[tO[m]]then
        set d = Ig(mO[m], mO[pI])
        if d<qI then
            set qI = d
            set PI = m
        endif
    endif
endfunction
function np takes integer bd returns nothing
    set uI[bd] = uI[bd]-1
    if uI[bd]==0 then
        if sO[JI[bd]]then
            call Ff((LoadInteger(Y, MO[(JI[bd])], (eI))))
        else
            call UnitRemoveAbility(mO[JI[bd]], Ua[zv[eI]])
        endif
        set PO[JI[bd]] = 0
        call pD(bd)
    endif
endfunction
function Xp takes nothing returns nothing
    local integer m = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), nv))and IsUnitType(mO[m], UNIT_TYPE_GROUND)and sO[m]and KO[m]==KO[YI]and mn[tO[m]]then
        call xM(m, YI, 5)
    endif
endfunction
function Np takes nothing returns nothing
    local integer m = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), nv))and IsUnitType(mO[m], UNIT_TYPE_GROUND)and sO[m]and KO[m]==KO[oA]and mn[tO[m]]and kO[m]!=pN then
        call IM(m, oA, rA, ZI, .15)
    endif
endfunction
function cp takes nothing returns nothing
    local integer m = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), nv))and IsUnitType(mO[m], UNIT_TYPE_GROUND)and sO[m]and KO[m]==RA and mn[tO[m]]and kO[m]!=PN then
        set IA = IA+1
    endif
endfunction
function Fp takes nothing returns nothing
    local integer m = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), nv))and sO[m]and KO[m]==CA and mn[tO[m]]and not sl(m)and Cl(m)<DA then
        set DA = Cl(m)
        set dA = m
    endif
endfunction
function gp takes integer bd returns integer
    set CA = KO[JI[bd]]
    set dA = 0
    set DA = 2.
    call GroupEnumUnitsInRange(rv, GetUnitX(mO[JI[bd]]), GetUnitY(mO[JI[bd]]), 512., cA)
    return dA
endfunction
function hp takes integer bd returns nothing
    if GA[bd]==null then
        set GA[bd] = CreateTimer()
        call SaveInteger(Y, 8, GetHandleId((GA[bd])), (bd))
    endif
endfunction
function Hp takes integer bd returns nothing
    if GA[bd]!=null then
        call gg(GA[bd])
        set GA[bd] = null
    endif
endfunction
function Jp takes nothing returns nothing
    local integer m = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), nv))and el(m)and KO[m]==hA and mL(m)and Hn[tO[m]]>jA then
        set jA = Hn[tO[m]]
        set HA = m
    endif
endfunction
function kp takes integer bd returns nothing
    local integer Kp = JI[bd]
    set hA = KO[Kp]
    set HA = 0
    set jA = -1.
    call GroupEnumUnitsInRange(rv, GetUnitX(mO[Kp]), GetUnitY(mO[Kp]), rn[KI[bd]], FA)
    set Kp = HA
    if Kp!=0 then
        call pL(Kp, 1.)
        call DestroyEffect(AddSpecialEffectTarget(("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdx"), (mO[Kp]), ("origin")))
        if zE[ZE[kI[bd]]+Fx]then
            call GM(Kp, JI[bd])
        endif
        call tM(bd)
    else
        call TimerStart(GA[bd], .25, false, gA)
    endif
endfunction
function lp takes nothing returns nothing
    call kp(((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))))
endfunction
function Lp takes nothing returns nothing
endfunction
function Mp takes integer bd returns nothing
    set ZA[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((ZA[bd])), (bd))
endfunction
function pp takes integer bd returns nothing
    call gg(ZA[bd])
    set ZA[bd] = null
endfunction
function Pp takes integer f, real x, real y, boolean qp returns nothing
    local integer c = Vh(f, x, y)
    local integer Xh = ah(f, y)
    if qp then
        call Eh(f, Xh)
        call Eh(f, Xh-1)
    else
        call Oh(f, Xh-1)
        call Oh(f, Xh)
    endif
    set qp = not qp
    set Kr[(c)] = (qp)
    set Kr[(Lr[c])] = (qp)
    set Kr[(mr[Lr[c]])] = (qp)
    set Kr[(mr[c])] = (qp)
    call Fh(f)
endfunction
function Qp takes unit u, integer p, real x, real y, integer T returns nothing
    set lA = u
    set LA = p
    set mA = x
    set MA = y
    call TriggerEvaluate(pV[(T)])
endfunction
function sp takes unit u returns nothing
    local real x = GetUnitX(u)
    local real y = GetUnitY(u)
    local integer p = (Oe[GetPlayerId((GetOwningPlayer(u)))])
    local integer f = bX[p]
    local integer T = (LoadInteger(Y, fe, (GetUnitTypeId(u))))
    if x>ei[f]or x<xi[f]or y>320. or y<sv then
        call yk((p), kx, Do[bo]+"Error|r: "+("it is not allowed to build here."))
        call RemoveUnit(u)
    elseif Rh(f, x, y)then
        call yk((p), kx, Do[bo]+"Error|r: "+("towers must be build precisely on the grid."))
        call RemoveUnit(u)
    elseif Ih(f, x, y, UX[p])then
        call yk((p), kx, Do[bo]+"Error|r: "+("this tower will hinder minions' movement."))
        call RemoveUnit(u)
    elseif NK(p, PV[(T)])then
        call Pp(f, x, y, true)
        call Qp(u, p, x, y, T)
    else
        call RemoveUnit(u)
    endif
endfunction
function Sp takes integer bd, integer T returns nothing
    set qA[bd] = T
    set PA[bd] = lA
    set pA[bd] = LA
    set TA[bd] = mA
    set uA[bd] = MA
    set QA[bd] = (T)
    set UA[bd] = PV[QA[bd]]
    set YA[bd] = (T)
    call UnitAddAbility(PA[bd], MV[QA[bd]])
    call UnitAddAbility(PA[bd], sV[QA[bd]])
    call FG(UX[pA[bd]], bd)
    call SetUnitUserData(PA[bd], bd)
endfunction
function tp takes integer bd, real Hg, integer jg, integer Jg, integer kg, boolean eK returns image
    call lg(iX[pA[bd]], Hg, TA[bd], uA[bd], 2, jg, Jg, kg, Fe)
    call Lg(bj_lastCreatedImage, eK and IsUnitSelected(PA[bd], iX[pA[bd]]), "Tower.createRangeIndicator")
    return bj_lastCreatedImage
endfunction
function Tp takes integer bd returns nothing
    set yA[bd] = xE[YA[bd]]
    set nN[bd] = ug(PA[bd], ZV[YA[bd]])
    set VN[bd] = ug(PA[bd], 1227894833)
    call Mp(bd)
    set zA[bd] = rm(bd)
    set vN[bd] = tp(bd, eE[YA[bd]], 51, $CC, 51, true)
endfunction
function Up takes integer bd returns nothing
    call pp(bd)
    call bm(zA[bd])
    call Pg(vN[bd], "Tower.DestroyAttack")
    set vN[bd] = null
    set nN[bd] = null
    set VN[bd] = null
endfunction
function wp takes integer bd returns real
    return yV[YA[bd]]*(ho[Ho[(YV[YA[bd]])]+(rN[bd])])
endfunction
function Wp takes integer bd, boolean iD returns real
    return .0
endfunction
function yp takes integer bd, boolean iD returns real
    return .0
endfunction
function Yp takes integer bd, boolean iD returns real
    local real Sh = wp(bd)+rD(bd, iD)
    return Sh+Sh*aD(bd, iD)
endfunction
function zp takes integer bd returns nothing
endfunction
function Zp takes integer bd, integer JD, real Vf, integer lD, boolean uJ returns boolean
    return GL(JD, bd, Vf, lD, uJ)
endfunction
function vP takes integer bd returns nothing
    call SetItemCharges(nN[bd], vg(Yp(bd, false)))
endfunction
function eP takes integer bd, integer m returns boolean
    return Zp(bd, m, Yp(bd, true), ZV[YA[bd]], oE[YA[bd]])
endfunction
function xP takes integer bd returns nothing
    call TimerStart(ZA[bd], zV[YA[bd]], false, IN)
endfunction
function oP takes integer bd, integer XD, integer KD returns boolean
    local integer rP = 0
    local integer m
    loop
        set m = Dm(XD)
        call QF(1, m, bd, ZV[YA[bd]])
        if(la[pO[(m)]])then
            exitwhen(wR[(XD)]==0)
        else
            call Am(KD, mO[m])
            set rP = rP+1
            if(wR[(XD)]==0)or rP==yA[bd]then
                return true
            endif
        endif
    endloop
    return false
endfunction
function iP takes integer bd, integer XD returns nothing
    if oP(bd, XD, zA[bd])then
        call xP(bd)
    else
        call TimerStart(ZA[(bd)], de, false, IN)
    endif
endfunction
function aP takes integer bd returns nothing
    local integer XD = Hm(bd)
    if XD!=0 then
        call ED(bd, XD)
        call Gm(XD)
        call jf(XD)
    else
        call TimerStart(ZA[(bd)], de, false, IN)
    endif
endfunction
function nP takes nothing returns nothing
    call aP(((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))))
endfunction
function VP takes integer bd returns nothing
    set SA[bd] = jV[QA[bd]]*JV[QA[bd]]
    set tA[bd] = JV[QA[bd]]
    call SetUnitScale(PA[bd], tA[bd], tA[bd], tA[bd])
    if lV[QA[bd]]then
        call Tp(bd)
    endif
    set xN[bd] = kV[QA[bd]]
    if xN[bd]then
        set aN[bd] = uV[QA[bd]]
        set iN[bd] = uV[QA[bd]]
        set EN[bd] = ug(PA[bd], 1227894839)
        if KV[QA[bd]]then
            set XN[bd] = ug(PA[bd], 1227894838)
        else
            set XN[bd] = ug(PA[bd], 1227894842)
            call UnitAddAbility(PA[bd], 1093677129)
        endif
        call SetItemCharges(XN[bd], aN[bd])
    endif
    if qV[QA[bd]]then
        set WA[bd] = .5
        call UnitAddAbility(PA[bd], 1093677119)
    else
        set WA[bd] = .0
        call UnitAddAbility(PA[bd], 1093677121)
    endif
    set wA[bd] = QV[QA[bd]]
    call nK(pA[bd], wA[bd])
    set TN = bd
    call TriggerEvaluate(hV[(WV[QA[bd]])])
    set sA[bd] = true
    if lV[QA[bd]]then
        call vP(bd)
        call aP(bd)
    endif
endfunction
function EP takes integer bd returns nothing
    call gG(UX[pA[bd]], bd)
    if sA[bd]then
        if lV[QA[bd]]then
            call Up(bd)
        endif
        call nK(pA[bd], -wA[bd])
    endif
    set EN[bd] = null
    set XN[bd] = null
    call cD(bd)
    call sF("Tower "+I2S(bd)+" is deleted.")
endfunction
function XP takes integer bd returns nothing
    call DestroyEffect(AddSpecialEffect(("Objects\\Spawnmodels\\Human\\HCancelDeath\\HCancelDeath.mdx"), ((TA[bd])*1.), ((uA[bd])*1.)))
    if WA[bd]>.0 then
        set UA[bd] = vg(UA[bd]*WA[bd])
        call RK(pA[bd], UA[bd])
        call BK(pA[bd], PA[bd], UA[bd])
    endif
    call RemoveUnit(PA[bd])
    call EP(bd)
endfunction
function OP takes integer bd returns nothing
    call Pp(bX[pA[bd]], TA[bd], uA[bd], false)
    call XP(bd)
endfunction
function RP takes integer bd returns nothing
    local boolean IP = not KV[QA[bd]]
    set rN[bd] = rN[bd]+1
    call SetItemCharges(EN[bd], rN[bd])
    call jd(ON[bd])
    if lV[QA[bd]]then
        call nD(bd)
        call vP(bd)
    endif
    if IP then
        set UA[bd] = UA[bd]+aN[bd]
    endif
    if rN[bd]<wV[QA[bd]]then
        if rN[bd]<UV[QA[bd]]then
            set aN[bd] = SV[QA[bd]]*aN[bd]+(rN[bd]+1)*tV[QA[bd]]+TV[QA[bd]]
        endif
        if IP then
            call SetItemCharges(XN[bd], aN[bd])
        else
            set iN[bd] = iN[bd]+aN[bd]
        endif
    else
        if IP then
            call UnitRemoveAbility(PA[bd], 1093677129)
        endif
        call Ug(PA[bd], XN[bd])
        set xN[bd] = false
        set aN[bd] = 0
        set iN[bd] = 0
    endif
    call DestroyEffect(AddSpecialEffectTarget(("Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdx"), (PA[bd]), ("origin")))
endfunction
function AP takes integer bd, integer Vf returns nothing
    set oN[bd] = oN[bd]+Vf
    loop
        exitwhen oN[bd]<iN[bd]or(not xN[bd])
        call RP(bd)
    endloop
    if xN[bd]then
        call SetItemCharges(XN[bd], iN[bd]-oN[bd])
    endif
endfunction
function NP takes nothing returns nothing
    local integer t = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), iv))and sA[t]and KV[QA[t]]and xN[t]then
        call AP(t, NN)
    endif
endfunction
function bP takes integer bd returns nothing
    set eN[bd] = eN[bd]+1
    call SetItemCharges(VN[bd], eN[bd])
endfunction
function BP takes nothing returns boolean
    local integer t = GetUnitUserData(GetFilterUnit())
    return((IsUnitType(GetFilterUnit(), iv))and sA[t]and not KV[QA[t]]and xN[t]and(CX[(pA[t])]-(aN[t])>=0))!=null
endfunction
function cP takes integer bd returns nothing
    local integer array CP
    local integer dP
    local integer DP
    local integer n = -1
    local integer i = -1
    local group g = CreateGroup()
    local unit u
    call GroupEnumUnitsSelected(g, iX[pA[bd]], bN)
    loop
        set u = FirstOfGroup(g)
        exitwhen u==null
        call GroupRemoveUnit(g, u)
        set dP = GetUnitUserData(u)
        set n = n+1
        set CP[n] = dP
        loop
            exitwhen i<0 or aN[CP[i]]<=aN[dP]
            set DP = CP[i]
            set CP[i] = dP
            set CP[i+1] = DP
            set i = i-1
        endloop
        set i = n
    endloop
    call DestroyGroup(g)
    set g = null
    if n>-1 then
        loop
            set dP = CP[n]
            exitwhen not AK(pA[bd], aN[dP])
            call RP(dP)
            set n = n-1
            exitwhen n==-1
        endloop
    else
        call XK(pA[bd])
    endif
endfunction
function fP takes integer bd returns nothing
    if sA[bd]and lV[QA[bd]]then
        call Up(bd)
    endif
    call UnitRemoveType(PA[bd], iv)
    call cD(bd)
endfunction
function FP takes nothing returns nothing
    set IN = function nP
    set AN = Filter(function NP)
    set bN = Filter(function BP)
endfunction
function gP takes integer bd returns nothing
    set GR[bd] = (Lh(pO[(CR[bd])], (bd)))
    call xm(bd)
endfunction
function GP takes integer Cf, integer qm returns nothing
    if(not tl((Cf), (BN)))then
        if((LoadInteger(Y, MO[((Cf))], ((BN))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (BN))), PA[qm])
        else
            call gP(iF(Cf, PA[qm], BN))
        endif
    endif
endfunction
function HP takes integer bd, real jP returns nothing
    set GR[bd] = xL(CR[bd], bd, jP)
    call xm(bd)
endfunction
function JP takes integer Cf, integer qm, real jP returns nothing
    if(not tl((Cf), (cN)))then
        if((LoadInteger(Y, MO[((Cf))], ((cN))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (cN))), PA[qm])
        else
            call HP(aF(Cf, PA[qm], cN), jP)
        endif
    endif
endfunction
function KP takes integer bd, integer zj returns nothing
    set GR[bd] = aL(CR[bd], bd, zj)
    call xm(bd)
endfunction
function lP takes integer Cf, integer qm, integer zj returns nothing
    if(not tl((Cf), (CN)))then
        if((LoadInteger(Y, MO[((Cf))], ((CN))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (CN))), PA[qm])
        else
            call KP(nF(Cf, PA[qm], CN), zj)
        endif
    endif
endfunction
function mP takes integer bd, real jP returns nothing
    set GR[bd] = xL(CR[bd], bd, jP)
    call xm(bd)
endfunction
function MP takes integer Cf, integer qm, real jP returns nothing
    if(not tl((Cf), (dN)))then
        if((LoadInteger(Y, MO[((Cf))], ((dN))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (dN))), PA[qm])
        else
            call mP(VF(Cf, PA[qm], dN), jP)
        endif
    endif
endfunction
function PP takes integer bd, integer zj returns nothing
    set GR[bd] = aL(CR[bd], bd, zj)
    call xm(bd)
endfunction
function qP takes integer Cf, integer qm, integer zj returns nothing
    if(not tl((Cf), (DN)))then
        if((LoadInteger(Y, MO[((Cf))], ((DN))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (DN))), PA[qm])
        else
            call PP(EF(Cf, PA[qm], DN), zj)
        endif
    endif
endfunction
function sP takes integer bd, real iM returns nothing
    set GR[bd] = eL(CR[bd], bd, iM)
    call xm(bd)
endfunction
function SP takes integer Cf, integer qm, real iM returns nothing
    if(not tl((Cf), (fN)))then
        if((LoadInteger(Y, MO[((Cf))], ((fN))))>0)then
            call om((LoadInteger(Y, MO[(Cf)], (fN))), PA[qm])
        else
            call sP(XF(Cf, PA[qm], fN), iM)
        endif
    endif
endfunction
function eq takes integer p returns integer
    local integer bd = BF()
    call El(bd, p, mN)
    call sF(SubString("s__Conscript_create", 3, StringLength("s__Conscript_create")-7)+" "+I2S(bd)+" is created.")
    return bd
endfunction
function Oq takes integer bd returns nothing
    set xb[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((xb[bd])), (bd))
endfunction
function Rq takes integer bd returns nothing
    call gg(xb[bd])
    set xb[bd] = null
endfunction
function Iq takes nothing returns nothing
    local integer m = TN
    local integer bd = fF(m, ye)
    set yN[bd] = ug(PA[m], 1227894835)
    set eb[bd] = zA[m]
    call Oq(bd)
    call nm((eb[(bd)]), (1093677096), (wN), 1)
    call sF("AbilFocusedAttack "+I2S(bd)+" is created.")
endfunction
function Aq takes integer bd, boolean iD returns real
    if(iD and GetEventDamage()==1.)or((not iD)and zN[bd]<=.0)then
        return ZN[bd]
    endif
    return .0
endfunction
function Nq takes integer bd, real r returns nothing
    set zN[bd] = zN[bd]-r
    if zN[bd]<=.0 then
        set zN[bd] = .0
        call nm((eb[(bd)]), (1093677096), (wN), 1)
        call vP(UN[bd])
        call PauseTimer(xb[bd])
    endif
    call SetItemCharges(yN[bd], eg(zN[bd]))
endfunction
function bq takes nothing returns nothing
    call Nq(((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))), 1.)
endfunction
function Bq takes integer bd returns nothing
    set zN[bd] = YN[bd]
    call SetItemCharges(yN[bd], eg(zN[bd]))
    call TimerStart(xb[bd], 1., true, WN)
endfunction
function cq takes integer bd, real SJ returns nothing
    if SJ==.5 then
        call Nq(bd, vb[bd])
    endif
endfunction
function Cq takes integer bd, integer id returns nothing
    if id==1093677096 then
        call Om((eb[bd]), 1)
        call Bq(bd)
        call vP(UN[bd])
    endif
endfunction
function dq takes nothing returns nothing
    set WN = function bq
endfunction
function Dq takes integer bd returns nothing
    set Ob[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((Ob[bd])), (bd))
endfunction
function fq takes integer bd returns nothing
    call gg(Ob[bd])
    set Ob[bd] = null
endfunction
function Fq takes nothing returns nothing
    local integer m = TN
    local integer bd = FF(m, Ye)
    set nb[bd] = ug(PA[m], 1227894843)
    set Xb[bd] = zA[m]
    call Dq(bd)
    call nm((Xb[(bd)]), (1093677130), (ob), 1)
    call sF("AbilChillingAttack "+I2S(bd)+" is created.")
endfunction
function gq takes integer bd, boolean iD returns real
    if rN[UN[bd]]>=FV[uN[bd]]and((iD and GetEventDamage()==1.)or((not iD)and Eb[bd]<=.0))then
        return 1.
    endif
    return .0
endfunction
function Gq takes nothing returns nothing
    local integer m = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), nv))and sO[m]and eP(Ib, m)then
        call MP(m, Ib, rb)
    endif
endfunction
function hq takes integer bd, integer m, real SJ returns nothing
    if SJ==1. then
        set Ib = UN[bd]
        call GroupEnumUnitsInRange(rv, GetUnitX(mO[m]), GetUnitY(mO[m]), 128., Rb)
    else
        call eP(UN[bd], m)
    endif
endfunction
function Hq takes integer bd, real r returns nothing
    set Eb[bd] = Eb[bd]-r
    if Eb[bd]<=.0 then
        set Eb[bd] = .0
        call nm((Xb[(bd)]), (1093677130), (ob), 1)
        call vP(UN[bd])
        call PauseTimer(Ob[bd])
    endif
    call SetItemCharges(nb[bd], eg(Eb[bd]))
endfunction
function jq takes nothing returns nothing
    call Hq(((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))), 1.)
endfunction
function Jq takes integer bd returns nothing
    set Eb[bd] = Vb[bd]
    call SetItemCharges(nb[bd], eg(Eb[bd]))
    call TimerStart(Ob[bd], 1., true, ab)
endfunction
function kq takes integer bd, integer id returns nothing
    if id==1093677130 then
        call Om((Xb[bd]), 1)
        call Jq(bd)
        call vP(UN[bd])
    endif
endfunction
function Kq takes nothing returns nothing
    set ab = function jq
    set Rb = Filter(function Gq)
endfunction
function lq takes nothing returns nothing
    local integer m = TN
    local integer bd = gF(m, ze)
    call sF("AbilAcid "+I2S(bd)+" is created.")
endfunction
function Lq takes integer bd, integer m returns nothing
    local integer eJ = rN[UN[bd]]
    call GP(m, UN[bd])
    if eJ>=FV[uN[bd]]then
        call JP(m, UN[bd], Ab)
    endif
    if eJ>=gV[uN[bd]]then
        call lP(m, UN[bd], Nb)
    endif
endfunction
function mq takes integer bd returns nothing
    set gb[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((gb[bd])), (bd))
endfunction
function Mq takes integer bd returns nothing
    call gg(gb[bd])
    set gb[bd] = null
endfunction
function pq takes integer bd returns nothing
    set Gb[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((Gb[bd])), (bd))
endfunction
function Pq takes integer bd returns nothing
    call gg(Gb[bd])
    set Gb[bd] = null
endfunction
function qq takes nothing returns nothing
    local integer m = TN
    local integer bd = GF(m, vx)
    call mq(bd)
    call pq(bd)
    call sF("AbilShockwave "+I2S(bd)+" is created.")
endfunction
function Qq takes integer bd returns nothing
    set Db[bd] = Db[bd]+fb[bd]
    if Db[bd]>Fb[bd]then
        set Db[bd] = Fb[bd]
    endif
    call TimerStart(gb[bd], 1.5, false, Bb)
    call vP(UN[bd])
endfunction
function sq takes integer bd, real cx, real cy returns nothing
    if Db[bd]!=.0 then
        set Db[bd] = .0
        call vP(UN[bd])
    endif
    call Im(zA[UN[bd]], cx, cy)
    if rN[UN[bd]]>=gV[uN[bd]]then
        set Cb[bd] = cx
        set db[bd] = cy
        call TimerStart(Gb[bd], .4, false, cb)
    endif
endfunction
function Sq takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    call Im(zA[UN[bd]], Cb[bd], db[bd])
endfunction
function tq takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    set Db[bd] = .0
    call vP(UN[bd])
endfunction
function Tq takes nothing returns nothing
    set Bb = function tq
    set cb = function Sq
endfunction
function uq takes integer bd returns nothing
    set Kb[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((Kb[bd])), (bd))
endfunction
function Uq takes integer bd returns nothing
    call gg(Kb[bd])
    set Kb[bd] = null
endfunction
function wq takes nothing returns nothing
    local integer m = TN
    local integer bd = hF(m, Ze)
    set kb[bd] = zA[m]
    call uq(bd)
    call sF("AbilLightningAttack "+I2S(bd)+" is created.")
endfunction
function Wq takes integer bd, boolean iD returns real
    local real kl = .0
    if iD and rN[UN[bd]]<FV[uN[bd]]then
        set kl = kl+jb[bd]*Hb
    endif
    if(iD and GetEventDamage()==1.)or((not iD)and Jb[bd])then
        set kl = kl+.5
    endif
    return kl
endfunction
function yq takes integer bd returns nothing
    set jb[bd] = jb[bd]+1
endfunction
function Yq takes integer bd returns nothing
    if jb[bd]==1 then
        call Xm(kb[bd], 1093677140, hb)
    else
        call Rm(kb[bd])
    endif
    set jb[bd] = 0
    call TimerStart(Kb[bd], .51, false, lb)
endfunction
function zq takes integer bd, integer id returns nothing
    if id==1093677140 then
        set Jb[bd] = false
        call vP(UN[bd])
    endif
endfunction
function Zq takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    set Jb[bd] = jb[bd]==1
    call vP(UN[bd])
endfunction
function vQ takes nothing returns nothing
    set lb = function Zq
endfunction
function eQ takes nothing returns nothing
    local integer m = TN
    local integer bd = HF(m, ex)
    call sF("AbilBloodlust "+I2S(bd)+" is created.")
endfunction
function xQ takes integer bd returns nothing
    call DestroyEffect(AddSpecialEffectTarget(("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdx"), (PA[UN[bd]]), ("overhead")))
    set mb[bd] = mb[bd]+1.
endfunction
function oQ takes integer bd, integer m returns nothing
    set Lb[bd] = (1.-Cl(m))*1.
    if eP(UN[bd], m)then
        set Lb[bd] = .0
    else
        set Lb[bd] = .0
        call vP(UN[bd])
    endif
endfunction
function rQ takes integer bd returns nothing
    set Wb[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((Wb[bd])), (bd))
endfunction
function iQ takes integer bd returns nothing
    call gg(Wb[bd])
    set Wb[bd] = null
endfunction
function aQ takes nothing returns nothing
    local integer m = TN
    local integer bd = jF(m, xx)
    call rQ(bd)
    set tb[bd] = tp(UN[bd], 416., Mb, pb, Pb, false)
    set wb[bd] = pA[m]
    call UnitAddAbility(PA[UN[bd]], 1093677127)
    call TimerStart(Wb[bd], 6., true, Qb)
    call sF("AbilExpGenerator "+I2S(bd)+" is created.")
endfunction
function nQ takes integer bd, boolean VQ returns nothing
    if ub[bd]==null then
        set ub[bd] = cg(iX[wb[bd]], "Abilities\\Spells\\Other\\Aneu\\AneuCaster.mdx", Tb[bd], "overhead")
        if VQ and IX[wb[bd]]then
            call AddIndicator(Tb[bd], $FF, $FF, $FF, $FF)
        endif
    endif
endfunction
function EQ takes integer bd returns nothing
    if ub[bd]!=null then
        call DestroyEffect(ub[bd])
        set ub[bd] = null
    endif
endfunction
function XQ takes integer bd, integer Gk returns nothing
    if Sb[bd]==0 then
        call Lg(tb[bd], false, "AbilExpGenerator.ToggleMode")
        call UnitRemoveAbility(PA[UN[bd]], 1093677106)
    elseif Sb[bd]==2 then
        call UnitRemoveAbility(PA[UN[bd]], 1093677111)
    else
        set Tb[bd] = null
        call EQ(bd)
        call UnitRemoveAbility(PA[UN[bd]], 1093677138)
    endif
    if Gk==0 then
        call Lg(tb[bd], IsUnitSelected(PA[UN[bd]], iX[wb[bd]]), "AbilExpGenerator.ToggleMode")
        call UnitAddAbility(PA[UN[bd]], 1093677106)
    elseif Gk==2 then
        call UnitAddAbility(PA[UN[bd]], 1093677111)
    else
        set Ub[bd] = Sb[bd]
        call UnitAddAbility(PA[UN[bd]], 1093677138)
    endif
    set Sb[bd] = Gk
endfunction
function OQ takes integer bd, integer t returns nothing
    if Tb[bd]!=PA[t]then
        if Sb[bd]==1 then
            call EQ(bd)
        else
            call XQ(bd, 1)
        endif
        set Tb[bd] = PA[t]
        call nQ(bd, false)
    endif
endfunction
function RQ takes nothing returns nothing
    local integer t = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), iv))and sA[t]and vC[ON[t]]==115 then
        call OQ(ON[t], Yb)
    endif
endfunction
function IQ takes integer bd, integer t returns nothing
    if not sA[t]then
        call yk((wb[bd]), kx, Do[bo]+"Error|r: "+("this tower is constructing."))
    elseif not KV[QA[t]]then
        call yk((wb[bd]), kx, Do[bo]+"Error|r: "+("this tower does not use experience."))
    elseif not xN[t]then
        call yk((wb[bd]), kx, Do[bo]+"Error|r: "+("this tower can no longer be upgraded."))
    else
        set Yb = t
        call GroupEnumUnitsSelected(rv, iX[wb[bd]], yb)
    endif
endfunction
function AQ takes nothing returns nothing
    local integer t = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), iv))and sA[t]and vC[ON[t]]==115 and Sb[(ON[t])]==Zb then
        call XQ((ON[t]), vB)
    endif
endfunction
function NQ takes integer bd, integer id returns nothing
    if id==1093677106 then
        set vB = 2
    elseif id==1093677111 then
        set vB = 0
    elseif id==1093677138 then
        set vB = Ub[bd]
    else
        return
    endif
    set Zb = Sb[bd]
    call GroupEnumUnitsSelected(rv, iX[wb[bd]], zb)
endfunction
function bQ takes integer bd returns nothing
    call gK(wb[bd], qb)
    call GK(wb[bd], PA[UN[bd]], qb)
endfunction
function BQ takes nothing returns nothing
    local integer t = GetUnitUserData(GetFilterUnit())
    if(IsUnitType(GetFilterUnit(), iv))and sA[t]and KV[QA[t]]and xN[t]then
        call AP(t, 8)
        set xB = false
    endif
endfunction
function cQ takes integer bd returns nothing
    set xB = true
    call GroupEnumUnitsInRange(rv, TA[UN[bd]], uA[UN[bd]], 416., eB)
    if xB then
        call XQ(bd, 2)
        call bQ(bd)
    endif
endfunction
function CQ takes integer bd returns nothing
    local integer t = GetUnitUserData(Tb[bd])
    call AP(t, vg(.2*aN[t]))
endfunction
function dQ takes integer bd returns nothing
    if Sb[bd]==0 then
        call Lg(tb[bd], true, "AbilExpGenerator.onSelect")
    elseif Sb[bd]==1 and UnitAlive(Tb[bd])then
        call nQ(bd, true)
    endif
endfunction
function DQ takes integer bd returns nothing
    if Sb[bd]==0 then
        call Lg(tb[bd], false, "AbilExpGenerator.onDeselect")
    elseif Sb[bd]==1 and UnitAlive(Tb[bd])then
        call EQ(bd)
    endif
endfunction
function fQ takes integer bd returns boolean
    if UnitAlive(Tb[bd])and xN[(GetUnitUserData(Tb[bd]))]then
        return true
    endif
    call XQ(bd, Ub[bd])
    return false
endfunction
function FQ takes integer bd returns nothing
    if Sb[bd]==1 and fQ(bd)then
        call CQ(bd)
    elseif Sb[bd]==0 then
        call cQ(bd)
    else
        call bQ(bd)
    endif
    call DestroyEffect(AddSpecialEffectTarget(("Abilities\\Spells\\NightElf\\MoonWell\\MoonWellCasterArt.mdx"), (PA[UN[bd]]), ("origin")))
endfunction
function gQ takes nothing returns nothing
    call FQ(((LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))))
endfunction
function GQ takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    call FQ(bd)
    if rN[UN[bd]]>=FV[uN[bd]]then
        call TimerStart(Wb[bd], 3., true, sb)
    endif
endfunction
function hQ takes nothing returns nothing
    set Qb = function GQ
    set sb = function gQ
    set eB = Filter(function BQ)
    set yb = Filter(function RQ)
    set zb = Filter(function AQ)
endfunction
function HQ takes integer bd returns nothing
    set NB[bd] = CreateTimer()
    call SaveInteger(Y, 8, GetHandleId((NB[bd])), (bd))
endfunction
function jQ takes integer bd returns nothing
    call gg(NB[bd])
    set NB[bd] = null
endfunction
function JQ takes integer bd, integer m returns nothing
    local integer eJ = rN[UN[bd]]
    set VB[bd] = VB[bd]-30
    call SetItemCharges(IB[bd], VB[bd])
    call Gl(m, EB[bd], "Effects\\RestoreHealthGreen.mdx", "origin")
    call DestroyEffect(AddSpecialEffectTarget(("Abilities\\Spells\\NightElf\\MoonWell\\MoonWellCasterArt.mdx"), (PA[UN[bd]]), ("origin")))
    if eJ>=FV[uN[bd]]then
        call qP(m, UN[bd], 25)
        if eJ>=gV[uN[bd]]then
            call SP(m, UN[bd], .1*(yn[tO[(m)]]))
        endif
    endif
endfunction
function kQ takes integer bd returns nothing
    local integer a = 0
    local real KQ = .0
    local real Sh = .0
    local integer JD = 0
    local boolean lQ = true
    local integer Ah = YX[RB[bd]]
    loop
        exitwhen a>rr[Ah]
        set Sh = Cl((er[xr[(Ah)]+(a)]))
        if lQ or Sh<KQ then
            set KQ = Sh
            set JD = (er[xr[(Ah)]+(a)])
            set lQ = false
        endif
        set a = a+1
    endloop
    if JD!=0 and KQ<=XB[bd]then
        call JQ(bd, JD)
    endif
endfunction
function LQ takes nothing returns nothing
    local integer bd = (LoadInteger(Y, 8, GetHandleId(GetExpiredTimer())))
    local integer Sh = VB[bd]
    set AB[bd] = AB[bd]+1
    if AB[bd]==3 then
        set AB[bd] = 0
        if VB[bd]<50 and fK(RB[bd], iB)then
            set VB[bd] = VB[bd]+iB
            if VB[bd]>50 then
                set VB[bd] = 50
            endif
            set Sh = VB[bd]-Sh
            call SetItemCharges(IB[bd], VB[bd])
            call GK(RB[bd], PA[UN[bd]], Sh)
        endif
    endif
    if VB[bd]>=30 and OB[bd]then
        call kQ(bd)
    endif
endfunction
function mQ takes nothing returns nothing
    local integer m = TN
    local integer bd = JF(m, ox)
    set RB[bd] = pA[m]
    set IB[bd] = ug(PA[m], 1227894843)
    call HQ(bd)
    call TimerStart(NB[bd], 1., true, function LQ)
    call sF("AbilReplenishLife "+I2S(bd)+" is created.")
endfunction
function MQ takes integer bd, integer wJ returns nothing
    if wJ==oB or wJ==rB then
        set OB[bd] = not OB[bd]
    endif
endfunction
function pQ takes nothing returns nothing
    local integer bd = kF()
    call Sp(bd, bB)
    call UnitAddAbility(PA[bd], 1093677101)
    call sF("Wall "+I2S(bd)+" is created.")
endfunction
function PQ takes unit u returns nothing
    local integer bd = GetUnitUserData(u)
    if NK(pA[bd], PV[(BB[bd])])then
        set sA[bd] = false
    else
        call DisableTrigger(ke)
        call IssueImmediateOrderById(PA[bd], Q)
        call EnableTrigger(ke)
    endif
endfunction
function qQ takes unit u returns nothing
    local integer bd = GetUnitUserData(u)
    local integer Sh = PV[(BB[bd])]
    set sA[bd] = true
    call RK(pA[bd], Sh)
    call BK(pA[bd], PA[bd], Sh)
endfunction
function QQ takes unit u returns nothing
    local integer bd = GetUnitUserData(u)
    local integer p = pA[bd]
    local real x = TA[bd]
    local real y = uA[bd]
    local integer T = BB[bd]
    call RK(pA[bd], UA[bd])
    call BK(pA[bd], PA[bd], UA[bd])
    call EP(bd)
    call Qp(u, p, x, y, T)
    call VP((GetUnitUserData(u)))
endfunction
function SQ takes nothing returns nothing
    local integer bd = KF()
    call Sp(bd, cB)
    call sF("Arrow "+I2S(bd)+" is created.")
endfunction
function TQ takes nothing returns nothing
    local integer bd = lF()
    call Sp(bd, CB)
    call sF("Arcane "+I2S(bd)+" is created.")
endfunction
function UQ takes nothing returns nothing
    local integer bd = LF()
    call Sp(bd, dB)
    call sF("Multishot "+I2S(bd)+" is created.")
endfunction
function WQ takes nothing returns nothing
    local integer bd = mF()
    call Sp(bd, DB)
    call sF("Wave "+I2S(bd)+" is created.")
endfunction
function YQ takes nothing returns nothing
    local integer bd = MF()
    call Sp(bd, fB)
    call sF("Lightning "+I2S(bd)+" is created.")
endfunction
function ZQ takes nothing returns nothing
    local integer bd = pF()
    call Sp(bd, FB)
    call sF("Blood "+I2S(bd)+" is created.")
endfunction
function es takes nothing returns nothing
    local integer bd = lf()
    call Sp(bd, gB)
    call sF("FoE "+I2S(bd)+" is created.")
endfunction
function os takes integer p, integer id, real hl returns nothing
    local integer d = yE[YE[xO[p]]+id]
    call oJ(d, wn[d]*hl, vO[p])
    call iJ(d, Wn[d]*hl, vO[p])
endfunction
function rs takes nothing returns nothing
    local integer p = JO
    local integer eJ = vO[p]
    local real is
    local real as
    local integer a = 1
    local integer d = yE[YE[xO[p]]+BE[re[a]]]
    set is = wn[d]*1.
    set as = Wn[d]*1.
    call oJ(d, is, eJ)
    call iJ(d, as, eJ)
    set a = 2
    loop
        exitwhen a>NE
        set d = yE[YE[xO[p]]+BE[re[a]]]
        call oJ(d, is, eJ)
        call iJ(d, as, eJ)
        set a = a+1
    endloop
endfunction
function Vs takes nothing returns nothing
    local integer p = JO
    local integer d
    local integer a = 1
    loop
        set d = yE[YE[xO[p]]+BE[re[a]]]
        call Yj(d, 75)
        call Zj(d, 75)
        set a = a+1
        exitwhen a>NE
    endloop
endfunction
function Es takes nothing returns nothing
    local integer d = xO[JO]
    call Zj(yE[YE[d]+mN], 25)
    call Zj(yE[YE[d]+MN], 25)
    call Zj(yE[YE[d]+pN], 25)
    call Zj(yE[YE[d]+PN], 25)
endfunction
function Xs takes nothing returns nothing
    call os(JO, mN, 1.)
endfunction
function Os takes nothing returns nothing
    local integer Rs = JO
    local integer d = yE[YE[xO[Rs]]+mN]
    local integer a = 2
    local integer m
    local integer Is
    set kn[(d)] = (a)
    call nj(d, Gn[d]/ a, hn[d]/ a, Hn[d]/ a, jn[d]/ a)
    set a = 0
    set Is = To[wX[Rs]]
    loop
        exitwhen a>Is
        set m = (So[to[(wX[Rs])]+(a)])
        if kO[m]==mN then
            call eq(Rs)
        endif
        set a = a+1
    endloop
endfunction
function As takes nothing returns nothing
    call os(JO, pN, .5)
endfunction
function Ns takes nothing returns nothing
    call Yj(yE[YE[xO[(JO)]]+(PN)], (25))
endfunction
function InitGlobals takes nothing returns nothing
endfunction
function bs takes nothing returns nothing
    local integer i = 0
    local integer Ah
    local integer a
    loop
        exitwhen i>Ko
        set Ah = yX[(ko[(i)])]
        set a = 0
        loop
            exitwhen a>rr[Ah]
            call rf((er[xr[(Ah)]+(a)]))
            set a = a+1
        endloop
        set i = i+1
    endloop
endfunction
function Bs takes nothing returns nothing
    local integer i = 0
    local integer Ah
    local integer a
    loop
        exitwhen i>Ko
        set Ah = yX[(ko[(i)])]
        set a = 0
        loop
            exitwhen a>rr[Ah]
            call af((er[xr[(Ah)]+(a)]))
            set a = a+1
        endloop
        set i = i+1
    endloop
endfunction
function cs takes nothing returns nothing
    if dv!=Dv then
        set Dv = dv
        set fv = 1
        if(Dv)then
            call SetFloatGameState(GAME_STATE_TIME_OF_DAY, ((12.)*1.))
            call StartSound(bv)
            call Yg()
            call bs()
        else
            call SetFloatGameState(GAME_STATE_TIME_OF_DAY, ((.0)*1.))
            call StartSound(Bv)
            call zg()
            call Bs()
        endif
    else
        set fv = fv+1
    endif
    if fv==3 then
        set dv = not Dv
    else
        set dv = (GetRandomInt(1, W*2)<=W)
    endif
endfunction
function Cs takes nothing returns nothing
    call KillUnit(sX[Mv])
    call DestroyEffect(AddSpecialEffectTarget(("Units\\NightElf\\Wisp\\WispExplode.mdx"), (sX[Mv]), ("origin")))
    call EnableUserControl(true)
    call DestroyTimer(GetExpiredTimer())
endfunction
function ds takes nothing returns nothing
    local string s = "Player "+VX[Mv]+" wins the game!"
    call OG(s+"
"+Do[Io]+"Congratulations!|r", 30)
    call MultiboardSetTitleText(tx, s)
    call TimerStart(GetExpiredTimer(), pv, false, function Cs)
endfunction
function Ds takes integer fs returns nothing
    if Z then
        set Z = false
        call ClearSelection()
        set jv = false
        call NG()
        call tK(fs)
        call EnableUserControl(false)
        call StopMusic(false)
        call ClearMapMusic()
        call xG()
        call PlayMusic("Sound\\Music\\mp3Music\\HeroicVictory.mp3")
        call PanCameraToTimed(vi[bX[fs]], Uv, .8)
        call ClearTextMessages()
        call DisplayTimedTextToPlayer(A, .0, .0, ((.8*2.)*1.), ("And the winner is..."))
        call MultiboardSetTitleText(tx, "And the winner is...")
        call TimerStart(CreateTimer(), .8, false, function ds)
    endif
endfunction
function Fs takes nothing returns nothing
    if Z then
        call AG()
        call MultiboardSetTitleText(tx, "You have lost the game")
        call IG("", Pv)
    endif
endfunction
function gs takes string Gs returns nothing
    local integer i = 0
    loop
        exitwhen i>Jo
        if OX[(jo[(i)])]then
            call Wk((jo[(i)]), Gs)
        endif
        set i = i+1
    endloop
endfunction
function hs takes string Gs, sound Yk, string Hs returns nothing
    local integer i = 0
    local integer p
    loop
        exitwhen i>Jo
        set p = (jo[(i)])
        if RX[p]then
            call yk(p, Yk, Hs)
        elseif OX[p]then
            call Wk(p, Gs)
        endif
        set i = i+1
    endloop
endfunction
function js takes string Gs returns nothing
    call hs(Gs, Lx, Gs+"
"+Do[No]+"Warning|r: new foes are assigned.")
endfunction
function Js takes nothing returns nothing
    if(IsUnitType(GetFilterUnit(), nv))then
        call tL((GetUnitUserData(GetFilterUnit())))
    elseif(IsUnitType(GetFilterUnit(), iv))then
        call fP((GetUnitUserData(GetFilterUnit())))
    endif
    call SetUnitOwner(GetFilterUnit(), Player($F), false)
endfunction
function ks takes nothing returns nothing
    local integer Ah = wX[GO]
    if Z then
        loop
            exitwhen To[Ah]==-1
            call WD((So[to[(Ah)]+(To[Ah])]))
        endloop
        call sF("forces of player "+I2S(GO)+" is flushed.")
    endif
endfunction
function Ks takes nothing returns nothing
    local integer Ah = WX[GO]
    if Z then
        loop
            exitwhen Yo[Ah]==-1
            call Bl((Wo[yo[(Ah)]+(Yo[Ah])]))
        endloop
        call sF("spawned of player "+I2S(GO)+" is flushed.")
    endif
endfunction
function Ls takes nothing returns nothing
    local integer Ah = yX[GO]
    if Z then
        loop
            exitwhen rr[Ah]==-1
            call QL((er[xr[(Ah)]+(rr[Ah])]))
        endloop
        call sF("minions of player "+I2S(GO)+" is flushed.")
    endif
endfunction
function ms takes nothing returns nothing
    local integer Ah = ZX[GO]
    if Z then
        loop
            exitwhen Xr[Ah]==-1
            call PL((Vr[Er[(Ah)]+(Xr[Ah])]))
        endloop
        call sF("dead of player "+I2S(GO)+" is flushed.")
    endif
endfunction
function Ms takes nothing returns nothing
    local integer Ah = UX[GO]
    if Z then
        loop
            exitwhen Po[Ah]==-1
            call XP((Mo[po[(Ah)]+(Po[Ah])]))
        endloop
        call sF("towers of player "+I2S(GO)+" is flushed.")
    endif
endfunction
function ps takes nothing returns nothing
    set hB = -1
    loop
        set hB = hB+1
        set GB[(hB)] = (ko[(hB)])
        set cX[GB[(hB)]] = hB
        exitwhen hB==Ko
    endloop
endfunction
function Ps takes integer dG returns nothing
    local integer i = cX[dG]
    if i>-1 then
        if hB>i then
            set GB[(i)] = GB[(hB)]
            set cX[GB[(i)]] = i
        endif
        set hB = hB-1
        set cX[dG] = -1
    else
        call bG("an attempt of CustomPlayer "+I2S(dG)+" to be deleted from FreePlayers second time", "FreePlayersDelete")
    endif
endfunction
function s__FreePlayers_SelectFoeAnyPlayer takes nothing returns integer
    return GB[(Dg(0, hB))]
endfunction
function qs takes integer p returns integer
    local integer array Qs
    local integer e
    local integer n = -1
    local integer a = 0
    loop
        exitwhen a>hB
        set e = GB[(a)]
        if p!=e then
            set n = n+1
            set Qs[n] = e
        endif
        set a = a+1
    endloop
    if n==-1 then
        call bG("no enemy is remaining for player "+I2S(p), "SelectFoeAnyEnemy")
    endif
    return Qs[Dg(0, n)]
endfunction
function ss takes integer p, integer Lk returns nothing
    call lk(p, Lk)
    call Ps(Lk)
endfunction
function Ss takes integer p returns nothing
    call ss(p, qs(p))
endfunction
function Ts takes nothing returns nothing
    local integer i = 0
    local integer p
    loop
        exitwhen i>Ko
        set p = (ko[(i)])
        call qF(7, p)
        if To[wX[p]]!=-1 then
            call bG("sending minions of player "+I2S(p)+" was not finished", "PlayerSendMinions")
        endif
        if Jv and kv<=hv and(25<hv or WF(hv))then
            call yK(p)
        endif
        call Uk(p)
        if 31<hv then
            call pK(p)
        endif
        call bK(p, FX[p])
        call yk(p, Kx, "You receive "+Do[ao]+I2S(FX[p])+"|r Gold.")
        set i = i+1
    endloop
endfunction
function us takes nothing returns nothing
    local integer i = 0
    local integer p1
    local integer p2
    local boolean Us
    local boolean ws
    call ps()
    loop
        exitwhen hB==1
        set p1 = (ko[(i)])
        call Ss(p1)
        set i = i+1
    endloop
    set p1 = (ko[(i)])
    set p2 = (ko[(i+1)])
    set Us = (GB[(0)])==p1 or(GB[(1)])==p1
    set ws = (GB[(0)])==p2 or(GB[(1)])==p2
    if Us or ws then
        if Us and ws then
            call lk(p1, p2)
            call lk(p2, p1)
        elseif Us then
            call ss(p2, p1)
            call lk(p1, (GB[(0)]))
        else
            call ss(p1, p2)
            call lk(p2, (GB[(0)]))
        endif
    else
        call ss((p1), (GB[(Dg(0, hB))]))
        call lk(p2, (GB[(0)]))
    endif
endfunction
function Ws takes nothing returns nothing
    if Z then
        call us()
    endif
endfunction
function InitTrig_StartWave takes nothing returns nothing
    set ge = CreateTrigger()
endfunction
function ys takes nothing returns nothing
    local integer p = (Oe[GetPlayerId((GetTriggerPlayer()))])
    local string Gs = "Player "+VX[p]+" has left the game."
    local boolean Ys = SK(p)
    local boolean zs = Ko>0
    if Ys and zs then
        call us()
        call js(Gs)
    elseif zs then
        call gs(Gs)
    else
        call Ds((ko[(0)]))
    endif
endfunction
function xS takes nothing returns nothing
    call sp(GetConstructingStructure())
    call TimerStart(fO[((Oe[GetPlayerId((GetTriggerPlayer()))]))], .0, false, gO)
endfunction
function rS takes nothing returns nothing
    call OP((GetUnitUserData(GetCancelledStructure())))
endfunction
function aS takes nothing returns nothing
    call VP((GetUnitUserData(GetConstructedStructure())))
endfunction
function VS takes nothing returns nothing
    call PQ(GetTriggerUnit())
endfunction
function XS takes nothing returns nothing
    call qQ(GetTriggerUnit())
endfunction
function RS takes nothing returns nothing
    call QQ(GetTriggerUnit())
endfunction
function dS takes nothing returns nothing
    local integer m = GetUnitUserData(GetLeavingUnit())
    if RX[lO[m]]and QO[m]then
        call Of(m)
    endif
endfunction
function fS takes nothing returns nothing
    local integer m = GetUnitUserData(GetEnteringUnit())
    local integer Lk = lO[m]
    if sO[m]and RX[Lk]then
        call MK(Lk, Kn[tO[m]])
        call dL(m, Lk)
        if Lk!=KO[m]and RX[KO[m]]then
            call MK(KO[m], ln[tO[m]])
        endif
        call DestroyEffect(AddSpecialEffect(("Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdx"), ((GetUnitX(mO[m]))*1.), ((GetUnitY(mO[m]))*1.)))
        if gX[Lk]>0 then
            call QL(m)
        else
            call sK(Lk)
            if bj_isSinglePlayer then
                call Fs()
            elseif Ko>0 then
                call us()
                call js("Player "+VX[Lk]+" has been defeated.")
            else
                call Ds((ko[(0)]))
            endif
        endif
    endif
endfunction
function gS takes unit b, integer id returns nothing
    local integer p = (Oe[GetPlayerId((GetOwningPlayer(b)))])
    if id==qE[EO[p]]then
        if IX[p]then
            call ClearSelection()
            call SelectUnit(SX[p], true)
        endif
        if OO[p]!=EO[p]then
            call qk(p)
        endif
        return
    endif
    if id==QE[XO[p]]then
        if IX[p]then
            call ClearSelection()
            call SelectUnit(SX[p], true)
        endif
        if OO[p]!=XO[p]then
            call qk(p)
        endif
        return
    endif
    if(id==FE[aO[p]]or id==1093677364)and IX[p]then
        call ClearSelection()
        call SelectUnit(TX[p], true)
    endif
endfunction
function GS takes unit b, integer id returns nothing
    local integer p = (Oe[GetPlayerId((GetOwningPlayer(b)))])
    if WK(p, id)then
        return
    endif
    if id==1093677123 then
        if IX[p]then
            call ClearSelection()
            call SelectUnit(tX[p], true)
        endif
        if OO[p]!=IO[p]then
            call sk(p)
        endif
        return
    endif
    if id==1093677135 and IX[p]then
        call ClearSelection()
        call SelectUnit(TX[p], true)
        return
    endif
    if id==1093677144 and IX[p]then
        call ClearSelection()
        call SelectUnit(uX[p], true)
        return
    endif
    if id==1093677124 then
        call qk(p)
    endif
endfunction
function hS takes unit b, integer id returns nothing
    local integer p = (Oe[GetPlayerId((GetOwningPlayer(b)))])
    if YK(p, id)then
        return
    endif
    if id==1093677362 then
        call sk(p)
        return
    endif
    if id==1093677361 then
        call uL(p)
    endif
endfunction
function HS takes unit b, integer id returns nothing
    local integer p = (Oe[GetPlayerId((GetOwningPlayer(b)))])
    if id==gE[PE[EO[p]]]then
        call UnitRemoveAbility(b, GE[PE[XO[p]]])
        call uk(p, PE[EO[p]])
        return
    endif
    if id==GE[PE[XO[p]]]then
        call UnitRemoveAbility(b, gE[PE[EO[p]]])
        call uk(p, PE[XO[p]])
        return
    endif
    if tk(p, id)then
        return
    endif
    if YK(p, id)then
        return
    endif
endfunction
function jS takes unit b, integer id returns nothing
    call WK((Oe[GetPlayerId((GetOwningPlayer(b)))]), id)
endfunction
function JS takes integer qm, integer id, integer JD returns nothing
    if id==1093677119 or id==1093677121 then
        call OP(qm)
        return
    endif
    if id==1093677129 then
        call cP(qm)
        return
    endif
    if id==1093677127 then
        call IQ(ON[qm], JD)
    endif
endfunction
function kS takes nothing returns nothing
    local integer id = GetSpellAbilityId()
    local unit u = GetSpellAbilityUnit()
    local integer qm = GetUnitUserData(u)
    local integer JD = GetUnitUserData(GetSpellTargetUnit())
    local integer T = GetUnitTypeId(u)
    if T==1112294482 then
        call gS(u, id)
    elseif T==1112689491 then
        call GS(u, id)
    elseif T==1112232788 then
        call hS(u, id)
    elseif T==1095521362 then
        call HS(u, id)
    elseif T==1296256336 then
        call jS(u, id)
    elseif(IsUnitType((u), iv))then
        call JS(qm, id, JD)
    endif
    set u = null
endfunction
function lS takes integer qm, integer id returns nothing
    local integer UJ = ON[qm]
    if vC[UJ]==109 then
        call Cq(UJ, id)
        return
    endif
    if vC[UJ]==110 then
        call kq(UJ, id)
        return
    endif
    if vC[UJ]==113 then
        call zq(UJ, id)
        return
    endif
    if vC[UJ]==115 then
        call NQ(UJ, id)
    endif
endfunction
function LS takes integer m, integer id returns nothing
    if id==1093677099 then
        call GroupEnumUnitsSelected(rv, iX[(KO[m])], RR)
        return
    endif
    if id==1093677122 or id==1093677146 then
        call WD(m)
    endif
endfunction
function mS takes nothing returns nothing
    local integer id = GetSpellAbilityId()
    local unit u = GetSpellAbilityUnit()
    local integer qm = GetUnitUserData(u)
    if(IsUnitType((u), iv))or(IsUnitType((u), av))then
        call lS(qm, id)
    elseif(IsUnitType((u), nv))then
        call LS(qm, id)
    endif
    set u = null
endfunction
function pS takes unit b, integer id returns nothing
    local integer p = (Oe[GetPlayerId((GetOwningPlayer(b)))])
    call xK(p, id)
endfunction
function PS takes integer qm, integer id returns nothing
    local integer UJ = ON[qm]
    if((LoadInteger(Y, fe, ((id))))>0)then
        set BB[(qm)] = (LoadInteger(Y, fe, (id)))
        return
    endif
    if vC[UJ]==116 then
        call MQ(UJ, id)
    endif
endfunction
function qS takes nothing returns nothing
    local integer id = GetIssuedOrderId()
    local unit u = GetOrderedUnit()
    local integer qm = GetUnitUserData(u)
    local integer T = GetUnitTypeId(u)
    if T==1112294482 then
        call pS(u, id)
    elseif(IsUnitType((u), iv))then
        call PS(qm, id)
    endif
    set u = null
endfunction
function sS takes unit b, integer id, real x, real y returns nothing
    if((LoadInteger(Y, fe, ((id))))>0)then
        call SetUnitX(b, x)
        call SetUnitY(b, y)
    endif
endfunction
function SS takes nothing returns nothing
    local integer id = GetIssuedOrderId()
    local unit u = GetOrderedUnit()
    local integer s = GetUnitUserData(u)
    local integer T = GetUnitTypeId(u)
    local real x = GetOrderPointX()
    local real y = GetOrderPointY()
    local integer tS = bX[(Oe[GetPlayerId((GetOwningPlayer(u)))])]
    if T==1112294482 and Zr[tS]<=x and x<=zr[tS]then
        call sS(u, id, x, y)
    elseif(IsUnitType((u), nv))then
        call vl(s, id)
    endif
    set u = null
endfunction
function uS takes nothing returns nothing
    local integer id = GetIssuedOrderId()
    local unit u = GetOrderedUnit()
    local integer s = GetUnitUserData(u)
    if(IsUnitType((u), nv))then
        call vl(s, id)
    endif
    set u = null
endfunction
function wS takes unit u returns nothing
    local integer CP = GetUnitUserData(u)
    if(IsUnitType((u), iv))then
        call ND((CP))
    endif
endfunction
function WS takes nothing returns nothing
    if GetTriggerPlayer()==GetOwningPlayer(GetTriggerUnit())then
        call wS(GetTriggerUnit())
    endif
endfunction
function YS takes unit u returns nothing
    local integer CP = GetUnitUserData(u)
    if(IsUnitType((u), iv))then
        call bD((CP))
    endif
endfunction
function zS takes nothing returns nothing
    if GetTriggerPlayer()==GetOwningPlayer(GetTriggerUnit())then
        call YS(GetTriggerUnit())
    endif
endfunction
function vt takes integer t, integer m returns nothing
    if not(la[pO[(m)]])then
        call VD(t, m)
    endif
endfunction
function et takes unit DD, unit xt, real SJ returns nothing
    local integer dd = GetUnitUserData(DD)
    local integer JD = GetUnitUserData(xt)
    call SetWidgetLife(xt, GetWidgetLife(xt)+SJ)
    if(IsUnitType((DD), av))then
        call vt(dd, JD)
    elseif(IsUnitType((DD), Vv))then
        call jD((dd), (JD))
    endif
endfunction
function ot takes nothing returns nothing
    if GetEventDamage()>.0 and(GetUnitTypeId((GetEventDamageSource()))!=0)then
        call et(GetEventDamageSource(), GetTriggerUnit(), GetEventDamage())
    endif
endfunction
function at takes string nt, boolean Vt, code Et, string Xt returns nothing
    local string s
    set HB = HB+1
    set jB[(HB)] = CreateTrigger()
    call TriggerAddAction(jB[((HB))], (Et))
    set JB[(HB)] = nt
    set kB[(HB)] = StringLength(nt)
    set KB[(HB)] = Vt
    if Vt then
        set s = ""
    else
        set s = " #"
    endif
    set lB[(HB)] = "|cffffcc80"+nt+s+"|r -> "+Xt
    call SaveInteger(Y, 18, GetHandleId(jB[(HB)]), HB)
endfunction
function Ot takes integer bd, player p returns nothing
    call TriggerRegisterPlayerChatEvent(jB[bd], p, JB[bd], KB[bd])
endfunction
function Rt takes integer bd returns boolean
    return SubString(GetEventPlayerChatString(), 0, kB[bd])==JB[bd]
endfunction
function It takes integer bd returns string
    return StringCase(SubString(GetEventPlayerChatString(), kB[bd]+1, StringLength(GetEventPlayerChatString())), false)
endfunction
function GetCheat takes nothing returns integer
    return LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger()))
endfunction
function At takes player p returns nothing
    local integer a = 1
    local string s
    loop
        if a+1<=HB and StringLength(lB[(a)])<=60 and StringLength(lB[(a+1)])<=60 then
            set s = lB[(a)]+";     "+lB[(a+1)]
            set a = a+1
        else
            set s = lB[(a)]
        endif
        if a==HB then
            call DisplayTimedTextToPlayer(p, .0, .0, 60., s+".")
            return
        else
            call DisplayTimedTextToPlayer(p, .0, .0, 60., s+";")
            set a = a+1
        endif
    endloop
endfunction
function Nt takes nothing returns nothing
    call At(GetTriggerPlayer())
endfunction
function bt takes integer p, integer Bt returns nothing
    local integer Tk = LV[(bB)]
    local integer Gj = CX[p]
    local real zG = ei[bX[p]]
    local real YG = xi[bX[p]]
    local real x = YG
    local real y = 320.
    local boolean ct = true
    local unit u
    if Bt==0 then
        set Bt = -1
    endif
    call EK(p, 99999)
    call DisableTrigger(Pe)
    loop
        if IssueBuildOrderById(sX[p], Tk, x, y)then
            call IssueImmediateOrderById(sX[p], M)
            set u = CreateUnit(iX[p], Tk, x, y, 270.)
            call oD(u)
            if(GetUnitTypeId((u))!=0)then
                call VP((GetUnitUserData(u)))
            endif
        endif
        if ct then
            set x = x+128.
            if x>=zG then
                set ct = false
                set y = y-256.
                set Bt = Bt-1
            endif
        else
            set x = x-128.
            if x<=YG then
                set ct = true
                set y = y-256.
                set Bt = Bt-1
            endif
        endif
        exitwhen Bt==0 or y<sv
    endloop
    call EnableTrigger(Pe)
    set u = null
    call EK(p, Gj)
    call Uk(p)
    call Wk(p, "Maze is |cff33cc33completed|r.")
endfunction
function Ct takes nothing returns nothing
    local integer dt = (LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger())))
    if Rt(dt)then
        call bt((Oe[GetPlayerId((GetTriggerPlayer()))]), (S2I(It((dt)))))
    endif
endfunction
function Dt takes boolean b returns string
    if b then
        return"|cff33cc33enabled|r."
    endif
    return"|cffcc3333disabled|r."
endfunction
function ft takes nothing returns nothing
    set jv = not jv
    call Wk((Oe[GetPlayerId((GetTriggerPlayer()))]), "Wave timer is "+Dt(jv))
endfunction
function Ft takes nothing returns nothing
    local integer i = 0
    local integer p
    loop
        exitwhen i>Ko
        set p = (ko[(i)])
        call qF(7, p)
        if To[wX[p]]!=-1 then
            call bG("sending minions of player "+I2S(p)+" was not finished", "PlayerSendMinions")
        endif
        set i = i+1
    endloop
    call Wk(p, "All minions were |cff33cc33sent|r.")
endfunction
function gt takes nothing returns nothing
    local unit u = GetFilterUnit()
    local integer m = GetUnitUserData(u)
    if(IsUnitType((u), nv))then
        if qO[m]then
            call WD(m)
        elseif QO[m]then
            call Bl(m)
        elseif sO[m]then
            call SL(m, false, (Oe[GetPlayerId((GetTriggerPlayer()))]), 0)
        endif
    elseif(IsUnitType((u), iv))then
        call OP((m))
    endif
    set u = null
endfunction
function Gt takes nothing returns nothing
    call GroupEnumUnitsSelected(rv, GetTriggerPlayer(), Hx)
endfunction
function ht takes nothing returns nothing
    local integer p = (Oe[GetPlayerId((GetTriggerPlayer()))])
    call yK(p)
    call Wk(p, GetUnitName(mO[VO[p]])+" is |cff33cc33created|r.")
endfunction
function Ht takes boolean jt returns nothing
    local boolean yg = dv
    set dv = jt
    call cs()
    set dv = yg
endfunction
function Jt takes nothing returns nothing
    if(not Dv)then
        call Ht(true)
    endif
endfunction
function kt takes nothing returns nothing
    if(Dv)then
        call Ht(false)
    endif
endfunction
function Kt takes string in returns nothing
    if in=="n" then
        set dv = false
    elseif in=="d" then
        set dv = true
    endif
endfunction
function lt takes nothing returns nothing
    local integer dt = (LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger())))
    if Rt(dt)then
        call Kt(It(dt))
        set Hv = 1
        call aG()
    endif
endfunction
function Lt takes nothing returns nothing
    local integer t = GetUnitUserData(GetFilterUnit())
    local integer a = 0
    if(IsUnitType(GetFilterUnit(), iv))and sA[t]and xN[t]then
        loop
            set a = a+1
            call RP(t)
            exitwhen(not xN[t])or a==Jx
        endloop
        if xN[t]and KV[QA[t]]then
            call SetItemCharges(XN[t], iN[t]-oN[t])
        endif
    endif
endfunction
function mt takes nothing returns nothing
    local integer dt = (LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger())))
    if Rt(dt)then
        set Jx = (S2I(It((dt))))
        if Jx>0 then
            call GroupEnumUnitsSelected(rv, GetTriggerPlayer(), jx)
        endif
    endif
endfunction
function Mt takes nothing returns nothing
    local integer dt = (LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger())))
    local integer p = (Oe[GetPlayerId((GetTriggerPlayer()))])
    if Rt(dt)then
        call EK(p, (S2I(It((dt)))))
        call Wk(p, "Gold was set to "+Do[ao]+I2S(CX[p])+"|r.")
    endif
endfunction
function pt takes nothing returns nothing
    local integer dt = (LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger())))
    local integer p = (Oe[GetPlayerId((GetTriggerPlayer()))])
    if Rt(dt)then
        call cK(p, (S2I(It((dt)))))
        call Wk(p, "Experience was set to "+Do[no]+I2S(dX[p])+"|r.")
    endif
endfunction
function Pt takes nothing returns nothing
    local integer dt = (LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger())))
    local integer p = (Oe[GetPlayerId((GetTriggerPlayer()))])
    local integer Vf
    if Rt(dt)then
        set Vf = (S2I(It((dt))))
        if Vf>0 then
            call LK(p, Vf)
            call Wk(p, "Lives were set to "+Do[Xo]+I2S(gX[p])+"|r.")
        else
            call yk((p), kx, Do[bo]+"Error|r: "+("argument must be positive."))
        endif
    endif
endfunction
function qt takes nothing returns nothing
    local integer dt = (LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger())))
    local integer p = (Oe[GetPlayerId((GetTriggerPlayer()))])
    local integer Qt
    if Rt(dt)then
        set Qt = (S2I(It((dt))))
        if Qt>0 then
            set hv = Qt
            call NJ()
            call iG()
            call Wk(p, "The number of next wave is set to "+Do[Ro]+I2S(hv)+"|r.")
        else
            call yk((p), kx, Do[bo]+"Error|r: "+("argument must be positive."))
        endif
    endif
endfunction
function St takes nothing returns nothing
    local integer dt = (LoadInteger(Y, 18, GetHandleId(GetTriggeringTrigger())))
    local integer p = (Oe[GetPlayerId((GetTriggerPlayer()))])
    local integer KQ
    if Rt(dt)then
        set KQ = (S2I(It((dt))))
        if KQ>=0 then
            set Gv = KQ
            call Wk(p, "Game minutes were set to "+Do[Ro]+I2S(Gv)+"|r.")
        else
            call yk((p), kx, Do[bo]+"Error|r: "+("argument must be non-negative."))
        endif
    endif
endfunction
function tt takes nothing returns nothing
    set Jv = not Jv
    call Wk((Oe[GetPlayerId((GetTriggerPlayer()))]), "Automatic hero creating is "+Dt(Jv))
endfunction
function Tt takes nothing returns nothing
    local integer p = (Oe[GetPlayerId((GetTriggerPlayer()))])
    call EK(p, 99999)
    call cK(p, 99999)
    set jv = false
    set Jv = false
    call bt(p, 0)
    call Wk(p, "Gold was set to "+Do[ao]+I2S(CX[p])+"|r.")
    call Wk(p, "Experience was set to "+Do[no]+I2S(dX[p])+"|r.")
    call Wk(p, "Wave timer is "+Dt(jv))
    call Wk(p, "Automatic hero creating is "+Dt(Jv))
endfunction
function ut takes player p returns nothing
    local integer a = 1
    loop
        exitwhen a>HB
        call Ot((a), p)
        set a = a+1
    endloop
endfunction
function wt takes player p returns nothing
    local integer k = 0
    local player o
    call SetPlayerTeam(p, Jo)
    call SetPlayerState(p, PLAYER_STATE_ALLIED_VICTORY, 0)
    loop
        set o = Player(k)
        if p!=o then
            call SetPlayerAlliance(p, o, ALLIANCE_PASSIVE, false)
            call SetPlayerAlliance(p, o, ALLIANCE_HELP_REQUEST, false)
            call SetPlayerAlliance(p, o, ALLIANCE_HELP_RESPONSE, false)
            call SetPlayerAlliance(p, o, ALLIANCE_SHARED_XP, false)
            call SetPlayerAlliance(p, o, ALLIANCE_SHARED_SPELLS, false)
            call SetPlayerAlliance(p, o, ALLIANCE_SHARED_VISION, false)
            call SetPlayerAlliance(p, o, ALLIANCE_SHARED_VISION_FORCED, false)
        endif
        set k = k+1
        exitwhen k==$C
    endloop
endfunction
function Wt takes nothing returns nothing
    local integer i = 0
    local integer ai = 0
    local player p
    loop
        set p = Player(i)
        if GetPlayerSlotState(p)==PLAYER_SLOT_STATE_PLAYING then
            if GetPlayerController(p)==MAP_CONTROL_USER then
                call tD(p, i)
            else
                call SetPlayerOnScoreScreen(p, false)
                call RemovePlayer(p, PLAYER_GAME_RESULT_DEFEAT)
            endif
            call wt(p)
        elseif ai<2 then
            set ev[ai] = p
            call SetPlayerColor(p, ov)
            call FogModifierStart(CreateFogModifierRect(p, FOG_OF_WAR_VISIBLE, bj_mapInitialPlayableArea, false, false))
            set ai = ai+1
        endif
        set i = i+1
        exitwhen i==$C
    endloop
    if Ie!=null then
        set i = 0
        loop
            exitwhen(not Re[i])and ConvertPlayerColor(i)!=ov
            set i = i+1
        endloop
        call SetPlayerColor(Ie, ConvertPlayerColor(i))
        call Kk((Oe[GetPlayerId((Ie))]), i)
    endif
    set xv = (Oe[GetPlayerId((A))])
    call TriggerRegisterLeaveRegion(le, Ov, Rv)
    call TriggerRegisterEnterRegion(Le, Xv, Rv)
    call sF("Initialization complete!")
    set p = null
endfunction
function Yt takes integer counter, integer Vf, string Zk returns nothing
endfunction
function zt takes nothing returns nothing
    local integer i = 0
    local integer p
    call oG()
    set bj_isSinglePlayer = Ko==0
    call TriggerExecute(ue)
    loop
        exitwhen i>Ko
        set p = (ko[(i)])
        set EO[p] = hx
        set XO[p] = 0
        call TD(p)
        call uk(p, PE[hx])
        set i = i+1
    endloop
    call nG()
    call TimerStart(Fv, 1., true, function nG)
    call TriggerAddAction(ge, function cs)
    call TriggerAddAction(ge, function Ts)
    call TriggerAddAction(ge, function NJ)
    if bj_isSinglePlayer then
        call lk(p, p)
        call DisableTrigger(Ge)
        call ut(iX[p])
        call At(iX[p])
    else
        call TriggerAddAction(ge, function Ws)
        call us()
    endif
    call MultiboardDisplay(tx, true)
    call MultiboardMinimize(tx, false)
    call Yt(pa, 21, "MinionBuffStructsAmount")
    call Yt(Ya, rx, "MinionAbilityTypesAmount")
    call Yt(cn, Gx, "MinionTypesAmount")
    call Yt(Vn, gx, "MinionUpgradesAmount")
    call Yt(HV, 9, "TowerTypesAmount")
endfunction
function vT takes integer Xh, integer eT, real xT, boolean oT, boolean rT, string Qh, string yH, integer iT returns multiboarditem
    set oo = MultiboardGetItem(tx, Xh, eT)
    call MultiboardSetItemWidth(oo, xT)
    call MultiboardSetItemStyle(oo, oT, rT)
    if oT and iT!=io then
        call MultiboardSetItemValueColor(oo, co[iT], Co[iT], do[iT], eo)
    endif
    if Qh!=null then
        call MultiboardSetItemValue(oo, Qh)
    endif
    if yH!=null then
        call MultiboardSetItemIcon(oo, yH)
    endif
    return oo
endfunction
function aT takes integer Xh, integer c, string Qh, string yH, integer iT returns multiboarditem
    return vT(Xh, rc[c], ic[c], nc[c], ac[c], Qh, yH, iT)
endfunction
function nT takes integer Xh, integer c, string Qh, string yH returns multiboarditem
    return aT(Xh, c, Qh, yH, Vc[c])
endfunction
function VT takes integer Xh, integer c, string Qh returns nothing
    call MultiboardReleaseItem(vT((Xh), rc[(c)], ((ic[c])*1.), true, false, (Qh), null, io))
endfunction
function ET takes nothing returns integer
    set Tx = Tx+1
    call MultiboardSetRowCount(tx, Tx)
    return Tx-1
endfunction
function XT takes nothing returns nothing
    local integer a
    local integer Xh
    local integer p
    set tx = CreateMultiboard()
    call MultiboardSetTitleTextColor(tx, $FF, $FF, $FF, $FF)
    call MultiboardSetColumnCount(tx, ux)
    call MultiboardSetItemsStyle(tx, false, false)
    call MultiboardSetItemsWidth(tx, xo*vo)
    set Xh = ET()
    set Ux = nT(Xh, qB, "-->", "Icons\\MBQuestionMark.blp")
    set wx = nT(Xh, QB, "-->", "Icons\\MBQuestionMark.blp")
    set Wx = nT(Xh, sB, null, "Icons\\MBQuestionMark.blp")
    set yx = nT(Xh, SB, I2S(Ve), "Icons\\MBIncome.blp")
    set Yx = nT(Xh, tB, I2S(50), "Icons\\MBPlayerLives.blp")
    set zx = nT(Xh, TB, "0", "Icons\\MBPlayerKills.blp")
    if not bj_isSinglePlayer then
        call ET()
        set Xh = ET()
        call VT(Xh, uB, "Player")
        call VT(Xh, wB, null)
        call VT(Xh, WB, "Foe")
        call MultiboardReleaseItem(vT((Xh), rc[(yB)], ((ic[yB]+ic[YB]-vo)*1.), true, false, ("  Hero"), null, io))
        call MultiboardReleaseItem(vT((Xh), rc[(YB)], ((vo)*1.), true, false, (null), null, io))
        call VT(Xh, zB, "HU")
        call VT(Xh, ZB, "Inc.")
        call VT(Xh, vc, "Lives")
        call VT(Xh, ec, "Kills")
        set a = 0
        loop
            exitwhen a>Ko
            set p = (ko[(a)])
            set Xh = ET()
            set jX[p] = aT(Xh, uB, nX[p], null, EX[p])
            set JX[p] = nT(Xh, wB, "-->", null)
            set kX[p] = nT(Xh, WB, null, "Icons\\MBQuestionMark.blp")
            set KX[p] = nT(Xh, yB, null, "Icons\\MBQuestionMark.blp")
            set lX[p] = nT(Xh, YB, null, "Icons\\MBQuestionMark.blp")
            set LX[p] = nT(Xh, zB, "0", null)
            set mX[p] = nT(Xh, ZB, I2S(Ve), null)
            set MX[p] = nT(Xh, vc, I2S(50), null)
            set pX[p] = nT(Xh, ec, "0", null)
            set a = a+1
        endloop
    endif
    call ET()
    set Xh = ET()
    call MultiboardReleaseItem(nT(Xh, xc, "Game time: ", null))
    set Zx = nT(Xh, oc, null, null)
    set oo = null
endfunction
function OT takes integer c, real xT, boolean oT, boolean rT, integer iT returns integer
    set pB = pB+1
    set rc[pB] = c
    set ic[pB] = xT*vo
    set ac[pB] = rT
    set nc[pB] = oT
    set Vc[pB] = iT
    return pB
endfunction
function RT takes real xT, boolean oT, boolean rT, integer iT returns integer
    set PB = PB+1
    return OT(PB, xT, oT, rT, iT)
endfunction
function AT takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen i>Jo
        call TK((jo[(i)]))
        set i = i+1
    endloop
    set Ko = -1
endfunction
function InitCustomPlayerSlots takes nothing returns nothing
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(2), true)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), true)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(4), true)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(5), true)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(6), true)
    call SetPlayerController(Player(6), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(7), true)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(8), true)
    call SetPlayerController(Player(8), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(9), 9)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(9), true)
    call SetPlayerController(Player(9), MAP_CONTROL_USER)
endfunction
function InitCustomTeams takes nothing returns nothing
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerTeam(Player(5), 0)
    call SetPlayerTeam(Player(6), 0)
    call SetPlayerTeam(Player(7), 0)
    call SetPlayerTeam(Player(8), 0)
    call SetPlayerTeam(Player(9), 0)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 9)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 9)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 9)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 9)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(4, 9)
    call SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(5, 9)
    call SetStartLocPrio(5, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(6, 9)
    call SetStartLocPrio(6, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(7, 9)
    call SetStartLocPrio(7, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(8, 9)
    call SetStartLocPrio(8, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 7, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(9, 9)
    call SetStartLocPrio(9, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 7, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 8, 8, MAP_LOC_PRIO_HIGH)
endfunction
function main takes nothing returns nothing
    local sound Yk
    local integer m
    local integer qH
    call SetCameraBounds(qx+V, Qx+X, 6912.-E, 1920.-O, qx+V, 1920.-O, 6912.-E, Qx+X)
    set bj_mapInitialPlayableArea = GetWorldBounds()
    call ExecuteFunc("bT")
    call ExecuteFunc("dg")
    call ExecuteFunc("qg")
    call ExecuteFunc("Tg")
    call ExecuteFunc("Km")
    set We = Filter(function Js)
    set FO = function wk
    set gO = function rK
    call TriggerAddAction(we, function ks)
    call TriggerAddAction(we, function Ks)
    call TriggerAddAction(we, function Ls)
    call TriggerAddAction(we, function ms)
    call TriggerAddAction(we, function Ms)
    if(JASS_MAX_ARRAY_SIZE>8192)then
        set vo = .005
    else
        set vo = .0041
    endif
    set PB = -1
    set qB = RT(4.+3., true, true, io)
    set QB = RT(4.+3., true, true, io)
    set sB = RT(4., false, true, io)
    set SB = RT(5.5+4., true, true, Eo)
    set tB = RT(3.+4., true, true, Xo)
    set TB = RT(3.+4., true, true, Oo)
    set m = PB
    set PB = -1
    set uB = RT(14., true, false, io)
    set UB = RT(xo, false, false, io)
    set wB = RT(3., true, false, io)
    set WB = RT(4., false, true, io)
    set yB = RT(3., false, true, io)
    set YB = RT(4., false, true, io)
    set zB = RT(4., true, false, Ro)
    set ZB = RT(5.5, true, false, Eo)
    set vc = RT(5., true, false, Xo)
    set ec = RT(5., true, false, Oo)
    set ux = UF(m, PB)+1
    set xc = OT(0, 10., true, false, io)
    set oc = OT(1, 6., true, false, Io)
    set ue = CreateTrigger()
    call TriggerAddAction(ue, function XT)
    call SetGameSpeed(MAP_SPEED_FASTEST)
    call SetMapFlag(MAP_LOCK_SPEED, true)
    call SetMapFlag(MAP_USE_HANDICAPS, false)
    call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES, true)
    call SetMapFlag(MAP_LOCK_RESOURCE_TRADING, true)
    call SetAllyColorFilterState(0)
    call SetCreepCampFilterState(false)
    call EnableMinimapFilterButtons(false, false)
    call EnableWorldFogBoundary(false)
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call Zg("LordaeronSummerDay", "LordaeronSummerNight")
    call SuspendTimeOfDay(true)
    call SetFloatGameState(GAME_STATE_TIME_OF_DAY, ((12.)*1.))
    call SetMapMusic("Music", true, 0)
    set ge = CreateTrigger()
    set Ge = CreateTrigger()
    call TriggerAddAction(Ge, function ys)
    set he = CreateTrigger()
    call TriggerAddAction(he, function xS)
    set He = CreateTrigger()
    call TriggerAddAction(He, function rS)
    set je = CreateTrigger()
    call TriggerAddAction(je, function aS)
    set Je = CreateTrigger()
    call TriggerAddAction(Je, function VS)
    set ke = CreateTrigger()
    call TriggerAddAction(ke, function XS)
    set Ke = CreateTrigger()
    call TriggerAddAction(Ke, function RS)
    set le = CreateTrigger()
    call TriggerAddAction(le, function dS)
    set Le = CreateTrigger()
    call TriggerAddAction(Le, function fS)
    set me = CreateTrigger()
    call TriggerAddAction(me, function kS)
    set Me = CreateTrigger()
    call TriggerAddAction(Me, function mS)
    set pe = CreateTrigger()
    call TriggerAddAction(pe, function qS)
    set Pe = CreateTrigger()
    call TriggerAddAction(Pe, function SS)
    set qe = CreateTrigger()
    call TriggerAddAction(qe, function uS)
    set Qe = CreateTrigger()
    call TriggerAddAction(Qe, function WS)
    set se = CreateTrigger()
    call TriggerAddAction(se, function zS)
    set Se = CreateTrigger()
    call TriggerAddAction(Se, function ot)
    call at("cheats", true, function Nt, "Displays this message")
    call at("maze", false, function Ct, "Builds maze from Wall towers. Specify "+"|cffffcc80#|r"+" to set the number of rows")
    call at("ss", false, function lt, "Immediately starts next wave. Specify "+"|cffffcc80#|r"+" (|cffffcc80d|r or |cffffcc80n|r) to set time of next wave")
    call at("hsend", true, function tt, "Enables or disables automatic hero creating")
    call at("p", true, function ft, "Pauses or unpauses wave timer")
    call at("s", true, function Ft, "Sends minions without starting next wave")
    call at("d", true, function Jt, "Changes current time to day")
    call at("n", true, function kt, "Changes current time to night")
    call at("hero", true, function ht, "Creates a hero")
    call at("kill", true, function Gt, "Kills, sells or removes selected minions or towers")
    set Hx = Filter(function gt)
    call at("inc", false, function mt, "Increases level of selected towers by "+"|cffffcc80#|r")
    set jx = Filter(function Lt)
    call at("gold", false, function Mt, "Sets Gold to "+"|cffffcc80#|r")
    call at("exp", false, function pt, "Sets Experience to "+"|cffffcc80#|r")
    call at("lives", false, function Pt, "Sets Lives to "+"|cffffcc80#|r")
    call at("wave", false, function qt, "Sets next wave number to "+"|cffffcc80#|r")
    call at("min", false, function St, "Sets game minutes to "+"|cffffcc80#|r")
    call at("def", true, function Tt, "Sets Gold and Experience to maximum, pauses wave timer and automatic hero sending, builds maze")
    set te = CreateTrigger()
    call TriggerAddAction(te, function Wt)
    set Te = CreateTrigger()
    call TriggerRegisterTimerEvent(Te, 1./ 8., false)
    call TriggerAddAction(Te, function zt)
    set Ue = CreateTrigger()
    call TriggerAddAction(Ue, function AT)
    set kx = CreateSound("Sound\\Interface\\Error.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(kx, "InterfaceError")
    call SetSoundDuration(kx, 614)
    call SetSoundVolume(kx, 105)
    set Kx = CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Kx, "ReceiveGold")
    call SetSoundDuration(Kx, 589)
    call SetSoundChannel(Kx, 8)
    call SetSoundVolume(Kx, 105)
    set lx = CreateSound("Sound\\Interface\\BattleNetTick.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(lx, "ChatroomTimerTick")
    call SetSoundDuration(lx, 476)
    call SetSoundVolume(lx, 105)
    set Lx = CreateSound("Sound\\Interface\\Warning.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Lx, "Warning")
    call SetSoundDuration(Lx, $770)
    call SetSoundVolume(Lx, 105)
    set mx = CreateSound("Sound\\Interface\\ItemReceived.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(mx, "ItemReward")
    call SetSoundDuration(mx, $5CB)
    call SetSoundVolume(mx, 105)
    set Mx = CreateSound("Sound\\Interface\\UpkeepRing.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Mx, "UpkeepLevel")
    call SetSoundDuration(Mx, $62B)
    call SetSoundVolume(Mx, 105)
    set Yk = CreateSound("Sound\\Interface\\Warning\\Human\\KnightNoGold1.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Yk, "NoGoldHuman")
    call SetSoundDuration(Yk, $5CE)
    call SetSoundVolume(Yk, 105)
    set px[GetHandleId(RACE_HUMAN)] = Yk
    set Yk = CreateSound("Sound\\Buildings\\Human\\KnightResearchComplete1.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Yk, "ResearchCompleteHuman")
    call SetSoundDuration(Yk, $52E)
    call SetSoundVolume(Yk, 105)
    set Px[GetHandleId(RACE_HUMAN)] = Yk
    set Yk = CreateSound("Sound\\Interface\\Warning\\Orc\\GruntNoGold1.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Yk, "NoGoldOrc")
    call SetSoundDuration(Yk, $5DA)
    call SetSoundVolume(Yk, 105)
    set px[GetHandleId(RACE_ORC)] = Yk
    set Yk = CreateSound("Sound\\Buildings\\Orc\\GruntResearchComplete1.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Yk, "ResearchCompleteOrc")
    call SetSoundDuration(Yk, $517)
    call SetSoundVolume(Yk, 105)
    set Px[GetHandleId(RACE_ORC)] = Yk
    set Yk = CreateSound("Sound\\Interface\\Warning\\Undead\\NecromancerNoGold1.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Yk, "NoGoldUndead")
    call SetSoundDuration(Yk, $70D)
    call SetSoundVolume(Yk, 105)
    set px[GetHandleId(RACE_UNDEAD)] = Yk
    set Yk = CreateSound("Sound\\Buildings\\Undead\\NecromancerResearchComplete1.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Yk, "ResearchCompleteUndead")
    call SetSoundDuration(Yk, $531)
    call SetSoundVolume(Yk, 105)
    set Px[GetHandleId(RACE_UNDEAD)] = Yk
    set Yk = CreateSound("Sound\\Interface\\Warning\\NightElf\\SentinelNoGold1.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Yk, "NoGoldNightElf")
    call SetSoundDuration(Yk, $52B)
    call SetSoundVolume(Yk, 105)
    set px[GetHandleId(RACE_NIGHTELF)] = Yk
    set Yk = CreateSound("Sound\\Buildings\\NightElf\\SentinelResearchComplete1.wav", false, false, false, $A, $A, "DefaultEAXON")
    call SetSoundParamsFromLabel(Yk, "ResearchCompleteNightElf")
    call SetSoundDuration(Yk, $485)
    call SetSoundVolume(Yk, 105)
    set Px[GetHandleId(RACE_NIGHTELF)] = Yk
    set Yk = null
    set ye = bJ(1093677109, 5, $A, 0, function Iq)
    set Ye = bJ(1093677131, 5, $A, 0, function Fq)
    set ze = bJ(1093677133, 5, $A, 0, function lq)
    set vx = bJ(1093677107, 5, $A, 0, function qq)
    set Ze = bJ(1093677108, 5, $A, 0, function wq)
    set ex = bJ(1093677136, 0, 0, 0, function eQ)
    set xx = bJ(1093677111, 1, 0, 0, function aQ)
    set ox = bJ(1093677141, 5, $A, 0, function mQ)
    set qH = cJ()
    set bB = HV
    call CJ(qH, 60., .4)
    call fJ(qH, false, false, false)
    call hJ(qH, -1, 1949315120, 1097609264, function pQ)
    call kJ(qH, 50, true, 0)
    set qH = cJ()
    set cB = HV
    call CJ(qH, 145., .6)
    call fJ(qH, true, false, true)
    call hJ(qH, -1, 1949315121, 1097609265, function SQ)
    call kJ(qH, 100, true, 20)
    call lJ(qH, 1098133553, 1, 0, $A, $A, $A, 20)
    set WV[(qH)] = (ye)
    call sJ(cB, 10., Nv, 1., 1227894834, 0, 384., 1, false, 1093677094, G)
    set qH = cJ()
    set CB = HV
    call CJ(qH, 245., .5)
    call fJ(qH, true, false, true)
    call hJ(qH, -1, 1949315124, 1097609268, function TQ)
    call kJ(qH, 100, true, 20)
    call lJ(qH, 1098133556, 1, 0, $A, $A, $A, 20)
    set WV[(qH)] = (Ye)
    call sJ(CB, 10., Nv, 1., 1227894841, 0, 384., 1, false, 1093677126, G)
    set qH = cJ()
    set dB = HV
    call CJ(qH, 60., .6)
    call fJ(qH, true, true, true)
    call hJ(qH, -1, 1949315122, 1097609266, function UQ)
    call kJ(qH, $C8, true, 40)
    call lJ(qH, 1098133554, 1, 5, 20, 50, $A, 20)
    set WV[(qH)] = (ze)
    call sJ(dB, 4., Nv, 1., 1227894834, 0, 384., 4, false, 1093677097, G)
    set qH = cJ()
    set DB = HV
    call CJ(qH, 135., .6)
    call fJ(qH, true, true, true)
    call hJ(qH, -1, 1949315129, 1097609273, function WQ)
    call kJ(qH, $C8, true, 40)
    call lJ(qH, 1098133561, 1, 5, 20, 50, $A, 20)
    set WV[(qH)] = (vx)
    call sJ(DB, 10., Nv, 3., 1227894834, 1, 512., 1, true, 1093677137, D)
    set qH = cJ()
    set fB = HV
    call CJ(qH, 255., .5)
    call fJ(qH, true, true, true)
    call hJ(qH, -1, 1949315123, 1097609267, function YQ)
    call kJ(qH, $C8, true, 40)
    call lJ(qH, 1098133555, 1, 5, 20, 50, $A, 20)
    set WV[(qH)] = (Ze)
    call sJ(fB, 20., Nv, 2., 1227894841, 0, 384., 1, true, 1093677110, F)
    set qH = cJ()
    set FB = HV
    call CJ(qH, 255., .5)
    call fJ(qH, false, false, true)
    call hJ(qH, 4, 1949315128, 1097609272, function ZQ)
    call kJ(qH, 500, true, 100)
    set WV[(qH)] = (ex)
    call sJ(FB, 30., 0, 1., 1227894832, 0, 384., 1, true, 1093677098, j)
    set qH = cJ()
    set gB = HV
    call CJ(qH, 60., .4)
    call fJ(qH, true, false, false)
    call hJ(qH, 3, 1949315127, 1097609271, function es)
    call kJ(qH, $3E8, false, 0)
    call lJ(qH, 1098133559, 1, 0, 0, $41A, 1, 1)
    set WV[(qH)] = (xx)
    set qH = JH()
    set BN = Pa[qH]
    call kH(qH, true, false)
    call LH(qH, 3, 3, 3.)
    set Ua[(qH)] = (1093677091)
    set qH = JH()
    set cN = Pa[qH]
    call kH(qH, true, true)
    call LH(qH, 1, 1, 3.)
    set qH = JH()
    set CN = Pa[qH]
    call kH(qH, true, false)
    call LH(qH, 1, 1, 3.)
    set qH = JH()
    set dN = Pa[qH]
    call kH(qH, true, true)
    call LH(qH, 1, 1, 4.)
    set qH = JH()
    set DN = Pa[qH]
    call LH(qH, 1, 1, 3.)
    set qH = JH()
    set fN = Pa[qH]
    call LH(qH, 1, 1, 4.)
    set qH = JH()
    set xI = Pa[qH]
    call LH(qH, 1, 1, 5.)
    set qH = JH()
    set rI = Pa[qH]
    call LH(qH, 1, 1, 4.)
    set qH = JH()
    set oI = Pa[qH]
    call LH(qH, 1, 1, 2.)
    set qH = JH()
    set aI = Pa[qH]
    call LH(qH, 1, 1, 1./ 16.)
    set qH = JH()
    set nI = Pa[qH]
    call LH(qH, 1, 99, 5.)
    set qH = JH()
    set VI = Pa[qH]
    call LH(qH, 1, 1, 2.5)
    set Ua[(qH)] = (1093677088)
    set qH = JH()
    set EI = Pa[qH]
    call LH(qH, 1, 1, 2.5)
    set Ua[(qH)] = (1093677088)
    set qH = JH()
    set XI = Pa[qH]
    call LH(qH, 5, 5, 5.)
    set Ua[(qH)] = (1093677092)
    set qH = JH()
    set yR = Pa[qH]
    call LH(qH, 1, 1, 60.*2.)
    set qH = JH()
    set YR = Pa[qH]
    call LH(qH, 1, 1, 3.)
    set qH = JH()
    set zR = Pa[qH]
    call LH(qH, 1, 1, 4.)
    set Ua[(qH)] = (1093677151)
    set qH = JH()
    set ZR = Pa[qH]
    call LH(qH, 1, 1, 2.5)
    set qH = JH()
    set vI = Pa[qH]
    call LH(qH, 1, 1, 3.)
    set Ua[(qH)] = (1093677152)
    set qH = JH()
    set eI = Pa[qH]
    call LH(qH, 1, 1, 60.*2.)
    set Ua[(qH)] = (1093677088)
    set qH = QH()
    set WI = za[qH]
    set rn[(qH)] = ((256.)*1.)
    call WH(qH, 1096888368, (7))
    set yI = Filter(function Xp)
    set qH = QH()
    set zI = za[qH]
    call sH(qH, true, false, true, false)
    call UH(qH, .0, 10.)
    call WH(qH, 1096888369, (8))
    set qH = QH()
    set aA = za[qH]
    call sH(qH, true, true, false, false)
    set rn[(qH)] = ((256.)*1.)
    call UH(qH, .05, .0)
    call WH(qH, 1096888371, ($A))
    set OA = Filter(function cp)
    set qH = QH()
    set vA = za[qH]
    call sH(qH, true, true, false, false)
    set rn[(qH)] = ((256.)*1.)
    call UH(qH, .05, .0)
    call WH(qH, 1096888370, (9))
    set xA = Filter(function Np)
    set qH = QH()
    set NA = za[qH]
    call sH(qH, true, false, true, true)
    set rn[(qH)] = ((512.)*1.)
    call UH(qH, 10., 10.)
    call WH(qH, 1096888373, ($B))
    set qH = QH()
    set BA = za[qH]
    call sH(qH, true, false, true, false)
    call UH(qH, 10., 10.)
    call WH(qH, 1096888374, ($C))
    set cA = Filter(function Fp)
    set qH = QH()
    set fA = za[qH]
    call sH(qH, true, false, true, false)
    set rn[(qH)] = ((512.)*1.)
    call UH(qH, 10., 10.)
    call WH(qH, 1096888375, ($D))
    set FA = Filter(function Jp)
    set gA = function lp
    set qH = QH()
    set mI = za[qH]
    call WH(qH, 1096888372, (1))
    set qH = QH()
    set QI = za[qH]
    set rn[(qH)] = ((512.)*1.)
    call WH(qH, 1096888376, (2))
    set MI = Filter(function zM)
    set qH = QH()
    set sI = za[qH]
    call sH(qH, true, false, true, true)
    set rn[(qH)] = ((512.)*1.)
    call UH(qH, .0, 2.)
    call WH(qH, 1096888377, (3))
    set qH = QH()
    set SI = za[qH]
    call sH(qH, true, false, true, false)
    call UH(qH, .0, 10.)
    call WH(qH, 1096888378, (4))
    set qH = QH()
    set tI = za[qH]
    call sH(qH, true, false, true, true)
    set rn[(qH)] = ((512.)*1.)
    call UH(qH, .0, 10.)
    call WH(qH, 1096888379, (5))
    set qH = QH()
    set TI = za[qH]
    call WH(qH, 1096888380, (6))
    set ax = WJ(NA, 1097150512, 1097216048, 1097281584, "Icons\\MBHealingWave.blp")
    set nx = WJ(BA, 1097150513, 1097216049, 1097281585, "Icons\\MBDivineShield.blp")
    set Vx = WJ(fA, 1097150514, 1097216050, 1097281586, "Icons\\MBResurrection.blp")
    set Ex = ZH(1096953897, 1097019433, 1378889769, 0, 500, function rs)
    set Xx = ZH(1096953898, 1097019434, 1378889770, 0, 500, function Vs)
    set Ox = ZH(1096953899, 1097019435, 1378889771, 0, 500, null)
    set Rx = ZH(1096953888, 1097019424, 1378889760, $834, 400, function Es)
    set Ix = ZH(1096953889, 1097019425, 1378889761, 100, 100, function Xs)
    set Ax = ZH(1096953891, 1097019427, 1378889763, 100, 100, function Os)
    set Nx = ZH(1096953892, 1097019428, 1378889764, 400, $C8, null)
    set bx = ZH(1096953893, 1097019429, 1378889765, $640, 300, null)
    set Bx = ZH(1096953894, 1097019430, 1378889766, 700, 300, function As)
    set Cx = ZH(1096953896, 1097019432, 1378889768, 900, 300, function Ns)
    set Dx = ZH(1096953902, 1097019438, 1378889774, 0, 400, null)
    set fx = ZH(1096953903, 1097019439, 1378889775, 0, 400, null)
    set Fx = ZH(1096953904, 1097019440, 1378889776, 0, 400, null)
    set qH = ij()
    set mN = dn[qH]
    call aj(qH, $FF, $FF, $FF, $FF)
    call nj(qH, 100, 0, 1, $A)
    set Jn[(qH)] = (7)
    call Rj(qH, -1, 0)
    call Nj(qH, 0, false, true)
    call hj(qH, 20, $A, 25, 0, 0, true)
    call kj(qH, 100., 1., Nv)
    call mj(qH, 1., 0, 0)
    call Cj(qH, 1831874608, 1097674800, 1097412656, (18))
    set iV[(qH)] = (WI)
    call qj(qH, Rx)
    call qj(qH, Ix)
    call qj(qH, Ax)
    set qH = ij()
    set MN = dn[qH]
    call aj(qH, $FF, $FF, $FF, $FF)
    call nj(qH, 400, 0, 2, 40)
    set Jn[(qH)] = (7)
    call Rj(qH, -2, 1)
    call Nj(qH, 1, false, true)
    call hj(qH, 80, 20, 50, 0, 0, true)
    call kj(qH, 400., 1., Nv)
    call mj(qH, 1., 0, 0)
    call Cj(qH, 1831874609, 1097674801, 1097412657, (19))
    set iV[(qH)] = (zI)
    call qj(qH, Rx)
    call qj(qH, Nx)
    set qH = ij()
    set pN = dn[qH]
    call aj(qH, $FF, $FF, $FF, $FF)
    call nj(qH, 700, 0, 3, 70)
    set Jn[(qH)] = (3)
    call Rj(qH, -3, 2)
    call Nj(qH, 2, false, true)
    call hj(qH, $8C, 30, 75, 0, 0, true)
    call kj(qH, 600., 1., Nv)
    call mj(qH, 1.15, 0, 0)
    call Cj(qH, 1831874610, 1097674802, 1097412658, (20))
    set iV[(qH)] = (vA)
    call qj(qH, Rx)
    call qj(qH, bx)
    call qj(qH, Bx)
    set qH = ij()
    set PN = dn[qH]
    call aj(qH, $FF, $FF, $FF, $FF)
    call nj(qH, 900, 0, 3, 90)
    set Jn[(qH)] = (3)
    call Rj(qH, -4, 3)
    call Nj(qH, 3, false, true)
    call hj(qH, $B4, 30, 75, 0, 0, true)
    call kj(qH, 900., 1., Nv)
    call mj(qH, 1., 0, 0)
    call Cj(qH, 1831874612, 1097674804, 1097412660, (21))
    set iV[(qH)] = (aA)
    call qj(qH, Rx)
    call qj(qH, bx)
    call qj(qH, Cx)
    set qH = Qj(1831874613, (22))
    call aj(qH, $FF, $FF, $FF, $FF)
    set qN = dn[qH]
    set QN = ok(qN)
    call ik(QN, ax, nx, Vx)
    call Ek(QN, 1093677365, 1093677366, 1093677367, "Icons\\MBHeroPaladin.blp")
    call Rk(QN, Dx)
    call Rk(QN, fx)
    call Rk(QN, Fx)
    set qH = ij()
    set FN = dn[qH]
    call aj(qH, $FF, $C8, $96, $FF)
    call nj(qH, 300, $A, 1, 30)
    set Jn[(qH)] = (4)
    set kn[(qH)] = (2)
    call Rj(qH, -2, 1)
    call Nj(qH, 1, false, true)
    call hj(qH, 60, $A, 25, 0, 0, true)
    call kj(qH, 300., 1., Nv)
    call mj(qH, 1., 0, 0)
    call Cj(qH, 1831874611, 1097674803, 1097412659, ($E))
    set iV[(qH)] = (QI)
    call aJ(qH)
    set qH = ij()
    set GN = dn[qH]
    call aj(qH, $FF, $FF, $AA, $FF)
    call nj(qH, 600, 20, 2, 60)
    set Jn[(qH)] = (3)
    call Rj(qH, -2, 1)
    call Nj(qH, 2, false, true)
    call hj(qH, 120, 20, 50, 0, 0, true)
    call kj(qH, 600., 1., Nv)
    call mj(qH, 1., 0, 0)
    call Cj(qH, 1831874617, 1097674809, 1097412665, ($F))
    set iV[(qH)] = (sI)
    call aJ(qH)
    set qH = ij()
    set HN = dn[qH]
    call aj(qH, $FF, $FF, $FF, $FF)
    call nj(qH, 800, 30, 3, 80)
    set Jn[(qH)] = (3)
    call Rj(qH, -3, 2)
    call Nj(qH, 3, false, true)
    call hj(qH, $A0, 30, 75, 0, 0, true)
    call kj(qH, 800., 1., Nv)
    call mj(qH, 1., 0, 0)
    call Cj(qH, 1831874615, 1097674807, 1097412663, (16))
    set iV[(qH)] = (SI)
    call aJ(qH)
    set qH = ij()
    set JN = dn[qH]
    call aj(qH, $FF, $FF, $FF, $FF)
    call Nj(qH, 2, false, false)
    call kj(qH, 400., 1., Nv)
    call mj(qH, 1., 0, 0)
    call Cj(qH, 1831874616, 0, 1097412664, 0)
    set iV[(qH)] = (tI)
    call Sj(qH)
    set qH = ij()
    set lN = dn[qH]
    call aj(qH, $FF, $FF, $FF, $FF)
    call nj(qH, $7D0, $FA, 0, 0)
    set Jn[(qH)] = (1)
    call Rj(qH, -5, 0)
    call Nj(qH, 5, true, false)
    call hj(qH, 6000, 750, 0, $C8, $A, false)
    call gj(qH, $7D0, $FA)
    call kj(qH, 1200., 1., Nv)
    call mj(qH, 1., 0, 0)
    call Cj(qH, 1831874614, 1097674806, 1097412662, (17))
    set iV[(qH)] = (TI)
    call Sj(qH)
    call aJ(qH)
    set hx = Ik(mN, MN, pN, PN, QN, 1093677132, 1093677360, null)
    call Dk(hx, Rx)
    call Dk(hx, Ix)
    call Dk(hx, Ax)
    call Dk(hx, Nx)
    call Dk(hx, bx)
    call Dk(hx, Bx)
    call Dk(hx, Cx)
    call TriggerExecute(te)
endfunction
function config takes nothing returns nothing
    local player p
    call SetMapName("TRIGSTR_001")
    call SetMapDescription("TRIGSTR_024")
    call SetPlayers(vv)
    call SetTeams(vv)
    set p = Player(0)
    call DefineStartLocation(0, sx, Sx)
    call SetPlayerStartLocation(p, 0)
    call SetPlayerColor(p, ConvertPlayerColor(0))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 0)
    set p = Player(1)
    call DefineStartLocation(1, sx, Sx)
    call SetPlayerStartLocation(p, 1)
    call SetPlayerColor(p, ConvertPlayerColor(1))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 1)
    set p = Player(2)
    call DefineStartLocation(2, sx, Sx)
    call SetPlayerStartLocation(p, 2)
    call SetPlayerColor(p, ConvertPlayerColor(2))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 2)
    set p = Player(3)
    call DefineStartLocation(3, sx, Sx)
    call SetPlayerStartLocation(p, 3)
    call SetPlayerColor(p, ConvertPlayerColor(3))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 3)
    set p = Player(4)
    call DefineStartLocation(4, sx, Sx)
    call SetPlayerStartLocation(p, 4)
    call SetPlayerColor(p, ConvertPlayerColor(4))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 4)
    set p = Player(5)
    call DefineStartLocation(5, sx, Sx)
    call SetPlayerStartLocation(p, 5)
    call SetPlayerColor(p, ConvertPlayerColor(5))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 5)
    set p = Player(6)
    call DefineStartLocation(6, sx, Sx)
    call SetPlayerStartLocation(p, 6)
    call SetPlayerColor(p, ConvertPlayerColor(6))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 6)
    set p = Player(7)
    call DefineStartLocation(7, sx, Sx)
    call SetPlayerStartLocation(p, 7)
    call SetPlayerColor(p, ConvertPlayerColor(7))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 7)
    set p = Player(8)
    call DefineStartLocation(8, sx, Sx)
    call SetPlayerStartLocation(p, 8)
    call SetPlayerColor(p, ConvertPlayerColor(8))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 8)
    set p = Player(9)
    call DefineStartLocation(9, sx, Sx)
    call SetPlayerStartLocation(p, 9)
    call SetPlayerColor(p, ConvertPlayerColor(9))
    call SetPlayerRacePreference(p, RACE_PREF_RANDOM)
    call SetPlayerRaceSelectable(p, true)
    call SetPlayerController(p, MAP_CONTROL_USER)
    call SetPlayerTeam(p, 9)
    set p = null
endfunction
function BT takes nothing returns boolean
    local integer m = mC
    local integer T = MC
    local integer bd = Jd()
    set uN[bd] = (T)
    set UN[bd] = m
    set ON[m] = bd
    call UnitAddAbility(PA[m], fV[uN[bd]])
    set GC = bd
    return true
endfunction
function cT takes nothing returns boolean
    local integer bd = tC
    return true
endfunction
function CT takes nothing returns boolean
    local integer bd = tC
    local integer a = 0
    set a = 0
    loop
        call qG(yr[Yr[bd]+a])
        set a = a+1
        exitwhen a==608
    endloop
    call sF("Neighbors are ready!")
    return true
endfunction
function dT takes nothing returns boolean
    local integer bd = tC
    local integer a = 0
    loop
        set yr[Yr[bd]+a] = PG(bd, a)
        set a = a+1
        exitwhen a==608
    endloop
    call pd(bd)
    call sF("Cells are ready!")
    return true
endfunction
function DT takes nothing returns boolean
    local integer bd = tC
    local integer a = 0
    loop
        call Ld(yr[Yr[bd]+a])
        set a = a+1
        exitwhen a==608
    endloop
    call sF("Cells destroyed!")
    return true
endfunction
function fT takes nothing returns boolean
    local integer bd = tC
    local integer a = 0
    loop
        set lr[(yr[Yr[bd]+a])] = true
        set a = a+1
        exitwhen a==yv
    endloop
    return true
endfunction
function FT takes nothing returns boolean
    local integer bd = tC
    local integer q = mC
    local integer c
    local integer d
    set ci[bd] = true
    loop
        set c = sG(q)
        set d = Hr[c]+1
        call TG(q, Lr[c], d)
        call TG(q, mr[c], d)
        call TG(q, Mr[c], d)
        call TG(q, pr[c], d)
        exitwhen(tr[(q)]==0)
    endloop
    set ci[bd] = false
    return true
endfunction
function gT takes nothing returns boolean
    local integer bd = tC
    local integer mh = Ti[bd]
    local integer Sh
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Ui[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = yi[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = va[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = ra[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Va[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Oa[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Aa[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Ba[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Da[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Ga[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    set mh = Ja[bd]
    loop
        exitwhen mh==0
        set Sh = mi[mh]
        call Ff(Ki[mh])
        set mh = Sh
    endloop
    return true
endfunction
function GT takes nothing returns boolean
    call sp(SC)
    return true
endfunction
function hT takes nothing returns boolean
    local integer bd = tC
    local boolean iD = sC
    set TC = .0
    return true
endfunction
function HT takes nothing returns boolean
    local integer bd = tC
    local boolean iD = sC
    set TC = .0
    return true
endfunction
function jT takes nothing returns boolean
    local integer bd = tC
    return true
endfunction
function JT takes nothing returns boolean
    local integer bd = tC
    local integer m = mC
    call eP(bd, m)
    return true
endfunction
function kT takes nothing returns boolean
    local integer bd = tC
    local integer XD = mC
    if oP(bd, XD, zA[bd])then
        call xP(bd)
    else
        call TimerStart(ZA[(bd)], de, false, IN)
    endif
    return true
endfunction
function KT takes nothing returns boolean
    local integer bd = tC
    if ON[bd]!=0 then
        call kd(ON[bd])
    endif
    call SetUnitUserData(PA[bd], 0)
    set PA[bd] = null
    return true
endfunction
function lT takes nothing returns boolean
    local integer RD = mC
    local integer ID = MC
    local real x = qC
    local real y = QC
    if ID>0 then
        set NN = ID
        if RD!=0 and KV[QA[RD]]and xN[RD]and(not IsUnitInRangeXY(PA[RD], x, y, 384.))then
            call AP(RD, NN)
        endif
        call GroupEnumUnitsInRange(rv, x, y, 384., AN)
    endif
    return true
endfunction
function LT takes nothing returns boolean
    local integer bd = tC
    set eN[bd] = eN[bd]+1
    call SetItemCharges(VN[bd], eN[bd])
    return true
endfunction
function mT takes nothing returns boolean
    local integer bd = tC
    if sA[bd]and lV[QA[bd]]then
        call Lg(vN[bd], true, "Tower.onSelect")
    endif
    return true
endfunction
function MT takes nothing returns boolean
    local integer bd = tC
    if sA[bd]and lV[QA[bd]]then
        call Lg(vN[bd], false, "Tower.onDeselect")
    endif
    return true
endfunction
function pT takes nothing returns boolean
    local integer m = mC
    local integer id = MC
    local integer bd = MD()
    set JI[bd] = m
    set KI[bd] = wE[WE[xO[KO[m]]]+id]
    call UnitAddAbility(mO[m], Za[KI[bd]])
    call UnitMakeAbilityPermanent(mO[m], true, Za[KI[bd]])
    set GC = bd
    return true
endfunction
function PT takes nothing returns boolean
    local integer bd = tC
    call UnitRemoveAbility(mO[JI[bd]], Za[KI[bd]])
    call QM(bd)
    call sF("MinionAbility "+I2S(bd)+" is deleted.")
    return true
endfunction
function qT takes nothing returns boolean
    local integer bd = tC
    set kI[bd] = SO[JI[bd]]
    set KI[bd] = wE[WE[SO[JI[bd]]]+za[KI[bd]]]
    if vn[KI[bd]]then
        call qM(bd)
        if an[KI[bd]]>.0 then
            call TimerStart(LI[bd], an[KI[bd]], en[KI[bd]], jI)
        else
            set lI[bd] = true
        endif
    endif
    return true
endfunction
function QT takes nothing returns boolean
    local integer bd = tC
    return true
endfunction
function sT takes nothing returns boolean
    local integer bd = tC
    local real r = qC
    if r>.0 and not(lI[bd]or en[KI[bd]])then
        set r = TimerGetRemaining(LI[bd])-r
        if r<=.0 then
            call TimerStart((LI[bd]), .0, false, null)
            call hD(bd)
        else
            call TimerStart(LI[bd], r, false, jI)
        endif
    endif
    return true
endfunction
function ST takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    return true
endfunction
function tT takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    local integer KD = MC
    local integer lD = pC
    set uC = false
    return true
endfunction
function TT takes nothing returns boolean
    local integer bd = tC
    return true
endfunction
function uT takes nothing returns boolean
    local integer bd = tC
    return true
endfunction
function UT takes nothing returns boolean
    local integer bd = tC
    call LM(bd)
    call Pg(FI[bd], "MMRI.onDestroy")
    set FI[bd] = null
    set fI[bd] = null
    return true
endfunction
function wT takes nothing returns boolean
    local integer bd = tC
    call RemoveUnit(AI[bd])
    set AI[bd] = null
    call sF("MinionDummy "+I2S(bd)+" is deleted.")
    return true
endfunction
function WT takes nothing returns boolean
    local integer bd = tC
    local integer a = 1
    loop
        call vD(uE[UE[bd]+a])
        set a = a+1
        exitwhen a>pa
    endloop
    set a = 1
    loop
        call xD(wE[WE[bd]+a])
        set a = a+1
        exitwhen a>Ya
    endloop
    set a = 1
    loop
        call dD(yE[YE[bd]+a])
        set a = a+1
        exitwhen a>cn
    endloop
    call SD(bd)
    call sF("PlayerMinionData "+I2S(bd)+" is crumpled.")
    return true
endfunction
function yT takes nothing returns boolean
    local player p = PC
    local integer i = mC
    local integer bd = UD()
    local integer a
    set iX[bd] = p
    set IX[bd] = p==A
    set nX[bd] = GetPlayerName(p)
    call jk(bd)
    call Jk(bd)
    set aX[bd] = CG(bd)
    call DG(bd)
    set Oe[i] = bd
    if GetPlayerColor(p)==ov then
        set Ie = p
    else
        call Kk(bd, (GetHandleId((GetPlayerColor(p)))))
    endif
    set cO[bd] = px[GetHandleId(GetPlayerRace(p))]
    set CO[bd] = Px[GetHandleId(GetPlayerRace(p))]
    set bX[bd] = yG(bd)
    set UX[bd] = Cd()
    set wX[bd] = Dd()
    set WX[bd] = fd()
    set yX[bd] = Fd()
    set YX[bd] = Gd()
    set zX[bd] = Kd()
    set ZX[bd] = gd()
    set xO[bd] = Fk()
    set a = 1
    loop
        call SetPlayerTechMaxAllowed(p, LV[(a)], mV[(a)])
        set a = a+1
        exitwhen a>HV
    endloop
    set a = 1
    loop
        call SetPlayerAbilityAvailable(p, XE[(a)], false)
        call SetPlayerAbilityAvailable(p, EE[(a)], false)
        set a = a+1
        exitwhen a>aE
    endloop
    call TriggerRegisterPlayerUnitEvent(he, p, EVENT_PLAYER_UNIT_CONSTRUCT_START, null)
    call TriggerRegisterPlayerUnitEvent(He, p, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, null)
    call TriggerRegisterPlayerUnitEvent(je, p, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH, null)
    call TriggerRegisterPlayerUnitEvent(Je, p, EVENT_PLAYER_UNIT_UPGRADE_START, null)
    call TriggerRegisterPlayerUnitEvent(ke, p, EVENT_PLAYER_UNIT_UPGRADE_CANCEL, null)
    call TriggerRegisterPlayerUnitEvent(Ke, p, EVENT_PLAYER_UNIT_UPGRADE_FINISH, null)
    call TriggerRegisterPlayerUnitEvent(me, p, EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
    call TriggerRegisterPlayerUnitEvent(Me, p, EVENT_PLAYER_UNIT_SPELL_ENDCAST, null)
    call TriggerRegisterPlayerUnitEvent(pe, p, EVENT_PLAYER_UNIT_ISSUED_ORDER, null)
    call TriggerRegisterPlayerUnitEvent(Pe, p, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, null)
    call TriggerRegisterPlayerUnitEvent(qe, p, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, null)
    call TriggerRegisterPlayerUnitEvent(Qe, p, EVENT_PLAYER_UNIT_SELECTED, null)
    call TriggerRegisterPlayerUnitEvent(se, p, EVENT_PLAYER_UNIT_DESELECTED, null)
    call TriggerRegisterPlayerEvent(Ge, p, EVENT_PLAYER_LEAVE)
    call sF("Player "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function YT takes nothing returns boolean
    local integer bd = tC
    local integer k
    local real x
    local real y
    if IX[bd]then
        call MultiboardSetItemIcon(wx, fo[EX[bd]])
    endif
    set AX[bd] = ev[aX[bd]*2/(Ko+1)]
    call ZG(bX[bd])
    set x = vi[bX[bd]]
    set y = Uv
    set sX[bd] = CreateUnit(iX[bd], 1112294482, x, y, .0)
    set k = aX[bd]
    call SetHeroXP(sX[bd], k, false)
    if IX[bd]then
        call PanCameraToTimed(x, y, .0)
        call SelectUnit(sX[bd], true)
    endif
    set y = 1920.-64.
    set SX[bd] = CreateUnit(iX[bd], 1112689491, x-128., y, 270.)
    call SetUnitVertexColor(SX[bd], $FF, $FF, $FF, 63)
    call SetHeroXP(SX[bd], k, false)
    set tX[bd] = CreateUnit(iX[bd], 1112232788, x-384., y, 270.)
    call SetUnitVertexColor(tX[bd], $FF, $FF, $FF, 63)
    call SetHeroXP(tX[bd], k, false)
    set TX[bd] = CreateUnit(iX[bd], 1095521362, x+128., y, 270.)
    call SetUnitVertexColor(TX[bd], $FF, $FF, $FF, 63)
    call SetHeroXP(TX[bd], k, false)
    set uX[bd] = CreateUnit(iX[bd], 1296256336, x+384., y, 270.)
    call SetUnitVertexColor(uX[bd], $FF, $FF, $FF, 63)
    call SetHeroXP(uX[bd], k, false)
    set bO[bd] = ug(tX[bd], 1227894850)
    set BO[bd] = ug(tX[bd], 1227894851)
    call SetItemCharges(BO[bd], eO[bd])
    set k = 0
    set x = xi[bX[bd]]
    set y = 320.
    loop
        set PX[qX[bd]+k] = Bg(iX[bd], "Textures\\Pavement.blp", 256., x, y, 4)
        set x = x+128.
        if x>zr[bX[bd]]then
            set y = y-128.
            set x = xi[bX[bd]]
        endif
        set k = k+1
        exitwhen k==120
    endloop
    call SetPlayerState(iX[bd], PLAYER_STATE_RESOURCE_GOLD, CX[bd])
    call SetPlayerState(iX[bd], PLAYER_STATE_RESOURCE_LUMBER, dX[bd])
    call SetPlayerState(iX[bd], PLAYER_STATE_RESOURCE_FOOD_CAP, DX[bd])
    call fk(bd)
    set OO[bd] = EO[bd]
    set IO[bd] = EO[bd]
    set RO[bd] = XO[bd]
    set AO[bd] = XO[bd]
    set NX[bd] = true
    call sF("Player "+I2S(bd)+" is ready.")
    return true
endfunction
function zT takes nothing returns boolean
    local integer bd = tC
    local integer a = 0
    loop
        call Pg(PX[qX[bd]+a], "CustomPlayer.DestroyGrid")
        set PX[qX[bd]+a] = null
        set a = a+1
        exitwhen a==120
    endloop
    call sF("Grid of player "+I2S(bd)+" is destroyed.")
    return true
endfunction
function ZT takes nothing returns boolean
    local integer bd = tC
    set PO[bd] = PF(ve[iV[tO[bd]]], bd)
    return true
endfunction
function vu takes nothing returns boolean
    local integer bd = tC
    if PO[bd]!=0 then
        call pD(PO[bd])
    endif
    if SO[bd]!=0 then
        call Hk(SO[bd])
    endif
    call UnitRemoveType(mO[bd], nv)
    call SetUnitUserData(mO[bd], 0)
    set mO[bd] = null
    return true
endfunction
function eu takes nothing returns boolean
    local integer bd = tC
    local integer qH = tO[bd]
    local integer Il = wX[KO[bd]]
    call Mk(KO[bd], kO[bd])
    call nK(KO[bd], -Uj(qH))
    call KK(KO[bd], tj(qH))
    call RK(KO[bd], Tj(qH))
    call dK(KO[bd], uj(qH))
    call hK(KO[bd], mO[bd], Tj(qH), uj(qH))
    call Ol(bd)
    if kn[qH]>1 and To[Il]>-1 then
        call Rl(dn[qH], kn[qH]-1, Il)
    endif
    return true
endfunction
function xu takes nothing returns boolean
    local integer bd = tC
    set TC = eV[tO[bd]]
    return true
endfunction
function ou takes nothing returns boolean
    local integer bd = tC
    set GC = xV[tO[bd]]
    return true
endfunction
function ru takes nothing returns boolean
    local integer bd = tC
    set GC = oV[tO[bd]]
    return true
endfunction
function iu takes nothing returns boolean
    local integer bd = tC
    set uC = (na[pO[(bd)]])
    return true
endfunction
function au takes nothing returns boolean
    local integer bd = tC
    set uC = false
    return true
endfunction
function nu takes nothing returns boolean
    local integer bd = tC
    set uC = false
    return true
endfunction
function Vu takes nothing returns boolean
    local integer bd = tC
    set uC = false
    return true
endfunction
function Eu takes nothing returns boolean
    local integer bd = tC
    set uC = false
    return true
endfunction
function Xu takes nothing returns boolean
    local integer bd = tC
    return true
endfunction
function Ou takes nothing returns boolean
    local integer bd = tC
    return true
endfunction
function Ru takes nothing returns boolean
    local integer bd = tC
    local real Vf = qC
    set TC = DL(bd, Vf)
    return true
endfunction
function Iu takes nothing returns boolean
    local integer bd = tC
    local real Vf = qC
    set TC = fL(bd, Vf)
    return true
endfunction
function Au takes nothing returns boolean
    local integer bd = tC
    local real Vf = qC
    set TC = ((yn[tO[((bd))]])*((Vf)*1.)/ 1000.)
    return true
endfunction
function Nu takes nothing returns boolean
    local integer bd = tC
    call jG(WX[lO[bd]], bd)
    call pG(zX[KO[bd]], bd)
    call UK(bd)
    call KL(bd)
    call SetUnitInvulnerable(mO[bd], false)
    call dl(bd, (yn[tO[(bd)]]))
    call lL(bd)
    call JL(bd)
    set QO[bd] = false
    if PO[bd]!=0 then
        call GD(PO[bd])
    endif
    return true
endfunction
function bu takes nothing returns boolean
    local integer bd = tC
    return true
endfunction
function Bu takes nothing returns boolean
    local integer bd = tC
    local boolean Af = sC
    local integer Nf = mC
    local integer RD = MC
    call SetUnitExploded(mO[bd], Af)
    call KillUnit(mO[bd])
    set sO[bd] = false
    call LD(PO[bd])
    call sL(bd, Nf, RD)
    if Af or Mn[tO[bd]]then
        call jL(bd)
    else
        call HL(bd)
        call KG(ZX[lO[bd]], bd)
        set xR[bd] = GetUnitX(mO[bd])
        set oR[bd] = GetUnitY(mO[bd])
        set rR[bd] = GetUnitFacing(mO[bd])
        call TimerStart(OR[bd], 15., false, AR)
        call sF("Minion "+I2S(bd)+" is killed.")
    endif
    return true
endfunction
function cu takes nothing returns boolean
    set GC = yL(mC, SC, MC)
    return true
endfunction
function Cu takes nothing returns boolean
    local integer bd = tC
    call wL(bd)
    call RemoveSavedInteger(Y, MO[CR[bd]], cR[bd])
    call UnitRemoveAbility(mO[CR[bd]], Ua[fR[bd]])
    set dR[bd] = null
    call Hk(DR[bd])
    return true
endfunction
function du takes nothing returns boolean
    local integer bd = tC
    set uC = FR[bd]<=0
    return true
endfunction
function Du takes nothing returns boolean
    local integer bd = tC
    call IL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function fu takes nothing returns boolean
    local integer bd = tC
    call OL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function Fu takes nothing returns boolean
    local integer bd = tC
    call OL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function gu takes nothing returns boolean
    local integer bd = tC
    call RemoveUnit(lR[bd])
    set lR[bd] = null
    call sF("TowerAttacker "+I2S(bd)+" is deleted.")
    return true
endfunction
function Gu takes nothing returns boolean
    local integer bd = tC
    if sA[bd]then
        call dQ(ON[bd])
    endif
    return true
endfunction
function hu takes nothing returns boolean
    local integer bd = tC
    if sA[bd]then
        call DQ(ON[bd])
    endif
    return true
endfunction
function Hu takes nothing returns boolean
    local integer bd = tC
    call BH(pO[(CR[bd])], (GR[bd]))
    call Zh(pO[(CR[bd])], (hR[bd]))
    call AddUnitAnimationProperties(mO[CR[bd]], "Defend", false)
    set tC = bd
    return true
endfunction
function ju takes nothing returns boolean
    local integer bd = tC
    call BH(pO[(CR[bd])], (GR[bd]))
    set tC = bd
    return true
endfunction
function Ju takes nothing returns boolean
    local integer bd = tC
    call NL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function ku takes nothing returns boolean
    local integer bd = tC
    call RL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function Ku takes nothing returns boolean
    local integer bd = tC
    call XL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function lu takes nothing returns boolean
    local integer bd = tC
    call OH(pO[(CR[bd])], (GR[bd]))
    call AddUnitAnimationProperties(mO[CR[bd]], "Defend", false)
    set tC = bd
    return true
endfunction
function Lu takes nothing returns boolean
    local integer bd = tC
    if zE[ZE[DR[bd]]+Nx]then
        call aM(CR[bd], qi[(GR[bd])]*.8)
    endif
    set uC = true
    return true
endfunction
function mu takes nothing returns boolean
    local integer bd = tC
    if iI[bd]then
        call AL(CR[bd], GR[bd])
    else
        call RL(CR[bd], GR[bd])
    endif
    call OL(CR[bd], hR[bd])
    set tC = bd
    return true
endfunction
function Mu takes nothing returns boolean
    local integer bd = tC
    call Mh(pO[(CR[bd])], (GR[bd]))
    set tC = bd
    return true
endfunction
function pu takes nothing returns boolean
    local integer bd = tC
    call Gl(CR[bd], .15, "Effects\\RestoreHealthGreen.mdx", "origin")
    set uC = FR[bd]<=0
    return true
endfunction
function Pu takes nothing returns boolean
    local integer bd = tC
    call NL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function qu takes nothing returns boolean
    local integer bd = tC
    call NL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function Qu takes nothing returns boolean
    local integer bd = tC
    call Mh(pO[(CR[bd])], (GR[bd]))
    set tC = bd
    return true
endfunction
function su takes nothing returns boolean
    local integer bd = tC
    if UnitAlive(dR[bd])then
        call HD(PO[(GetUnitUserData(dR[bd]))], 1.)
        set uC = FR[bd]==0
        return true
    endif
    set uC = true
    return true
endfunction
function Su takes nothing returns boolean
    local integer bd = tC
    if(not Dv)then
        call mm(JI[(bd)], .15)
    endif
    return true
endfunction
function tu takes nothing returns boolean
    local integer bd = tC
    call sM(bd)
    call wM(bd)
    return true
endfunction
function Tu takes nothing returns boolean
    local integer bd = tC
    set PI = 0
    set pI = JI[bd]
    set qI = rn[KI[bd]]*2.
    call GroupEnumUnitsInRange(rv, GetUnitX(mO[JI[bd]]), GetUnitY(mO[JI[bd]]), rn[KI[bd]], MI)
    if PI!=0 then
        call Pm(PI, JI[bd], .3)
    endif
    return true
endfunction
function uu takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    local integer KD = MC
    local integer lD = pC
    if lD==1227894841 and KO[JI[bd]]==KO[JD]and mn[tO[JD]]and((LoadInteger(Y, MO[((JD))], ((zR))))==0)then
        call Sm(JD, JI[bd], 50)
        call tM(bd)
        set uC = true
        return true
    endif
    set uC = false
    return true
endfunction
function Uu takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    local integer KD = MC
    local integer lD = pC
    call um(JD)
    call tM(bd)
    set uC = true
    return true
endfunction
function wu takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    local integer KD = MC
    local integer lD = pC
    if mn[tO[JD]]then
        call Wm(JD, JI[bd])
        call tM(bd)
        set uC = true
        return true
    endif
    set uC = false
    return true
endfunction
function Wu takes nothing returns boolean
    local integer bd = tC
    set KN[UI[bd]] = 0
    set KN[wI[bd]] = 0
    set tC = bd
    return true
endfunction
function yu takes nothing returns boolean
    local integer bd = tC
    call sM(bd)
    call zm(JI[bd])
    return true
endfunction
function Yu takes nothing returns boolean
    local integer bd = tC
    set YI = JI[bd]
    call GroupEnumUnitsInRange(rv, GetUnitX(mO[JI[bd]]), GetUnitY(mO[JI[bd]]), rn[KI[bd]], yI)
    return true
endfunction
function zu takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    local integer KD = MC
    local integer lD = pC
    if lD==1227894834 then
        call EM(JD)
        call tM(bd)
        set uC = true
        return true
    endif
    set uC = false
    return true
endfunction
function Zu takes nothing returns boolean
    local integer bd = tC
    call sM(bd)
    set eA[bd] = MM(mO[JI[bd]], rn[KI[bd]])
    return true
endfunction
function vU takes nothing returns boolean
    local integer bd = tC
    if eA[bd]!=0 then
        call PM(eA[bd])
    endif
    set tC = bd
    return true
endfunction
function eU takes nothing returns boolean
    local integer bd = tC
    local integer m = JI[bd]
    set oA = m
    set rA = zE[ZE[kI[bd]]+bx]
    call GroupEnumUnitsInRange(rv, GetUnitX(mO[m]), GetUnitY(mO[m]), rn[KI[bd]], xA)
    return true
endfunction
function xU takes nothing returns boolean
    local integer bd = tC
    call PM(eA[bd])
    set eA[bd] = 0
    call PauseTimer(LI[bd])
    return true
endfunction
function oU takes nothing returns boolean
    local integer bd = tC
    set eA[bd] = MM(mO[JI[bd]], rn[KI[bd]])
    call tM(bd)
    return true
endfunction
function rU takes nothing returns boolean
    local integer bd = tC
    call sM(bd)
    set XA[bd] = MM(mO[JI[bd]], rn[KI[bd]])
    return true
endfunction
function iU takes nothing returns boolean
    local integer bd = tC
    if XA[bd]!=0 then
        call PM(XA[bd])
    endif
    set tC = bd
    return true
endfunction
function aU takes nothing returns boolean
    local integer bd = tC
    local integer m = JI[bd]
    local integer kl
    set RA = KO[m]
    set IA = 0
    call GroupEnumUnitsInRange(rv, GetUnitX(mO[m]), GetUnitY(mO[m]), rn[KI[bd]], OA)
    set nA[bd] = zE[ZE[kI[bd]]+Cx]and IA>=6
    set kl = IA*iA
    if kl>50 then
        set kl = 50
    endif
    set EA[bd] = kl
    if zE[ZE[kI[bd]]+bx]then
        set VA[bd] = kl
        call Ql(m)
    else
        call pl(m)
    endif
    call AddUnitAnimationProperties(mO[m], "Defend", nA[bd])
    return true
endfunction
function nU takes nothing returns boolean
    local integer bd = tC
    if nA[bd]then
        call AddUnitAnimationProperties(mO[JI[bd]], "Defend", false)
    endif
    call PM(XA[bd])
    set XA[bd] = 0
    call PauseTimer(LI[bd])
    return true
endfunction
function VU takes nothing returns boolean
    local integer bd = tC
    set XA[bd] = MM(mO[JI[bd]], rn[KI[bd]])
    call tM(bd)
    return true
endfunction
function EU takes nothing returns boolean
    local integer bd = tC
    call sM(bd)
    set bA[bd] = HM(bd, mO[JI[bd]], iX[lO[JI[bd]]], 1093677368, AA)
    return true
endfunction
function XU takes nothing returns boolean
    local integer bd = tC
    if bA[bd]!=0 then
        call KM(bA[bd])
    endif
    set tC = bd
    return true
endfunction
function OU takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    local integer KD = MC
    local integer lD = pC
    if JD!=JI[bd]and mn[tO[JD]]and KO[JD]==KO[JI[bd]]and Cl(JD)<=(1.-.15)then
        call jM(bA[bd], GetUnitX(mO[JI[bd]]), GetUnitY(mO[JI[bd]]))
        call JM(bA[bd], GetUnitX(mO[JD]), GetUnitY(mO[JD]))
        call tM(bd)
        set uC = true
        return true
    endif
    set uC = false
    return true
endfunction
function RU takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    local integer qm = JI[bd]
    if JD!=qm and mn[tO[JD]]and KO[JD]==KO[qm]then
        call Gl(JD, .15, "Effects\\RestoreHealthGreen.mdx", "origin")
        if zE[ZE[kI[bd]]+Dx]then
            call bM(JD, qm)
        endif
    endif
    return true
endfunction
function IU takes nothing returns boolean
    local integer bd = tC
    local integer JD = mC
    local integer KD = MC
    local integer lD = pC
    call CM(JD)
    if zE[ZE[kI[bd]]+fx]then
        set JD = gp(bd)
        if JD!=0 then
            call fM(JD, JI[bd])
        endif
    endif
    call tM(bd)
    set uC = true
    return true
endfunction
function AU takes nothing returns boolean
    local integer bd = tC
    call sM(bd)
    call hp(bd)
    return true
endfunction
function NU takes nothing returns boolean
    local integer bd = tC
    call Hp(bd)
    set tC = bd
    return true
endfunction
function bU takes nothing returns boolean
    local integer bd = tC
    call kp(bd)
    return true
endfunction
function BU takes nothing returns boolean
    local integer bd = tC
    call Mh(pO[(CR[bd])], (GR[bd]))
    set tC = bd
    return true
endfunction
function cU takes nothing returns boolean
    local integer bd = tC
    local integer dd
    if(GetUnitTypeId((dR[bd]))!=0)then
        set dd = GetUnitUserData(dR[bd])
        set uC = Zp(dd, CR[bd], bb[(ON[dd])], 1227894841, false)and(not(la[pO[(CR[bd])]]))and FR[bd]==0
        return true
    endif
    set uC = true
    return true
endfunction
function CU takes nothing returns boolean
    local integer bd = tC
    call OL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function dU takes nothing returns boolean
    local integer bd = tC
    call AL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function DU takes nothing returns boolean
    local integer bd = tC
    call OL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function fU takes nothing returns boolean
    local integer bd = tC
    call AL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function FU takes nothing returns boolean
    local integer bd = tC
    call XL(CR[bd], GR[bd])
    set tC = bd
    return true
endfunction
function gU takes nothing returns boolean
    local integer bd = tC
    call pD(gN[bd])
    set tC = bd
    return true
endfunction
function GU takes nothing returns boolean
    local integer bd = tC
    call Ff((LoadInteger(Y, MO[(JI[(gN[bd])])], (yR))))
    return true
endfunction
function hU takes nothing returns boolean
    local integer bd = tC
    call mm(JI[((gN[bd]))], .15)
    return true
endfunction
function HU takes nothing returns boolean
    local integer bd = tC
    call LL(bd)
    call WM(gN[bd])
    return true
endfunction
function jU takes nothing returns boolean
    local integer bd = tC
    call wM(gN[bd])
    return true
endfunction
function JU takes nothing returns boolean
    local integer bd = tC
    call pD(hN[bd])
    set tC = bd
    return true
endfunction
function kU takes nothing returns boolean
    local integer bd = tC
    call Ff((LoadInteger(Y, MO[(JI[(hN[bd])])], (yR))))
    return true
endfunction
function KU takes nothing returns boolean
    local integer bd = tC
    call mm(JI[((hN[bd]))], .15)
    return true
endfunction
function lU takes nothing returns boolean
    local integer bd = tC
    call LL(bd)
    call WM(hN[bd])
    return true
endfunction
function LU takes nothing returns boolean
    local integer bd = tC
    call wM(hN[bd])
    return true
endfunction
function mU takes nothing returns boolean
    local integer bd = tC
    call pD(jN[bd])
    set tC = bd
    return true
endfunction
function MU takes nothing returns boolean
    local integer bd = tC
    call Ff((LoadInteger(Y, MO[(JI[(jN[bd])])], (yR))))
    return true
endfunction
function pU takes nothing returns boolean
    local integer bd = tC
    call mm(JI[((jN[bd]))], .15)
    return true
endfunction
function PU takes nothing returns boolean
    local integer bd = tC
    call LL(bd)
    call WM(jN[bd])
    return true
endfunction
function qU takes nothing returns boolean
    local integer bd = tC
    call wM(jN[bd])
    return true
endfunction
function QU takes nothing returns boolean
    local integer p = mC
    local real x = qC
    local real y = QC
    local integer ls = MC
    local integer bd = NF()
    call al(bd, p, JN, x, y)
    set kN[bd] = UM(bd)
    set KN[bd] = ls
    call sF(SubString("s__RenegadeWizard_create", 3, StringLength("s__RenegadeWizard_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function sU takes nothing returns boolean
    local integer bd = tC
    if KN[bd]!=0 then
        call np(KN[bd])
    endif
    call pD(kN[bd])
    set tC = bd
    return true
endfunction
function SU takes nothing returns boolean
    local integer bd = tC
    call Ol(bd)
    return true
endfunction
function tU takes nothing returns boolean
    local integer bd = tC
    call Ff((LoadInteger(Y, MO[(JI[(kN[bd])])], (yR))))
    return true
endfunction
function TU takes nothing returns boolean
    local integer bd = tC
    call mm(JI[((kN[bd]))], .15)
    return true
endfunction
function uU takes nothing returns boolean
    local integer bd = tC
    call LL(bd)
    call WM(kN[bd])
    return true
endfunction
function UU takes nothing returns boolean
    local integer bd = tC
    call pD(LN[bd])
    set tC = bd
    return true
endfunction
function wU takes nothing returns boolean
    local integer bd = tC
    local integer Il = wX[KO[bd]]
    call Al(bd)
    call Rl(JN, 2, Il)
    return true
endfunction
function WU takes nothing returns boolean
    local integer bd = tC
    set uC = true
    return true
endfunction
function yU takes nothing returns boolean
    local integer bd = tC
    call Ff((LoadInteger(Y, MO[(JI[(LN[bd])])], (yR))))
    return true
endfunction
function YU takes nothing returns boolean
    local integer bd = tC
    call mm(JI[((LN[bd]))], .15)
    return true
endfunction
function zU takes nothing returns boolean
    local integer bd = tC
    call LL(bd)
    call WM(LN[bd])
    return true
endfunction
function ZU takes nothing returns boolean
    local integer bd = tC
    set GC = (xV[tO[(bd)]])+EA[(PO[bd])]
    return true
endfunction
function vw takes nothing returns boolean
    local integer bd = tC
    set GC = (oV[tO[(bd)]])+VA[(PO[bd])]
    return true
endfunction
function ew takes nothing returns boolean
    local integer bd = tC
    set uC = nA[(PO[bd])]
    return true
endfunction
function xw takes nothing returns boolean
    local integer bd = tC
    local real Vf = qC
    if nA[(PO[bd])]then
        set TC = .0
        return true
    endif
    set TC = DL(bd, Vf)
    return true
endfunction
function ow takes nothing returns boolean
    local integer bd = tC
    set uC = zE[ZE[xO[KO[bd]]]+Ox]or(na[pO[((bd))]])
    return true
endfunction
function rw takes nothing returns boolean
    local integer bd = tC
    call Ol(bd)
    return true
endfunction
function iw takes nothing returns boolean
    local integer bd = tC
    call Rq(bd)
    set yN[bd] = null
    set tC = bd
    return true
endfunction
function aw takes nothing returns boolean
    local integer bd = tC
    if rN[UN[bd]]==FV[uN[bd]]then
        set ZN[bd] = ZN[bd]+1.
    elseif rN[UN[bd]]==gV[uN[bd]]then
        set vb[bd] = vb[bd]+3.
    endif
    return true
endfunction
function nw takes nothing returns boolean
    local integer bd = tC
    call fq(bd)
    set nb[bd] = null
    set tC = bd
    return true
endfunction
function Vw takes nothing returns boolean
    local integer bd = tC
    if rN[UN[bd]]==gV[uN[bd]]then
        set Vb[bd] = Vb[bd]*ib
    endif
    return true
endfunction
function Ew takes nothing returns boolean
    local integer bd = tC
    set bb[bd] = 4.*(ho[Ho[(Nv)]+(rN[UN[bd]])])
    return true
endfunction
function Xw takes nothing returns boolean
    local integer bd = tC
    call Mq(bd)
    call Pq(bd)
    set tC = bd
    return true
endfunction
function Ow takes nothing returns boolean
    local integer bd = tC
    if rN[UN[bd]]==FV[uN[bd]]then
        set fb[bd] = .2
        set Fb[bd] = 1.
    endif
    return true
endfunction
function Rw takes nothing returns boolean
    local integer bd = tC
    call Uq(bd)
    set tC = bd
    return true
endfunction
function Iw takes nothing returns boolean
    local integer bd = tC
    if rN[UN[bd]]==gV[uN[bd]]then
        call am(kb[bd])
    endif
    return true
endfunction
function Aw takes nothing returns boolean
    local integer bd = tC
    call iQ(bd)
    call Pg(tb[bd], "AbilExpGenerator.onDestroy")
    set tb[bd] = null
    set Tb[bd] = null
    call EQ(bd)
    set tC = bd
    return true
endfunction
function Nw takes nothing returns boolean
    local integer bd = tC
    if rN[UN[bd]]==FV[uN[bd]]and TimerGetRemaining(Wb[bd])>=3. then
        call TimerStart(Wb[bd], 3., true, sb)
    endif
    return true
endfunction
function bw takes nothing returns boolean
    local integer bd = tC
    call jQ(bd)
    set IB[bd] = null
    set tC = bd
    return true
endfunction
function Bw takes nothing returns boolean
    local integer bd = tC
    set EB[bd] = EB[bd]+.01
    set XB[bd] = XB[bd]+nB
    return true
endfunction
function cw takes nothing returns boolean
    local integer bd = tC
    local boolean iD = sC
    set TC = Aq(ON[bd], iD)+yp(bd, iD)
    return true
endfunction
function Cw takes nothing returns boolean
    local integer bd = tC
    local integer m = mC
    call eP(bd, m)
    call cq(ON[bd], GetEventDamage())
    return true
endfunction
function dw takes nothing returns boolean
    local integer bd = tC
    local boolean iD = sC
    set TC = gq(ON[bd], iD)+yp(bd, iD)
    return true
endfunction
function Dw takes nothing returns boolean
    local integer bd = tC
    local integer m = mC
    call hq(ON[bd], m, GetEventDamage())
    return true
endfunction
function fw takes nothing returns boolean
    local integer bd = tC
    call zp(bd)
    if yF(rN[bd], 5)then
        set yA[bd] = yA[bd]+1
    endif
    return true
endfunction
function Fw takes nothing returns boolean
    local integer bd = tC
    local integer m = mC
    if eP(bd, m)then
        call Lq(ON[bd], m)
    endif
    return true
endfunction
function gw takes nothing returns boolean
    local integer bd = tC
    local boolean iD = sC
    set TC = Db[(ON[bd])]+yp(bd, iD)
    return true
endfunction
function Gw takes nothing returns boolean
    local integer bd = tC
    local integer m = mC
    call eP(bd, m)
    call Qq(ON[bd])
    return true
endfunction
function hw takes nothing returns boolean
    local integer bd = tC
    local integer XD = mC
    local integer m = Dm(XD)
    call sq(ON[bd], GetUnitX(mO[m]), GetUnitY(mO[m]))
    call xP(bd)
    return true
endfunction
function Hw takes nothing returns boolean
    local integer bd = tC
    local boolean iD = sC
    set TC = Wq(ON[bd], iD)+yp(bd, iD)
    return true
endfunction
function jw takes nothing returns boolean
    local integer bd = tC
    local integer m = mC
    call eP(bd, m)
    call yq(ON[bd])
    return true
endfunction
function Jw takes nothing returns boolean
    local integer bd = tC
    local integer XD = mC
    call Yq(ON[bd])
    call iP(bd, XD)
    return true
endfunction
function kw takes nothing returns boolean
    local integer bd = tC
    local boolean iD = sC
    set TC = mb[(ON[bd])]+Wp(bd, iD)
    return true
endfunction
function Kw takes nothing returns boolean
    local integer bd = tC
    local boolean iD = sC
    set TC = Lb[(ON[bd])]+yp(bd, iD)
    return true
endfunction
function lw takes nothing returns boolean
    local integer bd = tC
    call bP(bd)
    call xQ(ON[bd])
    return true
endfunction
function Lw takes nothing returns boolean
    local integer bd = tC
    local integer m = mC
    call oQ(ON[bd], m)
    return true
endfunction
function mw takes nothing returns boolean
    local integer Mw = mC
    local integer KD = MC
    local integer lD = pC
    local boolean pw = not Sl(Mw, lD)
    local integer a
    local integer Ah
    local integer Pw
    if pw then
        set pw = TM(PO[Mw], Mw, KD, lD)
        set Ah = yX[lO[Mw]]
        set a = 0
        loop
            exitwhen pw or a>rr[Ah]
            set Pw = PO[(er[xr[(Ah)]+(a)])]
            if on[KI[Pw]]then
                set pw = TM(Pw, Mw, KD, lD)
            endif
            set a = a+1
        endloop
    endif
    return true
endfunction
function qw takes nothing returns boolean
    local integer p = mC
    local integer a
    if To[wX[p]]>=0 then
        call Pk(p)
        set a = 0
        loop
            call Nl((So[to[(wX[p])]+(a)]), oO[p])
            set a = a+1
            exitwhen a>To[wX[p]]
        endloop
        call pk(p)
        set VO[p] = 0
        set To[(wX[p])] = -1
    endif
    return true
endfunction
function Qw takes nothing returns boolean
    local integer bd = mC
    local integer a = 0
    set a = 0
    loop
        call qG(yr[Yr[bd]+a])
        set a = a+1
        exitwhen a==608
    endloop
    call sF("Neighbors are ready!")
    return true
endfunction
function sw takes nothing returns boolean
    local integer bd = mC
    local integer a = 0
    loop
        set yr[Yr[bd]+a] = PG(bd, a)
        set a = a+1
        exitwhen a==608
    endloop
    call pd(bd)
    call sF("Cells are ready!")
    return true
endfunction
function Sw takes nothing returns boolean
    local integer bd = mC
    local integer a = 0
    loop
        call Ld(yr[Yr[bd]+a])
        set a = a+1
        exitwhen a==608
    endloop
    call sF("Cells destroyed!")
    return true
endfunction
function tw takes nothing returns boolean
    local integer bd = mC
    local integer q = MC
    local integer c
    local integer d
    set ci[bd] = true
    loop
        set c = sG(q)
        set d = Hr[c]+1
        call TG(q, Lr[c], d)
        call TG(q, mr[c], d)
        call TG(q, Mr[c], d)
        call TG(q, pr[c], d)
        exitwhen(tr[(q)]==0)
    endloop
    set ci[bd] = false
    return true
endfunction
function Tw takes nothing returns boolean
    local integer bd = mC
    local integer a = 0
    loop
        set lr[(yr[Yr[bd]+a])] = true
        set a = a+1
        exitwhen a==yv
    endloop
    return true
endfunction
function uw takes nothing returns boolean
    local integer bd = mC
    local integer a = 1
    loop
        call vD(uE[UE[bd]+a])
        set a = a+1
        exitwhen a>pa
    endloop
    set a = 1
    loop
        call xD(wE[WE[bd]+a])
        set a = a+1
        exitwhen a>Ya
    endloop
    set a = 1
    loop
        call dD(yE[YE[bd]+a])
        set a = a+1
        exitwhen a>cn
    endloop
    call SD(bd)
    call sF("PlayerMinionData "+I2S(bd)+" is crumpled.")
    return true
endfunction
function Uw takes nothing returns boolean
    local integer bd = mC
    local integer a = 0
    loop
        call Pg(PX[qX[bd]+a], "CustomPlayer.DestroyGrid")
        set PX[qX[bd]+a] = null
        set a = a+1
        exitwhen a==120
    endloop
    call sF("Grid of player "+I2S(bd)+" is destroyed.")
    return true
endfunction
function ww takes nothing returns boolean
    local integer bd = mC
    local boolean Af = sC
    local integer Nf = MC
    local integer RD = pC
    call SetUnitExploded(mO[bd], Af)
    call KillUnit(mO[bd])
    set sO[bd] = false
    call LD(PO[bd])
    call sL(bd, Nf, RD)
    if Af or Mn[tO[bd]]then
        call jL(bd)
    else
        call HL(bd)
        call KG(ZX[lO[bd]], bd)
        set xR[bd] = GetUnitX(mO[bd])
        set oR[bd] = GetUnitY(mO[bd])
        set rR[bd] = GetUnitFacing(mO[bd])
        call TimerStart(OR[bd], 15., false, AR)
        call sF("Minion "+I2S(bd)+" is killed.")
    endif
    return true
endfunction
function Ww takes nothing returns boolean
    local integer RD = mC
    local integer ID = MC
    local real x = qC
    local real y = QC
    if ID>0 then
        set NN = ID
        if RD!=0 and KV[QA[RD]]and xN[RD]and(not IsUnitInRangeXY(PA[RD], x, y, 384.))then
            call AP(RD, NN)
        endif
        call GroupEnumUnitsInRange(rv, x, y, 384., AN)
    endif
    return true
endfunction
function yw takes nothing returns boolean
    local integer m = mC
    local integer bd = uf(m, mI)
    call sF(SubString("s__AbilShadowMeld_create", 3, StringLength("s__AbilShadowMeld_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function Yw takes nothing returns boolean
    local integer m = mC
    local integer bd = Uf(m, QI)
    call sF(SubString("s__AbilBloodForBlood_create", 3, StringLength("s__AbilBloodForBlood_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function zw takes nothing returns boolean
    local integer m = mC
    local integer bd = wf(m, sI)
    call sF(SubString("s__AbilFrostArmor_create", 3, StringLength("s__AbilFrostArmor_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function Zw takes nothing returns boolean
    local integer m = mC
    local integer bd = Wf(m, SI)
    call sF(SubString("s__AbilSeasonedOutlaw_create", 3, StringLength("s__AbilSeasonedOutlaw_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function vW takes nothing returns boolean
    local integer m = mC
    local integer bd = yf(m, tI)
    call sF(SubString("s__AbilAbsorbingShield_create", 3, StringLength("s__AbilAbsorbingShield_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function eW takes nothing returns boolean
    local integer p = mC
    local real x = qC
    local real y = QC
    local integer ls = MC
    local integer bd = NF()
    call al(bd, p, JN, x, y)
    set kN[bd] = UM(bd)
    set KN[bd] = ls
    call sF(SubString("s__RenegadeWizard_create", 3, StringLength("s__RenegadeWizard_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function xW takes nothing returns boolean
    local integer m = mC
    local integer bd = Yf(m, TI)
    local real x = GetUnitX(mO[m])
    local real y = GetUnitY(mO[m])+128.
    set UI[bd] = AF(KO[m], x-128., y, bd)
    set wI[bd] = AF(KO[m], x+128., y, bd)
    call UnitAddAbility(mO[m], Ua[zv[eI]])
    call sF(SubString("s__AbilLivingShield_create", 3, StringLength("s__AbilLivingShield_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function oW takes nothing returns boolean
    local integer m = mC
    local integer bd = zf(m, WI)
    call sF(SubString("s__AbilBraveDeath_create", 3, StringLength("s__AbilBraveDeath_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function rW takes nothing returns boolean
    local integer m = mC
    local integer bd = Zf(m, zI)
    call sF(SubString("s__AbilShieldUp_create", 3, StringLength("s__AbilShieldUp_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function iW takes nothing returns boolean
    local integer m = mC
    local integer bd = vF(m, vA)
    call sF(SubString("s__AbilInspiration_create", 3, StringLength("s__AbilInspiration_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function aW takes nothing returns boolean
    local integer m = mC
    local integer bd = eF(m, aA)
    call sF(SubString("s__AbilCommander_create", 3, StringLength("s__AbilCommander_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function nW takes nothing returns boolean
    local integer m = mC
    local integer bd = xF(m, NA)
    call sF(SubString("s__AbilHealingWave_create", 3, StringLength("s__AbilHealingWave_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function VW takes nothing returns boolean
    local integer m = mC
    local integer bd = oF(m, BA)
    call sF(SubString("s__AbilDivineShield_create", 3, StringLength("s__AbilDivineShield_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function EW takes nothing returns boolean
    local integer m = mC
    local integer bd = rF(m, fA)
    call sF(SubString("s__AbilResurrection_create", 3, StringLength("s__AbilResurrection_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function XW takes nothing returns boolean
    local integer bd = mC
    local integer XD = MC
    if oP(bd, XD, zA[bd])then
        call xP(bd)
    else
        call TimerStart(ZA[(bd)], de, false, IN)
    endif
    return true
endfunction
function OW takes nothing returns boolean
    local integer p = mC
    local integer bd = OF()
    call El(bd, p, FN)
    set gN[bd] = UM(bd)
    call sF(SubString("s__Bandit_create", 3, StringLength("s__Bandit_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function RW takes nothing returns boolean
    local integer p = mC
    local integer bd = RF()
    call El(bd, p, GN)
    set hN[bd] = UM(bd)
    call sF(SubString("s__RogueWizard_create", 3, StringLength("s__RogueWizard_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function IW takes nothing returns boolean
    local integer p = mC
    local integer bd = IF()
    call El(bd, p, HN)
    set jN[bd] = UM(bd)
    call sF(SubString("s__Enforcer_create", 3, StringLength("s__Enforcer_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function AW takes nothing returns boolean
    local integer p = mC
    local integer bd = bF()
    call El(bd, p, lN)
    set LN[bd] = UM(bd)
    call sF(SubString("s__BanditLord_create", 3, StringLength("s__BanditLord_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function NW takes nothing returns boolean
    local integer p = mC
    local integer bd = BF()
    call El(bd, p, mN)
    call sF(SubString("s__Conscript_create", 3, StringLength("s__Conscript_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function bW takes nothing returns boolean
    local integer p = mC
    local integer bd = cF()
    call El(bd, p, MN)
    call sF(SubString("s__Footman_create", 3, StringLength("s__Footman_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function BW takes nothing returns boolean
    local integer p = mC
    local integer bd = CF()
    call El(bd, p, pN)
    call sF(SubString("s__Knight_create", 3, StringLength("s__Knight_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function cW takes nothing returns boolean
    local integer p = mC
    local integer bd = dF()
    call El(bd, p, PN)
    call sF(SubString("s__Captain_create", 3, StringLength("s__Captain_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function CW takes nothing returns boolean
    local integer p = mC
    local integer bd = DF()
    call Xl(bd, p, qN)
    call sF("Hero "+SubString("s__Paladin_create", 3, StringLength("s__Paladin_create")-7)+" "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function dW takes nothing returns boolean
    call sp(SC)
    return true
endfunction
function DW takes nothing returns boolean
    local player p = PC
    local integer i = mC
    local integer bd = UD()
    local integer a
    set iX[bd] = p
    set IX[bd] = p==A
    set nX[bd] = GetPlayerName(p)
    call jk(bd)
    call Jk(bd)
    set aX[bd] = CG(bd)
    call DG(bd)
    set Oe[i] = bd
    if GetPlayerColor(p)==ov then
        set Ie = p
    else
        call Kk(bd, (GetHandleId((GetPlayerColor(p)))))
    endif
    set cO[bd] = px[GetHandleId(GetPlayerRace(p))]
    set CO[bd] = Px[GetHandleId(GetPlayerRace(p))]
    set bX[bd] = yG(bd)
    set UX[bd] = Cd()
    set wX[bd] = Dd()
    set WX[bd] = fd()
    set yX[bd] = Fd()
    set YX[bd] = Gd()
    set zX[bd] = Kd()
    set ZX[bd] = gd()
    set xO[bd] = Fk()
    set a = 1
    loop
        call SetPlayerTechMaxAllowed(p, LV[(a)], mV[(a)])
        set a = a+1
        exitwhen a>HV
    endloop
    set a = 1
    loop
        call SetPlayerAbilityAvailable(p, XE[(a)], false)
        call SetPlayerAbilityAvailable(p, EE[(a)], false)
        set a = a+1
        exitwhen a>aE
    endloop
    call TriggerRegisterPlayerUnitEvent(he, p, EVENT_PLAYER_UNIT_CONSTRUCT_START, null)
    call TriggerRegisterPlayerUnitEvent(He, p, EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, null)
    call TriggerRegisterPlayerUnitEvent(je, p, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH, null)
    call TriggerRegisterPlayerUnitEvent(Je, p, EVENT_PLAYER_UNIT_UPGRADE_START, null)
    call TriggerRegisterPlayerUnitEvent(ke, p, EVENT_PLAYER_UNIT_UPGRADE_CANCEL, null)
    call TriggerRegisterPlayerUnitEvent(Ke, p, EVENT_PLAYER_UNIT_UPGRADE_FINISH, null)
    call TriggerRegisterPlayerUnitEvent(me, p, EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
    call TriggerRegisterPlayerUnitEvent(Me, p, EVENT_PLAYER_UNIT_SPELL_ENDCAST, null)
    call TriggerRegisterPlayerUnitEvent(pe, p, EVENT_PLAYER_UNIT_ISSUED_ORDER, null)
    call TriggerRegisterPlayerUnitEvent(Pe, p, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, null)
    call TriggerRegisterPlayerUnitEvent(qe, p, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, null)
    call TriggerRegisterPlayerUnitEvent(Qe, p, EVENT_PLAYER_UNIT_SELECTED, null)
    call TriggerRegisterPlayerUnitEvent(se, p, EVENT_PLAYER_UNIT_DESELECTED, null)
    call TriggerRegisterPlayerEvent(Ge, p, EVENT_PLAYER_LEAVE)
    call sF("Player "+I2S(bd)+" is created.")
    set GC = bd
    return true
endfunction
function bT takes nothing returns nothing
    set FC = CreateTrigger()
    call TriggerAddCondition(FC, Condition(function BT))
    set Sc[108] = CreateTrigger()
    set Sc[114] = Sc[108]
    call TriggerAddCondition(Sc[108], Condition(function cT))
    call TriggerAddAction(Sc[108], function cT)
    set eC[108] = null
    set eC[111] = null
    set eC[114] = null
    set xC = CreateTrigger()
    call TriggerAddCondition(xC, Condition(function CT))
    call TriggerAddAction(xC, function CT)
    set oC = CreateTrigger()
    call TriggerAddCondition(oC, Condition(function dT))
    call TriggerAddAction(oC, function dT)
    set rC = CreateTrigger()
    call TriggerAddCondition(rC, Condition(function DT))
    call TriggerAddAction(rC, function DT)
    set iC = CreateTrigger()
    call TriggerAddCondition(iC, Condition(function fT))
    call TriggerAddAction(iC, function fT)
    set aC = CreateTrigger()
    call TriggerAddCondition(aC, Condition(function FT))
    call TriggerAddAction(aC, function FT)
    set Tc[27] = null
    set Tc[28] = null
    set Tc[29] = null
    set Tc[30] = null
    set nC = CreateTrigger()
    call TriggerAddCondition(nC, Condition(function gT))
    set dC = CreateTrigger()
    call TriggerAddCondition(dC, Condition(function GT))
    call TriggerAddAction(dC, function GT)
    set lc[91] = CreateTrigger()
    set lc[117] = lc[91]
    set lc[118] = lc[91]
    set lc[119] = lc[91]
    set lc[120] = lc[91]
    set lc[121] = lc[91]
    set lc[122] = lc[91]
    set lc[124] = lc[91]
    call TriggerAddCondition(lc[91], Condition(function hT))
    call TriggerAddAction(lc[91], function hT)
    set Lc[91] = CreateTrigger()
    set Lc[117] = Lc[91]
    set Lc[120] = Lc[91]
    set Lc[124] = Lc[91]
    call TriggerAddCondition(Lc[91], Condition(function HT))
    call TriggerAddAction(Lc[91], function HT)
    set mc[91] = CreateTrigger()
    set mc[117] = mc[91]
    set mc[118] = mc[91]
    set mc[119] = mc[91]
    set mc[121] = mc[91]
    set mc[122] = mc[91]
    set mc[123] = mc[91]
    set mc[124] = mc[91]
    call TriggerAddCondition(mc[91], Condition(function jT))
    call TriggerAddAction(mc[91], function jT)
    set Mc[91] = CreateTrigger()
    set Mc[117] = Mc[91]
    set Mc[124] = Mc[91]
    call TriggerAddCondition(Mc[91], Condition(function JT))
    call TriggerAddAction(Mc[91], function JT)
    set Pc[91] = CreateTrigger()
    set Pc[117] = Pc[91]
    set Pc[118] = Pc[91]
    set Pc[119] = Pc[91]
    set Pc[120] = Pc[91]
    set Pc[123] = Pc[91]
    set Pc[124] = Pc[91]
    call TriggerAddCondition(Pc[91], Condition(function kT))
    call TriggerAddAction(Pc[91], function kT)
    set Zc[91] = CreateTrigger()
    set Zc[117] = Zc[91]
    set Zc[118] = Zc[91]
    set Zc[119] = Zc[91]
    set Zc[120] = Zc[91]
    set Zc[121] = Zc[91]
    set Zc[122] = Zc[91]
    set Zc[123] = Zc[91]
    set Zc[124] = Zc[91]
    call TriggerAddCondition(Zc[91], Condition(function KT))
    set DC = CreateTrigger()
    call TriggerAddCondition(DC, Condition(function lT))
    call TriggerAddAction(DC, function lT)
    set qc[91] = CreateTrigger()
    set qc[117] = qc[91]
    set qc[118] = qc[91]
    set qc[119] = qc[91]
    set qc[120] = qc[91]
    set qc[121] = qc[91]
    set qc[122] = qc[91]
    set qc[124] = qc[91]
    call TriggerAddCondition(qc[91], Condition(function LT))
    call TriggerAddAction(qc[91], function LT)
    set Qc[91] = CreateTrigger()
    set Qc[117] = Qc[91]
    set Qc[118] = Qc[91]
    set Qc[119] = Qc[91]
    set Qc[120] = Qc[91]
    set Qc[121] = Qc[91]
    set Qc[122] = Qc[91]
    set Qc[123] = Qc[91]
    call TriggerAddCondition(Qc[91], Condition(function mT))
    call TriggerAddAction(Qc[91], function mT)
    set sc[91] = CreateTrigger()
    set sc[117] = sc[91]
    set sc[118] = sc[91]
    set sc[119] = sc[91]
    set sc[120] = sc[91]
    set sc[121] = sc[91]
    set sc[122] = sc[91]
    set sc[123] = sc[91]
    call TriggerAddCondition(sc[91], Condition(function MT))
    call TriggerAddAction(sc[91], function MT)
    set cC = CreateTrigger()
    call TriggerAddCondition(cC, Condition(function pT))
    set Yc[77] = CreateTrigger()
    set Yc[78] = Yc[77]
    set Yc[79] = Yc[77]
    set Yc[80] = Yc[77]
    set Yc[81] = Yc[77]
    set Yc[82] = Yc[77]
    set Yc[84] = Yc[77]
    set Yc[85] = Yc[77]
    set Yc[89] = Yc[77]
    call TriggerAddCondition(Yc[77], Condition(function PT))
    set hc[77] = CreateTrigger()
    set hc[79] = hc[77]
    set hc[80] = hc[77]
    set hc[81] = hc[77]
    set hc[82] = hc[77]
    set hc[84] = hc[77]
    set hc[85] = hc[77]
    set hc[89] = hc[77]
    call TriggerAddCondition(hc[77], Condition(function qT))
    call TriggerAddAction(hc[77], function qT)
    set Hc[77] = CreateTrigger()
    set Hc[78] = Hc[77]
    set Hc[79] = Hc[77]
    set Hc[80] = Hc[77]
    set Hc[81] = Hc[77]
    set Hc[82] = Hc[77]
    set Hc[83] = Hc[77]
    set Hc[84] = Hc[77]
    set Hc[85] = Hc[77]
    set Hc[88] = Hc[77]
    set Hc[89] = Hc[77]
    call TriggerAddCondition(Hc[77], Condition(function QT))
    call TriggerAddAction(Hc[77], function QT)
    set CC = CreateTrigger()
    call TriggerAddCondition(CC, Condition(function sT))
    set jc[77] = CreateTrigger()
    set jc[78] = jc[77]
    set jc[79] = jc[77]
    set jc[80] = jc[77]
    set jc[81] = jc[77]
    set jc[82] = jc[77]
    set jc[83] = jc[77]
    set jc[84] = jc[77]
    set jc[85] = jc[77]
    set jc[86] = jc[77]
    set jc[87] = jc[77]
    set jc[89] = jc[77]
    set jc[90] = jc[77]
    call TriggerAddCondition(jc[77], Condition(function ST))
    call TriggerAddAction(jc[77], function ST)
    set Jc[77] = CreateTrigger()
    set Jc[78] = Jc[77]
    set Jc[79] = Jc[77]
    set Jc[83] = Jc[77]
    set Jc[84] = Jc[77]
    set Jc[86] = Jc[77]
    set Jc[87] = Jc[77]
    set Jc[90] = Jc[77]
    call TriggerAddCondition(Jc[77], Condition(function tT))
    call TriggerAddAction(Jc[77], function tT)
    set kc[77] = CreateTrigger()
    set kc[78] = kc[77]
    set kc[80] = kc[77]
    set kc[81] = kc[77]
    set kc[82] = kc[77]
    set kc[83] = kc[77]
    set kc[85] = kc[77]
    set kc[88] = kc[77]
    set kc[89] = kc[77]
    set kc[90] = kc[77]
    call TriggerAddCondition(kc[77], Condition(function TT))
    call TriggerAddAction(kc[77], function TT)
    set Kc[77] = CreateTrigger()
    set Kc[79] = Kc[77]
    set Kc[80] = Kc[77]
    set Kc[81] = Kc[77]
    set Kc[82] = Kc[77]
    set Kc[83] = Kc[77]
    set Kc[84] = Kc[77]
    set Kc[85] = Kc[77]
    set Kc[88] = Kc[77]
    set Kc[89] = Kc[77]
    set Kc[90] = Kc[77]
    call TriggerAddCondition(Kc[77], Condition(function uT))
    call TriggerAddAction(Kc[77], function uT)
    set BC = CreateTrigger()
    call TriggerAddCondition(BC, Condition(function UT))
    set bC = CreateTrigger()
    call TriggerAddCondition(bC, Condition(function wT))
    set VC = CreateTrigger()
    call TriggerAddCondition(VC, Condition(function WT))
    call TriggerAddAction(VC, function WT)
    set EC = CreateTrigger()
    call TriggerAddCondition(EC, Condition(function yT))
    call TriggerAddAction(EC, function yT)
    set XC = CreateTrigger()
    call TriggerAddCondition(XC, Condition(function YT))
    call TriggerAddAction(XC, function YT)
    set OC = CreateTrigger()
    call TriggerAddCondition(OC, Condition(function zT))
    call TriggerAddAction(OC, function zT)
    set RC = CreateTrigger()
    call TriggerAddCondition(RC, Condition(function ZT))
    set Uc[56] = CreateTrigger()
    set Uc[103] = Uc[56]
    set Uc[104] = Uc[56]
    set Uc[105] = Uc[56]
    set Uc[106] = Uc[56]
    set Uc[107] = Uc[56]
    call TriggerAddCondition(Uc[56], Condition(function vu))
    set Ec[56] = CreateTrigger()
    set Ec[98] = Ec[56]
    set Ec[99] = Ec[56]
    set Ec[100] = Ec[56]
    set Ec[103] = Ec[56]
    set Ec[104] = Ec[56]
    set Ec[105] = Ec[56]
    set Ec[106] = Ec[56]
    call TriggerAddCondition(Ec[56], Condition(function eu))
    call TriggerAddAction(Ec[56], function eu)
    set Xc[56] = CreateTrigger()
    set Xc[98] = Xc[56]
    set Xc[99] = Xc[56]
    set Xc[100] = Xc[56]
    set Xc[101] = Xc[56]
    set Xc[102] = Xc[56]
    set Xc[103] = Xc[56]
    set Xc[104] = Xc[56]
    set Xc[105] = Xc[56]
    set Xc[106] = Xc[56]
    set Xc[107] = Xc[56]
    call TriggerAddCondition(Xc[56], Condition(function xu))
    call TriggerAddAction(Xc[56], function xu)
    set Oc[56] = CreateTrigger()
    set Oc[98] = Oc[56]
    set Oc[99] = Oc[56]
    set Oc[100] = Oc[56]
    set Oc[101] = Oc[56]
    set Oc[102] = Oc[56]
    set Oc[103] = Oc[56]
    set Oc[104] = Oc[56]
    set Oc[105] = Oc[56]
    set Oc[107] = Oc[56]
    call TriggerAddCondition(Oc[56], Condition(function ou))
    call TriggerAddAction(Oc[56], function ou)
    set Rc[56] = CreateTrigger()
    set Rc[98] = Rc[56]
    set Rc[99] = Rc[56]
    set Rc[100] = Rc[56]
    set Rc[101] = Rc[56]
    set Rc[102] = Rc[56]
    set Rc[103] = Rc[56]
    set Rc[104] = Rc[56]
    set Rc[105] = Rc[56]
    set Rc[107] = Rc[56]
    call TriggerAddCondition(Rc[56], Condition(function ru))
    call TriggerAddAction(Rc[56], function ru)
    set Ic[56] = CreateTrigger()
    set Ic[98] = Ic[56]
    set Ic[99] = Ic[56]
    set Ic[100] = Ic[56]
    set Ic[101] = Ic[56]
    set Ic[103] = Ic[56]
    set Ic[104] = Ic[56]
    set Ic[105] = Ic[56]
    set Ic[106] = Ic[56]
    call TriggerAddCondition(Ic[56], Condition(function iu))
    call TriggerAddAction(Ic[56], function iu)
    set Ac[56] = CreateTrigger()
    set Ac[98] = Ac[56]
    set Ac[99] = Ac[56]
    set Ac[100] = Ac[56]
    set Ac[101] = Ac[56]
    set Ac[102] = Ac[56]
    set Ac[103] = Ac[56]
    set Ac[104] = Ac[56]
    set Ac[105] = Ac[56]
    set Ac[106] = Ac[56]
    set Ac[107] = Ac[56]
    call TriggerAddCondition(Ac[56], Condition(function au))
    call TriggerAddAction(Ac[56], function au)
    set Nc[56] = CreateTrigger()
    set Nc[98] = Nc[56]
    set Nc[99] = Nc[56]
    set Nc[100] = Nc[56]
    set Nc[101] = Nc[56]
    set Nc[102] = Nc[56]
    set Nc[103] = Nc[56]
    set Nc[104] = Nc[56]
    set Nc[105] = Nc[56]
    set Nc[107] = Nc[56]
    call TriggerAddCondition(Nc[56], Condition(function nu))
    call TriggerAddAction(Nc[56], function nu)
    set bc[56] = CreateTrigger()
    set bc[98] = bc[56]
    set bc[99] = bc[56]
    set bc[100] = bc[56]
    set bc[101] = bc[56]
    set bc[102] = bc[56]
    set bc[103] = bc[56]
    set bc[104] = bc[56]
    set bc[105] = bc[56]
    set bc[106] = bc[56]
    set bc[107] = bc[56]
    call TriggerAddCondition(bc[56], Condition(function Vu))
    call TriggerAddAction(bc[56], function Vu)
    set Bc[56] = CreateTrigger()
    set Bc[98] = Bc[56]
    set Bc[99] = Bc[56]
    set Bc[100] = Bc[56]
    set Bc[101] = Bc[56]
    set Bc[102] = Bc[56]
    set Bc[103] = Bc[56]
    set Bc[104] = Bc[56]
    set Bc[105] = Bc[56]
    set Bc[106] = Bc[56]
    set Bc[107] = Bc[56]
    call TriggerAddCondition(Bc[56], Condition(function Eu))
    call TriggerAddAction(Bc[56], function Eu)
    set cc[56] = CreateTrigger()
    set cc[103] = cc[56]
    set cc[104] = cc[56]
    set cc[105] = cc[56]
    set cc[106] = cc[56]
    set cc[107] = cc[56]
    call TriggerAddCondition(cc[56], Condition(function Xu))
    call TriggerAddAction(cc[56], function Xu)
    set Cc[56] = CreateTrigger()
    set Cc[103] = Cc[56]
    set Cc[104] = Cc[56]
    set Cc[105] = Cc[56]
    set Cc[106] = Cc[56]
    set Cc[107] = Cc[56]
    call TriggerAddCondition(Cc[56], Condition(function Ou))
    call TriggerAddAction(Cc[56], function Ou)
    set dc[56] = CreateTrigger()
    set dc[98] = dc[56]
    set dc[99] = dc[56]
    set dc[100] = dc[56]
    set dc[101] = dc[56]
    set dc[102] = dc[56]
    set dc[103] = dc[56]
    set dc[104] = dc[56]
    set dc[105] = dc[56]
    set dc[107] = dc[56]
    call TriggerAddCondition(dc[56], Condition(function Ru))
    call TriggerAddAction(dc[56], function Ru)
    set Dc[56] = CreateTrigger()
    set Dc[98] = Dc[56]
    set Dc[99] = Dc[56]
    set Dc[100] = Dc[56]
    set Dc[101] = Dc[56]
    set Dc[102] = Dc[56]
    set Dc[103] = Dc[56]
    set Dc[104] = Dc[56]
    set Dc[105] = Dc[56]
    set Dc[106] = Dc[56]
    set Dc[107] = Dc[56]
    call TriggerAddCondition(Dc[56], Condition(function Iu))
    call TriggerAddAction(Dc[56], function Iu)
    set fc[56] = CreateTrigger()
    set fc[98] = fc[56]
    set fc[99] = fc[56]
    set fc[100] = fc[56]
    set fc[101] = fc[56]
    set fc[102] = fc[56]
    set fc[103] = fc[56]
    set fc[104] = fc[56]
    set fc[105] = fc[56]
    set fc[106] = fc[56]
    set fc[107] = fc[56]
    call TriggerAddCondition(fc[56], Condition(function Au))
    call TriggerAddAction(fc[56], function Au)
    set Fc[56] = CreateTrigger()
    set Fc[103] = Fc[56]
    set Fc[104] = Fc[56]
    set Fc[105] = Fc[56]
    set Fc[106] = Fc[56]
    set Fc[107] = Fc[56]
    call TriggerAddCondition(Fc[56], Condition(function Nu))
    call TriggerAddAction(Fc[56], function Nu)
    set gc[56] = CreateTrigger()
    set gc[101] = gc[56]
    set gc[102] = gc[56]
    set gc[103] = gc[56]
    set gc[104] = gc[56]
    set gc[105] = gc[56]
    set gc[106] = gc[56]
    set gc[107] = gc[56]
    call TriggerAddCondition(gc[56], Condition(function bu))
    call TriggerAddAction(gc[56], function bu)
    set IC = CreateTrigger()
    call TriggerAddCondition(IC, Condition(function Bu))
    call TriggerAddAction(IC, function Bu)
    set AC = CreateTrigger()
    call TriggerAddCondition(AC, Condition(function cu))
    set Wc[57] = CreateTrigger()
    call TriggerAddCondition(Wc[57], Condition(function Cu))
    set Gc[57] = CreateTrigger()
    set Gc[61] = Gc[57]
    set Gc[62] = Gc[57]
    set Gc[63] = Gc[57]
    set Gc[64] = Gc[57]
    set Gc[65] = Gc[57]
    set Gc[66] = Gc[57]
    set Gc[67] = Gc[57]
    set Gc[68] = Gc[57]
    set Gc[70] = Gc[57]
    set Gc[72] = Gc[57]
    set Gc[73] = Gc[57]
    set Gc[93] = Gc[57]
    set Gc[94] = Gc[57]
    set Gc[95] = Gc[57]
    set Gc[96] = Gc[57]
    set Gc[97] = Gc[57]
    call TriggerAddCondition(Gc[57], Condition(function du))
    call TriggerAddAction(Gc[57], function du)
    set Wc[63] = CreateTrigger()
    call TriggerAddCondition(Wc[63], Condition(function Du))
    call TriggerAddCondition(Wc[63], Condition(function Cu))
    set Wc[62] = CreateTrigger()
    call TriggerAddCondition(Wc[62], Condition(function fu))
    call TriggerAddCondition(Wc[62], Condition(function Cu))
    set Wc[61] = CreateTrigger()
    call TriggerAddCondition(Wc[61], Condition(function Fu))
    call TriggerAddCondition(Wc[61], Condition(function Cu))
    set NC = CreateTrigger()
    call TriggerAddCondition(NC, Condition(function gu))
    set Qc[124] = CreateTrigger()
    call TriggerAddCondition(Qc[124], Condition(function Gu))
    call TriggerAddAction(Qc[124], function Gu)
    set sc[124] = CreateTrigger()
    call TriggerAddCondition(sc[124], Condition(function hu))
    call TriggerAddAction(sc[124], function hu)
    set Wc[64] = CreateTrigger()
    call TriggerAddCondition(Wc[64], Condition(function Hu))
    call TriggerAddCondition(Wc[64], Condition(function Cu))
    set Wc[65] = CreateTrigger()
    call TriggerAddCondition(Wc[65], Condition(function ju))
    call TriggerAddCondition(Wc[65], Condition(function Cu))
    set Wc[66] = CreateTrigger()
    call TriggerAddCondition(Wc[66], Condition(function Ju))
    call TriggerAddCondition(Wc[66], Condition(function Cu))
    set Wc[67] = CreateTrigger()
    call TriggerAddCondition(Wc[67], Condition(function ku))
    call TriggerAddCondition(Wc[67], Condition(function Cu))
    set Wc[68] = CreateTrigger()
    call TriggerAddCondition(Wc[68], Condition(function Ku))
    call TriggerAddCondition(Wc[68], Condition(function Cu))
    set Gc[69] = CreateTrigger()
    call TriggerAddCondition(Gc[69], Condition(function Lu))
    call TriggerAddAction(Gc[69], function Lu)
    set Wc[69] = CreateTrigger()
    call TriggerAddCondition(Wc[69], Condition(function lu))
    call TriggerAddCondition(Wc[69], Condition(function Cu))
    set Wc[70] = CreateTrigger()
    call TriggerAddCondition(Wc[70], Condition(function mu))
    call TriggerAddCondition(Wc[70], Condition(function Cu))
    set Gc[71] = CreateTrigger()
    call TriggerAddCondition(Gc[71], Condition(function pu))
    call TriggerAddAction(Gc[71], function pu)
    set Wc[71] = CreateTrigger()
    call TriggerAddCondition(Wc[71], Condition(function Mu))
    call TriggerAddCondition(Wc[71], Condition(function Cu))
    set Wc[72] = CreateTrigger()
    call TriggerAddCondition(Wc[72], Condition(function Pu))
    call TriggerAddCondition(Wc[72], Condition(function Cu))
    set Wc[73] = CreateTrigger()
    call TriggerAddCondition(Wc[73], Condition(function qu))
    call TriggerAddCondition(Wc[73], Condition(function Cu))
    set Gc[74] = CreateTrigger()
    call TriggerAddCondition(Gc[74], Condition(function su))
    call TriggerAddAction(Gc[74], function su)
    set Wc[74] = CreateTrigger()
    call TriggerAddCondition(Wc[74], Condition(function Qu))
    call TriggerAddCondition(Wc[74], Condition(function Cu))
    set Kc[78] = CreateTrigger()
    call TriggerAddCondition(Kc[78], Condition(function Su))
    call TriggerAddAction(Kc[78], function Su)
    set hc[78] = CreateTrigger()
    call TriggerAddCondition(hc[78], Condition(function tu))
    call TriggerAddAction(hc[78], function tu)
    set kc[79] = CreateTrigger()
    call TriggerAddCondition(kc[79], Condition(function Tu))
    call TriggerAddAction(kc[79], function Tu)
    set Jc[80] = CreateTrigger()
    call TriggerAddCondition(Jc[80], Condition(function uu))
    call TriggerAddAction(Jc[80], function uu)
    set Jc[81] = CreateTrigger()
    call TriggerAddCondition(Jc[81], Condition(function Uu))
    call TriggerAddAction(Jc[81], function Uu)
    set Jc[82] = CreateTrigger()
    call TriggerAddCondition(Jc[82], Condition(function wu))
    call TriggerAddAction(Jc[82], function wu)
    set hc[83] = CreateTrigger()
    call TriggerAddCondition(hc[83], Condition(function yu))
    call TriggerAddAction(hc[83], function yu)
    set Yc[83] = CreateTrigger()
    call TriggerAddCondition(Yc[83], Condition(function Wu))
    call TriggerAddCondition(Yc[83], Condition(function PT))
    set kc[84] = CreateTrigger()
    call TriggerAddCondition(kc[84], Condition(function Yu))
    call TriggerAddAction(kc[84], function Yu)
    set Jc[85] = CreateTrigger()
    call TriggerAddCondition(Jc[85], Condition(function zu))
    call TriggerAddAction(Jc[85], function zu)
    set hc[86] = CreateTrigger()
    call TriggerAddCondition(hc[86], Condition(function Zu))
    call TriggerAddAction(hc[86], function Zu)
    set Hc[86] = CreateTrigger()
    call TriggerAddCondition(Hc[86], Condition(function eU))
    call TriggerAddAction(Hc[86], function eU)
    set kc[86] = CreateTrigger()
    call TriggerAddCondition(kc[86], Condition(function xU))
    call TriggerAddAction(kc[86], function xU)
    set Kc[86] = CreateTrigger()
    call TriggerAddCondition(Kc[86], Condition(function oU))
    call TriggerAddAction(Kc[86], function oU)
    set Yc[86] = CreateTrigger()
    call TriggerAddCondition(Yc[86], Condition(function vU))
    call TriggerAddCondition(Yc[86], Condition(function PT))
    set hc[87] = CreateTrigger()
    call TriggerAddCondition(hc[87], Condition(function rU))
    call TriggerAddAction(hc[87], function rU)
    set Hc[87] = CreateTrigger()
    call TriggerAddCondition(Hc[87], Condition(function aU))
    call TriggerAddAction(Hc[87], function aU)
    set kc[87] = CreateTrigger()
    call TriggerAddCondition(kc[87], Condition(function nU))
    call TriggerAddAction(kc[87], function nU)
    set Kc[87] = CreateTrigger()
    call TriggerAddCondition(Kc[87], Condition(function VU))
    call TriggerAddAction(Kc[87], function VU)
    set Yc[87] = CreateTrigger()
    call TriggerAddCondition(Yc[87], Condition(function iU))
    call TriggerAddCondition(Yc[87], Condition(function PT))
    set hc[88] = CreateTrigger()
    call TriggerAddCondition(hc[88], Condition(function EU))
    call TriggerAddAction(hc[88], function EU)
    set Jc[88] = CreateTrigger()
    call TriggerAddCondition(Jc[88], Condition(function OU))
    call TriggerAddAction(Jc[88], function OU)
    set jc[88] = CreateTrigger()
    call TriggerAddCondition(jc[88], Condition(function RU))
    call TriggerAddAction(jc[88], function RU)
    set Yc[88] = CreateTrigger()
    call TriggerAddCondition(Yc[88], Condition(function XU))
    call TriggerAddCondition(Yc[88], Condition(function PT))
    set Jc[89] = CreateTrigger()
    call TriggerAddCondition(Jc[89], Condition(function IU))
    call TriggerAddAction(Jc[89], function IU)
    set hc[90] = CreateTrigger()
    call TriggerAddCondition(hc[90], Condition(function AU))
    call TriggerAddAction(hc[90], function AU)
    set Hc[90] = CreateTrigger()
    call TriggerAddCondition(Hc[90], Condition(function bU))
    call TriggerAddAction(Hc[90], function bU)
    set Yc[90] = CreateTrigger()
    call TriggerAddCondition(Yc[90], Condition(function NU))
    call TriggerAddCondition(Yc[90], Condition(function PT))
    set Gc[92] = CreateTrigger()
    call TriggerAddCondition(Gc[92], Condition(function cU))
    call TriggerAddAction(Gc[92], function cU)
    set Wc[92] = CreateTrigger()
    call TriggerAddCondition(Wc[92], Condition(function BU))
    call TriggerAddCondition(Wc[92], Condition(function Cu))
    set Wc[93] = CreateTrigger()
    call TriggerAddCondition(Wc[93], Condition(function CU))
    call TriggerAddCondition(Wc[93], Condition(function Cu))
    set Wc[94] = CreateTrigger()
    call TriggerAddCondition(Wc[94], Condition(function dU))
    call TriggerAddCondition(Wc[94], Condition(function Cu))
    set Wc[95] = CreateTrigger()
    call TriggerAddCondition(Wc[95], Condition(function DU))
    call TriggerAddCondition(Wc[95], Condition(function Cu))
    set Wc[96] = CreateTrigger()
    call TriggerAddCondition(Wc[96], Condition(function fU))
    call TriggerAddCondition(Wc[96], Condition(function Cu))
    set Wc[97] = CreateTrigger()
    call TriggerAddCondition(Wc[97], Condition(function FU))
    call TriggerAddCondition(Wc[97], Condition(function Cu))
    set cc[98] = CreateTrigger()
    call TriggerAddCondition(cc[98], Condition(function GU))
    call TriggerAddAction(cc[98], function GU)
    set Cc[98] = CreateTrigger()
    call TriggerAddCondition(Cc[98], Condition(function hU))
    call TriggerAddAction(Cc[98], function hU)
    set Fc[98] = CreateTrigger()
    call TriggerAddCondition(Fc[98], Condition(function HU))
    call TriggerAddAction(Fc[98], function HU)
    set gc[98] = CreateTrigger()
    call TriggerAddCondition(gc[98], Condition(function jU))
    call TriggerAddAction(gc[98], function jU)
    set Uc[98] = CreateTrigger()
    call TriggerAddCondition(Uc[98], Condition(function gU))
    call TriggerAddCondition(Uc[98], Condition(function vu))
    set cc[99] = CreateTrigger()
    call TriggerAddCondition(cc[99], Condition(function kU))
    call TriggerAddAction(cc[99], function kU)
    set Cc[99] = CreateTrigger()
    call TriggerAddCondition(Cc[99], Condition(function KU))
    call TriggerAddAction(Cc[99], function KU)
    set Fc[99] = CreateTrigger()
    call TriggerAddCondition(Fc[99], Condition(function lU))
    call TriggerAddAction(Fc[99], function lU)
    set gc[99] = CreateTrigger()
    call TriggerAddCondition(gc[99], Condition(function LU))
    call TriggerAddAction(gc[99], function LU)
    set Uc[99] = CreateTrigger()
    call TriggerAddCondition(Uc[99], Condition(function JU))
    call TriggerAddCondition(Uc[99], Condition(function vu))
    set cc[100] = CreateTrigger()
    call TriggerAddCondition(cc[100], Condition(function MU))
    call TriggerAddAction(cc[100], function MU)
    set Cc[100] = CreateTrigger()
    call TriggerAddCondition(Cc[100], Condition(function pU))
    call TriggerAddAction(Cc[100], function pU)
    set Fc[100] = CreateTrigger()
    call TriggerAddCondition(Fc[100], Condition(function PU))
    call TriggerAddAction(Fc[100], function PU)
    set gc[100] = CreateTrigger()
    call TriggerAddCondition(gc[100], Condition(function qU))
    call TriggerAddAction(gc[100], function qU)
    set Uc[100] = CreateTrigger()
    call TriggerAddCondition(Uc[100], Condition(function mU))
    call TriggerAddCondition(Uc[100], Condition(function vu))
    set fC = CreateTrigger()
    call TriggerAddCondition(fC, Condition(function QU))
    set Ec[101] = CreateTrigger()
    call TriggerAddCondition(Ec[101], Condition(function SU))
    call TriggerAddAction(Ec[101], function SU)
    set cc[101] = CreateTrigger()
    call TriggerAddCondition(cc[101], Condition(function tU))
    call TriggerAddAction(cc[101], function tU)
    set Cc[101] = CreateTrigger()
    call TriggerAddCondition(Cc[101], Condition(function TU))
    call TriggerAddAction(Cc[101], function TU)
    set Fc[101] = CreateTrigger()
    call TriggerAddCondition(Fc[101], Condition(function uU))
    call TriggerAddAction(Fc[101], function uU)
    set Uc[101] = CreateTrigger()
    call TriggerAddCondition(Uc[101], Condition(function sU))
    call TriggerAddCondition(Uc[101], Condition(function vu))
    set Ec[102] = CreateTrigger()
    call TriggerAddCondition(Ec[102], Condition(function wU))
    call TriggerAddAction(Ec[102], function wU)
    set Ic[102] = CreateTrigger()
    call TriggerAddCondition(Ic[102], Condition(function WU))
    call TriggerAddAction(Ic[102], function WU)
    set cc[102] = CreateTrigger()
    call TriggerAddCondition(cc[102], Condition(function yU))
    call TriggerAddAction(cc[102], function yU)
    set Cc[102] = CreateTrigger()
    call TriggerAddCondition(Cc[102], Condition(function YU))
    call TriggerAddAction(Cc[102], function YU)
    set Fc[102] = CreateTrigger()
    call TriggerAddCondition(Fc[102], Condition(function zU))
    call TriggerAddAction(Fc[102], function zU)
    set Uc[102] = CreateTrigger()
    call TriggerAddCondition(Uc[102], Condition(function UU))
    call TriggerAddCondition(Uc[102], Condition(function vu))
    set Oc[106] = CreateTrigger()
    call TriggerAddCondition(Oc[106], Condition(function ZU))
    call TriggerAddAction(Oc[106], function ZU)
    set Rc[106] = CreateTrigger()
    call TriggerAddCondition(Rc[106], Condition(function vw))
    call TriggerAddAction(Rc[106], function vw)
    set Nc[106] = CreateTrigger()
    call TriggerAddCondition(Nc[106], Condition(function ew))
    call TriggerAddAction(Nc[106], function ew)
    set dc[106] = CreateTrigger()
    call TriggerAddCondition(dc[106], Condition(function xw))
    call TriggerAddAction(dc[106], function xw)
    set Ic[107] = CreateTrigger()
    call TriggerAddCondition(Ic[107], Condition(function ow))
    call TriggerAddAction(Ic[107], function ow)
    set Ec[107] = CreateTrigger()
    call TriggerAddCondition(Ec[107], Condition(function rw))
    call TriggerAddAction(Ec[107], function rw)
    set Sc[109] = CreateTrigger()
    call TriggerAddCondition(Sc[109], Condition(function aw))
    call TriggerAddAction(Sc[109], function aw)
    set eC[109] = CreateTrigger()
    call TriggerAddCondition(eC[109], Condition(function iw))
    set Sc[110] = CreateTrigger()
    call TriggerAddCondition(Sc[110], Condition(function Vw))
    call TriggerAddAction(Sc[110], function Vw)
    set eC[110] = CreateTrigger()
    call TriggerAddCondition(eC[110], Condition(function nw))
    set Sc[111] = CreateTrigger()
    call TriggerAddCondition(Sc[111], Condition(function Ew))
    call TriggerAddAction(Sc[111], function Ew)
    set Sc[112] = CreateTrigger()
    call TriggerAddCondition(Sc[112], Condition(function Ow))
    call TriggerAddAction(Sc[112], function Ow)
    set eC[112] = CreateTrigger()
    call TriggerAddCondition(eC[112], Condition(function Xw))
    set Sc[113] = CreateTrigger()
    call TriggerAddCondition(Sc[113], Condition(function Iw))
    call TriggerAddAction(Sc[113], function Iw)
    set eC[113] = CreateTrigger()
    call TriggerAddCondition(eC[113], Condition(function Rw))
    set Sc[115] = CreateTrigger()
    call TriggerAddCondition(Sc[115], Condition(function Nw))
    call TriggerAddAction(Sc[115], function Nw)
    set eC[115] = CreateTrigger()
    call TriggerAddCondition(eC[115], Condition(function Aw))
    set Sc[116] = CreateTrigger()
    call TriggerAddCondition(Sc[116], Condition(function Bw))
    call TriggerAddAction(Sc[116], function Bw)
    set eC[116] = CreateTrigger()
    call TriggerAddCondition(eC[116], Condition(function bw))
    set Lc[118] = CreateTrigger()
    call TriggerAddCondition(Lc[118], Condition(function cw))
    call TriggerAddAction(Lc[118], function cw)
    set Mc[118] = CreateTrigger()
    call TriggerAddCondition(Mc[118], Condition(function Cw))
    call TriggerAddAction(Mc[118], function Cw)
    set Lc[119] = CreateTrigger()
    call TriggerAddCondition(Lc[119], Condition(function dw))
    call TriggerAddAction(Lc[119], function dw)
    set Mc[119] = CreateTrigger()
    call TriggerAddCondition(Mc[119], Condition(function Dw))
    call TriggerAddAction(Mc[119], function Dw)
    set mc[120] = CreateTrigger()
    call TriggerAddCondition(mc[120], Condition(function fw))
    call TriggerAddAction(mc[120], function fw)
    set Mc[120] = CreateTrigger()
    call TriggerAddCondition(Mc[120], Condition(function Fw))
    call TriggerAddAction(Mc[120], function Fw)
    set Lc[121] = CreateTrigger()
    call TriggerAddCondition(Lc[121], Condition(function gw))
    call TriggerAddAction(Lc[121], function gw)
    set Mc[121] = CreateTrigger()
    call TriggerAddCondition(Mc[121], Condition(function Gw))
    call TriggerAddAction(Mc[121], function Gw)
    set Pc[121] = CreateTrigger()
    call TriggerAddCondition(Pc[121], Condition(function hw))
    call TriggerAddAction(Pc[121], function hw)
    set Lc[122] = CreateTrigger()
    call TriggerAddCondition(Lc[122], Condition(function Hw))
    call TriggerAddAction(Lc[122], function Hw)
    set Mc[122] = CreateTrigger()
    call TriggerAddCondition(Mc[122], Condition(function jw))
    call TriggerAddAction(Mc[122], function jw)
    set Pc[122] = CreateTrigger()
    call TriggerAddCondition(Pc[122], Condition(function Jw))
    call TriggerAddAction(Pc[122], function Jw)
    set lc[123] = CreateTrigger()
    call TriggerAddCondition(lc[123], Condition(function kw))
    call TriggerAddAction(lc[123], function kw)
    set Lc[123] = CreateTrigger()
    call TriggerAddCondition(Lc[123], Condition(function Kw))
    call TriggerAddAction(Lc[123], function Kw)
    set qc[123] = CreateTrigger()
    call TriggerAddCondition(qc[123], Condition(function lw))
    call TriggerAddAction(qc[123], function lw)
    set Mc[123] = CreateTrigger()
    call TriggerAddCondition(Mc[123], Condition(function Lw))
    call TriggerAddAction(Mc[123], function Lw)
    set HC[1] = CreateTrigger()
    call TriggerAddAction(HC[1], function mw)
    call TriggerAddCondition(HC[1], Condition(function mw))
    set hC[7] = CreateTrigger()
    call TriggerAddAction(hC[7], function qw)
    call TriggerAddCondition(hC[7], Condition(function qw))
    set hC[1] = CreateTrigger()
    call TriggerAddAction(hC[1], function Qw)
    call TriggerAddCondition(hC[1], Condition(function Qw))
    set hC[2] = CreateTrigger()
    call TriggerAddAction(hC[2], function sw)
    call TriggerAddCondition(hC[2], Condition(function sw))
    set hC[3] = CreateTrigger()
    call TriggerAddAction(hC[3], function Sw)
    call TriggerAddCondition(hC[3], Condition(function Sw))
    set jC[1] = CreateTrigger()
    call TriggerAddAction(jC[1], function tw)
    call TriggerAddCondition(jC[1], Condition(function tw))
    set hC[4] = CreateTrigger()
    call TriggerAddAction(hC[4], function Tw)
    call TriggerAddCondition(hC[4], Condition(function Tw))
    set hC[5] = CreateTrigger()
    call TriggerAddAction(hC[5], function uw)
    call TriggerAddCondition(hC[5], Condition(function uw))
    set hC[6] = CreateTrigger()
    call TriggerAddAction(hC[6], function Uw)
    call TriggerAddCondition(hC[6], Condition(function Uw))
    set kC[1] = CreateTrigger()
    call TriggerAddAction(kC[1], function ww)
    call TriggerAddCondition(kC[1], Condition(function ww))
    set KC[1] = CreateTrigger()
    call TriggerAddAction(KC[1], function Ww)
    call TriggerAddCondition(KC[1], Condition(function Ww))
    set gC[1] = CreateTrigger()
    call TriggerAddAction(gC[1], function yw)
    call TriggerAddCondition(gC[1], Condition(function yw))
    set gC[2] = CreateTrigger()
    call TriggerAddAction(gC[2], function Yw)
    call TriggerAddCondition(gC[2], Condition(function Yw))
    set gC[3] = CreateTrigger()
    call TriggerAddAction(gC[3], function zw)
    call TriggerAddCondition(gC[3], Condition(function zw))
    set gC[4] = CreateTrigger()
    call TriggerAddAction(gC[4], function Zw)
    call TriggerAddCondition(gC[4], Condition(function Zw))
    set gC[5] = CreateTrigger()
    call TriggerAddAction(gC[5], function vW)
    call TriggerAddCondition(gC[5], Condition(function vW))
    set lC[1] = CreateTrigger()
    call TriggerAddAction(lC[1], function eW)
    call TriggerAddCondition(lC[1], Condition(function eW))
    set gC[6] = CreateTrigger()
    call TriggerAddAction(gC[6], function xW)
    call TriggerAddCondition(gC[6], Condition(function xW))
    set gC[7] = CreateTrigger()
    call TriggerAddAction(gC[7], function oW)
    call TriggerAddCondition(gC[7], Condition(function oW))
    set gC[8] = CreateTrigger()
    call TriggerAddAction(gC[8], function rW)
    call TriggerAddCondition(gC[8], Condition(function rW))
    set gC[9] = CreateTrigger()
    call TriggerAddAction(gC[9], function iW)
    call TriggerAddCondition(gC[9], Condition(function iW))
    set gC[$A] = CreateTrigger()
    call TriggerAddAction(gC[$A], function aW)
    call TriggerAddCondition(gC[$A], Condition(function aW))
    set gC[$B] = CreateTrigger()
    call TriggerAddAction(gC[$B], function nW)
    call TriggerAddCondition(gC[$B], Condition(function nW))
    set gC[$C] = CreateTrigger()
    call TriggerAddAction(gC[$C], function VW)
    call TriggerAddCondition(gC[$C], Condition(function VW))
    set gC[$D] = CreateTrigger()
    call TriggerAddAction(gC[$D], function EW)
    call TriggerAddCondition(gC[$D], Condition(function EW))
    set jC[2] = CreateTrigger()
    call TriggerAddAction(jC[2], function XW)
    call TriggerAddCondition(jC[2], Condition(function XW))
    set gC[$E] = CreateTrigger()
    call TriggerAddAction(gC[$E], function OW)
    call TriggerAddCondition(gC[$E], Condition(function OW))
    set gC[$F] = CreateTrigger()
    call TriggerAddAction(gC[$F], function RW)
    call TriggerAddCondition(gC[$F], Condition(function RW))
    set gC[16] = CreateTrigger()
    call TriggerAddAction(gC[16], function IW)
    call TriggerAddCondition(gC[16], Condition(function IW))
    set gC[17] = CreateTrigger()
    call TriggerAddAction(gC[17], function AW)
    call TriggerAddCondition(gC[17], Condition(function AW))
    set gC[18] = CreateTrigger()
    call TriggerAddAction(gC[18], function NW)
    call TriggerAddCondition(gC[18], Condition(function NW))
    set gC[19] = CreateTrigger()
    call TriggerAddAction(gC[19], function bW)
    call TriggerAddCondition(gC[19], Condition(function bW))
    set gC[20] = CreateTrigger()
    call TriggerAddAction(gC[20], function BW)
    call TriggerAddCondition(gC[20], Condition(function BW))
    set gC[21] = CreateTrigger()
    call TriggerAddAction(gC[21], function cW)
    call TriggerAddCondition(gC[21], Condition(function cW))
    set gC[22] = CreateTrigger()
    call TriggerAddAction(gC[22], function CW)
    call TriggerAddCondition(gC[22], Condition(function CW))
    set JC[1] = CreateTrigger()
    call TriggerAddAction(JC[1], function dW)
    call TriggerAddCondition(JC[1], Condition(function dW))
    set LC[1] = CreateTrigger()
    call TriggerAddAction(LC[1], function DW)
    call TriggerAddCondition(LC[1], Condition(function DW))
    call ExecuteFunc("Sg")
    call ExecuteFunc("gh")
    call ExecuteFunc("TL")
    call ExecuteFunc("uM")
    call ExecuteFunc("Lp")
    call ExecuteFunc("FP")
    call ExecuteFunc("dq")
    call ExecuteFunc("Kq")
    call ExecuteFunc("Tq")
    call ExecuteFunc("vQ")
    call ExecuteFunc("hQ")
endfunction