library CustomStatPanel initializer init_function requires UnitInfoPanels
// Shows how much gold and Lumber bounty one gets when slaying an UnitInfoUnit
    globals
        private framehandle array Icon
        private framehandle array Text
        private framehandle array Button
        private framehandle array ToolTip
        private string array DataIcon
        private string array DataDesc
        private string array DataLabel
        private integer buttonCount = 12
        private framehandle parent
        private trigger buttonTrigger = CreateTrigger()
    endglobals

    private function tooltipAction takes nothing returns nothing
    // the tooltip function is async do not create or destroy here
        local integer i = buttonCount
        // find the active tooltip
        loop
            exitwhen i == 0
            if UnitInfoTooltipFrame == ToolTip[i] then
                set UnitInfoTooltipText = DataLabel[i] + BlzFrameGetText(Text[i]) + "\n" + DataDesc[i]
                exitwhen true
            endif
            set i = i - 1
        endloop
    endfunction

    private function condition takes nothing returns boolean
        return IsUnitType(UnitInfoUnit, UNIT_TYPE_HERO)
    endfunction

 private function buttonAction takes nothing returns nothing
        // request currently used unit of the clicking player
        local integer i = buttonCount
        local framehandle frame = BlzGetTriggerFrame()
        call UnitInfoGetUnit(GetTriggerPlayer())
        // get the clicked buttonIndex

        // find the used Button
        call BJDebugMsg("Custom Stat Panel")
        loop
            exitwhen i == 0
            if frame == Button[i] then
                call BJDebugMsg(GetPlayerName(GetTriggerPlayer()) + " Clicked: " + I2S(i) + " "+ GetUnitName(UnitInfoUnit))
                exitwhen true
            endif
            set i = i - 1
        endloop
        set frame = null        
    endfunction

    private function update takes nothing returns nothing
        call BlzFrameSetText(Text[1], BlzFrameGetText(BlzGetFrameByName("InfoPanelIconValue", 0)))
        call BlzFrameSetText(Text[2], BlzFrameGetText(BlzGetFrameByName("InfoPanelIconValue", 2)))
        call BlzFrameSetText(Text[3], R2S(GetPlayerHandicapXP(GetOwningPlayer(UnitInfoUnit))))
        call BlzFrameSetText(Text[4], I2S(R2I(GetUnitMoveSpeed(UnitInfoUnit))))
        call BlzFrameSetText(Text[5], "0")
        call BlzFrameSetText(Text[6], BlzFrameGetText(BlzGetFrameByName("InfoPanelIconHeroStrengthValue", 6)))
        call BlzFrameSetText(Text[7], BlzFrameGetText(BlzGetFrameByName("InfoPanelIconHeroAgilityValue", 6)))
        call BlzFrameSetText(Text[8], BlzFrameGetText(BlzGetFrameByName("InfoPanelIconHeroIntellectValue", 6)))
        call BlzFrameSetText(Text[9], "0")
        call BlzFrameSetText(Text[10], R2SW(BlzGetUnitRealField(UnitInfoUnit, UNIT_RF_HIT_POINTS_REGENERATION_RATE), 1, 1))
        call BlzFrameSetText(Text[11], R2SW(BlzGetUnitRealField(UnitInfoUnit, UNIT_RF_MANA_REGENERATION), 1, 3))
        call BlzFrameSetText(Text[12], "0")
    endfunction
    private function At0s takes nothing returns nothing
        local framehandle prevIcon
        local integer i = buttonCount
        // preload this frames, they are later used in a async context, make sure they have a handleId for all players before using them in a local async context
        // otherwise you get a desync
        call BlzGetFrameByName("InfoPanelIconValue", 0)
        call BlzGetFrameByName("InfoPanelIconValue", 2)
        call BlzGetFrameByName("InfoPanelIconHeroStrengthValue", 6)
        call BlzGetFrameByName("InfoPanelIconHeroAgilityValue", 6)
        call BlzGetFrameByName("InfoPanelIconHeroIntellectValue", 6)

        set parent = BlzCreateSimpleFrame("CustomUnitInfoPanel3x4", BlzGetFrameByName("SimpleInfoPanelUnitDetail", 0), 0)
        call AddUnitInfoPanel(parent, function update, function condition)
        
       
        loop
            exitwhen i == 0
            set Button[i] = BlzGetFrameByName("CustomUnitInfoButton" + I2S(i), 0)
            set ToolTip[i] = BlzCreateFrameByType("SIMPLEFRAME", "", Button[i], "", 0)
            set Icon[i] = BlzGetFrameByName("CustomUnitInfoButtonIcon" + I2S(i), 0)
            set Text[i] = BlzGetFrameByName("CustomUnitInfoButtonText" + I2S(i), 0)
            call BlzTriggerRegisterFrameEvent(buttonTrigger, Button[i], FRAMEEVENT_CONTROL_CLICK)
            call BlzFrameSetTooltip(Button[i], ToolTip[i])
            call BlzFrameSetVisible(ToolTip[i], false)
            call BlzFrameSetTexture(Icon[i], DataIcon[i], 0, false)

            call UnitInfoPanelAddTooltipListener(ToolTip[i], function tooltipAction)
            set i = i - 1
        endloop
    endfunction
    private function initData takes integer index, string label, string icon, string desc returns nothing
        set DataIcon[index] = icon
        set DataLabel[index] = label
        set DataDesc[index] = desc
    endfunction
    private function init_function takes nothing returns nothing
        call TimerStart(CreateTimer(), 0, false, function At0s)
        call TriggerAddAction(buttonTrigger, function buttonAction)
        call FrameLoaderAdd(function At0s)
        call initData(1, "Damage: ", "ReplaceableTextures\\CommandButtons\\BTNSteelMelee", "Amount of damage your basic attack deals")
        call initData(2, "Armor: ", "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne", "Reduction of non-magical damage taken")
        call initData(3, "XP Rate: ", "ReplaceableTextures\\CommandButtons\\BTNPriestMaster", "Hero XP rate")
        call initData(4, "Speed: ", "ReplaceableTextures\\CommandButtons\\BTNBootsOfSpeed", "The unit's current movespeed")
        call initData(5, "Crit DMG: ", "ReplaceableTextures\\CommandButtons\\BTNCriticalStrike","Future Patch - Critical multiplier for all attacks")
        call initData(6, "Str: ", "ReplaceableTextures\\CommandButtons\\BTNGauntletsOfOgrePower", "Increases Life and Life Regeneration")
        call initData(7, "Agi: ", "ReplaceableTextures\\CommandButtons\\BTNSlippersOfAgility", "Improves Armor and Attack Speed")
        call initData(8, "Int: ", "ReplaceableTextures\\CommandButtons\\BTNMantleOfIntelligence", "Improves Mana and Mana Regeneration")
        call initData(9, "Crit Rate: ", "ReplaceableTextures\\CommandButtons\\BTNControlMagic", "Future Patch - Rate for a damage to critical")
        call initData(10, "Hp/s: ", "ReplaceableTextures\\CommandButtons\\BTNRegenerate","Base health regeneration")
        call initData(11, "Mp/s: ", "ReplaceableTextures\\CommandButtons\\BTNMagicalSentry","Base mana regeneration")
        call initData(12, "Spell Power: ", "ReplaceableTextures\\CommandButtons\\BTNEvasion","Future Patch - Damage multiplier for non-attack damage")

    endfunction
endlibrary