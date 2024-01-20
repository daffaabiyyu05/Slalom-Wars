library BountyPanel initializer init_function requires UnitInfoPanels
// Shows how much gold and Lumber bounty one gets when slaying an unit
    globals
        private framehandle parent
        private framehandle goldText
        private framehandle lumberText
    endglobals

    private function tooltipGold takes nothing returns nothing
        local integer min = BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE) + BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_BASE)
        local integer max = BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE) *BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_SIDES_PER_DIE) + BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_BASE)
        set UnitInfoTooltipText =  "Bounty Gold: " + I2S(min) + " - " + I2S(max) + "\nWhen an unit owned by you kills this unit, you gain this amount of Gold.\nOnly unallied unit give bounty."
    endfunction
    private function tooltipLumber takes nothing returns nothing
        local integer min = BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE) + BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE)
        local integer max = BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE) *BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_SIDES_PER_DIE) + BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE)
        set UnitInfoTooltipText =  "Bounty Lumber: " + I2S(min) + " - " +  I2S(max) + "\nWhen an unit owned by you kills this unit, you gain this amount of Lumber.\nOnly unallied unit give bounty."
    endfunction

    private function condition takes nothing returns boolean
        return IsPlayerFlagSetBJ(PLAYER_STATE_GIVES_BOUNTY, GetOwningPlayer(UnitInfoUnit))
    endfunction

    private function update takes nothing returns nothing
        local integer min
        local integer max
        set min = BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE) + BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_BASE)
        set max = BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE) *BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_SIDES_PER_DIE) + BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_GOLD_BOUNTY_AWARDED_BASE)
        call BlzFrameSetText(goldText, I2S(min) + " - " + I2S(max))
        set min = BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE) + BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE)
        set max = BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE) *BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_SIDES_PER_DIE) + BlzGetUnitIntegerField(UnitInfoUnit, UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE)
        call BlzFrameSetText(lumberText, I2S(min) + " - " + I2S(max))
    endfunction
    private function At0s takes nothing returns nothing
        local framehandle prevIcon
        set parent = AddUnitInfoPanelEx(function update, function condition)
        // create a new Unit Info Panel, this panel can only be shown when the current selected unit's owner gives bounty
        // create a new custom Info and load all created frames into the locals
        call UnitInfoCreateCustomInfo(parent, " Gold:", "UI\\Widgets\\ToolTips\\Human\\ToolTipGoldIcon", function tooltipGold)
        set prevIcon = UnitInfoIconFrame
        set goldText = UnitInfoTextFrame
        call BlzFrameSetPoint(UnitInfoIconFrame, FRAMEPOINT_TOPLEFT, BlzGetFrameByName("SimpleHeroLevelBar", 0), FRAMEPOINT_BOTTOMLEFT, 0, -0.001)

        // 2. Custom Info
        call UnitInfoCreateCustomInfo(parent, " Lumber:", "UI\\Widgets\\ToolTips\\Human\\ToolTipLumberIcon", function tooltipLumber)
        set lumberText = UnitInfoTextFrame
        call BlzFrameSetPoint(UnitInfoIconFrame, FRAMEPOINT_TOPLEFT, prevIcon, FRAMEPOINT_TOPLEFT, 0.095, 0)
    endfunction
    private function init_function takes nothing returns nothing
        call TimerStart(CreateTimer(), 0, false, function At0s)
        call FrameLoaderAdd(function At0s)
    endfunction
endlibrary