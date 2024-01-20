library FrameLoader initializer init_function
// in 1.31 and upto 1.32.9 PTR (when I wrote this). Frames are not correctly saved and loaded, breaking the game.
// This library runs all functions added to it with a 0s delay after the game was loaded.
// function FrameLoaderAdd takes code func returns nothing
    // func runs when the game is loaded.
    globals
        private trigger eventTrigger = CreateTrigger()
        private trigger actionTrigger = CreateTrigger()
        private timer t = CreateTimer()
    endglobals
    function FrameLoaderAdd takes code func returns nothing
        call TriggerAddAction(actionTrigger, func)
    endfunction

    private function timerAction takes nothing returns nothing
        call TriggerExecute(actionTrigger)
    endfunction
    private function eventAction takes nothing returns nothing
        call TimerStart(t, 0, false, function timerAction)
    endfunction
    private function init_function takes nothing returns nothing
        call TriggerRegisterGameEvent(eventTrigger, EVENT_GAME_LOADED)
        call TriggerAddAction(eventTrigger, function eventAction)        
    endfunction
endlibrary

library UnitInfoPanels initializer init_function requires FrameLoader
//UnitInfoPanels V4a by Tasyen
// UnitInfoGetUnit(player p) -> unit
    // returns & recacls the current selected Unit, unneeded in given actionfunctions
// AddUnitInfoPanel(framehandle frame, code update, code condition)
    // frame is the containerPanel, update a function() that runs every updateTick, condition is a function() that returns true or false it is used to prevent rotating to this panel.
    // it is suggested to use UnitInfoUnit inside this functions
// AddUnitInfoPanelEx(code update, code condition) -> framehandle
    // wrapper for AddUnitInfoPanel, it creates and returns a new frame
// SetUnitInfoPanelFrame(framehandle frame)
    // makes a non SimpleFrame share visibility with the last Added InfoPanel, supports only one Frame per InfoPanel
// SetUnitInfoPanelFrameEx() -> framehandle
    // wrapper SetUnitInfoPanelFrame creates and returns a new empty Frame
// UnitInfoPanelAddTooltipListener(framehandle frame, code func)
    // detects if this frame is visible if it is call the given function which is expected to set string UnitInfoTooltipText to the now wanted tooltipText.
// UnitInfoCreateCustomInfo(framehandle parent, string label, string texture, code tooltipCode) -> integer
    // returns createContext
    // you can get the frames over globals UnitInfoInfoFrame, UnitInfoIconFrame, UnitInfoLabelFrame, UnitInfoTextFrame
// UnitInfoPanelSetPage(integer newPage, boolean updateWanted)
    // ignores conditions, using 0 will change to next page and -1 previous page
// UnitInfoPanelSetPageByFrame(framehandle newPage, boolean updateWanted)
    // searches the index of newPage and calls UnitInfoPanelSetPage when found

    globals
        private framehandle array panels
        private framehandle array panelsFrame
        private integer panelsCount
        private trigger array panelsCondition
        private framehandle array tooltipListener
        private trigger array tooltipListenerAction
        framehandle UnitInfoTooltipFrame
        private integer tooltipListenerCount
        private framehandle tooltipBox
        private framehandle tooltipText
        private boolean isReforged
        private integer createContext
        unit UnitInfoUnit
        private trigger array updateAction 
        private trigger buttonTrigger = CreateTrigger()
        private integer activeIndex
        private integer wantedIndex = 1
        private group g = CreateGroup()
        private timer updateTimer = CreateTimer()
        private framehandle pageUp
        private constant boolean HAVE_BIG_PAGE_BUTTON = false //places a big unseeable Button over the UnitInfo whole, this button lies below all content of the Panels. But it breaks interactive non-SimpleFrames.
        private framehandle pageUpBig 
        private framehandle pageDown
        private framehandle unitInfo
        private framehandle parent
        private integer pageSwaps

        // globals set by function UnitInfoCreateCustomInfo they can be used to access the new created ones
        framehandle UnitInfoInfoFrame
        framehandle UnitInfoIconFrame
        framehandle UnitInfoLabelFrame
        framehandle UnitInfoTextFrame
        
        string UnitInfoTooltipText = ""
    endglobals

    function UnitInfoGetUnit takes player p returns unit
        call GroupEnumUnitsSelected(g, p, null)
        set UnitInfoUnit = FirstOfGroup(g)
        call GroupClear(g)
        return UnitInfoUnit
    endfunction
// frame is the containerPanel, update a function(unit) that runs every updateTick, condition is a function that returns true or false it is used to prevent showing this panel currently.
    function AddUnitInfoPanel takes framehandle frame, code update, code condition returns nothing
        call BlzFrameSetParent(frame, BlzGetFrameByName("SimpleInfoPanelUnitDetail", 0))
        set panelsCount = panelsCount + 1
        set panels[panelsCount] = frame
        set panelsCondition[panelsCount] = CreateTrigger()
        if condition != null then
            call TriggerAddCondition(panelsCondition[panelsCount], Filter(condition))
        endif
        
        if update != null then
            set updateAction[panelsCount] = CreateTrigger()
            call TriggerAddCondition(updateAction[panelsCount], Filter(update))
        endif
        call BlzFrameSetVisible(frame, activeIndex == panelsCount)
    endfunction
    function AddUnitInfoPanelEx takes code update, code condition returns framehandle
        local framehandle frame = BlzCreateFrameByType("SIMPLEFRAME", "", BlzGetFrameByName("SimpleInfoPanelUnitDetail", 0), "", 0)
        call AddUnitInfoPanel(frame, update, condition)
        return frame
    endfunction
    function SetUnitInfoPanelFrame takes framehandle frame returns nothing
        set panelsFrame[panelsCount] = frame
        call BlzFrameSetVisible(frame, BlzFrameIsVisible(panels[panelsCount]))
    endfunction
    function SetUnitInfoPanelFrameEx takes nothing returns framehandle
        local framehandle frame = BlzCreateFrameByType("FRAME", "", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
        call SetUnitInfoPanelFrame(frame)
        return frame
    endfunction
    // detects if this frame is visible if it is call the given function which should return a text which is the now wanted tooltipText.
    function UnitInfoPanelAddTooltipListener takes framehandle frame, code func returns nothing
        set tooltipListenerCount = tooltipListenerCount + 1
        set tooltipListener[tooltipListenerCount] = frame
        set tooltipListenerAction[tooltipListenerCount] = CreateTrigger()
        call TriggerAddCondition(tooltipListenerAction[tooltipListenerCount], Filter(func))         
    endfunction

    function UnitInfoAddTooltip takes framehandle parent, framehandle frame returns framehandle
        local framehandle toolTip
        local framehandle but
  //      if not isReforged then
            // pre reforged one can not use the auto generated mouse listener, hence create an empty button
            set but = BlzCreateSimpleFrame("EmptySimpleButton", parent, 0)
            set toolTip = BlzCreateFrameByType("SIMPLEFRAME", "", but, "", 0)
            call BlzFrameSetAllPoints(but, frame)
            call BlzFrameSetTooltip(but, toolTip)
            call BlzFrameSetLevel(but, 9)
            call BlzFrameSetVisible(toolTip, false)
            return toolTip
        //else
            // the used simpleFrame autogenerates a mouselistener, lets use it
          //  set but = BlzFrameGetChild(parent, 0)
//            set toolTip = BlzCreateFrameByType("SIMPLEFRAME", "", parent, "", 0)
  //          call BlzFrameSetTooltip(but, toolTip)
    //        call BlzFrameSetVisible(toolTip, false)
      //      return toolTip            
//        endif
    endfunction

    function UnitInfoAddTooltipEx takes framehandle parent, framehandle frame, code func returns nothing
        call UnitInfoPanelAddTooltipListener(UnitInfoAddTooltip(parent, frame), func)
    endfunction

    function UnitInfoCreateCustomInfo takes framehandle parent, string label, string texture, code tooltipCode returns integer
        set createContext = createContext + 1
        set UnitInfoInfoFrame = BlzCreateSimpleFrame("SimpleInfoPanelIconRank", parent, createContext)
        set UnitInfoIconFrame = BlzGetFrameByName("InfoPanelIconBackdrop", createContext)
        set UnitInfoLabelFrame = BlzGetFrameByName("InfoPanelIconLabel", createContext)
        set UnitInfoTextFrame = BlzGetFrameByName("InfoPanelIconValue", createContext)
        call BlzFrameSetText(UnitInfoLabelFrame , label)
        call BlzFrameSetText(UnitInfoTextFrame , "xxx")
        call BlzFrameSetTexture(UnitInfoIconFrame, texture, 0, false)
        call BlzFrameClearAllPoints(UnitInfoIconFrame)
        call BlzFrameSetSize(UnitInfoIconFrame, 0.028, 0.028)
        if tooltipCode != null then
            call UnitInfoAddTooltipEx(UnitInfoInfoFrame, UnitInfoIconFrame, tooltipCode)
        endif
        return createContext
    endfunction

    private function PageSwapCheck takes nothing returns boolean
        set pageSwaps = pageSwaps + 1
        if pageSwaps > panelsCount then
            call BJDebugMsg("Unit Info Panel - NO VALID PANEL - " + GetUnitName(UnitInfoUnit))
            return false
        endif
        return true
    endfunction
    private function nextPanel takes nothing returns nothing
        set activeIndex = activeIndex + 1
        if activeIndex > panelsCount then
            set activeIndex = 1
        endif
        if PageSwapCheck() and not TriggerEvaluate(panelsCondition[activeIndex]) then
            call nextPanel()
        endif
    endfunction
    private function prevPanel takes nothing returns nothing
        set activeIndex = activeIndex - 1
        if activeIndex < 1 then
            set activeIndex = panelsCount
        endif
        if PageSwapCheck() and not TriggerEvaluate(panelsCondition[activeIndex]) then
            call prevPanel()
        endif
    endfunction

    function UnitInfoPanelSetPage takes integer newPage, boolean updateWanted returns nothing
        call BlzFrameSetVisible(panels[activeIndex], false)
        call BlzFrameSetVisible(panelsFrame[activeIndex], false)
        if newPage == 0 then
            set pageSwaps = 0
            call nextPanel()
        elseif newPage == -1 then
            set pageSwaps = 0
            call prevPanel()
        else
            set activeIndex = IMinBJ(panelsCount, IMaxBJ(1, newPage))
        endif
        if updateWanted then
            set wantedIndex = activeIndex
        endif
        call BlzFrameSetVisible(panels[activeIndex], true)
        call BlzFrameSetVisible(panelsFrame[activeIndex], true)
    endfunction
    function UnitInfoPanelSetPageByFrame takes framehandle newPage, boolean updateWanted returns nothing
        local integer loopA = panelsCount
        loop
            exitwhen loopA <= 0
            if panels[loopA] == newPage or panelsFrame[loopA] == newPage then
                call UnitInfoPanelSetPage(loopA, updateWanted)
                exitwhen true
            endif
            set loopA = loopA - 1
        endloop
    endfunction

    private function update takes nothing returns nothing
        local boolean found = false
        local integer loopA = tooltipListenerCount
        local integer useAblePages = 0
        call UnitInfoGetUnit(GetLocalPlayer())
        if BlzFrameIsVisible(unitInfo) then
            loop
                exitwhen loopA <= 0
                if BlzFrameIsVisible(tooltipListener[loopA]) then
                    set UnitInfoTooltipFrame = tooltipListener[loopA]
                    call TriggerEvaluate(tooltipListenerAction[loopA])
                    call BlzFrameSetText(tooltipText, UnitInfoTooltipText)
                    set found = true
                    exitwhen true
                endif
                set loopA = loopA - 1
            endloop

            if wantedIndex != activeIndex and TriggerEvaluate(panelsCondition[wantedIndex]) then
                call UnitInfoPanelSetPage(wantedIndex, false)
            endif

            // show/hide PageButton
            set loopA = panelsCount
            loop
                exitwhen loopA <= 0
                if TriggerEvaluate(panelsCondition[loopA]) then                  
                    set useAblePages = useAblePages + 1
                endif
                set loopA = loopA - 1
            endloop
            call BlzFrameSetVisible(pageDown, useAblePages > 1)
            call BlzFrameSetVisible(pageUp, useAblePages > 1)
            // Unallowed page? Enforce Change
            if not TriggerEvaluate(panelsCondition[activeIndex]) then
                call UnitInfoPanelSetPage(0, false)
            endif

            call BlzFrameSetVisible(panelsFrame[activeIndex], true)

            call TriggerEvaluate(updateAction[activeIndex])
        else
            call BlzFrameSetVisible(panelsFrame[activeIndex], false)
        endif
        call BlzFrameSetVisible(tooltipBox, found)
    endfunction

    private function pageButtonAction takes nothing returns nothing
        if GetTriggerPlayer() == GetLocalPlayer() then
            if BlzGetTriggerFrame() == pageDown then
                call UnitInfoPanelSetPage(-1, true)
            else
                call UnitInfoPanelSetPage(0, true)
            endif
        endif
    endfunction

    private function At0s takes nothing returns nothing
        call DestroyTimer(GetExpiredTimer())
        call BlzLoadTOCFile("war3mapImported\\UnitInfoPanels.toc")
        set panelsCount = 1
        set activeIndex = 1
        set tooltipListenerCount = 0
        set createContext = 1000

        set unitInfo = BlzGetFrameByName("SimpleInfoPanelUnitDetail", 0)
        set parent = BlzCreateFrameByType("SIMPLEFRAME", "", unitInfo, "", 0)
        set pageUp = BlzCreateSimpleFrame("UnitInfoSimpleIconButtonUp", unitInfo, 0)
        set pageDown = BlzCreateSimpleFrame("UnitInfoSimpleIconButtonDown", unitInfo, 0)
        
        //BlzFrameSetAbsPoint(pageUp, FRAMEPOINT_TOPRIGHT, 0.51, 0.136)
        call BlzFrameSetAbsPoint(pageUp, FRAMEPOINT_BOTTOMRIGHT, 0.51, 0.08)

        static if HAVE_BIG_PAGE_BUTTON then
            set pageUpBig = BlzCreateSimpleFrame("EmptySimpleButton", unitInfo, 0)
            call BlzFrameSetAllPoints(pageUpBig, unitInfo)
            call BlzFrameSetLevel(pageUpBig, 0)
            call BlzTriggerRegisterFrameEvent(buttonTrigger, pageUpBig, FRAMEEVENT_CONTROL_CLICK)
        endif
        call BlzTriggerRegisterFrameEvent(buttonTrigger, pageUp, FRAMEEVENT_CONTROL_CLICK)
        call BlzTriggerRegisterFrameEvent(buttonTrigger, pageDown, FRAMEEVENT_CONTROL_CLICK)
        
        set panels[1] = parent
        if activeIndex != 1 then
            call BlzFrameSetVisible(panels[1], false)
        endif

        call BlzFrameSetParent(BlzGetFrameByName("SimpleInfoPanelIconDamage", 0), parent)
        call BlzFrameSetParent(BlzGetFrameByName("SimpleInfoPanelIconDamage", 1), parent)
        call BlzFrameSetParent(BlzGetFrameByName("SimpleInfoPanelIconArmor", 2), parent)
        call BlzFrameSetParent(BlzGetFrameByName("SimpleInfoPanelIconRank", 3), parent)
        call BlzFrameSetParent(BlzGetFrameByName("SimpleInfoPanelIconFood", 4), parent)
        call BlzFrameSetParent(BlzGetFrameByName("SimpleInfoPanelIconGold", 5), parent)
        call BlzFrameSetParent(BlzGetFrameByName("SimpleInfoPanelIconHero", 6), parent)
        call BlzFrameSetParent(BlzGetFrameByName("SimpleInfoPanelIconAlly", 7), parent)

        // tooltip handling
        if isReforged then
            set tooltipBox = BlzCreateFrame("CustomUnitInfoTextBox", BlzGetFrameByName("ConsoleUIBackdrop", 0), 0, 0)
        else
            set tooltipBox = BlzCreateFrame("CustomUnitInfoTextBox", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0)
        endif
        set tooltipText = BlzCreateFrame("CustomUnitInfoText", tooltipBox, 0, 0)
        call BlzFrameSetAbsPoint(tooltipText, FRAMEPOINT_BOTTOMRIGHT, 0.79, 0.18)
        call BlzFrameSetSize(tooltipText, 0.275, 0)
        call BlzFrameSetPoint(tooltipBox, FRAMEPOINT_TOPLEFT, tooltipText, FRAMEPOINT_TOPLEFT, -0.01, 0.01)
        call BlzFrameSetPoint(tooltipBox, FRAMEPOINT_BOTTOMRIGHT, tooltipText, FRAMEPOINT_BOTTOMRIGHT, 0.005, -0.01)
        call BlzFrameSetVisible(tooltipBox, false)

        call TimerStart(updateTimer, 0.05, true, function update)
    endfunction

    private function init_function takes nothing returns nothing
        set isReforged = GetLocalizedString("REFORGED") != "REFORGED"
        call TriggerAddAction(buttonTrigger, function pageButtonAction)
        call TimerStart(CreateTimer(),0, false, function At0s)
        call FrameLoaderAdd(function At0s)
        set panelsCondition[1] = CreateTrigger()
    endfunction

endlibrary