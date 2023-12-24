library LineAim initializer init_function
//    LineAimer by Tasyen
//    Requires Warcraft 3 V1.32+

//    Shows a precast hitzone for registered Line Direction dmg spells and tints units. (Shockwave, Carrion swarm, Breath of Fire/Frost, Impale, Smashing wave).

// function LineAimerRegister(spellCode, orderString[, hitEnemy, hitAlly])

// function LineAimerRegisterEx takes integer spellCode, string orderString returns nothing
//    wrapper for hitEnemy true, hitAlly false

// Exmple, default Abilities
// scope DefaultLineAimerDemo initializer init_function
//    private function init_function takes nothing returns nothing
//        call LineAimerRegisterEx('AOsh', "shockwave")
//        call LineAimerRegisterEx('AOs2', "shockwave")
//        call LineAimerRegisterEx('ACsh', "shockwave")
//        call LineAimerRegisterEx('ACst', "shockwave")
//        call LineAimerRegisterEx('ANsh', "shockwave")

//        call LineAimerRegisterEx('ANbf', "breathoffire")
//        call LineAimerRegisterEx('ANcf', "breathoffire")
//        call LineAimerRegisterEx('ACbc', "breathoffire")
//        call LineAimerRegisterEx('ACbf', "breathoffire")

//        call LineAimerRegisterEx('AUcs', "carrionswarm")
//        call LineAimerRegisterEx('ACca', "carrionswarm")
//        call LineAimerRegisterEx('ACcv', "carrionswarm")
//        call LineAimerRegisterEx('ACc2', "carrionswarm")
//        call LineAimerRegisterEx('ACc3', "carrionswarm")
//        call LineAimerRegisterEx('AUim', "impale")
//        call LineAimerRegisterEx('ACmp', "impale")
//    endfunction
//endscope

    globals
        public real LightningRed = 1.0
        public real LightningGreen = 1.0
        public real LightningBlue = 1.0
        public real LightningAlpha = 1.0
        // splats/lightningdata.slk
        // does not update after creation
        public string LightningFileCode = "LAIM" //default: LAIM

        public integer UnitTintingRed = 0
        public integer UnitTintingGreen = 0
        public integer UnitTintingBlue = 255
        public integer UnitTintingAlpha = 255

        // highest coli units can have
        public integer MaxColi = 200

        // System Data

        public boolean HitEnemy
        public boolean HitAlly
        public lightning LineA
        public lightning LineB
        public lightning LineC
        public filterfunc PickUnitAction
        public group AffectedUnits
        public group TempGroup
        public integer localPlayerIndex
        public player localPlayer

        public unit array Caster
        public real X = 0
        public real Y = 0
        public integer SkillCode
        public real AoeStart = 0
        public real AoeEnd = 0
        public real Range = 0
        public trigger MouseTrigger

        public real PosX = 0
        public real PosY = 0
        public real Radius = 0

        public hashtable Hash = InitHashtable()

    endglobals
    function isInTargetingMode takes nothing returns boolean
        local integer index = 0
        loop
            if BlzFrameIsVisible(BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, index)) then
                exitwhen true
            endif
                set index = index + 1
            exitwhen index == 12 // when 12 is reached no button is visible
        endloop
        return index == 11 //when the loop broke in index == 11 its targeting mode

    endfunction

    private function ButtonActionFunc takes nothing returns nothing
        local unit u = GetTriggerUnit()
        local player p = GetOwningPlayer(u)
        local integer playerIndex = GetPlayerId(p)
        local integer tId = GetHandleId(GetTriggeringTrigger())
        local integer spellCode = LoadInteger(Hash, tId, 0)
        local ability skill  = BlzGetUnitAbility(u, spellCode)
        // instance api starts with index 0 for level 1
        local integer level = GetUnitAbilityLevel(u, spellCode) - 1
        local string orderString = LoadStr(Hash, tId, 0)

        set Caster[playerIndex] = u

        if p == GetLocalPlayer() then
            set AoeStart = BlzGetAbilityRealLevelField(skill, ABILITY_RLF_AREA_OF_EFFECT, level)

            if orderString == "impale" then
                set AoeEnd =  BlzGetAbilityRealLevelField(skill, ABILITY_RLF_AREA_OF_EFFECT, level)
            elseif orderString == "carrionswarm" then
                set AoeEnd =  BlzGetAbilityRealLevelField(skill, ABILITY_RLF_FINAL_AREA_UCS4, level)
            elseif orderString == "breathoffire" then
                set AoeEnd =  BlzGetAbilityRealLevelField(skill, ABILITY_RLF_FINAL_AREA_UCS4, level)
            else
                set AoeEnd =  BlzGetAbilityRealLevelField(skill, ABILITY_RLF_FINAL_AREA_OSH4, level)
            endif
            
            set HitEnemy = LoadBoolean(Hash, tId, 0)
            set HitAlly = LoadBoolean(Hash, tId, 1)
            // for reasons imaple's AREA_OF_EFFECT has to be halved
            if orderString == "impale" then
                set AoeStart = AoeStart/2
                set AoeEnd = AoeEnd/2
            endif

            if orderString == "impale" then
                set Range =  BlzGetAbilityRealLevelField(skill, ABILITY_RLF_WAVE_DISTANCE, level)
            elseif orderString == "carrionswarm" then
                set Range =  BlzGetAbilityRealLevelField(skill, ABILITY_RLF_DISTANCE_UCS3, level)
            elseif orderString == "breathoffire" then
                set Range =  BlzGetAbilityRealLevelField(skill, ABILITY_RLF_DISTANCE_UCS3, level)
            else
                set Range =  BlzGetAbilityRealLevelField(skill, ABILITY_RLF_DISTANCE_OSH3, level)
            endif
            set SkillCode = spellCode
        endif

        set u = null
        set p = null
        set skill = null
    endfunction

    function LineAimerRegister takes integer spellCode, string orderString, boolean hitEnemy, boolean hitAlly returns nothing
        local trigger t = CreateTrigger()
        local integer tId = GetHandleId(t)
        call TriggerRegisterCommandEvent(t, spellCode, orderString)
        call TriggerAddAction(t, function ButtonActionFunc)
        call SaveInteger(Hash, tId, 0, spellCode)
        call SaveStr(Hash, tId, 0, orderString)
        call SaveBoolean(Hash, tId, 0, hitEnemy)
        call SaveBoolean(Hash, tId, 1, hitAlly)
    endfunction
    function LineAimerRegisterEx takes integer spellCode, string orderString returns nothing
        call LineAimerRegister(spellCode, orderString, true, false)
    endfunction

    private function MouseActionFunc takes nothing returns nothing
        if GetTriggerPlayer() == GetLocalPlayer() then
            set X = BlzGetTriggerPlayerMouseX()
            set Y = BlzGetTriggerPlayerMouseY()
        endif
    endfunction

    private function UnitActionFunc takes nothing returns boolean
        local unit u = GetFilterUnit()
        local boolean isAlly = IsUnitAlly(u, localPlayer)
        // disallow oneself, bigger radius is included because PickUnits in Range picks units based on there center. But IsUnitInRangeXY includes colision.
        if u != Caster[localPlayerIndex] and IsUnitInRangeXY(u, PosX, PosY, Radius) then
            // filter allies/enemies when wanted
            if (HitEnemy and not isAlly) or (HitAlly and isAlly) then
                call GroupAddUnit(AffectedUnits, u)
                call SetUnitVertexColor(u, UnitTintingRed, UnitTintingGreen, UnitTintingBlue, UnitTintingAlpha)
            endif
        endif
        set u = null
        return false
    endfunction

    private function TimerFunc takes nothing returns nothing
        local real unitX
        local real unitY
        local real rad
        local real maxRange
        local real maxRangeCos
        local real maxRangeSin
        local real off = bj_PI/2
        local real x
        local real y
        
        local unit u
        local real i = 0
        local real radiusChange
        local real step
        loop
            set u = FirstOfGroup(AffectedUnits)
            exitwhen u == null
            call SetUnitVertexColor(u, BlzGetUnitIntegerField(u, UNIT_IF_TINTING_COLOR_RED), BlzGetUnitIntegerField(u, UNIT_IF_TINTING_COLOR_GREEN), BlzGetUnitIntegerField(u, UNIT_IF_TINTING_COLOR_BLUE), BlzGetUnitIntegerField(u, UNIT_IF_TINTING_COLOR_ALPHA))
            call GroupRemoveUnit(AffectedUnits, u)
        endloop


        if SkillCode > 0 and BlzIsLocalClientActive() then
            if isInTargetingMode() then
                set unitX = GetUnitX(Caster[localPlayerIndex])
                set unitY = GetUnitY(Caster[localPlayerIndex])

                // when there is an unit under the mouse, use it for the direction
                if BlzGetMouseFocusUnit() != null then
                    // is the hovered unit not the caster?
                    if BlzGetMouseFocusUnit() != Caster[localPlayerIndex] then
                        set rad = Atan2(GetUnitY(BlzGetMouseFocusUnit()) - unitY, GetUnitX(BlzGetMouseFocusUnit()) - unitX)
                    else
                        // caster himself, use current facing
                        set rad = bj_DEGTORAD*GetUnitFacing(Caster[localPlayerIndex])
                    endif
                else
                    set rad = Atan2(Y - unitY, X - unitX)
                endif

                // the shockwave starts from AoeStart offset traveling Range then having AoeEnd  in the final moment
                set maxRange = (Range + AoeEnd + AoeStart)
                set maxRangeCos = Cos(rad)*maxRange
                set maxRangeSin = Sin(rad)*maxRange

                call SetLightningColor(LineA, LightningRed, LightningGreen, LightningBlue, LightningAlpha)
                call SetLightningColor(LineB, LightningRed, LightningGreen, LightningBlue, LightningAlpha)
                call SetLightningColor(LineC, LightningRed, LightningGreen, LightningBlue, LightningAlpha)

                call MoveLightning(LineA, false, unitX + AoeStart*Cos(rad + off), unitY + AoeStart*Sin(rad + off), unitX + maxRangeCos + AoeEnd*Cos(rad+ off), unitY + maxRangeSin + AoeEnd*Sin(rad+ off))
                call MoveLightning(LineB, false, unitX + AoeStart*Cos(rad - off), unitY + AoeStart*Sin(rad - off), unitX + maxRangeCos + AoeEnd*Cos(rad- off), unitY + maxRangeSin + AoeEnd*Sin(rad - off))
                call MoveLightning(LineC, false, unitX + maxRangeCos + AoeEnd*Cos(rad+ off), unitY + maxRangeSin + AoeEnd*Sin(rad+ off), unitX +maxRangeCos + AoeEnd*Cos(rad- off), unitY + maxRangeSin + AoeEnd*Sin(rad - off)  )


                // 0.1 is the internal dmg intervale of shockwave
                set step = 0.1*Range
                set Radius = AoeStart
                if AoeStart != AoeEnd then
                    set radiusChange = (AoeEnd - AoeStart)
                    set radiusChange = radiusChange/ ((Range)/step)
                else
                    set radiusChange = 0
                endif
                

                loop 
                    exitwhen i > Range
                    //print(radius)
                    // + MaxColi because GroupEnumUnitsInRange checks for unit centers
                    set PosX = unitX + (AoeStart + i)*Cos(rad)
                    set PosY = unitY + (AoeStart + i)*Sin(rad)
                    set Radius = Radius
                    call GroupEnumUnitsInRange(TempGroup, PosX, PosY, Radius + MaxColi, PickUnitAction)
                    set Radius = Radius + radiusChange
                    set i = i + step
                endloop

            else
                // targeting Mode ended stop now
                set SkillCode = 0
            endif
        else
            // hide by 0 alpha
            call SetLightningColor(LineA, 1, 1, 1, 0)
            call SetLightningColor(LineB, 1, 1, 1, 0)
            call SetLightningColor(LineC, 1, 1, 1, 0)
        endif
    endfunction
    

    private function init_function takes nothing returns nothing
        local integer loopA

        set MouseTrigger = CreateTrigger()
        call TriggerAddAction(MouseTrigger, function MouseActionFunc)
        set loopA = 0
        loop
            call TriggerRegisterPlayerEvent(MouseTrigger, Player(loopA), EVENT_PLAYER_MOUSE_MOVE)
            set loopA = loopA + 1
            exitwhen loopA == bj_MAX_PLAYER_SLOTS
        endloop

        // preload this frames, make sure they got a handleId for everyone
        set loopA = 0
        loop
            call BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, loopA)
            set loopA = loopA + 1
            exitwhen loopA == 12
        endloop
        
        set LineA = AddLightning(LightningFileCode, false, 0, 0, 0, 0)
        set LineB = AddLightning(LightningFileCode, false, 0, 0, 0, 0)
        set LineC = AddLightning(LightningFileCode, false, 0, 0, 0, 0)

        set PickUnitAction = Filter(function UnitActionFunc)
        set AffectedUnits = CreateGroup()
        set TempGroup = CreateGroup()

        set localPlayer = GetLocalPlayer()
        set localPlayerIndex = GetPlayerId(localPlayer)

        call TimerStart(CreateTimer(), 0.05, true, function TimerFunc)
    endfunction

endlibrary
