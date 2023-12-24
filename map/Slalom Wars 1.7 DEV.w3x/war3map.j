globals
//globals from DamageEngine:
constant boolean LIBRARY_DamageEngine=true
constant boolean DamageEngine___USE_GUI= true
                                                       
constant boolean DamageEngine___USE_SCALING= DamageEngine___USE_GUI
constant boolean DamageEngine___USE_EXTRA= true
constant boolean DamageEngine___USE_ARMOR_MOD= true
constant boolean DamageEngine___USE_MELEE_RANGE= true
constant boolean DamageEngine___USE_LETHAL= true
   
constant integer DamageEngine___LIMBO= 16
   
constant integer DamageEngine_TYPE_CODE= 1
constant integer DamageEngine_TYPE_PURE= 2
constant real DamageEngine___DEATH_VAL= 0.405
timer DamageEngine___alarm= CreateTimer()
boolean DamageEngine___alarmSet= false
    //Values to track the original pre-spirit Link/defensive damage values
integer DamageEngine___lastInstance= 0
boolean DamageEngine___canKick= true
boolean DamageEngine___totem= false
boolean array DamageEngine___attacksImmune
boolean array DamageEngine___damagesImmune
    //Made global in order to use enable/disable behavior.
trigger DamageEngine___t1= CreateTrigger()
trigger DamageEngine___t2= CreateTrigger()
trigger DamageEngine___t3= CreateTrigger()
    //These variables coincide with Blizzard's "limitop" type definitions so as to enable users (GUI in particular) with some nice performance perks.
constant integer DamageEngine_FILTER_ATTACK= 0
constant integer DamageEngine_FILTER_MELEE= 1
constant integer DamageEngine_FILTER_OTHER= 2
constant integer DamageEngine_FILTER_RANGED= 3
constant integer DamageEngine_FILTER_SPELL= 4
constant integer DamageEngine_FILTER_CODE= 5
constant integer DamageEngine_FILTER_MAX= 6
integer DamageEngine___eventFilter= DamageEngine_FILTER_OTHER
boolean DamageEngine_inception= false
boolean DamageEngine___dreaming= false
integer DamageEngine___sleepLevel= 0
group DamageEngine___proclusGlobal= CreateGroup()
group DamageEngine___fischerMorrow= CreateGroup()
boolean DamageEngine___kicking= false
boolean DamageEngine___eventsRun= false
   
boolean DamageEngine___hasLethal= false
//endglobals from DamageEngine
    // User-defined
location udg_Temp_Point= null
location udg_Temp_Point_2= null
rect udg_Temp_Reg= null
rect udg_Temp_Reg_2= null
player udg_Temp_Player= null
unit udg_Temp_Unit= null
integer udg_Temp_UnitType= 0
unit udg_Temp_Unit_2= null
player udg_Temp_Player_2= null
integer udg_Reward= 0
integer array udg_BountyBonus
integer udg_SkillLoop= 0
integer udg_MaxSwitchSkill= 0
integer array udg_NightSkill
integer array udg_DaySkill
player udg_PlayerKilled= null
player udg_PlayerKiller= null
integer array udg_RealSkill1
integer array udg_RealSkill2
integer udg_DummySkillTotal= 0
integer udg_DummySkillLoop= 0
integer array udg_DummySkill
integer udg_KillerCode= 0
integer udg_HeadPriceBonus= 0
integer udg_VictimCode= 0
integer udg_KillerPower= 0
unit udg_Killer= null
unit udg_Victim= null
integer udg_VictimPower= 0
integer array udg_SentinelSpawnType
integer array udg_ScourgeSpawnType
integer array udg_SentinelHeroAI
integer array udg_ScourgeHeroAI
integer array udg_ItemSlot1
integer array udg_ItemSlot2
integer array udg_ItemSlot4
integer array udg_ItemSlot5
integer array udg_ItemSlot6
integer array udg_ItemSlot3
integer array udg_SkillBuildSent1
integer array udg_SkillBuildSent2
integer array udg_SkillBuildSent3
integer array udg_SkillBuildSentUlt
integer array udg_SkillBuildScg1
integer array udg_SkillBuildScg2
integer array udg_SkillBuildScg3
integer array udg_SkillBuildScgUlt
integer array udg_ItemBuildPrice1
integer array udg_ItemBuildPrice2
integer array udg_ItemBuildPrice3
integer array udg_ItemBuildPrice4
integer array udg_ItemBuildPrice5
integer array udg_ItemBuildPrice6
integer udg_Randomizer= 0
integer array udg_AIValue
integer udg_AINumber= 0
integer udg_AILoopItem= 0
integer udg_AIItemBuyCode= 0
boolean udg_AIIsRevived= false
real array udg_RevivalTimer
integer udg_Temp_Loop= 0
integer udg_DeadAI= 0
unit array udg_AIHeroDead
boolean array udg_LoopExist
integer udg_AISkillCode= 0
integer udg_TotalAIHero= 0
location udg_RevPoint= null
boolean array udg_IsAISentinel
integer array udg_PriceReversed1
integer array udg_PriceReversed2
integer array udg_PriceReversed3
integer array udg_PriceReversed4
integer array udg_PriceReversed5
integer array udg_PriceReversed6
force udg_Sentinel= null
force udg_Scourge= null
integer array udg_AICash
integer udg_TempInteger= 0
unit array udg_Circle
timer udg_TimeForChoosing= null
timerdialog udg_SetChoosingWindow= null
boolean array udg_AIRetreating
group udg_AncAltar= null
group udg_FallAltar= null
integer udg_TotalAIHeroSentinel= 0
integer udg_TotalAIHeroScourge= 0
boolean udg_ItemCleanupFlag= false
integer udg_Loop= 0
integer udg_ItemsToClean= 0
item array udg_CleanedItem
timer udg_ItemCleanupTimer= null
integer udg_TempInt= 0
group udg_ZSpell_RageGroup= null
unit array udg_PlayerHero
player udg_Player= null
boolean udg_AIReport= false
group udg_DarknessEyeGroup= null
string udg_AIPickHeroStr
integer udg_Spell__DummyType= 0
player udg_Spell__DummyOwner= null
real udg_Spell__Interval= 0
boolean udg_Spell__Filter_AllowEnemy= false
boolean udg_Spell__Filter_AllowLiving= false
boolean udg_Spell__Filter_AllowHero= false
boolean udg_Spell__Filter_AllowNonHero= false
boolean udg_Spell__Filter_AllowAlly= false
boolean udg_Spell__Filter_AllowDead= false
boolean udg_Spell__Filter_AllowFlying= false
boolean udg_Spell__Filter_AllowMechanical= false
boolean udg_Spell__Filter_AllowStructure= false
boolean udg_Spell__Filter_AllowMagicImmune= false
boolean udg_Spell__WakeTargets= false
real udg_Spell__LevelMultiplier= 0
integer array udg_Spell_i_Level
integer udg_Spell__Level= 0
player udg_Spell__CasterOwner= null
real udg_Spell__Time= 0
real array udg_Spell_i_Time
real array udg_Spell_i_TargetY
real array udg_Spell_i_TargetX
location udg_Spell__CastPoint= null
location udg_Spell__TargetPoint= null
unit udg_Spell__Caster= null
unit udg_Spell__Target= null
unit array udg_Spell_i_Target
unit array udg_Spell_i_Caster
group array udg_Spell_i_TargetGroup
group udg_Spell__TargetGroup= null
boolean udg_Spell__Running= false
boolean udg_Spell__UseTargetGroup= false
boolean udg_Spell__Completed= false
timer udg_Spell_i_Timer= null
boolean array udg_Spell_i_UseTG
boolean array udg_Spell_i_Completed
integer array udg_Spell_i_EventType
boolean array udg_Spell_i_Linked
trigger udg_Spell__Trigger_OnLoop= null
hashtable udg_Spell__Hash= null
trigger array udg_Spell_i_OnLoopStack
trigger udg_Spell__Trigger_OnFinish= null
integer udg_Spell__Index= 0
trigger array udg_Spell_i_OnFinishStack
trigger udg_Spell__Trigger_OnEffect= null
trigger array udg_Spell_i_OnEffectStack
trigger udg_Spell__Trigger_OnChannel= null
trigger array udg_Spell_i_OnChannelStack
trigger udg_Spell__Trigger_OnCast= null
integer udg_Spell_i_Recycle= 0
trigger array udg_Spell_i_OnCastStack
integer udg_Spell_i_Instances= 0
integer udg_Spell_i_StackN= 0
integer array udg_Spell_i_StackRef
integer array udg_Spell_i_Stack
integer array udg_Spell_i_RecycleList
integer array udg_Spell_i_Head
unit udg_Spell_i_PreloadDummy= null
integer udg_Spell__Ability= 0
integer array udg_Spell_i_Abil
group udg_Spell__InRangeGroup= null
real udg_Spell__InRange= 0
location udg_Spell__InRangePoint= null
boolean array udg_Spell_i_AllowAlly
boolean array udg_Spell_i_AllowDead
boolean array udg_Spell_i_AllowEnemy
boolean array udg_Spell_i_AllowFlying
boolean array udg_Spell_i_AllowHero
boolean array udg_Spell_i_AllowMagicImmune
boolean array udg_Spell_i_AllowMechanical
boolean array udg_Spell_i_AllowNonHero
boolean array udg_Spell_i_AllowStructure
boolean array udg_Spell_i_AllowLiving
boolean udg_Spell__Channeling= false
boolean array udg_Spell_i_Channeling
integer udg_Spell_i_GroupN= 0
group array udg_Spell_i_GroupStack
integer udg_Spell__InRangeCount= 0
unit array udg_Spell__InRangeUnits
real udg_Spell__Duration= 0
real udg_Spell__DurationPerLevel= 0
real array udg_Spell_i_Duration
real array udg_Spell_i_LastTime
boolean udg_Spell__Expired= false
boolean udg_Spell__StartDuration= false
integer udg_Spell__InRangeMax= 0
unit udg_Spell__InRangeUnit= null
trigger udg_Spell__Trigger_InRangeFilter= null
trigger array udg_Spell_i_InRangeFilter
boolean udg_Spell__AutoAddTargets= false
boolean array udg_Spell_i_AutoAddTargets
integer udg_Spell__BuffOrder= 0
integer array udg_Spell_i_BuffOrder
integer udg_Spell__BuffAbility= 0
integer array udg_Spell_i_BuffAbil
integer array udg_Dipper_Phases
integer udg_Tsukuyomi_DummyAbil= 0
integer udg_Tsukuyomi_Buff= 0
string udg_Tsukuyomi_SFX
string udg_Tsukuyomi_SFX_Dissipate
real array udg_Tsukuyomi_ActivationTime
real array udg_Tsukuyomi_ActiveTime
real array udg_Tsukuyomi_Damage
real array udg_Tsukuyomi_AoE_Radius
real array udg_Tsukuyomi_HPPenalty
real array udg_Tsukuyomi_MPPenalty
boolean udg_Tsukuyomi_StopOnManaDepletion= false
attacktype udg_Tsukuyomi_AT= null
damagetype udg_Tsukuyomi_DT= null
unit array udg_Tsukuyomi_DummyUnitSFX
unit array udg_Tsukuyomi_DummyUnitSpell
effect array udg_Tsukuyomi_DummyEffect
boolean array udg_Tsukuyomi_ActiveMode
unit udg_Tsukuyomi_Victim= null
integer udg_MaxPlayer= 0
integer udg_SentinelSide= 0
integer udg_ScourgeSide= 0
real udg_SKILL_HEAVEN_BRACER_EXP= 0
real udg_SKILL_DARK_EYE_COMMON_TRIGGER= 0
real udg_SKILL_DARK_EYE_ULTI_TRIGGER= 0
real udg_SKILL_DARK_EYE_COMMON_COOLDOWN= 0
real udg_SKILL_DARK_EYE_ULTI_COOLDOWN= 0
integer udg_SKILL_DARK_EYE_PASSIVE_CHANCE= 0
integer udg_SKILL_EXTRA_NORMAL= 0
integer udg_SKILL_EXTRA_UPGRADED= 0
integer udg_SKILL_NATURE_FORCE_HP_BONUS= 0
real udg_SKILL_DEATH_COIL_DEF_CD= 0
real udg_SKILL_DEATH_COIL_SELF_CD= 0
integer udg_PurchasableCounter= 0
boolean udg_DEVELOPER_MODE= false
group udg_AIHeroes= null
location udg_AffaPoint= null
integer udg_StartingGold= 0
integer udg_StartingLumber= 0
real udg_DamageEventArmorPierced= 0
real udg_AfterDamageEvent= 0
boolean udg_DamageEventOverride= false
real udg_DamageEvent= 0
real udg_DamageModifierEvent= 0
real udg_DamageEventAmount= 0
unit udg_DamageEventSource= null
unit udg_DamageEventTarget= null
real udg_DamageEventPrevAmt= 0
real udg_LethalDamageEvent= 0
real udg_LethalDamageHP= 0
real udg_AOEDamageEvent= 0
unit udg_AOEDamageSource= null
integer udg_DamageEventAOE= 0
group udg_DamageEventAOEGroup= null
integer udg_DamageEventLevel= 0
unit udg_EnhancedDamageTarget= null
integer udg_DamageEventType= 0
boolean udg_NextDamageIsAttack= false
boolean udg_NextDamageIsRanged= false
boolean udg_NextDamageIsMelee= false
integer udg_NextDamageType= 0
integer udg_NextDamageWeaponT= 0
real udg_DamageScalingUser= 0
real udg_DamageScalingWC3= 0
integer udg_DamageTypeBlocked= 0
integer udg_DamageTypeCriticalStrike= 0
integer udg_DamageTypeCode= 0
integer udg_DamageTypeExplosive= 0
integer udg_DamageTypeHeal= 0
integer udg_DamageTypePure= 0
integer udg_DamageTypePureExplosive= 0
integer udg_DamageTypeReduced= 0
trigger udg_DamageEventTrigger= null
boolean udg_IsDamageAttack= false
boolean udg_IsDamageMelee= false
boolean udg_IsDamageRanged= false
boolean udg_IsDamageSpell= false
boolean udg_IsDamageCode= false
unit udg_DamageFilterSource= null
unit udg_DamageFilterTarget= null
integer udg_DamageFilterAttackT= 0
integer udg_DamageFilterDamageT= 0
integer udg_DamageFilterSourceT= 0
integer udg_DamageFilterTargetT= 0
integer udg_DamageFilterSourceB= 0
integer udg_DamageFilterTargetB= 0
integer udg_DamageFilterType= 0
real udg_DamageFilterMinAmount= 0
integer udg_DamageEventArmorT= 0
integer udg_ARMOR_TYPE_NONE= 0
integer udg_ARMOR_TYPE_FLESH= 0
integer udg_ARMOR_TYPE_METAL= 0
integer udg_ARMOR_TYPE_WOOD= 0
integer udg_ARMOR_TYPE_ETHEREAL= 0
integer udg_ARMOR_TYPE_STONE= 0
string array udg_ArmorTypeDebugStr
attacktype array udg_CONVERTED_ATTACK_TYPE
integer udg_DamageEventAttackT= 0
integer udg_ATTACK_TYPE_SPELLS= 0
integer udg_ATTACK_TYPE_NORMAL= 0
integer udg_ATTACK_TYPE_PIERCE= 0
integer udg_ATTACK_TYPE_SIEGE= 0
integer udg_ATTACK_TYPE_MAGIC= 0
integer udg_ATTACK_TYPE_CHAOS= 0
integer udg_ATTACK_TYPE_HERO= 0
string array udg_AttackTypeDebugStr
damagetype array udg_CONVERTED_DAMAGE_TYPE
integer udg_DamageEventDamageT= 0
integer udg_DAMAGE_TYPE_UNKNOWN= 0
integer udg_DAMAGE_TYPE_NORMAL= 0
integer udg_DAMAGE_TYPE_ENHANCED= 0
integer udg_DAMAGE_TYPE_FIRE= 0
integer udg_DAMAGE_TYPE_COLD= 0
integer udg_DAMAGE_TYPE_LIGHTNING= 0
integer udg_DAMAGE_TYPE_POISON= 0
integer udg_DAMAGE_TYPE_DISEASE= 0
integer udg_DAMAGE_TYPE_DIVINE= 0
integer udg_DAMAGE_TYPE_MAGIC= 0
integer udg_DAMAGE_TYPE_SONIC= 0
integer udg_DAMAGE_TYPE_ACID= 0
integer udg_DAMAGE_TYPE_FORCE= 0
integer udg_DAMAGE_TYPE_DEATH= 0
integer udg_DAMAGE_TYPE_MIND= 0
integer udg_DAMAGE_TYPE_PLANT= 0
integer udg_DAMAGE_TYPE_DEFENSIVE= 0
integer udg_DAMAGE_TYPE_DEMOLITION= 0
integer udg_DAMAGE_TYPE_SLOW_POISON= 0
integer udg_DAMAGE_TYPE_SPIRIT_LINK= 0
integer udg_DAMAGE_TYPE_SHADOW_STRIKE= 0
integer udg_DAMAGE_TYPE_UNIVERSAL= 0
string array udg_DamageTypeDebugStr
integer udg_DamageEventDefenseT= 0
integer udg_DEFENSE_TYPE_LIGHT= 0
integer udg_DEFENSE_TYPE_MEDIUM= 0
integer udg_DEFENSE_TYPE_HEAVY= 0
integer udg_DEFENSE_TYPE_FORTIFIED= 0
integer udg_DEFENSE_TYPE_NORMAL= 0
integer udg_DEFENSE_TYPE_HERO= 0
integer udg_DEFENSE_TYPE_DIVINE= 0
integer udg_DEFENSE_TYPE_UNARMORED= 0
string array udg_DefenseTypeDebugStr
string array udg_WeaponTypeDebugStr
integer udg_WEAPON_TYPE_NONE= 0
integer udg_WEAPON_TYPE_ML_CHOP= 0
integer udg_WEAPON_TYPE_MM_CHOP= 0
integer udg_WEAPON_TYPE_MH_CHOP= 0
integer udg_WEAPON_TYPE_ML_SLICE= 0
integer udg_WEAPON_TYPE_MM_SLICE= 0
integer udg_WEAPON_TYPE_MH_SLICE= 0
integer udg_WEAPON_TYPE_MM_BASH= 0
integer udg_WEAPON_TYPE_MH_BASH= 0
integer udg_WEAPON_TYPE_MM_STAB= 0
integer udg_WEAPON_TYPE_MH_STAB= 0
integer udg_WEAPON_TYPE_WL_SLICE= 0
integer udg_WEAPON_TYPE_WM_SLICE= 0
integer udg_WEAPON_TYPE_WH_SLICE= 0
integer udg_WEAPON_TYPE_WL_BASH= 0
integer udg_WEAPON_TYPE_WM_BASH= 0
integer udg_WEAPON_TYPE_WH_BASH= 0
integer udg_WEAPON_TYPE_WL_STAB= 0
integer udg_WEAPON_TYPE_WM_STAB= 0
integer udg_WEAPON_TYPE_CL_SLICE= 0
integer udg_WEAPON_TYPE_CM_SLICE= 0
integer udg_WEAPON_TYPE_CH_SLICE= 0
integer udg_WEAPON_TYPE_AM_CHOP= 0
integer udg_WEAPON_TYPE_RH_BASH= 0
integer udg_DamageEventWeaponT= 0
integer udg_AssarHeroStats= 0
integer udg_LifeAidInt= 0

    // Generated
rect gg_rct_BOTTOM_HALF= null
rect gg_rct_Mid= null
rect gg_rct_NE= null
rect gg_rct_NEF= null
rect gg_rct_Scourge_1= null
rect gg_rct_Scourge_2= null
rect gg_rct_Sentinel_1= null
rect gg_rct_Sentinel_2= null
rect gg_rct_SIDE_LEFT= null
rect gg_rct_SIDE_RIGHT= null
rect gg_rct_TOP_HALF= null
rect gg_rct_UF= null
rect gg_rct_Undead= null
string gg_snd_DarkAgents
string gg_snd_Doom
trigger gg_trg_Core= null
trigger gg_trg_Ability_Cast= null
trigger gg_trg_Quest_Log= null
trigger gg_trg_Spawn_Right1= null
trigger gg_trg_Spawn_Right2= null
trigger gg_trg_Spawn_Left1= null
trigger gg_trg_Spawn_Left2= null
trigger gg_trg_Hero_Bounty= null
trigger gg_trg_Hero_Unit_Enters_Map= null
trigger gg_trg_Hero_Revival= null
trigger gg_trg_Bonus_Money= null
trigger gg_trg_Resources= null
trigger gg_trg_Altar_Death= null
trigger gg_trg_Selection_Circle_On= null
trigger gg_trg_Selection_Circle_Off= null
trigger gg_trg_Choosing_Time= null
trigger gg_trg_Time_Up= null
trigger gg_trg_Only_One= null
trigger gg_trg_Creep_Boost= null
trigger gg_trg_Handicap_Boost= null
trigger gg_trg_Bonus2= null
trigger gg_trg_Hero_Drop= null
trigger gg_trg_Hero_Bounty_Rise= null
trigger gg_trg_Hero_Low_Health= null
trigger gg_trg_Main_Building_Falls= null
trigger gg_trg_TestCenter= null
trigger gg_trg_TestVision= null
trigger gg_trg_TestLevel= null
trigger gg_trg_TestRestore= null
trigger gg_trg_TestMoney= null
trigger gg_trg_AIReport= null
trigger gg_trg_Bounty_Info= null
trigger gg_trg_Bounty_Info_Self= null
trigger gg_trg_Tech_Info= null
trigger gg_trg_Spawn_Rush= null
trigger gg_trg_DamageFloatText= null
trigger gg_trg_Hide_Developer= null
trigger gg_trg_Developer_Mode= null
trigger gg_trg_Kill_Hero= null
trigger gg_trg_Mind_Cooperation= null
trigger gg_trg_AI_Config= null
trigger gg_trg_AI_About_to_Select= null
trigger gg_trg_AI_Preparation= null
trigger gg_trg_AI_Growth= null
trigger gg_trg_AI_Learn_Skill= null
trigger gg_trg_AI_Itemizing= null
trigger gg_trg_AI_Retreat= null
trigger gg_trg_AI_Restart_Attack= null
trigger gg_trg_AI_Dies= null
trigger gg_trg_AI_Return= null
trigger gg_trg_AI_Upgrades= null
trigger gg_trg_AI_Train_Change= null
trigger gg_trg_AI_Orb= null
trigger gg_trg_AI_Artifact= null
trigger gg_trg_AI_Essence= null
trigger gg_trg_AI_Combat_Item= null
trigger gg_trg_AI_Reset= null
trigger gg_trg_SkillData= null
trigger gg_trg_Upgrade_Skill= null
trigger gg_trg_Day_and_Night_Skills_Index= null
trigger gg_trg_Day_and_Night_Skills_Switch= null
trigger gg_trg_Dummy_Hero_Skill_Index= null
trigger gg_trg_Dummy_Hero_Skills_Adding= null
trigger gg_trg_Empowered_Elementals= null
trigger gg_trg_No_Autocast_Searing= null
trigger gg_trg_Elune_Arrow= null
trigger gg_trg_Star_Rain= null
trigger gg_trg_Holy_Aura= null
trigger gg_trg_Exorcism= null
trigger gg_trg_No_Autocast_Blood_Money= null
trigger gg_trg_Blood_Money_Hit= null
trigger gg_trg_Will_of_the_Earth= null
trigger gg_trg_Totem_of_Might= null
trigger gg_trg_Judgement= null
trigger gg_trg_Light_Blast= null
trigger gg_trg_Light_Pulse= null
trigger gg_trg_Speed_of_Light= null
trigger gg_trg_Mana_Burn= null
trigger gg_trg_Auto_Rage= null
trigger gg_trg_Eye_of_Seer= null
trigger gg_trg_Elementalist= null
trigger gg_trg_Relocation_Magic_Cancel= null
trigger gg_trg_Relocation_Magic_TP= null
trigger gg_trg_Death_Coil= null
trigger gg_trg_Death_Decree= null
trigger gg_trg_Armor_of_Darkness= null
trigger gg_trg_Nature_Force= null
trigger gg_trg_Peace= null
trigger gg_trg_Eye_of_Darkness_Loop= null
trigger gg_trg_Eye_of_Darkness_Proc= null
trigger gg_trg_Navalas= null
trigger gg_trg_Tsukuyomi_Config= null
trigger gg_trg_Tsukuyomi_Cast= null
trigger gg_trg_Tsukuyomi_Loop= null
trigger gg_trg_Hamaria_the_Aeon= null
trigger gg_trg_Upgrade_Skill_Persona= null
trigger gg_trg_Eiga= null
trigger gg_trg_Lavaeteinn= null
trigger gg_trg_Lavaeteinn_Cancel= null
trigger gg_trg_Lavaeteinn_Cancel_Level= null
trigger gg_trg_Lavaeteinn_Telegraph= null
trigger gg_trg_Tactical_Spirit= null
trigger gg_trg_Megaton_Raid= null
trigger gg_trg_Megaton_Raid_Cancel= null
trigger gg_trg_Kouga= null
trigger gg_trg_HazyPresence= null
trigger gg_trg_PhantomShow= null
trigger gg_trg_PhantomShowBlow= null
trigger gg_trg_Maeiga= null
trigger gg_trg_LifeAid= null
trigger gg_trg_HeatRiserNoAutocast= null
trigger gg_trg_Heaven_Bracer_Get= null
trigger gg_trg_Heaven_Bracer_Lost= null
trigger gg_trg_Check_Essence= null
trigger gg_trg_Raidou_Essence= null
trigger gg_trg_DirectiveEssence= null
trigger gg_trg_Assar_Essence= null
trigger gg_trg_LegendzKing_Essence= null
trigger gg_trg_Affa_Essence= null
trigger gg_trg_Sadim_Essence= null
trigger gg_trg_Affad_Essence_A= null
trigger gg_trg_Affad_Essence_B= null
trigger gg_trg_Atika_Essence= null
trigger gg_trg_Spell_System_Config= null
trigger gg_trg_Spell_System= null
trigger gg_trg_Spell_System_Sample_Config= null
trigger gg_trg_Spell_System_Sample_Trigger= null
trigger gg_trg_Spell_System_Sample_Filter= null
trigger gg_trg_Spell_System_All_In_One_Template= null
trigger gg_trg_Item_Cleanup= null
trigger gg_trg_Damage_Engine_Config= null
trigger gg_trg_Damage_Engine= null
unit gg_unit_n002_0047= null
unit gg_unit_ncop_0046= null
unit gg_unit_n001_0040= null
unit gg_unit_ncop_0041= null
unit gg_unit_ncop_0042= null
unit gg_unit_ncop_0043= null
unit gg_unit_ncop_0044= null
unit gg_unit_ncop_0045= null
unit gg_unit_ncop_0107= null
unit gg_unit_ncop_0106= null
unit gg_unit_ncop_0102= null
unit gg_unit_ncop_0103= null
unit gg_unit_ncop_0104= null
unit gg_unit_ncop_0105= null
unit gg_unit_h00I_0134= null
unit gg_unit_n009_0122= null
unit gg_unit_h00I_0133= null


//JASSHelper struct globals:
constant integer si__DamageTrigger=1
integer s__DamageTrigger_MOD= 1
integer s__DamageTrigger_SHIELD= 4
integer s__DamageTrigger_DAMAGE= 5
integer s__DamageTrigger_ZERO= 6
integer s__DamageTrigger_AFTER= 7
integer s__DamageTrigger_LETHAL= 8
integer s__DamageTrigger_AOE= 9
integer s__DamageTrigger_count= 9
integer s__DamageTrigger_lastRegistered= 0
integer array s__DamageTrigger_trigIndexStack
integer s__DamageTrigger_eventIndex= 0
boolean array s__DamageTrigger_filters
string array s__DamageTrigger_eventStr
real array s__DamageTrigger_weight
boolean array s__DamageTrigger_configured
boolean array s__DamageTrigger_usingGUI
integer array s__DamageTrigger_next
trigger array s__DamageTrigger_rootTrig
boolean array s__DamageTrigger_DamageEngine___trigFrozen
integer array s__DamageTrigger_DamageEngine___levelsDeep
boolean array s__DamageTrigger_DamageEngine___inceptionTrig
unit array s__DamageTrigger_source
unit array s__DamageTrigger_target
integer array s__DamageTrigger_sourceType
integer array s__DamageTrigger_targetType
integer array s__DamageTrigger_sourceBuff
integer array s__DamageTrigger_targetBuff
real array s__DamageTrigger_damageMin
integer array s__DamageTrigger_attackType
integer array s__DamageTrigger_damageType
integer array s__DamageTrigger_userType
integer s__DamageTrigger_prev= 0
trigger array s__DamageTrigger_autoTriggers
boolexpr array s__DamageTrigger_autoFuncs
integer s__DamageTrigger_autoN= 0
constant integer si__Damage=2
unit array s__Damage_sourceUnit
unit array s__Damage_targetUnit
real array s__Damage_damage
real array s__Damage_prevAmt
attacktype array s__Damage_attackType
damagetype array s__Damage_damageType
weapontype array s__Damage_weaponType
integer array s__Damage_userType
boolean array s__Damage_isAttack
boolean array s__Damage_isCode
boolean array s__Damage_isSpell
boolean array s__Damage_isMelee
boolean array s__Damage_isRanged
integer array s__Damage_eFilter
real array s__Damage_armorPierced
integer array s__Damage_armorType
integer array s__Damage_defenseType
integer s__Damage_index= 0
integer s__Damage_damageStack= 0
integer s__Damage_prepped= 0
integer s__Damage_count= 0
integer array s__Damage_stackRef
integer array s__Damage_recursiveTrig
integer array s__Damage_prevArmorT
integer array s__Damage_prevDefenseT
boolean s__Damage_arisen= false
trigger array st___prototype2
trigger f__arg_trigger1
string f__arg_string1
limitop f__arg_limitop1
real f__arg_real1

endglobals
native UnitAlive takes unit u returns boolean

function sc___prototype2_execute takes integer i,trigger a1,string a2,limitop a3,real a4 returns nothing
    set f__arg_trigger1=a1
    set f__arg_string1=a2
    set f__arg_limitop1=a3
    set f__arg_real1=a4

    call TriggerExecute(st___prototype2[i])
endfunction
function sc___prototype2_evaluate takes integer i,trigger a1,string a2,limitop a3,real a4 returns nothing
    set f__arg_trigger1=a1
    set f__arg_string1=a2
    set f__arg_limitop1=a3
    set f__arg_real1=a4

    call TriggerEvaluate(st___prototype2[i])

endfunction
function h__TriggerRegisterVariableEvent takes trigger a0, string a1, limitop a2, real a3 returns event
    //hook: DamageEngine_RegisterFromHook
    call sc___prototype2_evaluate(1,a0,a1,a2,a3)
return TriggerRegisterVariableEvent(a0,a1,a2,a3)
endfunction

//library DamageEngine:

//GUI Vars:

   
    //Map-makers should comment-out any booleans they will never need to check for.
    function s__DamageTrigger_checkConfiguration takes integer this returns boolean
        if s__DamageTrigger_userType[this] != 0 and udg_DamageEventType != s__DamageTrigger_userType[this] then
        elseif s__DamageTrigger_source[this] != null and s__DamageTrigger_source[this] != udg_DamageEventSource then
        elseif s__DamageTrigger_target[this] != null and s__DamageTrigger_target[this] != udg_DamageEventTarget then
        elseif s__DamageTrigger_attackType[this] >= 0 and s__DamageTrigger_attackType[this] != udg_DamageEventAttackT then
        elseif s__DamageTrigger_damageType[this] >= 0 and s__DamageTrigger_damageType[this] != udg_DamageEventDamageT then
        elseif s__DamageTrigger_sourceType[this] != 0 and GetUnitTypeId(udg_DamageEventSource) != s__DamageTrigger_sourceType[this] then
        elseif s__DamageTrigger_targetType[this] != 0 and GetUnitTypeId(udg_DamageEventTarget) != s__DamageTrigger_targetType[this] then
        elseif s__DamageTrigger_sourceBuff[this] != 0 and GetUnitAbilityLevel(udg_DamageEventSource, s__DamageTrigger_sourceBuff[this]) == 0 then
        elseif s__DamageTrigger_targetBuff[this] != 0 and GetUnitAbilityLevel(udg_DamageEventTarget, s__DamageTrigger_targetBuff[this]) == 0 then
        elseif udg_DamageEventAmount > s__DamageTrigger_damageMin[this] then
            return true
        endif
        return false
    endfunction
   
    //The below variables are constant
    //The below variables are private
    function s__DamageTrigger_configure takes integer this returns nothing
        set s__DamageTrigger_attackType[this]=udg_DamageFilterAttackT
        set s__DamageTrigger_damageType[this]=udg_DamageFilterDamageT
        set s__DamageTrigger_source[this]=udg_DamageFilterSource
        set s__DamageTrigger_target[this]=udg_DamageFilterTarget
        set s__DamageTrigger_sourceType[this]=udg_DamageFilterSourceT
        set s__DamageTrigger_targetType[this]=udg_DamageFilterTargetT
        set s__DamageTrigger_sourceBuff[this]=udg_DamageFilterSourceB
        set s__DamageTrigger_targetBuff[this]=udg_DamageFilterTargetB
        set s__DamageTrigger_userType[this]=udg_DamageFilterType
        set s__DamageTrigger_damageMin[this]=udg_DamageFilterMinAmount
 
        set udg_DamageFilterAttackT=- 1
        set udg_DamageFilterDamageT=- 1
        set udg_DamageFilterSource=null
        set udg_DamageFilterTarget=null
        set udg_DamageFilterSourceT=0
        set udg_DamageFilterTargetT=0
        set udg_DamageFilterType=0
        set udg_DamageFilterSourceB=0
        set udg_DamageFilterTargetB=0
        set udg_DamageFilterMinAmount=0.00
 
        set s__DamageTrigger_configured[this]=true
    endfunction
    function s__DamageTrigger_setGUIFromStruct takes boolean full returns nothing
        set udg_DamageEventAmount=s__Damage_damage[s__Damage_index]
        set udg_DamageEventAttackT=GetHandleId(s__Damage_attackType[s__Damage_index])
        set udg_DamageEventDamageT=GetHandleId(s__Damage_damageType[s__Damage_index])
        set udg_DamageEventWeaponT=GetHandleId(s__Damage_weaponType[s__Damage_index])
        set udg_DamageEventType=s__Damage_userType[s__Damage_index]

        set udg_DamageEventArmorPierced=s__Damage_armorPierced[s__Damage_index]
        set udg_DamageEventArmorT=s__Damage_armorType[s__Damage_index]
        set udg_DamageEventDefenseT=s__Damage_defenseType[s__Damage_index]

        if full then
            set udg_DamageEventSource=s__Damage_sourceUnit[s__Damage_index]
            set udg_DamageEventTarget=s__Damage_targetUnit[s__Damage_index]
            set udg_DamageEventPrevAmt=s__Damage_prevAmt[s__Damage_index]
            set udg_IsDamageAttack=s__Damage_isAttack[s__Damage_index]
            set udg_IsDamageCode=s__Damage_isCode[s__Damage_index]
            set udg_IsDamageSpell=s__Damage_isSpell[s__Damage_index]

            set udg_IsDamageMelee=s__Damage_isMelee[s__Damage_index]
            set udg_IsDamageRanged=s__Damage_isRanged[s__Damage_index]

        endif
    endfunction
    function s__DamageTrigger_setStructFromGUI takes nothing returns nothing
        set s__Damage_damage[s__Damage_index]=udg_DamageEventAmount
        set s__Damage_attackType[s__Damage_index]=ConvertAttackType(udg_DamageEventAttackT)
        set s__Damage_damageType[s__Damage_index]=ConvertDamageType(udg_DamageEventDamageT)
        set s__Damage_weaponType[s__Damage_index]=ConvertWeaponType(udg_DamageEventWeaponT)
        set s__Damage_userType[s__Damage_index]=udg_DamageEventType

        set s__Damage_armorPierced[s__Damage_index]=udg_DamageEventArmorPierced
        set s__Damage_armorType[s__Damage_index]=udg_DamageEventArmorT
        set s__Damage_defenseType[s__Damage_index]=udg_DamageEventDefenseT

    endfunction
    function s__DamageTrigger_getVerboseStr takes string eventName returns string
        if eventName == "Modifier" or eventName == "Mod" then
            return "udg_DamageModifierEvent"
        endif
        return "udg_" + eventName + "DamageEvent"
    endfunction
    function s__DamageTrigger_getStrIndex takes string var,real lbs returns integer
        local integer root= R2I(lbs)
        if var == "udg_DamageModifierEvent" then
            if root >= 4 then
                set root=s__DamageTrigger_SHIELD //4.00 or higher
            else
                set root=s__DamageTrigger_MOD //Less than 4.00
            endif
        elseif var == "udg_DamageEvent" then
            if root == 2 or root == 0 then
                set root=s__DamageTrigger_ZERO
            else
                set root=s__DamageTrigger_DAMAGE //Above 0.00 but less than 2.00, generally would just be 1.00
            endif
        elseif var == "udg_AfterDamageEvent" then
            set root=s__DamageTrigger_AFTER
        elseif var == "udg_LethalDamageEvent" then
            set root=s__DamageTrigger_LETHAL
        elseif var == "udg_AOEDamageEvent" then
            set root=s__DamageTrigger_AOE
        else
            set root=0
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_GDD()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_PDD()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_REG_PLUGIN_05()
        endif
        return root
    endfunction
    function s__DamageTrigger_toggleAllFilters takes integer this,boolean flag returns nothing
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_ATTACK]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_MELEE]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_OTHER]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_RANGED]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_SPELL]=flag
        set s__DamageTrigger_filters[this + DamageEngine_FILTER_CODE]=flag
    endfunction
    function s__DamageTrigger__set_filter takes integer this,integer f returns nothing
        set this=this * DamageEngine_FILTER_MAX
        if f == DamageEngine_FILTER_OTHER then
            call s__DamageTrigger_toggleAllFilters(this,true)
        else
            if f == DamageEngine_FILTER_ATTACK then
                set s__DamageTrigger_filters[this + DamageEngine_FILTER_ATTACK]=true
                set s__DamageTrigger_filters[this + DamageEngine_FILTER_MELEE]=true
                set s__DamageTrigger_filters[this + DamageEngine_FILTER_RANGED]=true
            else
                set s__DamageTrigger_filters[this + f]=true
            endif
        endif
    endfunction
    function s__DamageTrigger_registerVerbose takes trigger whichTrig,string var,real lbs,boolean GUI,integer filt returns integer
        local integer index= s__DamageTrigger_getStrIndex(var , lbs)
        local integer i= 0
        local integer id= 0
 
        if index == 0 then
            return 0
        elseif s__DamageTrigger_rootTrig[s__DamageTrigger_lastRegistered] == whichTrig and s__DamageTrigger_usingGUI[s__DamageTrigger_lastRegistered] then
            set s__DamageTrigger_filters[s__DamageTrigger_lastRegistered * DamageEngine_FILTER_MAX + filt]=true //allows GUI to register multiple different types of Damage filters to the same trigger
            return 0
        endif
 
        if not DamageEngine___hasLethal and index == s__DamageTrigger_LETHAL then
            set DamageEngine___hasLethal=true
        endif
        if s__DamageTrigger_trigIndexStack[0] == 0 then
            set s__DamageTrigger_count=s__DamageTrigger_count + 1 //List runs from index 10 and up
            set id=s__DamageTrigger_count
        else
            set id=s__DamageTrigger_trigIndexStack[0]
            set s__DamageTrigger_trigIndexStack[0]=s__DamageTrigger_trigIndexStack[id]
        endif
        set s__DamageTrigger_lastRegistered=id
        call s__DamageTrigger__set_filter(id,filt)
        set s__DamageTrigger_rootTrig[id]=whichTrig
        set s__DamageTrigger_usingGUI[id]=GUI
        set s__DamageTrigger_weight[id]=lbs
        set s__DamageTrigger_eventStr[id]=var
       
        //Next 2 lines added to fix a bug when using manual vJass configuration,
        //discovered and solved by lolreported
        set s__DamageTrigger_attackType[id]=- 1
        set s__DamageTrigger_damageType[id]=- 1
 
        loop
            set i=s__DamageTrigger_next[index]
            exitwhen i == 0 or lbs < s__DamageTrigger_weight[i]
            set index=i
        endloop
        set s__DamageTrigger_next[index]=id
        set s__DamageTrigger_next[id]=i
 
        //call BJDebugMsg("Registered " + I2S(id) + " to " + I2S(index) + " and before " + I2S(i))
        return s__DamageTrigger_lastRegistered
    endfunction
    function s__DamageTrigger_registerTrigger takes trigger t,string var,real lbs returns integer
        return s__DamageTrigger_registerVerbose(t , s__DamageTrigger_getVerboseStr(var) , lbs , false , DamageEngine_FILTER_OTHER)
    endfunction
    function s__DamageTrigger_getIndex takes trigger t,string eventName,real lbs returns integer
        local integer index= s__DamageTrigger_getStrIndex(s__DamageTrigger_getVerboseStr(eventName) , lbs)
        loop
            set s__DamageTrigger_prev=index
            set index=s__DamageTrigger_next[index]
            exitwhen index == 0 or s__DamageTrigger_rootTrig[index] == t
        endloop
        return index
    endfunction
    function s__DamageTrigger_unregister takes trigger t,string eventName,real lbs,boolean reset returns boolean
        local integer index= s__DamageTrigger_getIndex(t , eventName , lbs)
        if index == 0 then
            return false
        endif
        set s__DamageTrigger_next[s__DamageTrigger_prev]=s__DamageTrigger_next[index]
     
        set s__DamageTrigger_trigIndexStack[index]=s__DamageTrigger_trigIndexStack[0]
        set s__DamageTrigger_trigIndexStack[0]=index
 
        if reset then
            call s__DamageTrigger_configure(index)
            set s__DamageTrigger_configured[index]=false
            set index=index * DamageEngine_FILTER_MAX
            call s__DamageTrigger_toggleAllFilters(index,false)
        endif
        return true
    endfunction
    function s__DamageTrigger_DamageEngine___run takes integer this returns nothing
        local integer cat= this
        local integer d= s__Damage_index

        local boolean structUnset= false
        local boolean guiUnset= false
        local boolean mod= cat <= s__DamageTrigger_DAMAGE

        if DamageEngine___dreaming then
            return
        endif
        set DamageEngine___dreaming=true
        call DisableTrigger(DamageEngine___t1)
        call DisableTrigger(DamageEngine___t2)
        call EnableTrigger(DamageEngine___t3)
        //call BJDebugMsg("Start of event running")
        loop
            set this=s__DamageTrigger_next[this]
            exitwhen this == 0
            exitwhen cat == s__DamageTrigger_MOD and ( udg_DamageEventOverride or udg_DamageEventType == DamageEngine_TYPE_PURE )
            exitwhen cat == s__DamageTrigger_SHIELD and udg_DamageEventAmount <= 0.00

            exitwhen cat == s__DamageTrigger_LETHAL and udg_LethalDamageHP > DamageEngine___DEATH_VAL

         
            set s__DamageTrigger_eventIndex=this
            if not s__DamageTrigger_DamageEngine___trigFrozen[this] and s__DamageTrigger_filters[this * DamageEngine_FILTER_MAX + s__Damage_eFilter[d]] and IsTriggerEnabled(s__DamageTrigger_rootTrig[this]) and ( not s__DamageTrigger_configured[this] or s__DamageTrigger_checkConfiguration(this) ) then

                if mod then
                    if s__DamageTrigger_usingGUI[this] then
                        if guiUnset then
                            set guiUnset=false
                            call s__DamageTrigger_setGUIFromStruct(false)
                        endif
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_PDD()
                    elseif structUnset then
                        set structUnset=false
                        call s__DamageTrigger_setStructFromGUI()
                    endif
                endif

//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_FILTER_PLUGIN_05()
               
                //JASS users who do not use actions can modify the below block to just evaluate.
                //It should not make any perceptable difference in terms of performance.
                if TriggerEvaluate(s__DamageTrigger_rootTrig[this]) then
                    call TriggerExecute(s__DamageTrigger_rootTrig[this])
                endif
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_05()

                if mod then
                    if s__DamageTrigger_usingGUI[this] then
//ignored textmacro command: DAMAGE_EVENT_MOD_PLUGIN_PDD()
                        if cat != s__DamageTrigger_MOD then
                            set s__Damage_damage[d]=udg_DamageEventAmount
                        else
                            set structUnset=true
                        endif
                    elseif cat != s__DamageTrigger_MOD then
                        set udg_DamageEventAmount=s__Damage_damage[d]
                    else
                        set guiUnset=true
                    endif
                endif

            endif
        endloop

        if structUnset then
            call s__DamageTrigger_setStructFromGUI()
        endif
        if guiUnset then
            call s__DamageTrigger_setGUIFromStruct(false)
        endif



        //call BJDebugMsg("End of event running")
        call DisableTrigger(DamageEngine___t3)
        call EnableTrigger(DamageEngine___t1)
        call EnableTrigger(DamageEngine___t2)
        set DamageEngine___dreaming=false
    endfunction
    function s__DamageTrigger__staticgetindex takes code c returns trigger
        local integer i= 0
        local boolexpr b= Filter(c)
        loop
            if i == s__DamageTrigger_autoN then
                set s__DamageTrigger_autoTriggers[i]=CreateTrigger()
                set s__DamageTrigger_autoFuncs[i]=b
                call TriggerAddCondition(s__DamageTrigger_autoTriggers[i], b)
                exitwhen true
            endif
            set i=i + 1
            exitwhen b == s__DamageTrigger_autoFuncs[i]
        endloop
        return s__DamageTrigger_autoTriggers[i]
    endfunction
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_USER_STRUCT_PLUGIN_05()


   


    function s__Damage__get_source takes nothing returns unit
        return udg_DamageEventSource
    endfunction
    function s__Damage__get_target takes nothing returns unit
        return udg_DamageEventTarget
    endfunction
    function s__Damage__get_amount takes nothing returns real
        return s__Damage_damage[s__Damage_index]
    endfunction
    function s__Damage__set_amount takes real r returns nothing
        set s__Damage_damage[s__Damage_index]=r
    endfunction
   

    function s__Damage_setArmor takes integer this,boolean reset returns nothing
        local real pierce
        local integer at
        local integer dt
        if reset then
            set pierce=udg_DamageEventArmorPierced
            set at=s__Damage_prevArmorT[s__Damage_index]
            set dt=s__Damage_prevDefenseT[s__Damage_index]
            set udg_DamageEventArmorPierced=0.00
            set s__Damage_armorPierced[this]=0.00
        else
            set pierce=- udg_DamageEventArmorPierced
            set at=udg_DamageEventArmorT
            set dt=udg_DamageEventDefenseT
        endif
        if pierce != 0.00 then
            call BlzSetUnitArmor(udg_DamageEventTarget, BlzGetUnitArmor(udg_DamageEventTarget) + pierce)
        endif
        if s__Damage_prevArmorT[s__Damage_index] != udg_DamageEventArmorT then
            call BlzSetUnitIntegerField(udg_DamageEventTarget, UNIT_IF_ARMOR_TYPE, at)
        endif
        if s__Damage_prevDefenseT[s__Damage_index] != udg_DamageEventDefenseT then
            call BlzSetUnitIntegerField(udg_DamageEventTarget, UNIT_IF_DEFENSE_TYPE, dt)
        endif
    endfunction


    function s__Damage_onAOEEnd takes nothing returns nothing
        if udg_DamageEventAOE > 1 then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_AOE)
        endif
        set udg_DamageEventAOE=0
        set udg_DamageEventLevel=0
        set udg_EnhancedDamageTarget=null
        set udg_AOEDamageSource=null
        call GroupClear(udg_DamageEventAOEGroup)
    endfunction

   
    function s__Damage_afterDamage takes nothing returns nothing
        if udg_DamageEventPrevAmt != 0.00 and udg_DamageEventDamageT != 0 then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_AFTER)
            set udg_DamageEventDamageT=0
            set udg_DamageEventPrevAmt=0.00
        endif
    endfunction
    function s__Damage_doPreEvents takes integer this,boolean natural returns boolean

        set s__Damage_armorType[this]=BlzGetUnitIntegerField(s__Damage_targetUnit[this], UNIT_IF_ARMOR_TYPE)
        set s__Damage_defenseType[this]=BlzGetUnitIntegerField(s__Damage_targetUnit[this], UNIT_IF_DEFENSE_TYPE)
        set s__Damage_prevArmorT[this]=s__Damage_armorType[this]
        set s__Damage_prevDefenseT[this]=s__Damage_defenseType[this]
        set s__Damage_armorPierced[this]=0.00

        set s__Damage_index=this
        call s__DamageTrigger_setGUIFromStruct(true)
       
        call GroupAddUnit(DamageEngine___proclusGlobal, udg_DamageEventSource)
        call GroupAddUnit(DamageEngine___fischerMorrow, udg_DamageEventTarget)
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_PRE_VARS_PLUGIN_05()
        if udg_DamageEventAmount != 0.00 then
            set udg_DamageEventOverride=udg_DamageEventDamageT == 0
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_MOD)



            if natural then
                call BlzSetEventAttackType(s__Damage_attackType[this])
                call BlzSetEventDamageType(s__Damage_damageType[this])
                call BlzSetEventWeaponType(s__Damage_weaponType[this])
                call BlzSetEventDamage(udg_DamageEventAmount)
            endif

            call s__Damage_setArmor(this,false)

            return false
        endif
        return true
    endfunction
    function s__Damage_unfreeze takes nothing returns nothing
        local integer i= s__Damage_damageStack
        loop
            exitwhen i == 0
            set i=i - 1
            set s__DamageTrigger_DamageEngine___trigFrozen[s__Damage_recursiveTrig[s__Damage_stackRef[i]]]=false
            set s__DamageTrigger_DamageEngine___levelsDeep[s__Damage_recursiveTrig[s__Damage_stackRef[i]]]=0
        endloop
        call EnableTrigger(DamageEngine___t1)
        call EnableTrigger(DamageEngine___t2)
        set DamageEngine___kicking=false
        set s__Damage_damageStack=0
        set s__Damage_prepped=0
        set DamageEngine___dreaming=false
        set DamageEngine___sleepLevel=0
        call GroupClear(DamageEngine___proclusGlobal)
        call GroupClear(DamageEngine___fischerMorrow)
        //call BJDebugMsg("Cleared up the groups")
    endfunction
    function s__Damage_finish takes nothing returns nothing
        local integer i= 0
        local integer exit
        if DamageEngine___eventsRun then
            set DamageEngine___eventsRun=false
            call s__Damage_afterDamage()
        endif
        if DamageEngine___canKick and not DamageEngine___kicking then
            if s__Damage_damageStack != 0 then
                set DamageEngine___kicking=true
                loop
                    set DamageEngine___sleepLevel=DamageEngine___sleepLevel + 1
                    set exit=s__Damage_damageStack
                    loop
                        set s__Damage_prepped=s__Damage_stackRef[i]
                        if UnitAlive(s__Damage_targetUnit[s__Damage_prepped]) then //Added just in case dead units had issues.
                            call s__Damage_doPreEvents(s__Damage_prepped,false) //don't evaluate the pre-event
                            if s__Damage_damage[s__Damage_prepped] > 0.00 then
                                call DisableTrigger(DamageEngine___t1) //Force only the after armor event to run.
                                call EnableTrigger(DamageEngine___t2) //in case the user forgot to re-enable this
                                set DamageEngine___totem=true
                                call UnitDamageTarget(s__Damage_sourceUnit[s__Damage_prepped], s__Damage_targetUnit[s__Damage_prepped], s__Damage_damage[s__Damage_prepped], s__Damage_isAttack[s__Damage_prepped], s__Damage_isRanged[s__Damage_prepped], s__Damage_attackType[s__Damage_prepped], s__Damage_damageType[s__Damage_prepped], s__Damage_weaponType[s__Damage_prepped])
                            else
                                //No new events run at all in this case
                                if udg_DamageEventDamageT != 0 then
                                    call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_DAMAGE)
                                endif
                                if s__Damage_damage[s__Damage_prepped] < 0.00 then
                                    //No need for BlzSetEventDamage here
                                    call SetWidgetLife(s__Damage_targetUnit[s__Damage_prepped], GetWidgetLife(s__Damage_targetUnit[s__Damage_prepped]) - s__Damage_damage[s__Damage_prepped])
                                endif

                                call s__Damage_setArmor(s__Damage_prepped,true)

                            endif
                            call s__Damage_afterDamage()
                        endif
                        set i=i + 1
                        exitwhen i == exit
                    endloop
                    exitwhen i == s__Damage_damageStack
                endloop
            endif
            call s__Damage_unfreeze()
        endif
    endfunction
    function s__Damage_failsafeClear takes nothing returns nothing

        call s__Damage_setArmor(s__Damage_index,true)

        set DamageEngine___canKick=true
        set DamageEngine___kicking=false
        set DamageEngine___totem=false
        if udg_DamageEventDamageT != 0 then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_DAMAGE)
            set DamageEngine___eventsRun=true
        endif
        call s__Damage_finish()
    endfunction
    function s__Damage__set_enabled takes boolean b returns nothing
        if b then
            if DamageEngine___dreaming then
                call EnableTrigger(DamageEngine___t3)
            else
                call EnableTrigger(DamageEngine___t1)
                call EnableTrigger(DamageEngine___t2)
            endif
        else
            if DamageEngine___dreaming then
                call DisableTrigger(DamageEngine___t3)
            else
                call DisableTrigger(DamageEngine___t1)
                call DisableTrigger(DamageEngine___t2)
            endif
        endif
    endfunction
    function s__Damage__get_enabled takes nothing returns boolean
        return IsTriggerEnabled(DamageEngine___t1)
    endfunction
   
   
    function s__Damage_getOutOfBed takes nothing returns nothing
        if DamageEngine___totem then
            call s__Damage_failsafeClear() //WarCraft 3 didn't run the DAMAGED event despite running the DAMAGING event.
        else
            set DamageEngine___canKick=true
            set DamageEngine___kicking=false
            call s__Damage_finish()
        endif

        call s__Damage_onAOEEnd()

        set s__Damage_arisen=true
    endfunction
   
    function s__Damage_wakeUp takes nothing returns nothing
        set DamageEngine___dreaming=false
        call s__Damage__set_enabled(true)
        call ForForce(bj_FORCE_PLAYER[0], function s__Damage_getOutOfBed) //Moved to a new thread in case of a thread crash
        if not s__Damage_arisen then
            //call BJDebugMsg("DamageEngine issue: thread crashed!")
            call s__Damage_unfreeze()
        else
            set s__Damage_arisen=false
        endif
        set s__Damage_count=0
        set s__Damage_index=0
        set DamageEngine___alarmSet=false
        //call BJDebugMsg("Timer wrapped up")
    endfunction
    function s__Damage_addRecursive takes integer this returns nothing
        if s__Damage_damage[this] != 0.00 then
            set s__Damage_recursiveTrig[this]=s__DamageTrigger_eventIndex
            if not s__Damage_isCode[this] then
                set s__Damage_isCode[this]=true
                set s__Damage_userType[this]=DamageEngine_TYPE_CODE
            endif
            set DamageEngine_inception=DamageEngine_inception or s__DamageTrigger_DamageEngine___inceptionTrig[s__DamageTrigger_eventIndex]
            if DamageEngine___kicking and IsUnitInGroup(s__Damage_sourceUnit[this], DamageEngine___proclusGlobal) and IsUnitInGroup(s__Damage_targetUnit[this], DamageEngine___fischerMorrow) then
                if not DamageEngine_inception then
                    set s__DamageTrigger_DamageEngine___trigFrozen[s__DamageTrigger_eventIndex]=true
                elseif not s__DamageTrigger_DamageEngine___trigFrozen[s__DamageTrigger_eventIndex] then
                    set s__DamageTrigger_DamageEngine___inceptionTrig[s__DamageTrigger_eventIndex]=true
                    if s__DamageTrigger_DamageEngine___levelsDeep[s__DamageTrigger_eventIndex] < DamageEngine___sleepLevel then
                        set s__DamageTrigger_DamageEngine___levelsDeep[s__DamageTrigger_eventIndex]=s__DamageTrigger_DamageEngine___levelsDeep[s__DamageTrigger_eventIndex] + 1
                        if s__DamageTrigger_DamageEngine___levelsDeep[s__DamageTrigger_eventIndex] >= DamageEngine___LIMBO then
                            set s__DamageTrigger_DamageEngine___trigFrozen[s__DamageTrigger_eventIndex]=true
                        endif
                    endif
                endif
            endif
            set s__Damage_stackRef[s__Damage_damageStack]=this
            set s__Damage_damageStack=s__Damage_damageStack + 1
            //call BJDebugMsg("damageStack: " + I2S(damageStack) + " levelsDeep: " + I2S(DamageTrigger.eventIndex.levelsDeep) + " sleepLevel: " + I2S(sleepLevel))
        endif
        set DamageEngine_inception=false
    endfunction
    function s__Damage_clearNexts takes nothing returns nothing
        set udg_NextDamageIsAttack=false
        set udg_NextDamageType=0
        set udg_NextDamageWeaponT=0

        set udg_NextDamageIsMelee=false
        set udg_NextDamageIsRanged=false

    endfunction
    function s__Damage_create takes unit src,unit tgt,real amt,boolean a,attacktype at,damagetype dt,weapontype wt returns integer
        local integer d= s__Damage_count + 1
        set s__Damage_count=d
        set s__Damage_sourceUnit[d]=src
        set s__Damage_targetUnit[d]=tgt
        set s__Damage_damage[d]=amt
        set s__Damage_prevAmt[d]=amt
                     
        set s__Damage_attackType[d]=at
        set s__Damage_damageType[d]=dt
        set s__Damage_weaponType[d]=wt
                     
        set s__Damage_isAttack[d]=udg_NextDamageIsAttack or a
        set s__Damage_isSpell[d]=s__Damage_attackType[d] == null and not s__Damage_isAttack[d]
        return d
    endfunction
    function s__Damage_createFromEvent takes nothing returns integer
        local integer d= s__Damage_create(GetEventDamageSource() , GetTriggerUnit() , GetEventDamage() , BlzGetEventIsAttack() , BlzGetEventAttackType() , BlzGetEventDamageType() , BlzGetEventWeaponType())
        set s__Damage_isCode[d]=udg_NextDamageType != 0 or udg_NextDamageIsAttack or udg_NextDamageIsRanged or udg_NextDamageIsMelee or s__Damage_damageType[d] == DAMAGE_TYPE_MIND or udg_NextDamageWeaponT != 0 or ( s__Damage_damage[d] != 0.00 and s__Damage_damageType[d] == DAMAGE_TYPE_UNKNOWN )
 
        if s__Damage_isCode[d] then
            if udg_NextDamageType != 0 then
                set s__Damage_userType[d]=udg_NextDamageType
            else
                set s__Damage_userType[d]=DamageEngine_TYPE_CODE
            endif

            set s__Damage_isMelee[d]=udg_NextDamageIsMelee
            set s__Damage_isRanged[d]=udg_NextDamageIsRanged

            set s__Damage_eFilter[d]=DamageEngine_FILTER_CODE
            if udg_NextDamageWeaponT != 0 then
                set s__Damage_weaponType[d]=ConvertWeaponType(udg_NextDamageWeaponT)
                set udg_NextDamageWeaponT=0
            endif
        else
            set s__Damage_userType[d]=0
            if s__Damage_damageType[d] == DAMAGE_TYPE_NORMAL and s__Damage_isAttack[d] then

                set s__Damage_isMelee[d]=IsUnitType(s__Damage_sourceUnit[d], UNIT_TYPE_MELEE_ATTACKER)
                set s__Damage_isRanged[d]=IsUnitType(s__Damage_sourceUnit[d], UNIT_TYPE_RANGED_ATTACKER)
                if s__Damage_isMelee[d] and s__Damage_isRanged[d] then
                    set s__Damage_isMelee[d]=s__Damage_weaponType[d] != null // Melee units play a sound when damaging
                    set s__Damage_isRanged[d]=not s__Damage_isMelee[d] // In the case where a unit is both ranged and melee, the ranged attack plays no sound.
                endif
                if s__Damage_isMelee[d] then
                    set s__Damage_eFilter[d]=DamageEngine_FILTER_MELEE
                elseif s__Damage_isRanged[d] then
                    set s__Damage_eFilter[d]=DamageEngine_FILTER_RANGED
                else
                    set s__Damage_eFilter[d]=DamageEngine_FILTER_ATTACK
                endif



            else
                if s__Damage_isSpell[d] then
                    set s__Damage_eFilter[d]=DamageEngine_FILTER_SPELL
                else
                    set s__Damage_eFilter[d]=DamageEngine_FILTER_OTHER
                endif

                set s__Damage_isMelee[d]=false
                set s__Damage_isRanged[d]=false

            endif
        endif
        call s__Damage_clearNexts()
        return d
    endfunction
    function s__Damage_onRecursion takes nothing returns boolean
        local integer d= s__Damage_createFromEvent()
        call s__Damage_addRecursive(d)
        call BlzSetEventDamage(0.00)
        return false
    endfunction
    function s__Damage_onDamaging takes nothing returns boolean
        local integer d= s__Damage_createFromEvent()
        //call BJDebugMsg("Pre-damage event running for " + GetUnitName(GetTriggerUnit()))
        if DamageEngine___alarmSet then
            if DamageEngine___totem then //WarCraft 3 didn't run the DAMAGED event despite running the DAMAGING event.
                if s__Damage_damageType[d] == DAMAGE_TYPE_SPIRIT_LINK or s__Damage_damageType[d] == DAMAGE_TYPE_DEFENSIVE or s__Damage_damageType[d] == DAMAGE_TYPE_PLANT then
                    set DamageEngine___totem=false
                    set DamageEngine___lastInstance=s__Damage_index
                    set DamageEngine___canKick=false
                else
                    call s__Damage_failsafeClear() //Not an overlapping event - just wrap it up
                endif
            else
                call s__Damage_finish() //wrap up any previous damage index
            endif
           

            if s__Damage_sourceUnit[d] != udg_AOEDamageSource then
                call s__Damage_onAOEEnd()
                set udg_AOEDamageSource=s__Damage_sourceUnit[d]
            elseif s__Damage_targetUnit[d] == udg_EnhancedDamageTarget then
                set udg_DamageEventLevel=udg_DamageEventLevel + 1
            elseif not IsUnitInGroup(s__Damage_targetUnit[d], udg_DamageEventAOEGroup) then
                set udg_DamageEventAOE=udg_DamageEventAOE + 1
            endif

        else
            call TimerStart(DamageEngine___alarm, 0.00, false, function s__Damage_wakeUp)
            set DamageEngine___alarmSet=true

            set udg_AOEDamageSource=s__Damage_sourceUnit[d]
            set udg_EnhancedDamageTarget=s__Damage_targetUnit[d]

        endif

        call GroupAddUnit(udg_DamageEventAOEGroup, s__Damage_targetUnit[d])

        if s__Damage_doPreEvents(d,true) then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_ZERO)
            set DamageEngine___canKick=true
            call s__Damage_finish()
        endif
        set DamageEngine___totem=DamageEngine___lastInstance == 0 or DamageEngine___attacksImmune[udg_DamageEventAttackT] or DamageEngine___damagesImmune[udg_DamageEventDamageT] or not IsUnitType(udg_DamageEventTarget, UNIT_TYPE_MAGIC_IMMUNE)
        return false
    endfunction
    function s__Damage_onDamaged takes nothing returns boolean
        local real r= GetEventDamage()
        local integer d= s__Damage_index
        //call BJDebugMsg("Second damage event running for " + GetUnitName(GetTriggerUnit()))
        if s__Damage_prepped > 0 then
            set s__Damage_prepped=0
        elseif DamageEngine___dreaming or s__Damage_prevAmt[d] == 0.00 then
            return false
        elseif DamageEngine___totem then
            set DamageEngine___totem=false
        else
            //This should only happen for stuff like Spirit Link or Thorns Aura/Carapace
            call s__Damage_afterDamage()
            set s__Damage_index=DamageEngine___lastInstance
            set DamageEngine___lastInstance=0
            set d=s__Damage_index
            set DamageEngine___canKick=true
            call s__DamageTrigger_setGUIFromStruct(true)
        endif

        call s__Damage_setArmor(d,true)

       

        if udg_DamageEventAmount != 0.00 and r != 0.00 then
            set udg_DamageScalingWC3=r / udg_DamageEventAmount
        elseif udg_DamageEventAmount > 0.00 then
            set udg_DamageScalingWC3=0.00
        else
            set udg_DamageScalingWC3=1.00
            if udg_DamageEventPrevAmt == 0.00 then
                set udg_DamageScalingUser=0.00
            else
                set udg_DamageScalingUser=udg_DamageEventAmount / udg_DamageEventPrevAmt
            endif
        endif

        set udg_DamageEventAmount=r
        set s__Damage_damage[d]=r
 
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_GDD()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_PDD()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_VARS_PLUGIN_05()
 
        if udg_DamageEventAmount > 0.00 then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_SHIELD)




            if DamageEngine___hasLethal or udg_DamageEventType < 0 then
                set udg_LethalDamageHP=GetWidgetLife(udg_DamageEventTarget) - udg_DamageEventAmount
                if udg_LethalDamageHP <= DamageEngine___DEATH_VAL then
                    if DamageEngine___hasLethal then
                        call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_LETHAL)
           
                        set udg_DamageEventAmount=GetWidgetLife(udg_DamageEventTarget) - udg_LethalDamageHP
                        set s__Damage_damage[d]=udg_DamageEventAmount
                    endif
                    if udg_DamageEventType < 0 and udg_LethalDamageHP <= DamageEngine___DEATH_VAL then
                        call SetUnitExploded(udg_DamageEventTarget, true)
                    endif
                endif
            endif


            if udg_DamageEventPrevAmt == 0.00 or udg_DamageScalingWC3 == 0.00 then
                set udg_DamageScalingUser=0.00
            else
                set udg_DamageScalingUser=udg_DamageEventAmount / udg_DamageEventPrevAmt / udg_DamageScalingWC3
            endif

        endif
        if udg_DamageEventDamageT != 0 then
            call s__DamageTrigger_DamageEngine___run(s__DamageTrigger_DAMAGE)
        endif
        call BlzSetEventDamage(udg_DamageEventAmount)
        set DamageEngine___eventsRun=true
        if udg_DamageEventAmount == 0.00 then
            call s__Damage_finish()
        endif
        return false
    endfunction
    function s__Damage_apply takes unit src,unit tgt,real amt,boolean a,boolean r,attacktype at,damagetype dt,weapontype wt returns integer
        local integer d
        if udg_NextDamageType == 0 then
           set udg_NextDamageType=DamageEngine_TYPE_CODE
        endif
        if DamageEngine___dreaming then
            set d=s__Damage_create(src , tgt , amt , a , at , dt , wt)
            set s__Damage_isCode[d]=true
            set s__Damage_eFilter[d]=DamageEngine_FILTER_CODE
                         
            set s__Damage_userType[d]=udg_NextDamageType

            if not s__Damage_isSpell[d] then
                set s__Damage_isRanged[d]=udg_NextDamageIsRanged or r
                set s__Damage_isMelee[d]=not s__Damage_isRanged[d]
            endif

            call s__Damage_addRecursive(d)
        else
            call UnitDamageTarget(src, tgt, amt, a, r, at, dt, wt)
            set d=s__Damage_index
            call s__Damage_finish()
        endif
        call s__Damage_clearNexts()
        return d
    endfunction
    function s__Damage_applySpell takes unit src,unit tgt,real amt,damagetype dt returns integer
        return s__Damage_apply(src , tgt , amt , false , false , null , dt , null)
    endfunction
    function s__Damage_applyAttack takes unit src,unit tgt,real amt,boolean ranged,attacktype at,weapontype wt returns integer
        return s__Damage_apply(src , tgt , amt , true , ranged , at , DAMAGE_TYPE_NORMAL , wt)
    endfunction
    //===========================================================================
    function s__Damage_onInit takes nothing returns nothing
        call TriggerRegisterAnyUnitEventBJ(DamageEngine___t1, EVENT_PLAYER_UNIT_DAMAGING)
        call TriggerAddCondition(DamageEngine___t1, Filter(function s__Damage_onDamaging))
 
        call TriggerRegisterAnyUnitEventBJ(DamageEngine___t2, EVENT_PLAYER_UNIT_DAMAGED)
        call TriggerAddCondition(DamageEngine___t2, Filter(function s__Damage_onDamaged))
 
        //For recursion
        call TriggerRegisterAnyUnitEventBJ(DamageEngine___t3, EVENT_PLAYER_UNIT_DAMAGING)
        call TriggerAddCondition(DamageEngine___t3, Filter(function s__Damage_onRecursion))
        call DisableTrigger(DamageEngine___t3)
 
        //For preventing Thorns/Defensive glitch.
        //Data gathered from https://www.hiveworkshop.com/threads/repo-in-progress-mapping-damage-types-to-their-abilities.316271/
        set DamageEngine___attacksImmune[0]=false //ATTACK_TYPE_NORMAL
        set DamageEngine___attacksImmune[1]=true //ATTACK_TYPE_MELEE  
        set DamageEngine___attacksImmune[2]=true //ATTACK_TYPE_PIERCE  
        set DamageEngine___attacksImmune[3]=true //ATTACK_TYPE_SIEGE  
        set DamageEngine___attacksImmune[4]=false //ATTACK_TYPE_MAGIC  
        set DamageEngine___attacksImmune[5]=true //ATTACK_TYPE_CHAOS  
        set DamageEngine___attacksImmune[6]=true //ATTACK_TYPE_HERO    
 
        set DamageEngine___damagesImmune[0]=true //DAMAGE_TYPE_UNKNOWN      
        set DamageEngine___damagesImmune[4]=true //DAMAGE_TYPE_NORMAL          
        set DamageEngine___damagesImmune[5]=true //DAMAGE_TYPE_ENHANCED        
        set DamageEngine___damagesImmune[8]=false //DAMAGE_TYPE_FIRE            
        set DamageEngine___damagesImmune[9]=false //DAMAGE_TYPE_COLD              
        set DamageEngine___damagesImmune[10]=false //DAMAGE_TYPE_LIGHTNING        
        set DamageEngine___damagesImmune[11]=true //DAMAGE_TYPE_POISON          
        set DamageEngine___damagesImmune[12]=true //DAMAGE_TYPE_DISEASE          
        set DamageEngine___damagesImmune[13]=false //DAMAGE_TYPE_DIVINE            
        set DamageEngine___damagesImmune[14]=false //DAMAGE_TYPE_MAGIC            
        set DamageEngine___damagesImmune[15]=false //DAMAGE_TYPE_SONIC            
        set DamageEngine___damagesImmune[16]=true //DAMAGE_TYPE_ACID            
        set DamageEngine___damagesImmune[17]=false //DAMAGE_TYPE_FORCE            
        set DamageEngine___damagesImmune[18]=false //DAMAGE_TYPE_DEATH            
        set DamageEngine___damagesImmune[19]=false //DAMAGE_TYPE_MIND              
        set DamageEngine___damagesImmune[20]=false //DAMAGE_TYPE_PLANT            
        set DamageEngine___damagesImmune[21]=false //DAMAGE_TYPE_DEFENSIVE        
        set DamageEngine___damagesImmune[22]=true //DAMAGE_TYPE_DEMOLITION      
        set DamageEngine___damagesImmune[23]=true //DAMAGE_TYPE_SLOW_POISON      
        set DamageEngine___damagesImmune[24]=false //DAMAGE_TYPE_SPIRIT_LINK      
        set DamageEngine___damagesImmune[25]=false //DAMAGE_TYPE_SHADOW_STRIKE    
        set DamageEngine___damagesImmune[26]=true //DAMAGE_TYPE_UNIVERSAL
    endfunction
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_DMGPKG()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_01()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_02()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_03()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_04()
//ignored textmacro command: DAMAGE_EVENT_STRUCT_PLUGIN_05()
    function DamageEngine_DebugStr takes nothing returns nothing
        local integer i= 0
        loop
            set udg_CONVERTED_ATTACK_TYPE[i]=ConvertAttackType(i)
            exitwhen i == 6
            set i=i + 1
        endloop
        set i=0
        loop
            set udg_CONVERTED_DAMAGE_TYPE[i]=ConvertDamageType(i)
            exitwhen i == 26
            set i=i + 1
        endloop
        set udg_AttackTypeDebugStr[0]="SPELLS" //ATTACK_TYPE_NORMAL in JASS
        set udg_AttackTypeDebugStr[1]="NORMAL" //ATTACK_TYPE_MELEE in JASS
        set udg_AttackTypeDebugStr[2]="PIERCE"
        set udg_AttackTypeDebugStr[3]="SIEGE"
        set udg_AttackTypeDebugStr[4]="MAGIC"
        set udg_AttackTypeDebugStr[5]="CHAOS"
        set udg_AttackTypeDebugStr[6]="HERO"
        set udg_DamageTypeDebugStr[0]="UNKNOWN"
        set udg_DamageTypeDebugStr[4]="NORMAL"
        set udg_DamageTypeDebugStr[5]="ENHANCED"
        set udg_DamageTypeDebugStr[8]="FIRE"
        set udg_DamageTypeDebugStr[9]="COLD"
        set udg_DamageTypeDebugStr[10]="LIGHTNING"
        set udg_DamageTypeDebugStr[11]="POISON"
        set udg_DamageTypeDebugStr[12]="DISEASE"
        set udg_DamageTypeDebugStr[13]="DIVINE"
        set udg_DamageTypeDebugStr[14]="MAGIC"
        set udg_DamageTypeDebugStr[15]="SONIC"
        set udg_DamageTypeDebugStr[16]="ACID"
        set udg_DamageTypeDebugStr[17]="FORCE"
        set udg_DamageTypeDebugStr[18]="DEATH"
        set udg_DamageTypeDebugStr[19]="MIND"
        set udg_DamageTypeDebugStr[20]="PLANT"
        set udg_DamageTypeDebugStr[21]="DEFENSIVE"
        set udg_DamageTypeDebugStr[22]="DEMOLITION"
        set udg_DamageTypeDebugStr[23]="SLOW_POISON"
        set udg_DamageTypeDebugStr[24]="SPIRIT_LINK"
        set udg_DamageTypeDebugStr[25]="SHADOW_STRIKE"
        set udg_DamageTypeDebugStr[26]="UNIVERSAL"
        set udg_WeaponTypeDebugStr[0]="NONE" //WEAPON_TYPE_WHOKNOWS in JASS
        set udg_WeaponTypeDebugStr[1]="METAL_LIGHT_CHOP"
        set udg_WeaponTypeDebugStr[2]="METAL_MEDIUM_CHOP"
        set udg_WeaponTypeDebugStr[3]="METAL_HEAVY_CHOP"
        set udg_WeaponTypeDebugStr[4]="METAL_LIGHT_SLICE"
        set udg_WeaponTypeDebugStr[5]="METAL_MEDIUM_SLICE"
        set udg_WeaponTypeDebugStr[6]="METAL_HEAVY_SLICE"
        set udg_WeaponTypeDebugStr[7]="METAL_MEDIUM_BASH"
        set udg_WeaponTypeDebugStr[8]="METAL_HEAVY_BASH"
        set udg_WeaponTypeDebugStr[9]="METAL_MEDIUM_STAB"
        set udg_WeaponTypeDebugStr[10]="METAL_HEAVY_STAB"
        set udg_WeaponTypeDebugStr[11]="WOOD_LIGHT_SLICE"
        set udg_WeaponTypeDebugStr[12]="WOOD_MEDIUM_SLICE"
        set udg_WeaponTypeDebugStr[13]="WOOD_HEAVY_SLICE"
        set udg_WeaponTypeDebugStr[14]="WOOD_LIGHT_BASH"
        set udg_WeaponTypeDebugStr[15]="WOOD_MEDIUM_BASH"
        set udg_WeaponTypeDebugStr[16]="WOOD_HEAVY_BASH"
        set udg_WeaponTypeDebugStr[17]="WOOD_LIGHT_STAB"
        set udg_WeaponTypeDebugStr[18]="WOOD_MEDIUM_STAB"
        set udg_WeaponTypeDebugStr[19]="CLAW_LIGHT_SLICE"
        set udg_WeaponTypeDebugStr[20]="CLAW_MEDIUM_SLICE"
        set udg_WeaponTypeDebugStr[21]="CLAW_HEAVY_SLICE"
        set udg_WeaponTypeDebugStr[22]="AXE_MEDIUM_CHOP"
        set udg_WeaponTypeDebugStr[23]="ROCK_HEAVY_BASH"
        set udg_DefenseTypeDebugStr[0]="LIGHT"
        set udg_DefenseTypeDebugStr[1]="MEDIUM"
        set udg_DefenseTypeDebugStr[2]="HEAVY"
        set udg_DefenseTypeDebugStr[3]="FORTIFIED"
        set udg_DefenseTypeDebugStr[4]="NORMAL" //Typically deals flat damage to all armor types
        set udg_DefenseTypeDebugStr[5]="HERO"
        set udg_DefenseTypeDebugStr[6]="DIVINE"
        set udg_DefenseTypeDebugStr[7]="UNARMORED"
        set udg_ArmorTypeDebugStr[0]="NONE" //ARMOR_TYPE_WHOKNOWS in JASS, added in 1.31
        set udg_ArmorTypeDebugStr[1]="FLESH"
        set udg_ArmorTypeDebugStr[2]="METAL"
        set udg_ArmorTypeDebugStr[3]="WOOD"
        set udg_ArmorTypeDebugStr[4]="ETHEREAL"
        set udg_ArmorTypeDebugStr[5]="STONE"
    endfunction
    //===========================================================================
    //
    // Setup of automatic events from GUI and custom ones from JASS alike
    //
    //===========================================================================
    function DamageEngine_RegisterFromHook takes trigger whichTrig,string var,limitop op,real value returns nothing
        call s__DamageTrigger_registerVerbose(whichTrig , var , value , true , GetHandleId(op))
    endfunction
//processed hook:     hook TriggerRegisterVariableEvent DamageEngine_RegisterFromHook
    function TriggerRegisterDamageEngineEx takes trigger whichTrig,string eventName,real value,integer f returns integer
        return s__DamageTrigger_registerVerbose(whichTrig , s__DamageTrigger_getVerboseStr(eventName) , value , false , f)
    endfunction
    function TriggerRegisterDamageEngine takes trigger whichTrig,string eventName,real value returns integer
        return s__DamageTrigger_registerTrigger(whichTrig , eventName , value)
    endfunction
    function RegisterDamageEngineEx takes code c,string eventName,real value,integer f returns integer
        return TriggerRegisterDamageEngineEx(s__DamageTrigger__staticgetindex(c) , eventName , value , f)
    endfunction
    //Similar to TriggerRegisterDamageEvent, although takes code instead of trigger as the first argument.
    function RegisterDamageEngine takes code c,string eventName,real value returns integer
        return RegisterDamageEngineEx(c , eventName , value , DamageEngine_FILTER_OTHER)
    endfunction
    //For GUI to tap into more powerful vJass event filtering:

//library DamageEngine ends
//===========================================================================
// 
// Slalom Wars 1.7
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Map Author: Daffa the Mage
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    local integer i= 0
    set udg_Reward=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_BountyBonus[i]=0
        set i=i + 1
    endloop

    set udg_SkillLoop=0
    set udg_MaxSwitchSkill=0
    set udg_DummySkillTotal=0
    set udg_DummySkillLoop=0
    set udg_KillerCode=0
    set udg_HeadPriceBonus=0
    set udg_VictimCode=0
    set udg_KillerPower=0
    set udg_VictimPower=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_ItemBuildPrice1[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_ItemBuildPrice2[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_ItemBuildPrice3[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_ItemBuildPrice4[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_ItemBuildPrice5[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_ItemBuildPrice6[i]=0
        set i=i + 1
    endloop

    set udg_Randomizer=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_AIValue[i]=0
        set i=i + 1
    endloop

    set udg_AINumber=0
    set udg_AILoopItem=0
    set udg_AIItemBuyCode=0
    set udg_AIIsRevived=false
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_RevivalTimer[i]=0
        set i=i + 1
    endloop

    set udg_Temp_Loop=0
    set udg_DeadAI=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_LoopExist[i]=false
        set i=i + 1
    endloop

    set udg_AISkillCode=0
    set udg_TotalAIHero=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_IsAISentinel[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_PriceReversed1[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_PriceReversed2[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_PriceReversed3[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_PriceReversed4[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_PriceReversed5[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_PriceReversed6[i]=0
        set i=i + 1
    endloop

    set udg_Sentinel=CreateForce()
    set udg_Scourge=CreateForce()
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_AICash[i]=0
        set i=i + 1
    endloop

    set udg_TempInteger=0
    set udg_TimeForChoosing=CreateTimer()
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_AIRetreating[i]=false
        set i=i + 1
    endloop

    set udg_AncAltar=CreateGroup()
    set udg_FallAltar=CreateGroup()
    set udg_TotalAIHeroSentinel=0
    set udg_TotalAIHeroScourge=0
    set udg_ItemCleanupFlag=false
    set udg_ItemsToClean=0
    set udg_ItemCleanupTimer=CreateTimer()
    set udg_TempInt=0
    set udg_ZSpell_RageGroup=CreateGroup()
    set udg_AIReport=false
    set udg_DarknessEyeGroup=CreateGroup()
    set udg_AIPickHeroStr=""
    set udg_Spell__Interval=0
    set udg_Spell__Filter_AllowEnemy=false
    set udg_Spell__Filter_AllowLiving=false
    set udg_Spell__Filter_AllowHero=false
    set udg_Spell__Filter_AllowNonHero=false
    set udg_Spell__Filter_AllowAlly=false
    set udg_Spell__Filter_AllowDead=false
    set udg_Spell__Filter_AllowFlying=false
    set udg_Spell__Filter_AllowMechanical=false
    set udg_Spell__Filter_AllowStructure=false
    set udg_Spell__Filter_AllowMagicImmune=false
    set udg_Spell__WakeTargets=false
    set udg_Spell__LevelMultiplier=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_Level[i]=0
        set i=i + 1
    endloop

    set udg_Spell__Level=0
    set udg_Spell__Time=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_Time[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_TargetY[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_TargetX[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_TargetGroup[i]=CreateGroup()
        set i=i + 1
    endloop

    set udg_Spell__TargetGroup=CreateGroup()
    set udg_Spell__Running=false
    set udg_Spell__UseTargetGroup=false
    set udg_Spell__Completed=false
    set udg_Spell_i_Timer=CreateTimer()
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_UseTG[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_Completed[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_EventType[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_Linked[i]=false
        set i=i + 1
    endloop

    set udg_Spell__Index=0
    set udg_Spell_i_Recycle=0
    set udg_Spell_i_Instances=0
    set udg_Spell_i_StackN=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_StackRef[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_Stack[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_RecycleList[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_Head[i]=0
        set i=i + 1
    endloop

    set udg_Spell__InRangeGroup=CreateGroup()
    set udg_Spell__InRange=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowAlly[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowDead[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowEnemy[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowFlying[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowHero[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowMagicImmune[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowMechanical[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowNonHero[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowStructure[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AllowLiving[i]=false
        set i=i + 1
    endloop

    set udg_Spell__Channeling=false
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_Channeling[i]=false
        set i=i + 1
    endloop

    set udg_Spell_i_GroupN=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_GroupStack[i]=CreateGroup()
        set i=i + 1
    endloop

    set udg_Spell__InRangeCount=0
    set udg_Spell__Duration=0
    set udg_Spell__DurationPerLevel=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_Duration[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_LastTime[i]=0
        set i=i + 1
    endloop

    set udg_Spell__Expired=false
    set udg_Spell__StartDuration=false
    set udg_Spell__InRangeMax=0
    set udg_Spell__AutoAddTargets=false
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Spell_i_AutoAddTargets[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Dipper_Phases[i]=0
        set i=i + 1
    endloop

    set udg_Tsukuyomi_SFX=""
    set udg_Tsukuyomi_SFX_Dissipate=""
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Tsukuyomi_ActivationTime[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Tsukuyomi_ActiveTime[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Tsukuyomi_Damage[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Tsukuyomi_AoE_Radius[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Tsukuyomi_HPPenalty[i]=0
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Tsukuyomi_MPPenalty[i]=0
        set i=i + 1
    endloop

    set udg_Tsukuyomi_StopOnManaDepletion=false
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_Tsukuyomi_ActiveMode[i]=false
        set i=i + 1
    endloop

    set udg_MaxPlayer=24
    set udg_SentinelSide=0
    set udg_ScourgeSide=0
    set udg_SKILL_HEAVEN_BRACER_EXP=0
    set udg_SKILL_DARK_EYE_COMMON_TRIGGER=0
    set udg_SKILL_DARK_EYE_ULTI_TRIGGER=0
    set udg_SKILL_DARK_EYE_COMMON_COOLDOWN=0
    set udg_SKILL_DARK_EYE_ULTI_COOLDOWN=0
    set udg_SKILL_DARK_EYE_PASSIVE_CHANCE=0
    set udg_SKILL_EXTRA_NORMAL=0
    set udg_SKILL_EXTRA_UPGRADED=0
    set udg_SKILL_NATURE_FORCE_HP_BONUS=0
    set udg_SKILL_DEATH_COIL_DEF_CD=0
    set udg_SKILL_DEATH_COIL_SELF_CD=0
    set udg_PurchasableCounter=0
    set udg_DEVELOPER_MODE=false
    set udg_AIHeroes=CreateGroup()
    set udg_StartingGold=0
    set udg_StartingLumber=0
    set udg_DamageEventArmorPierced=0
    set udg_AfterDamageEvent=0
    set udg_DamageEventOverride=false
    set udg_DamageEvent=0
    set udg_DamageModifierEvent=0
    set udg_DamageEventAmount=0
    set udg_DamageEventPrevAmt=0
    set udg_LethalDamageEvent=0
    set udg_LethalDamageHP=0
    set udg_AOEDamageEvent=0
    set udg_DamageEventAOE=0
    set udg_DamageEventAOEGroup=CreateGroup()
    set udg_DamageEventLevel=0
    set udg_DamageEventType=0
    set udg_NextDamageIsAttack=false
    set udg_NextDamageIsRanged=false
    set udg_NextDamageIsMelee=false
    set udg_NextDamageType=0
    set udg_NextDamageWeaponT=0
    set udg_DamageScalingUser=0
    set udg_DamageScalingWC3=0
    set udg_DamageTypeBlocked=0
    set udg_DamageTypeCriticalStrike=0
    set udg_DamageTypeCode=0
    set udg_DamageTypeExplosive=0
    set udg_DamageTypeHeal=0
    set udg_DamageTypePure=0
    set udg_DamageTypePureExplosive=0
    set udg_DamageTypeReduced=0
    set udg_IsDamageAttack=false
    set udg_IsDamageMelee=false
    set udg_IsDamageRanged=false
    set udg_IsDamageSpell=false
    set udg_IsDamageCode=false
    set udg_DamageFilterAttackT=0
    set udg_DamageFilterDamageT=0
    set udg_DamageFilterType=0
    set udg_DamageFilterMinAmount=0
    set udg_DamageEventArmorT=0
    set udg_ARMOR_TYPE_NONE=0
    set udg_ARMOR_TYPE_FLESH=0
    set udg_ARMOR_TYPE_METAL=0
    set udg_ARMOR_TYPE_WOOD=0
    set udg_ARMOR_TYPE_ETHEREAL=0
    set udg_ARMOR_TYPE_STONE=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_ArmorTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set udg_DamageEventAttackT=0
    set udg_ATTACK_TYPE_SPELLS=0
    set udg_ATTACK_TYPE_NORMAL=0
    set udg_ATTACK_TYPE_PIERCE=0
    set udg_ATTACK_TYPE_SIEGE=0
    set udg_ATTACK_TYPE_MAGIC=0
    set udg_ATTACK_TYPE_CHAOS=0
    set udg_ATTACK_TYPE_HERO=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_AttackTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set udg_DamageEventDamageT=0
    set udg_DAMAGE_TYPE_UNKNOWN=0
    set udg_DAMAGE_TYPE_NORMAL=0
    set udg_DAMAGE_TYPE_ENHANCED=0
    set udg_DAMAGE_TYPE_FIRE=0
    set udg_DAMAGE_TYPE_COLD=0
    set udg_DAMAGE_TYPE_LIGHTNING=0
    set udg_DAMAGE_TYPE_POISON=0
    set udg_DAMAGE_TYPE_DISEASE=0
    set udg_DAMAGE_TYPE_DIVINE=0
    set udg_DAMAGE_TYPE_MAGIC=0
    set udg_DAMAGE_TYPE_SONIC=0
    set udg_DAMAGE_TYPE_ACID=0
    set udg_DAMAGE_TYPE_FORCE=0
    set udg_DAMAGE_TYPE_DEATH=0
    set udg_DAMAGE_TYPE_MIND=0
    set udg_DAMAGE_TYPE_PLANT=0
    set udg_DAMAGE_TYPE_DEFENSIVE=0
    set udg_DAMAGE_TYPE_DEMOLITION=0
    set udg_DAMAGE_TYPE_SLOW_POISON=0
    set udg_DAMAGE_TYPE_SPIRIT_LINK=0
    set udg_DAMAGE_TYPE_SHADOW_STRIKE=0
    set udg_DAMAGE_TYPE_UNIVERSAL=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_DamageTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set udg_DamageEventDefenseT=0
    set udg_DEFENSE_TYPE_LIGHT=0
    set udg_DEFENSE_TYPE_MEDIUM=0
    set udg_DEFENSE_TYPE_HEAVY=0
    set udg_DEFENSE_TYPE_FORTIFIED=0
    set udg_DEFENSE_TYPE_NORMAL=0
    set udg_DEFENSE_TYPE_HERO=0
    set udg_DEFENSE_TYPE_DIVINE=0
    set udg_DEFENSE_TYPE_UNARMORED=0
    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_DefenseTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 1 )
        set udg_WeaponTypeDebugStr[i]=""
        set i=i + 1
    endloop

    set udg_WEAPON_TYPE_NONE=0
    set udg_WEAPON_TYPE_ML_CHOP=0
    set udg_WEAPON_TYPE_MM_CHOP=0
    set udg_WEAPON_TYPE_MH_CHOP=0
    set udg_WEAPON_TYPE_ML_SLICE=0
    set udg_WEAPON_TYPE_MM_SLICE=0
    set udg_WEAPON_TYPE_MH_SLICE=0
    set udg_WEAPON_TYPE_MM_BASH=0
    set udg_WEAPON_TYPE_MH_BASH=0
    set udg_WEAPON_TYPE_MM_STAB=0
    set udg_WEAPON_TYPE_MH_STAB=0
    set udg_WEAPON_TYPE_WL_SLICE=0
    set udg_WEAPON_TYPE_WM_SLICE=0
    set udg_WEAPON_TYPE_WH_SLICE=0
    set udg_WEAPON_TYPE_WL_BASH=0
    set udg_WEAPON_TYPE_WM_BASH=0
    set udg_WEAPON_TYPE_WH_BASH=0
    set udg_WEAPON_TYPE_WL_STAB=0
    set udg_WEAPON_TYPE_WM_STAB=0
    set udg_WEAPON_TYPE_CL_SLICE=0
    set udg_WEAPON_TYPE_CM_SLICE=0
    set udg_WEAPON_TYPE_CH_SLICE=0
    set udg_WEAPON_TYPE_AM_CHOP=0
    set udg_WEAPON_TYPE_RH_BASH=0
    set udg_DamageEventWeaponT=0
    set udg_AssarHeroStats=0
    set udg_LifeAidInt=0
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************

//***************************************************************************
//*
//*  Sound Assets
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_DarkAgents="DarkAgents"
    set gg_snd_Doom="Doom"
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'e000', - 8672.0, 1056.0, 270.000, 'e000')
    set gg_unit_ncop_0041=BlzCreateUnitWithSkin(p, 'ncop', 3776.0, 1600.0, 270.000, 'ncop')
endfunction

//===========================================================================
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ncop_0042=BlzCreateUnitWithSkin(p, 'ncop', 3776.0, 1472.0, 270.000, 'ncop')
    set u=BlzCreateUnitWithSkin(p, 'e000', - 8672.0, 1824.0, 270.000, 'e000')
endfunction

//===========================================================================
function CreateBuildingsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'etrp', - 3296.0, 160.0, 270.000, 'etrp')
    set u=BlzCreateUnitWithSkin(p, 'etrp', - 3296.0, 3040.0, 270.000, 'etrp')
    set u=BlzCreateUnitWithSkin(p, 'etrp', - 6688.0, 1504.0, 270.000, 'etrp')
    set u=BlzCreateUnitWithSkin(p, 'etrp', - 6816.0, - 224.0, 270.000, 'etrp')
    set u=BlzCreateUnitWithSkin(p, 'etrp', - 6880.0, 3936.0, 270.000, 'etrp')
    set u=BlzCreateUnitWithSkin(p, 'etrp', - 8224.0, 1760.0, 270.000, 'etrp')
    set u=BlzCreateUnitWithSkin(p, 'etrp', - 8224.0, 2464.0, 270.000, 'etrp')
    set u=BlzCreateUnitWithSkin(p, 'etrp', - 8224.0, 1120.0, 270.000, 'etrp')
    set u=BlzCreateUnitWithSkin(p, 'emow', - 9248.0, 3232.0, 270.000, 'emow')
    set u=BlzCreateUnitWithSkin(p, 'emow', - 9248.0, 3040.0, 270.000, 'emow')
    set u=BlzCreateUnitWithSkin(p, 'emow', - 9312.0, 608.0, 270.000, 'emow')
    set u=BlzCreateUnitWithSkin(p, 'emow', - 9312.0, 416.0, 270.000, 'emow')
endfunction

//===========================================================================
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ncop_0043=BlzCreateUnitWithSkin(p, 'ncop', 3776.0, 1344.0, 270.000, 'ncop')
    set u=BlzCreateUnitWithSkin(p, 'e000', - 8672.0, 2528.0, 270.000, 'e000')
endfunction

//===========================================================================
function CreateBuildingsForPlayer4 takes nothing returns nothing
    local player p= Player(4)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ncop_0046=BlzCreateUnitWithSkin(p, 'ncop', 4288.0, 1344.0, 270.000, 'ncop')
    set u=BlzCreateUnitWithSkin(p, 'u000', 17120.0, 992.0, 270.000, 'u000')
endfunction

//===========================================================================
function CreateBuildingsForPlayer5 takes nothing returns nothing
    local player p= Player(5)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ncop_0045=BlzCreateUnitWithSkin(p, 'ncop', 4288.0, 1472.0, 270.000, 'ncop')
    set u=BlzCreateUnitWithSkin(p, 'u000', 17056.0, 1760.0, 270.000, 'u000')
endfunction

//===========================================================================
function CreateBuildingsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'uzg1', 11424.0, 480.0, 270.000, 'uzg1')
    set u=BlzCreateUnitWithSkin(p, 'uzg1', 11552.0, 3168.0, 270.000, 'uzg1')
    set u=BlzCreateUnitWithSkin(p, 'uzg1', 15392.0, - 224.0, 270.000, 'uzg1')
    set u=BlzCreateUnitWithSkin(p, 'uzg1', 15456.0, 3168.0, 270.000, 'uzg1')
    set u=BlzCreateUnitWithSkin(p, 'uzg1', 16736.0, 992.0, 270.000, 'uzg1')
    set u=BlzCreateUnitWithSkin(p, 'uzg1', 16672.0, 1760.0, 270.000, 'uzg1')
    set u=BlzCreateUnitWithSkin(p, 'uzg1', 16608.0, 2656.0, 270.000, 'uzg1')
    set u=BlzCreateUnitWithSkin(p, 'uzig', 17696.0, 160.0, 270.000, 'uzig')
    set u=BlzCreateUnitWithSkin(p, 'uzig', 17696.0, 480.0, 270.000, 'uzig')
    set u=BlzCreateUnitWithSkin(p, 'uzig', 17632.0, 2912.0, 270.000, 'uzig')
    set u=BlzCreateUnitWithSkin(p, 'uzig', 17632.0, 3232.0, 270.000, 'uzig')
endfunction

//===========================================================================
function CreateBuildingsForPlayer7 takes nothing returns nothing
    local player p= Player(7)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ncop_0044=BlzCreateUnitWithSkin(p, 'ncop', 4288.0, 1600.0, 270.000, 'ncop')
    set u=BlzCreateUnitWithSkin(p, 'u000', 16992.0, 2592.0, 270.000, 'u000')
endfunction

//===========================================================================
function CreateBuildingsForPlayer8 takes nothing returns nothing
    local player p= Player(8)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'u001', 5216.0, - 608.0, 270.000, 'u001')
    set u=BlzCreateUnitWithSkin(p, 'u001', 6496.0, - 480.0, 270.000, 'u001')
    set u=BlzCreateUnitWithSkin(p, 'u001', 5280.0, 3744.0, 270.000, 'u001')
    set u=BlzCreateUnitWithSkin(p, 'u001', 6432.0, 3552.0, 270.000, 'u001')
    set u=BlzCreateUnitWithSkin(p, 'u006', 7904.0, - 480.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 7968.0, 3552.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 14816.0, 1376.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 15008.0, 1184.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 14816.0, 2080.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 15008.0, 2080.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 14816.0, 1184.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 15008.0, 1376.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 14816.0, 1888.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 15008.0, 1888.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 15200.0, 1888.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 15200.0, 1376.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 15200.0, 2080.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'u006', 15200.0, 1184.0, 270.000, 'u006')
    set u=BlzCreateUnitWithSkin(p, 'h00G', 16192.0, 1728.0, 270.000, 'h00G')
endfunction

//===========================================================================
function CreateBuildingsForPlayer9 takes nothing returns nothing
    local player p= Player(9)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'e001', - 6496.0, 2208.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e008', 3232.0, - 672.0, 270.000, 'e008')
    set u=BlzCreateUnitWithSkin(p, 'e008', 1760.0, - 352.0, 270.000, 'e008')
    set u=BlzCreateUnitWithSkin(p, 'e008', 1824.0, 3360.0, 270.000, 'e008')
    set u=BlzCreateUnitWithSkin(p, 'e008', 3168.0, 3552.0, 270.000, 'e008')
    set u=BlzCreateUnitWithSkin(p, 'e001', 160.0, - 352.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', 160.0, 3296.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6496.0, 1312.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6688.0, 2208.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6688.0, 1312.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6496.0, 1504.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6496.0, 2016.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6688.0, 2016.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6880.0, 1504.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6880.0, 2016.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6880.0, 1312.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 6880.0, 2208.0, 270.000, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'h00F', - 7744.0, 1728.0, 270.000, 'h00F')
endfunction

//===========================================================================
function CreateBuildingsForPlayer10 takes nothing returns nothing
    local player p= Player(10)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'e000', - 8992.0, 1824.0, 270.000, 'e000')
    set gg_unit_ncop_0102=BlzCreateUnitWithSkin(p, 'ncop', 3776.0, 1216.0, 270.000, 'ncop')
endfunction

//===========================================================================
function CreateBuildingsForPlayer11 takes nothing returns nothing
    local player p= Player(11)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'u000', 17440.0, 1760.0, 270.000, 'u000')
    set gg_unit_ncop_0106=BlzCreateUnitWithSkin(p, 'ncop', 4288.0, 1216.0, 270.000, 'ncop')
endfunction

//===========================================================================
function CreateBuildingsForPlayer12 takes nothing returns nothing
    local player p= Player(12)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'u000', 17376.0, 2656.0, 270.000, 'u000')
    set gg_unit_ncop_0107=BlzCreateUnitWithSkin(p, 'ncop', 4288.0, 1088.0, 270.000, 'ncop')
endfunction

//===========================================================================
function CreateBuildingsForPlayer13 takes nothing returns nothing
    local player p= Player(13)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'e000', - 8992.0, 2528.0, 270.000, 'e000')
    set gg_unit_ncop_0103=BlzCreateUnitWithSkin(p, 'ncop', 3776.0, 1088.0, 270.000, 'ncop')
endfunction

//===========================================================================
function CreateBuildingsForPlayer14 takes nothing returns nothing
    local player p= Player(14)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'e000', - 8992.0, 1056.0, 270.000, 'e000')
    set gg_unit_ncop_0104=BlzCreateUnitWithSkin(p, 'ncop', 3776.0, 960.0, 270.000, 'ncop')
endfunction

//===========================================================================
function CreateBuildingsForPlayer15 takes nothing returns nothing
    local player p= Player(15)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'u000', 17440.0, 992.0, 270.000, 'u000')
    set gg_unit_ncop_0105=BlzCreateUnitWithSkin(p, 'ncop', 4288.0, 960.0, 270.000, 'ncop')
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'ngol', - 10816.0, 1856.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'ngol', 19008.0, 1984.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'h000', - 6336.0, 1472.0, 270.000, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h003', - 6208.0, 1472.0, 270.000, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'h002', - 6336.0, 1984.0, 270.000, 'h002')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 6208.0, 1984.0, 270.000, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'nfoh', - 5824.0, 1728.0, 270.000, 'nfoh')
    set u=BlzCreateUnitWithSkin(p, 'h003', 14528.0, 1408.0, 270.000, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'h000', 14656.0, 1408.0, 270.000, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'nfoh', 14208.0, 1600.0, 270.000, 'nfoh')
    set u=BlzCreateUnitWithSkin(p, 'h001', 14528.0, 1856.0, 270.000, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h002', 14656.0, 1856.0, 270.000, 'h002')
    set gg_unit_n001_0040=BlzCreateUnitWithSkin(p, 'n001', 3520.0, 1344.0, 270.000, 'n001')
    set gg_unit_n002_0047=BlzCreateUnitWithSkin(p, 'n002', 4544.0, 1344.0, 270.000, 'n002')
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 10816.0, - 2560.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 10752.0, 5504.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 18944.0, 5440.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 18880.0, - 2048.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 320.0, - 2368.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 2304.0, - 2304.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 4544.0, - 2368.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 6528.0, - 2496.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 7808.0, - 2368.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 7808.0, 5632.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 6400.0, 5504.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 4288.0, 5568.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 2240.0, 5248.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, - 320.0, 5568.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 1728.0, 5568.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 2368.0, - 2368.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 4032.0, 5248.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 4160.0, - 2432.0, 270.000, unitID)
    endif
    set u=BlzCreateUnitWithSkin(p, 'h009', 12736.0, 1600.0, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'h00B', - 6208.0, 2112.0, 270.000, 'h00B')
    set u=BlzCreateUnitWithSkin(p, 'h009', - 4416.0, 1856.0, 270.000, 'h009')
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 6464.0, 5312.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 10624.0, 5248.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 8640.0, 5312.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 12864.0, 5376.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 14912.0, 5376.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 16064.0, 5312.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 16064.0, - 2304.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 14912.0, - 2240.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 12672.0, - 2368.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 10688.0, - 2240.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 8640.0, - 2304.0, 270.000, unitID)
    endif
    set unitID=ChooseRandomNPBuilding()
    if ( unitID != - 1 ) then
        set u=BlzCreateUnitWithSkin(p, unitID, 6400.0, - 2304.0, 270.000, unitID)
    endif
    set u=BlzCreateUnitWithSkin(p, 'h00B', 14528.0, 1984.0, 270.000, 'h00B')
    set u=BlzCreateUnitWithSkin(p, 'h003', 6272.0, 1472.0, 270.000, 'h003')
    set gg_unit_n009_0122=BlzCreateUnitWithSkin(p, 'n009', 4032.0, 1344.0, 270.000, 'n009')
    set u=BlzCreateUnitWithSkin(p, 'h003', 1152.0, 832.0, 270.000, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'h003', 1024.0, 2176.0, 270.000, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'h003', 7232.0, 896.0, 270.000, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'h003', 7168.0, 2112.0, 270.000, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'ngol', - 128.0, 1536.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'ngol', 8640.0, 1664.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'h00H', 14656.0, 1280.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 6336.0, 1344.0, 270.000, 'h00H')
    set gg_unit_h00I_0133=BlzCreateUnitWithSkin(p, 'h00I', - 5824.0, 1472.0, 270.000, 'h00I')
    set gg_unit_h00I_0134=BlzCreateUnitWithSkin(p, 'h00I', 14208.0, 1344.0, 270.000, 'h00I')
    set u=BlzCreateUnitWithSkin(p, 'h00K', 4032.0, 2176.0, 270.000, 'h00K')
    set u=BlzCreateUnitWithSkin(p, 'h00J', - 6208.0, 1344.0, 270.000, 'h00J')
    set u=BlzCreateUnitWithSkin(p, 'h00J', 14528.0, 1280.0, 270.000, 'h00J')
    set u=BlzCreateUnitWithSkin(p, 'h003', 2112.0, 1408.0, 270.000, 'h003')
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer2()
    call CreateBuildingsForPlayer3()
    call CreateBuildingsForPlayer4()
    call CreateBuildingsForPlayer5()
    call CreateBuildingsForPlayer6()
    call CreateBuildingsForPlayer7()
    call CreateBuildingsForPlayer8()
    call CreateBuildingsForPlayer9()
    call CreateBuildingsForPlayer10()
    call CreateBuildingsForPlayer11()
    call CreateBuildingsForPlayer12()
    call CreateBuildingsForPlayer13()
    call CreateBuildingsForPlayer14()
    call CreateBuildingsForPlayer15()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_BOTTOM_HALF=Rect(- 11584.0, - 2912.0, 19840.0, 832.0)
    set gg_rct_Mid=Rect(3552.0, 928.0, 4768.0, 2016.0)
    set gg_rct_NE=Rect(- 8064.0, 1376.0, - 7424.0, 2112.0)
    set gg_rct_NEF=Rect(- 6272.0, 1440.0, - 6048.0, 2016.0)
    set gg_rct_Scourge_1=Rect(16416.0, - 1056.0, 17440.0, - 224.0)
    set gg_rct_Scourge_2=Rect(16512.0, 3872.0, 17536.0, 4704.0)
    set gg_rct_Sentinel_1=Rect(- 9056.0, 3744.0, - 8032.0, 4576.0)
    set gg_rct_Sentinel_2=Rect(- 9152.0, - 1024.0, - 8128.0, - 192.0)
    set gg_rct_SIDE_LEFT=Rect(- 12288.0, - 4096.0, 4224.0, 8192.0)
    set gg_rct_SIDE_RIGHT=Rect(3968.0, - 4096.0, 20480.0, 8192.0)
    set gg_rct_TOP_HALF=Rect(- 11648.0, 2816.0, 19776.0, 6368.0)
    set gg_rct_UF=Rect(14272.0, 1280.0, 14624.0, 1888.0)
    set gg_rct_Undead=Rect(15872.0, 1376.0, 16512.0, 2144.0)
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Core
//
// Default melee game initialization for all players
//===========================================================================
function Trig_Core_Func025A takes nothing returns nothing
    call CreateFogModifierRectBJ(true, GetEnumPlayer(), FOG_OF_WAR_VISIBLE, gg_rct_SIDE_LEFT)
endfunction

function Trig_Core_Func026A takes nothing returns nothing
    call CreateFogModifierRectBJ(true, GetEnumPlayer(), FOG_OF_WAR_VISIBLE, gg_rct_SIDE_RIGHT)
endfunction

function Trig_Core_Func041A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    call SetPlayerMaxHeroesAllowed(1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('E003', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('H007', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('O001', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('O002', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('U002', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('U003', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('U004', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('U005', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('E005', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('E004', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('E002', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('H004', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('H005', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('H006', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('O003', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('O004', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('H008', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('N006', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('N000', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('H00A', 1, GetEnumPlayer())
    call SetPlayerTechMaxAllowedSwap('U00B', 1, GetEnumPlayer())
    // HUMAN
    call SetPlayerTechResearchedSwap('Rhse', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhme', 3, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhra', 3, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhar', 3, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhla', 3, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhst', 2, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhpt', 2, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhde', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhhb', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhan', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhgb', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhri', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhfl', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhss', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhrt', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhfc', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhfs', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rhcd', 1, udg_Temp_Player)
    // ORC
    call SetPlayerTechResearchedSwap('Rome', 3, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rora', 3, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Roar', 3, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rorb', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Robk', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Robf', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rolf', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rotr', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rovs', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Roen', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Robs', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rows', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Ropg', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rwdm', 1, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rost', 2, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rowt', 2, udg_Temp_Player)
    call SetPlayerTechResearchedSwap('Rowd', 2, udg_Temp_Player)
endfunction

function Trig_Core_Func080Func001Func003A takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

function Trig_Core_Func080Func001C takes nothing returns boolean
    if ( not ( GetPlayerSlotState(ConvertedPlayer(udg_Temp_Loop)) == PLAYER_SLOT_STATE_EMPTY ) ) then
        return false
    endif
    return true
endfunction

function Trig_Core_Func083Func004C takes nothing returns boolean
    if ( not ( GetPlayerController(GetEnumPlayer()) == MAP_CONTROL_USER ) ) then
        return false
    endif
    return true
endfunction

function Trig_Core_Func083Func005C takes nothing returns boolean
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(6) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Core_Func083A takes nothing returns nothing
    call SetPlayerColorBJ(GetEnumPlayer(), PLAYER_COLOR_COAL, true)
    call TriggerRegisterPlayerSelectionEventBJ(gg_trg_Selection_Circle_Off, GetEnumPlayer(), false)
    call TriggerRegisterPlayerSelectionEventBJ(gg_trg_Selection_Circle_On, GetEnumPlayer(), true)
    if ( Trig_Core_Func083Func004C() ) then
        call SetPlayerUnitAvailableBJ('u00D', false, GetEnumPlayer())
        call SetPlayerUnitAvailableBJ('u007', false, GetEnumPlayer())
        call SetPlayerUnitAvailableBJ('e00D', false, GetEnumPlayer())
        call SetPlayerUnitAvailableBJ('e009', false, GetEnumPlayer())
        call SetPlayerUnitAvailableBJ('e00A', false, GetEnumPlayer())
        call SetPlayerUnitAvailableBJ('e00C', false, GetEnumPlayer())
    else
    endif
    if ( Trig_Core_Func083Func005C() ) then
        call SetPlayerStateBJ(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD, 0)
        call SetPlayerStateBJ(udg_Temp_Player, PLAYER_STATE_RESOURCE_LUMBER, 0)
    else
    endif
endfunction

function Trig_Core_Func084A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    call SetPlayerStateBJ(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD, ( udg_StartingGold / udg_SentinelSide ))
    call SetPlayerStateBJ(udg_Temp_Player, PLAYER_STATE_RESOURCE_LUMBER, ( udg_StartingLumber / udg_SentinelSide ))
endfunction

function Trig_Core_Func085A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    call SetPlayerStateBJ(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD, ( udg_StartingGold / udg_ScourgeSide ))
    call SetPlayerStateBJ(udg_Temp_Player, PLAYER_STATE_RESOURCE_LUMBER, ( udg_StartingLumber / udg_ScourgeSide ))
endfunction

function Trig_Core_Actions takes nothing returns nothing
    set udg_StartingGold=6000
    set udg_StartingLumber=6000
    call EndThematicMusicBJ()
    call PlayMusicBJ(gg_snd_DarkAgents)
    // Variable Setup
    set udg_Player=GetLocalPlayer()
    set udg_Scourge=CreateForce()
    set udg_Sentinel=CreateForce()
    // Variables
    // Sentinel
    call ForceAddPlayerSimple(Player(0), udg_Sentinel)
    call ForceAddPlayerSimple(Player(1), udg_Sentinel)
    call ForceAddPlayerSimple(Player(3), udg_Sentinel)
    call ForceAddPlayerSimple(Player(10), udg_Sentinel)
    call ForceAddPlayerSimple(Player(13), udg_Sentinel)
    call ForceAddPlayerSimple(Player(14), udg_Sentinel)
    // Scourge
    call ForceAddPlayerSimple(Player(4), udg_Scourge)
    call ForceAddPlayerSimple(Player(5), udg_Scourge)
    call ForceAddPlayerSimple(Player(7), udg_Scourge)
    call ForceAddPlayerSimple(Player(11), udg_Scourge)
    call ForceAddPlayerSimple(Player(12), udg_Scourge)
    call ForceAddPlayerSimple(Player(15), udg_Scourge)
    // Side Vision
    call ForForce(udg_Sentinel, function Trig_Core_Func025A)
    call ForForce(udg_Scourge, function Trig_Core_Func026A)
    // Circle
    set udg_Circle[1]=gg_unit_ncop_0041
    set udg_Circle[2]=gg_unit_ncop_0042
    set udg_Circle[4]=gg_unit_ncop_0043
    set udg_Circle[5]=gg_unit_ncop_0046
    set udg_Circle[6]=gg_unit_ncop_0045
    set udg_Circle[8]=gg_unit_ncop_0044
    set udg_Circle[11]=gg_unit_ncop_0102
    set udg_Circle[12]=gg_unit_ncop_0106
    set udg_Circle[13]=gg_unit_ncop_0107
    set udg_Circle[14]=gg_unit_ncop_0103
    set udg_Circle[15]=gg_unit_ncop_0104
    set udg_Circle[16]=gg_unit_ncop_0105
    // Melee
    call ForForce(GetPlayersAll(), function Trig_Core_Func041A)
    call MeleeStartingVisibility()
    call MeleeStartingHeroLimit()
    call MeleeClearExcessUnits()
    call MeleeStartingUnitsForPlayer(RACE_NIGHTELF, Player(2), GetPlayerStartLocationLoc(Player(2)), true)
    call MeleeStartingUnitsForPlayer(RACE_UNDEAD, Player(6), GetPlayerStartLocationLoc(Player(6)), true)
    // AI
    call StartMeleeAI(Player(2), "elf.ai")
    call StartMeleeAI(Player(6), "undead.ai")
    // Players
    call SetPlayerMaxHeroesAllowed(1, Player(0))
    call SetPlayerMaxHeroesAllowed(1, Player(1))
    call SetPlayerMaxHeroesAllowed(1, Player(3))
    call SetPlayerMaxHeroesAllowed(1, Player(4))
    call SetPlayerMaxHeroesAllowed(1, Player(5))
    call SetPlayerMaxHeroesAllowed(1, Player(7))
    call SetPlayerMaxHeroesAllowed(1, Player(10))
    call SetPlayerMaxHeroesAllowed(1, Player(11))
    call SetPlayerMaxHeroesAllowed(1, Player(12))
    call SetPlayerMaxHeroesAllowed(1, Player(13))
    call SetPlayerMaxHeroesAllowed(1, Player(14))
    call SetPlayerMaxHeroesAllowed(1, Player(15))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(2), Player(0))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(2), Player(1))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(2), Player(3))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(2), Player(10))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(2), Player(13))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(2), Player(14))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(6), Player(4))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(6), Player(5))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(6), Player(7))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(6), Player(11))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(6), Player(12))
    call SetPlayerTaxRateBJ(10, PLAYER_STATE_RESOURCE_GOLD, Player(6), Player(15))
    call SetPlayerFlagBJ(PLAYER_STATE_GIVES_BOUNTY, true, Player(2))
    call SetPlayerFlagBJ(PLAYER_STATE_GIVES_BOUNTY, true, Player(6))
    call SetPlayerFlagBJ(PLAYER_STATE_GIVES_BOUNTY, true, Player(8))
    call SetPlayerFlagBJ(PLAYER_STATE_GIVES_BOUNTY, true, Player(9))
    set udg_Temp_Loop=1
    loop
        exitwhen udg_Temp_Loop > 24
        if ( Trig_Core_Func080Func001C() ) then
            call ForceRemovePlayerSimple(ConvertedPlayer(udg_Temp_Loop), udg_Scourge)
            call ForceRemovePlayerSimple(ConvertedPlayer(udg_Temp_Loop), udg_Sentinel)
            call ForGroupBJ(GetUnitsOfPlayerAll(ConvertedPlayer(udg_Temp_Loop)), function Trig_Core_Func080Func001Func003A)
        else
        endif
        set udg_Temp_Loop=udg_Temp_Loop + 1
    endloop
    set udg_SentinelSide=CountPlayersInForceBJ(udg_Sentinel)
    set udg_ScourgeSide=CountPlayersInForceBJ(udg_Scourge)
    call ForForce(GetPlayersAll(), function Trig_Core_Func083A)
    call ForForce(udg_Sentinel, function Trig_Core_Func084A)
    call ForForce(udg_Scourge, function Trig_Core_Func085A)
    call SetPlayerColorBJ(Player(2), PLAYER_COLOR_BLUE, true)
    call SetPlayerColorBJ(Player(9), PLAYER_COLOR_CYAN, true)
    call SetPlayerColorBJ(Player(6), PLAYER_COLOR_GREEN, true)
    call SetPlayerColorBJ(Player(8), PLAYER_COLOR_PURPLE, true)
    call SetPlayerColorBJ(Player(PLAYER_NEUTRAL_PASSIVE), PLAYER_COLOR_ORANGE, true)
    call SetPlayerOnScoreScreenBJ(false, Player(2))
    call SetPlayerOnScoreScreenBJ(false, Player(6))
    call SetPlayerOnScoreScreenBJ(false, Player(8))
    call SetPlayerOnScoreScreenBJ(false, Player(9))
    call SetTimeOfDay(6.00)
    call EnableSelect(true, false)
    // Spawn
    set udg_ScourgeSpawnType[1]='u007'
    set udg_ScourgeSpawnType[2]='e00D'
    set udg_ScourgeSpawnType[3]='u00D'
    // Spawn
    set udg_SentinelSpawnType[1]='e00A'
    set udg_SentinelSpawnType[2]='e009'
    set udg_SentinelSpawnType[3]='e00C'
endfunction

//===========================================================================
function InitTrig_Core takes nothing returns nothing
    set gg_trg_Core=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Core, 0.00)
    call TriggerAddAction(gg_trg_Core, function Trig_Core_Actions)
endfunction

//===========================================================================
// Trigger: Ability Cast
//===========================================================================
function Trig_Ability_Cast_Conditions takes nothing returns boolean
    if ( not ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetTriggerUnit()) != Player(2) ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetTriggerUnit()) != Player(6) ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetTriggerUnit()) != Player(8) ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetTriggerUnit()) != Player(9) ) ) then
        return false
    endif
    if ( not ( GetSpellAbilityId() != 'AIh2' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Ability_Cast_Func001C takes nothing returns boolean
    if ( not ( IsPlayerAlly(GetTriggerPlayer(), Player(2)) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Ability_Cast_Actions takes nothing returns nothing
    if ( Trig_Ability_Cast_Func001C() ) then
        call CreateTextTagUnitBJ(GetAbilityName(GetSpellAbilityId()), GetTriggerUnit(), 0, 10, 0.00, 0.00, 100, 0)
    else
        call CreateTextTagUnitBJ(GetAbilityName(GetSpellAbilityId()), GetTriggerUnit(), 0, 10, 0.00, 100.00, 0.00, 0)
    endif
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 3.00)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 6.00)
endfunction

//===========================================================================
function InitTrig_Ability_Cast takes nothing returns nothing
    set gg_trg_Ability_Cast=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Ability_Cast, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Ability_Cast, Condition(function Trig_Ability_Cast_Conditions))
    call TriggerAddAction(gg_trg_Ability_Cast, function Trig_Ability_Cast_Actions)
endfunction

//===========================================================================
// Trigger: Quest Log
//===========================================================================
function Trig_Quest_Log_Actions takes nothing returns nothing
    call FlashQuestDialogButtonBJ()
    // Change List
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_6610", "TRIGSTR_6611", "ReplaceableTextures\\CommandButtons\\BTNArcane.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_6390", "TRIGSTR_6391", "ReplaceableTextures\\CommandButtons\\BTNArcane.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_5861", "TRIGSTR_5862", "ReplaceableTextures\\CommandButtons\\BTNArcane.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_5859", "TRIGSTR_5860", "ReplaceableTextures\\CommandButtons\\BTNHeroFarseer.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_5577", "TRIGSTR_5578", "ReplaceableTextures\\CommandButtons\\BTNSkeletonWarrior.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_5281", "TRIGSTR_5282", "ReplaceableTextures\\CommandButtons\\BTNEyeOfDarkness64.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_4823", "TRIGSTR_4824", "ReplaceableTextures\\CommandButtons\\BTNEyeOfDarkness64.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_4145", "TRIGSTR_4146", "ReplaceableTextures\\CommandButtons\\BTNArcane.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_4687", "TRIGSTR_4688", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_4243", "TRIGSTR_4244", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_3914", "TRIGSTR_3915", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_3704", "TRIGSTR_3705", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_3487", "TRIGSTR_3488", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_3077", "TRIGSTR_3078", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_844", "TRIGSTR_845", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_514", "TRIGSTR_515", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_311", "TRIGSTR_312", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_221", "TRIGSTR_222", "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp")
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_266", "TRIGSTR_267", "ReplaceableTextures\\CommandButtons\\BTNUndeadShrine.blp")
    // Credits
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_264", "TRIGSTR_265", "ReplaceableTextures\\CommandButtons\\BTNAvengingWatcher.blp")
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_313", "TRIGSTR_314", "ReplaceableTextures\\CommandButtons\\BTNWarden2.blp")
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_4955", "TRIGSTR_4956", "ReplaceableTextures\\CommandButtons\\BTNTaurenTotem.blp")
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_395", "TRIGSTR_396", "ReplaceableTextures\\CommandButtons\\BTNTaurenTotem.blp")
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_501", "TRIGSTR_502", "ReplaceableTextures\\CommandButtons\\BTNSpiritOfVengeance.blp")
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_4241", "TRIGSTR_4242", "ReplaceableTextures\\CommandButtons\\BTNArcane.blp")
endfunction

//===========================================================================
function InitTrig_Quest_Log takes nothing returns nothing
    set gg_trg_Quest_Log=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Quest_Log, 10.00)
    call TriggerAddAction(gg_trg_Quest_Log, function Trig_Quest_Log_Actions)
endfunction

//===========================================================================
// Trigger: Spawn Right1
//===========================================================================
function Trig_Spawn_Right1_Func010Func001C takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnumUnit()) == udg_Temp_Player ) ) then
        return false
    endif
    return true
endfunction

function Trig_Spawn_Right1_Func010A takes nothing returns nothing
    if ( Trig_Spawn_Right1_Func010Func001C() ) then
        call SetUnitMoveSpeed(GetEnumUnit(), 522.00)
        call IssuePointOrderLocBJ(GetEnumUnit(), "attack", udg_Temp_Point_2)
    else
    endif
endfunction

function Trig_Spawn_Right1_Actions takes nothing returns nothing
    set udg_Temp_Player=Player(8)
    set udg_Temp_Reg=gg_rct_Scourge_1
    set udg_Temp_Reg_2=gg_rct_NE
    set udg_Temp_Point=GetRectCenter(udg_Temp_Reg)
    set udg_Temp_Point_2=GetRectCenter(udg_Temp_Reg_2)
    call CreateNUnitsAtLoc(3, udg_ScourgeSpawnType[1], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, udg_ScourgeSpawnType[2], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, udg_ScourgeSpawnType[3], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(udg_Temp_Reg), function Trig_Spawn_Right1_Func010A)
    call RemoveLocation(udg_Temp_Point)
    call RemoveLocation(udg_Temp_Point_2)
endfunction

//===========================================================================
function InitTrig_Spawn_Right1 takes nothing returns nothing
    set gg_trg_Spawn_Right1=CreateTrigger()
    call DisableTrigger(gg_trg_Spawn_Right1)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Spawn_Right1, 20.00)
    call TriggerAddAction(gg_trg_Spawn_Right1, function Trig_Spawn_Right1_Actions)
endfunction

//===========================================================================
// Trigger: Spawn Right2
//===========================================================================
function Trig_Spawn_Right2_Func010Func001C takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnumUnit()) == udg_Temp_Player ) ) then
        return false
    endif
    return true
endfunction

function Trig_Spawn_Right2_Func010A takes nothing returns nothing
    if ( Trig_Spawn_Right2_Func010Func001C() ) then
        call SetUnitMoveSpeed(GetEnumUnit(), 522.00)
        call IssuePointOrderLocBJ(GetEnumUnit(), "attack", udg_Temp_Point_2)
    else
    endif
endfunction

function Trig_Spawn_Right2_Actions takes nothing returns nothing
    set udg_Temp_Player=Player(8)
    set udg_Temp_Reg=gg_rct_Scourge_2
    set udg_Temp_Reg_2=gg_rct_NE
    set udg_Temp_Point=GetRectCenter(udg_Temp_Reg)
    set udg_Temp_Point_2=GetRectCenter(udg_Temp_Reg_2)
    call CreateNUnitsAtLoc(3, udg_ScourgeSpawnType[1], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, udg_ScourgeSpawnType[2], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, udg_ScourgeSpawnType[3], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(udg_Temp_Reg), function Trig_Spawn_Right2_Func010A)
    call RemoveLocation(udg_Temp_Point)
    call RemoveLocation(udg_Temp_Point_2)
endfunction

//===========================================================================
function InitTrig_Spawn_Right2 takes nothing returns nothing
    set gg_trg_Spawn_Right2=CreateTrigger()
    call DisableTrigger(gg_trg_Spawn_Right2)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Spawn_Right2, 20.00)
    call TriggerAddAction(gg_trg_Spawn_Right2, function Trig_Spawn_Right2_Actions)
endfunction

//===========================================================================
// Trigger: Spawn Left1
//===========================================================================
function Trig_Spawn_Left1_Func011Func001C takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnumUnit()) == udg_Temp_Player ) ) then
        return false
    endif
    return true
endfunction

function Trig_Spawn_Left1_Func011A takes nothing returns nothing
    if ( Trig_Spawn_Left1_Func011Func001C() ) then
        call SetUnitMoveSpeed(GetEnumUnit(), 522.00)
        call IssuePointOrderLocBJ(GetEnumUnit(), "attack", udg_Temp_Point_2)
    else
    endif
endfunction

function Trig_Spawn_Left1_Actions takes nothing returns nothing
    set udg_Temp_Player=Player(9)
    set udg_Temp_Reg=gg_rct_Sentinel_1
    set udg_Temp_Reg_2=gg_rct_Undead
    set udg_Temp_Point=GetRectCenter(udg_Temp_Reg)
    set udg_Temp_Point_2=GetRectCenter(udg_Temp_Reg_2)
    call CreateNUnitsAtLoc(3, udg_SentinelSpawnType[1], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, udg_SentinelSpawnType[2], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, udg_SentinelSpawnType[3], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(udg_Temp_Reg), function Trig_Spawn_Left1_Func011A)
    call RemoveLocation(udg_Temp_Point)
    call RemoveLocation(udg_Temp_Point_2)
endfunction

//===========================================================================
function InitTrig_Spawn_Left1 takes nothing returns nothing
    set gg_trg_Spawn_Left1=CreateTrigger()
    call DisableTrigger(gg_trg_Spawn_Left1)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Spawn_Left1, 20.00)
    call TriggerAddAction(gg_trg_Spawn_Left1, function Trig_Spawn_Left1_Actions)
endfunction

//===========================================================================
// Trigger: Spawn Left2
//===========================================================================
function Trig_Spawn_Left2_Func011Func001C takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnumUnit()) == udg_Temp_Player ) ) then
        return false
    endif
    return true
endfunction

function Trig_Spawn_Left2_Func011A takes nothing returns nothing
    if ( Trig_Spawn_Left2_Func011Func001C() ) then
        call SetUnitMoveSpeed(GetEnumUnit(), 522.00)
        call IssuePointOrderLocBJ(GetEnumUnit(), "attack", udg_Temp_Point_2)
    else
    endif
endfunction

function Trig_Spawn_Left2_Actions takes nothing returns nothing
    set udg_Temp_Player=Player(9)
    set udg_Temp_Reg=gg_rct_Sentinel_2
    set udg_Temp_Reg_2=gg_rct_Undead
    set udg_Temp_Point=GetRectCenter(udg_Temp_Reg)
    set udg_Temp_Point_2=GetRectCenter(udg_Temp_Reg_2)
    call CreateNUnitsAtLoc(3, udg_SentinelSpawnType[1], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    call CreateNUnitsAtLoc(2, udg_SentinelSpawnType[2], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    call CreateNUnitsAtLoc(1, udg_SentinelSpawnType[3], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(udg_Temp_Reg), function Trig_Spawn_Left2_Func011A)
    call RemoveLocation(udg_Temp_Point)
    call RemoveLocation(udg_Temp_Point_2)
endfunction

//===========================================================================
function InitTrig_Spawn_Left2 takes nothing returns nothing
    set gg_trg_Spawn_Left2=CreateTrigger()
    call DisableTrigger(gg_trg_Spawn_Left2)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Spawn_Left2, 20.00)
    call TriggerAddAction(gg_trg_Spawn_Left2, function Trig_Spawn_Left2_Actions)
endfunction

//===========================================================================
// Trigger: Hero Bounty
//===========================================================================
function Trig_Hero_Bounty_Conditions takes nothing returns boolean
    if ( not ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not ( IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetKillingUnitBJ())) == true ) ) then
        return false
    endif
    if ( not ( UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01D') == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func010C takes nothing returns boolean
    if ( not ( IsUnitType(udg_Killer, UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func012Func005Func001C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A006', udg_Killer) == 2 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func012Func005C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A006', udg_Killer) == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func012Func006Func001C takes nothing returns boolean
    if ( not ( GetPlayerTechCountSimple('R000', GetOwningPlayer(udg_Killer)) == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func012Func006C takes nothing returns boolean
    if ( not ( GetUnitTypeId(udg_Killer) == 'E002' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func012Func009Func001Func002C takes nothing returns boolean
    if ( not ( udg_KillerPower > udg_VictimPower ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func012Func009Func001C takes nothing returns boolean
    if ( not ( IsUnitType(udg_Killer, UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func012Func009C takes nothing returns boolean
    if ( not ( udg_PlayerKiller != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_PlayerKiller != Player(6) ) ) then
        return false
    endif
    if ( not ( udg_PlayerKiller != Player(8) ) ) then
        return false
    endif
    if ( not ( udg_PlayerKiller != Player(9) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Func012C takes nothing returns boolean
    if ( not ( udg_PlayerKilled != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_PlayerKilled != Player(6) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Bounty_Actions takes nothing returns nothing
    // Victim Data
    set udg_Victim=GetTriggerUnit()
    set udg_PlayerKilled=GetTriggerPlayer()
    set udg_VictimCode=GetConvertedPlayerId(udg_PlayerKilled)
    set udg_VictimPower=GetHeroLevel(udg_Victim)
    // Victim Data
    set udg_Killer=GetKillingUnitBJ()
    set udg_PlayerKiller=GetOwningPlayer(udg_Killer)
    set udg_KillerCode=GetConvertedPlayerId(udg_PlayerKiller)
    if ( Trig_Hero_Bounty_Func010C() ) then
        set udg_KillerPower=GetHeroLevel(udg_Killer)
    else
        set udg_KillerPower=GetUnitLevel(udg_Killer)
    endif
    // Give Golds
    if ( Trig_Hero_Bounty_Func012C() ) then
        set udg_Reward=( ( 50 * udg_VictimPower ) + udg_BountyBonus[udg_VictimCode] )
        // Modifiers Here
        if ( Trig_Hero_Bounty_Func012Func005C() ) then
            set udg_Reward=( ( udg_Reward * 13 ) / 10 )
        else
            if ( Trig_Hero_Bounty_Func012Func005Func001C() ) then
                set udg_Reward=( ( udg_Reward * 16 ) / 10 )
            else
            endif
        endif
        if ( Trig_Hero_Bounty_Func012Func006C() ) then
            if ( Trig_Hero_Bounty_Func012Func006Func001C() ) then
                set udg_Reward=( ( 11 / 10 ) * udg_Reward )
            else
            endif
        else
        endif
        call AdjustPlayerStateBJ(udg_Reward, udg_PlayerKiller, PLAYER_STATE_RESOURCE_GOLD)
        call DisplayTextToForce(GetPlayersAll(), ( GetPlayerName(udg_PlayerKiller) + ( " has killed " + ( GetPlayerName(udg_PlayerKilled) + ( " and received " + ( I2S(udg_Reward) + " golds!" ) ) ) ) ))
        if ( Trig_Hero_Bounty_Func012Func009C() ) then
            if ( Trig_Hero_Bounty_Func012Func009Func001C() ) then
                if ( Trig_Hero_Bounty_Func012Func009Func001Func002C() ) then
                    set udg_HeadPriceBonus=( ( udg_Reward * udg_KillerPower ) / udg_VictimPower )
                else
                    set udg_HeadPriceBonus=udg_Reward
                endif
            else
                set udg_HeadPriceBonus=udg_Reward
            endif
            call DisplayTextToForce(GetPlayersAll(), ( GetPlayerName(udg_PlayerKiller) + ( " bounty increased by " + ( I2S(udg_HeadPriceBonus) + " golds!" ) ) ))
            set udg_BountyBonus[udg_KillerCode]=( udg_BountyBonus[udg_KillerCode] + udg_HeadPriceBonus )
        else
        endif
        set udg_BountyBonus[udg_VictimCode]=0
    else
    endif
endfunction

//===========================================================================
function InitTrig_Hero_Bounty takes nothing returns nothing
    set gg_trg_Hero_Bounty=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hero_Bounty, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Hero_Bounty, Condition(function Trig_Hero_Bounty_Conditions))
    call TriggerAddAction(gg_trg_Hero_Bounty, function Trig_Hero_Bounty_Actions)
endfunction

//===========================================================================
// Trigger: Hero Unit Enters Map
//===========================================================================
function Trig_Hero_Unit_Enters_Map_Func003Func001C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_UNDEAD ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Unit_Enters_Map_Func003Func009C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_UNDEAD ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Unit_Enters_Map_Func003Func011C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A02Z', udg_Temp_Unit) > 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Unit_Enters_Map_Func003C takes nothing returns boolean
    if ( not ( IsUnitType(udg_Temp_Unit, UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Unit_Enters_Map_Actions takes nothing returns nothing
    set udg_Temp_Unit=GetSoldUnit()
    set udg_Temp_Player=GetOwningPlayer(udg_Temp_Unit)
    if ( Trig_Hero_Unit_Enters_Map_Func003C() ) then
        call DisplayTextToForce(GetPlayersAll(), ( GetUnitName(udg_Temp_Unit) + ( " has been chosen by " + GetPlayerName(udg_Temp_Player) ) ))
        set udg_PlayerHero[GetConvertedPlayerId(udg_Temp_Player)]=udg_Temp_Unit
        call RemoveUnit(udg_Circle[GetConvertedPlayerId(udg_Temp_Player)])
        if ( Trig_Hero_Unit_Enters_Map_Func003Func009C() ) then
            call SetUnitPositionLoc(udg_Temp_Unit, GetRectCenter(gg_rct_UF))
            call PanCameraToTimedLocForPlayer(udg_Temp_Player, GetRectCenter(gg_rct_UF), 0)
        else
            call SetUnitPositionLoc(udg_Temp_Unit, GetRectCenter(gg_rct_NEF))
            call PanCameraToTimedLocForPlayer(udg_Temp_Player, GetRectCenter(gg_rct_NEF), 0)
        endif
        // Eye of Darkness Special
        if ( Trig_Hero_Unit_Enters_Map_Func003Func011C() ) then
            call GroupAddUnitSimple(udg_Temp_Unit, udg_DarknessEyeGroup)
        else
        endif
    else
        if ( Trig_Hero_Unit_Enters_Map_Func003Func001C() ) then
            call SetUnitOwner(udg_Temp_Unit, Player(8), true)
            set udg_Temp_Reg_2=gg_rct_NE
        else
            call SetUnitOwner(udg_Temp_Unit, Player(9), true)
            set udg_Temp_Reg_2=gg_rct_Undead
        endif
        set udg_Temp_Point_2=GetRectCenter(udg_Temp_Reg_2)
        call IssuePointOrderLocBJ(udg_Temp_Unit, "attack", udg_Temp_Point_2)
        call RemoveLocation(udg_Temp_Point_2)
    endif
endfunction

//===========================================================================
function InitTrig_Hero_Unit_Enters_Map takes nothing returns nothing
    set gg_trg_Hero_Unit_Enters_Map=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hero_Unit_Enters_Map, EVENT_PLAYER_UNIT_SELL)
    call TriggerAddAction(gg_trg_Hero_Unit_Enters_Map, function Trig_Hero_Unit_Enters_Map_Actions)
endfunction

//===========================================================================
// Trigger: Hero Revival
//===========================================================================
function Trig_Hero_Revival_Func002C takes nothing returns boolean
    if ( not ( udg_Temp_Player != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(6) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hero_Revival_Actions takes nothing returns nothing
    set udg_Temp_Player=GetTriggerPlayer()
    if ( Trig_Hero_Revival_Func002C() ) then
        call DisplayTextToForce(GetPlayersAll(), ( GetPlayerName(udg_Temp_Player) + "'s Hero has been revived!" ))
    else
    endif
endfunction

//===========================================================================
function InitTrig_Hero_Revival takes nothing returns nothing
    set gg_trg_Hero_Revival=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hero_Revival, EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerAddAction(gg_trg_Hero_Revival, function Trig_Hero_Revival_Actions)
endfunction

//===========================================================================
// Trigger: Bonus Money
//===========================================================================
function Trig_Bonus_Money_Func003A takes nothing returns nothing
    call AdjustPlayerStateBJ(( GetPlayerState(Player(8), PLAYER_STATE_RESOURCE_GOLD) / CountPlayersInForceBJ(udg_Scourge) ), GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD)
endfunction

function Trig_Bonus_Money_Func004A takes nothing returns nothing
    call AdjustPlayerStateBJ(( GetPlayerState(Player(9), PLAYER_STATE_RESOURCE_GOLD) / CountPlayersInForceBJ(udg_Sentinel) ), GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD)
endfunction

function Trig_Bonus_Money_Actions takes nothing returns nothing
    call DisplayTextToForce(udg_Scourge, ( I2S(GetPlayerState(Player(8), PLAYER_STATE_RESOURCE_GOLD)) + " golds from Undead Reinforcement has been split to all of his allied heroes" ))
    call DisplayTextToForce(udg_Sentinel, ( I2S(GetPlayerState(Player(9), PLAYER_STATE_RESOURCE_GOLD)) + " golds from Elven Reinforcement has been split to all of his allies heroes" ))
    call ForForce(udg_Scourge, function Trig_Bonus_Money_Func003A)
    call ForForce(udg_Sentinel, function Trig_Bonus_Money_Func004A)
    call SetPlayerStateBJ(Player(8), PLAYER_STATE_RESOURCE_GOLD, 0)
    call SetPlayerStateBJ(Player(9), PLAYER_STATE_RESOURCE_GOLD, 0)
endfunction

//===========================================================================
function InitTrig_Bonus_Money takes nothing returns nothing
    set gg_trg_Bonus_Money=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Bonus_Money, 300.00)
    call TriggerAddAction(gg_trg_Bonus_Money, function Trig_Bonus_Money_Actions)
endfunction

//===========================================================================
// Trigger: Resources
//===========================================================================
function Trig_Resources_Func001Func002C takes nothing returns boolean
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    return true
endfunction

function Trig_Resources_Func001A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    if ( Trig_Resources_Func001Func002C() ) then
        call AdjustPlayerStateBJ(udg_AICash[GetConvertedPlayerId(udg_Temp_Player)], udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(udg_AICash[GetConvertedPlayerId(udg_Temp_Player)], udg_Temp_Player, PLAYER_STATE_RESOURCE_LUMBER)
    else
        call AdjustPlayerStateBJ(5, udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        call AdjustPlayerStateBJ(5, udg_Temp_Player, PLAYER_STATE_RESOURCE_LUMBER)
    endif
endfunction

function Trig_Resources_Actions takes nothing returns nothing
    call ForForce(GetPlayersAll(), function Trig_Resources_Func001A)
endfunction

//===========================================================================
function InitTrig_Resources takes nothing returns nothing
    set gg_trg_Resources=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Resources, 1.00)
    call TriggerAddAction(gg_trg_Resources, function Trig_Resources_Actions)
endfunction

//===========================================================================
// Trigger: Selection Circle On
//===========================================================================
function Trig_Selection_Circle_On_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A01A', GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_Selection_Circle_On takes nothing returns nothing
    set gg_trg_Selection_Circle_On=CreateTrigger()
    call TriggerAddAction(gg_trg_Selection_Circle_On, function Trig_Selection_Circle_On_Actions)
endfunction

//===========================================================================
// Trigger: Selection Circle Off
//===========================================================================
function Trig_Selection_Circle_Off_Actions takes nothing returns nothing
    call UnitRemoveAbilityBJ('A01A', GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_Selection_Circle_Off takes nothing returns nothing
    set gg_trg_Selection_Circle_Off=CreateTrigger()
    call TriggerAddAction(gg_trg_Selection_Circle_Off, function Trig_Selection_Circle_Off_Actions)
endfunction

//===========================================================================
// Trigger: Choosing Time
//===========================================================================
function Trig_Choosing_Time_Actions takes nothing returns nothing
    call StartTimerBJ(udg_TimeForChoosing, false, 120.00)
    set udg_TimeForChoosing=GetLastCreatedTimerBJ()
    call CreateTimerDialogBJ(udg_TimeForChoosing, "TRIGSTR_609")
    set udg_SetChoosingWindow=GetLastCreatedTimerDialogBJ()
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_2648")
endfunction

//===========================================================================
function InitTrig_Choosing_Time takes nothing returns nothing
    set gg_trg_Choosing_Time=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Choosing_Time, 0.00)
    call TriggerAddAction(gg_trg_Choosing_Time, function Trig_Choosing_Time_Actions)
endfunction

//===========================================================================
// Trigger: Time Up
//
// 
//===========================================================================
function Trig_Time_Up_Func005A takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

function Trig_Time_Up_Func015Func001Func001A takes nothing returns nothing
    call IssuePointOrderLocBJ(GetEnumUnit(), "attack", GetRectCenter(gg_rct_Mid))
endfunction

function Trig_Time_Up_Func015Func001C takes nothing returns boolean
    if ( not ( GetPlayerController(GetEnumPlayer()) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    if ( not ( GetEnumPlayer() != Player(2) ) ) then
        return false
    endif
    if ( not ( GetEnumPlayer() != Player(6) ) ) then
        return false
    endif
    if ( not ( GetEnumPlayer() != Player(8) ) ) then
        return false
    endif
    if ( not ( GetEnumPlayer() != Player(9) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Time_Up_Func015A takes nothing returns nothing
    if ( Trig_Time_Up_Func015Func001C() ) then
        call ForGroupBJ(GetUnitsOfPlayerAll(GetEnumPlayer()), function Trig_Time_Up_Func015Func001Func001A)
    else
    endif
endfunction

function Trig_Time_Up_Actions takes nothing returns nothing
    call EndThematicMusicBJ()
    call PlayMusicBJ(gg_snd_Doom)
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_610")
    call DestroyTimerDialogBJ(udg_SetChoosingWindow)
    call ForGroupBJ(GetUnitsOfTypeIdAll('ncop'), function Trig_Time_Up_Func005A)
    call RemoveUnit(gg_unit_n002_0047)
    call RemoveUnit(gg_unit_n001_0040)
    call RemoveUnit(gg_unit_n009_0122)
    call EnableTrigger(gg_trg_AI_Upgrades)
    call EnableTrigger(gg_trg_Spawn_Left1)
    call EnableTrigger(gg_trg_Spawn_Left2)
    call EnableTrigger(gg_trg_Spawn_Right1)
    call EnableTrigger(gg_trg_Spawn_Right2)
    call EnableTrigger(gg_trg_Hero_Bounty_Rise)
    call ForForce(GetPlayersAll(), function Trig_Time_Up_Func015A)
endfunction

//===========================================================================
function InitTrig_Time_Up takes nothing returns nothing
    set gg_trg_Time_Up=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_Time_Up, udg_TimeForChoosing)
    call TriggerAddAction(gg_trg_Time_Up, function Trig_Time_Up_Actions)
endfunction

//===========================================================================
// Trigger: Only One
//===========================================================================
function Trig_Only_One_Func001C takes nothing returns boolean
    if ( ( GetResearched() == 'R006' ) ) then
        return true
    endif
    if ( ( GetResearched() == 'R005' ) ) then
        return true
    endif
    return false
endfunction

function Trig_Only_One_Conditions takes nothing returns boolean
    if ( not Trig_Only_One_Func001C() ) then
        return false
    endif
    return true
endfunction

function Trig_Only_One_Func002Func001C takes nothing returns boolean
    if ( not ( IsPlayerAlly(GetEnumPlayer(), GetTriggerPlayer()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Only_One_Func002A takes nothing returns nothing
    if ( Trig_Only_One_Func002Func001C() ) then
        call SetPlayerTechMaxAllowedSwap(GetResearched(), 0, GetEnumPlayer())
    else
    endif
endfunction

function Trig_Only_One_Actions takes nothing returns nothing
    call ForForce(GetPlayersAll(), function Trig_Only_One_Func002A)
endfunction

//===========================================================================
function InitTrig_Only_One takes nothing returns nothing
    set gg_trg_Only_One=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Only_One, EVENT_PLAYER_UNIT_RESEARCH_START)
    call TriggerAddCondition(gg_trg_Only_One, Condition(function Trig_Only_One_Conditions))
    call TriggerAddAction(gg_trg_Only_One, function Trig_Only_One_Actions)
endfunction

//===========================================================================
// Trigger: Creep Boost
//===========================================================================
function Trig_Creep_Boost_Conditions takes nothing returns boolean
    if ( not ( GetResearched() == 'R005' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Creep_Boost_Func004Func001C takes nothing returns boolean
    if ( not ( IsPlayerAlly(GetEnumPlayer(), GetTriggerPlayer()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Creep_Boost_Func004A takes nothing returns nothing
    if ( Trig_Creep_Boost_Func004Func001C() ) then
        call SetPlayerTechMaxAllowedSwap('R005', 100, GetEnumPlayer())
        call SetPlayerTechResearchedSwap('R005', udg_TempInt, GetEnumPlayer())
    else
    endif
endfunction

function Trig_Creep_Boost_Actions takes nothing returns nothing
    set udg_TempInt=GetPlayerTechCountSimple('R005', GetTriggerPlayer())
    call ForForce(GetPlayersAll(), function Trig_Creep_Boost_Func004A)
endfunction

//===========================================================================
function InitTrig_Creep_Boost takes nothing returns nothing
    set gg_trg_Creep_Boost=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Creep_Boost, EVENT_PLAYER_UNIT_RESEARCH_FINISH)
    call TriggerAddCondition(gg_trg_Creep_Boost, Condition(function Trig_Creep_Boost_Conditions))
    call TriggerAddAction(gg_trg_Creep_Boost, function Trig_Creep_Boost_Actions)
endfunction

//===========================================================================
// Trigger: Handicap Boost
//===========================================================================
function Trig_Handicap_Boost_Conditions takes nothing returns boolean
    if ( not ( GetResearched() == 'R006' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Handicap_Boost_Func004Func001C takes nothing returns boolean
    if ( not ( IsPlayerAlly(GetEnumPlayer(), GetTriggerPlayer()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Handicap_Boost_Func004A takes nothing returns nothing
    if ( Trig_Handicap_Boost_Func004Func001C() ) then
        call SetPlayerTechMaxAllowedSwap('R006', 100, GetEnumPlayer())
        call SetPlayerTechResearchedSwap('R006', udg_TempInt, GetEnumPlayer())
    else
    endif
endfunction

function Trig_Handicap_Boost_Func005C takes nothing returns boolean
    if ( not ( IsUnitAlly(GetTriggerUnit(), Player(2)) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Handicap_Boost_Actions takes nothing returns nothing
    set udg_TempInt=GetPlayerTechCountSimple('R006', GetTriggerPlayer())
    call ForForce(GetPlayersAll(), function Trig_Handicap_Boost_Func004A)
    if ( Trig_Handicap_Boost_Func005C() ) then
        call SetPlayerHandicapBJ(Player(2), ( GetPlayerHandicapBJ(Player(2)) + 10.00 ))
    else
        call SetPlayerHandicapBJ(Player(6), ( GetPlayerHandicapBJ(Player(6)) + 10.00 ))
    endif
endfunction

//===========================================================================
function InitTrig_Handicap_Boost takes nothing returns nothing
    set gg_trg_Handicap_Boost=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Handicap_Boost, EVENT_PLAYER_UNIT_RESEARCH_FINISH)
    call TriggerAddCondition(gg_trg_Handicap_Boost, Condition(function Trig_Handicap_Boost_Conditions))
    call TriggerAddAction(gg_trg_Handicap_Boost, function Trig_Handicap_Boost_Actions)
endfunction

//===========================================================================
// Trigger: Bonus2
//===========================================================================
function Trig_Bonus2_Func001C takes nothing returns boolean
    if ( not ( IsUnitType(GetKillingUnitBJ(), UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not ( IsUnitEnemy(GetTriggerUnit(), GetOwningPlayer(GetKillingUnitBJ())) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Bonus2_Actions takes nothing returns nothing
    if ( Trig_Bonus2_Func001C() ) then
        call UnitAddItemByIdSwapped(ChooseRandomItemExBJ(1, ITEM_TYPE_POWERUP), GetKillingUnitBJ())
        call RemoveItem(GetLastCreatedItem())
    else
    endif
endfunction

//===========================================================================
function InitTrig_Bonus2 takes nothing returns nothing
    set gg_trg_Bonus2=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Bonus2, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Bonus2, function Trig_Bonus2_Actions)
endfunction

//===========================================================================
// Trigger: Hero Bounty Rise
//===========================================================================
function Trig_Hero_Bounty_Rise_Actions takes nothing returns nothing
    set udg_TempInt=0
    loop
        exitwhen udg_TempInt > udg_MaxPlayer
        set udg_BountyBonus[udg_TempInt]=( udg_BountyBonus[udg_TempInt] + ( GetHeroLevel(udg_PlayerHero[udg_TempInt]) * 25 ) )
        set udg_TempInt=udg_TempInt + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Hero_Bounty_Rise takes nothing returns nothing
    set gg_trg_Hero_Bounty_Rise=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Hero_Bounty_Rise, 60.00)
    call TriggerAddAction(gg_trg_Hero_Bounty_Rise, function Trig_Hero_Bounty_Rise_Actions)
endfunction

//===========================================================================
// Trigger: Main Building Falls
//===========================================================================
function Trig_Main_Building_Falls_Func001Func002A takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), true)
endfunction

function Trig_Main_Building_Falls_Func001C takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'h00G' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Main_Building_Falls_Func002Func003A takes nothing returns nothing
    call SetUnitInvulnerable(GetEnumUnit(), true)
endfunction

function Trig_Main_Building_Falls_Func002C takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'h00F' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Main_Building_Falls_Actions takes nothing returns nothing
    if ( Trig_Main_Building_Falls_Func001C() ) then
        call PauseAllUnitsBJ(true)
        call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Main_Building_Falls_Func001Func002A)
        call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_6513")
        call TriggerSleepAction(10.00)
        call CustomVictoryBJ(Player(0), true, true)
        call CustomVictoryBJ(Player(1), true, true)
        call CustomVictoryBJ(Player(3), true, true)
        call CustomVictoryBJ(Player(10), true, true)
        call CustomVictoryBJ(Player(13), true, true)
        call CustomVictoryBJ(Player(14), true, true)
        call CustomDefeatBJ(Player(4), "TRIGSTR_4012")
        call CustomDefeatBJ(Player(5), "TRIGSTR_4013")
        call CustomDefeatBJ(Player(7), "TRIGSTR_4014")
        call CustomDefeatBJ(Player(11), "TRIGSTR_4311")
        call CustomDefeatBJ(Player(12), "TRIGSTR_4312")
        call CustomDefeatBJ(Player(15), "TRIGSTR_4313")
    else
    endif
    if ( Trig_Main_Building_Falls_Func002C() ) then
        call PauseAllUnitsBJ(true)
        call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Main_Building_Falls_Func002Func003A)
        call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_6514")
        call TriggerSleepAction(10.00)
        call CustomVictoryBJ(Player(4), true, true)
        call CustomVictoryBJ(Player(5), true, true)
        call CustomVictoryBJ(Player(7), true, true)
        call CustomVictoryBJ(Player(11), true, true)
        call CustomVictoryBJ(Player(12), true, true)
        call CustomVictoryBJ(Player(15), true, true)
        call CustomDefeatBJ(Player(0), "TRIGSTR_4015")
        call CustomDefeatBJ(Player(1), "TRIGSTR_4016")
        call CustomDefeatBJ(Player(3), "TRIGSTR_4017")
        call CustomDefeatBJ(Player(10), "TRIGSTR_5896")
        call CustomDefeatBJ(Player(13), "TRIGSTR_5895")
        call CustomDefeatBJ(Player(14), "TRIGSTR_5894")
    else
    endif
endfunction

//===========================================================================
function InitTrig_Main_Building_Falls takes nothing returns nothing
    set gg_trg_Main_Building_Falls=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Main_Building_Falls, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Main_Building_Falls, function Trig_Main_Building_Falls_Actions)
endfunction

//===========================================================================
// Trigger: TestCenter
//===========================================================================
function Trig_TestCenter_Func001A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    call TriggerRegisterPlayerChatEvent(gg_trg_AIReport, udg_Temp_Player, "-ai", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Bounty_Info, udg_Temp_Player, "-b", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Bounty_Info_Self, udg_Temp_Player, "-sb", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Tech_Info, udg_Temp_Player, "-t", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Spawn_Rush, udg_Temp_Player, "-sr", true)
endfunction

function Trig_TestCenter_Func004A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    call TriggerRegisterPlayerChatEvent(gg_trg_TestVision, udg_Temp_Player, "-vision", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_TestLevel, udg_Temp_Player, "-lvl", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_TestRestore, udg_Temp_Player, "-heal", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_TestMoney, udg_Temp_Player, "-kaya", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Developer_Mode, udg_Temp_Player, "daffa here", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Kill_Hero, udg_Temp_Player, "kill", true)
endfunction

function Trig_TestCenter_Actions takes nothing returns nothing
    call ForForce(GetPlayersAll(), function Trig_TestCenter_Func001A)
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_4523")
    if bj_isSinglePlayer then
    call ForForce(GetPlayersAll(), function Trig_TestCenter_Func004A)
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_701")
    endif
endfunction

//===========================================================================
function InitTrig_TestCenter takes nothing returns nothing
    set gg_trg_TestCenter=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_TestCenter, 1.00)
    call TriggerAddAction(gg_trg_TestCenter, function Trig_TestCenter_Actions)
endfunction

//===========================================================================
// Trigger: TestVision
//===========================================================================
function Trig_TestVision_Actions takes nothing returns nothing
    call FogEnableOff()
    call FogMaskEnableOff()
endfunction

//===========================================================================
function InitTrig_TestVision takes nothing returns nothing
    set gg_trg_TestVision=CreateTrigger()
    call TriggerAddAction(gg_trg_TestVision, function Trig_TestVision_Actions)
endfunction

//===========================================================================
// Trigger: TestLevel
//===========================================================================
function Trig_TestLevel_Func001Func001C takes nothing returns boolean
    if ( not ( IsUnitType(GetEnumUnit(), UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetEnumUnit()) == GetTriggerPlayer() ) ) then
        return false
    endif
    return true
endfunction

function Trig_TestLevel_Func001A takes nothing returns nothing
    if ( Trig_TestLevel_Func001Func001C() ) then
        call SetHeroLevelBJ(GetEnumUnit(), 20, true)
    else
    endif
endfunction

function Trig_TestLevel_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_TestLevel_Func001A)
endfunction

//===========================================================================
function InitTrig_TestLevel takes nothing returns nothing
    set gg_trg_TestLevel=CreateTrigger()
    call TriggerAddAction(gg_trg_TestLevel, function Trig_TestLevel_Actions)
endfunction

//===========================================================================
// Trigger: TestRestore
//===========================================================================
function Trig_TestRestore_Func001Func001C takes nothing returns boolean
    if ( not ( GetOwningPlayer(GetEnumUnit()) == GetTriggerPlayer() ) ) then
        return false
    endif
    return true
endfunction

function Trig_TestRestore_Func001A takes nothing returns nothing
    if ( Trig_TestRestore_Func001Func001C() ) then
        call SetUnitLifePercentBJ(GetEnumUnit(), 100)
        call SetUnitManaPercentBJ(GetEnumUnit(), 100)
        call UnitResetCooldown(GetEnumUnit())
    else
    endif
endfunction

function Trig_TestRestore_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_TestRestore_Func001A)
endfunction

//===========================================================================
function InitTrig_TestRestore takes nothing returns nothing
    set gg_trg_TestRestore=CreateTrigger()
    call TriggerAddAction(gg_trg_TestRestore, function Trig_TestRestore_Actions)
endfunction

//===========================================================================
// Trigger: TestMoney
//===========================================================================
function Trig_TestMoney_Func001A takes nothing returns nothing
    call SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_GOLD, 9999999)
    call SetPlayerStateBJ(GetEnumPlayer(), PLAYER_STATE_RESOURCE_LUMBER, 9999999)
endfunction

function Trig_TestMoney_Actions takes nothing returns nothing
    call ForForce(GetPlayersAll(), function Trig_TestMoney_Func001A)
endfunction

//===========================================================================
function InitTrig_TestMoney takes nothing returns nothing
    set gg_trg_TestMoney=CreateTrigger()
    call TriggerAddAction(gg_trg_TestMoney, function Trig_TestMoney_Actions)
endfunction

//===========================================================================
// Trigger: AIReport
//===========================================================================
function Trig_AIReport_Actions takes nothing returns nothing
    set udg_AIReport=not ( udg_AIReport )
endfunction

//===========================================================================
function InitTrig_AIReport takes nothing returns nothing
    set gg_trg_AIReport=CreateTrigger()
    call TriggerAddAction(gg_trg_AIReport, function Trig_AIReport_Actions)
endfunction

//===========================================================================
// Trigger: Bounty Info
//===========================================================================
function Trig_Bounty_Info_Func005Func001C takes nothing returns boolean
    if ( not ( GetEnumPlayer() != Player(2) ) ) then
        return false
    endif
    if ( not ( GetEnumPlayer() != Player(6) ) ) then
        return false
    endif
    if ( not ( GetEnumPlayer() != Player(8) ) ) then
        return false
    endif
    if ( not ( GetEnumPlayer() != Player(9) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Bounty_Info_Func005A takes nothing returns nothing
    if ( Trig_Bounty_Info_Func005Func001C() ) then
        if GetLocalPlayer() == udg_Temp_Player then
        call DisplayTextToForce(GetPlayersAll(), ( ( GetPlayerName(GetEnumPlayer()) + "'s current bonus is " ) + ( I2S(udg_BountyBonus[GetConvertedPlayerId(GetEnumPlayer())]) + " golds." ) ))
        endif
    else
    endif
endfunction

function Trig_Bounty_Info_Actions takes nothing returns nothing
    set udg_Temp_Player=GetTriggerPlayer()
    if GetLocalPlayer() == udg_Temp_Player then
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_5781")
    endif
    call ForForce(GetPlayersAll(), function Trig_Bounty_Info_Func005A)
endfunction

//===========================================================================
function InitTrig_Bounty_Info takes nothing returns nothing
    set gg_trg_Bounty_Info=CreateTrigger()
    call TriggerAddAction(gg_trg_Bounty_Info, function Trig_Bounty_Info_Actions)
endfunction

//===========================================================================
// Trigger: Bounty Info Self
//===========================================================================
function Trig_Bounty_Info_Self_Actions takes nothing returns nothing
    set udg_Temp_Player=GetTriggerPlayer()
    if GetLocalPlayer() == udg_Temp_Player then
    call DisplayTextToForce(GetPlayersAll(), ( ( GetPlayerName(udg_Temp_Player) + "'s current bonus is " ) + ( I2S(udg_BountyBonus[GetConvertedPlayerId(udg_Temp_Player)]) + " golds." ) ))
    endif
endfunction

//===========================================================================
function InitTrig_Bounty_Info_Self takes nothing returns nothing
    set gg_trg_Bounty_Info_Self=CreateTrigger()
    call TriggerAddAction(gg_trg_Bounty_Info_Self, function Trig_Bounty_Info_Self_Actions)
endfunction

//===========================================================================
// Trigger: Tech Info
//===========================================================================
function Trig_Tech_Info_Actions takes nothing returns nothing
    set udg_Temp_Player=GetTriggerPlayer()
    if GetLocalPlayer() == udg_Temp_Player then
    call DisplayTextToForce(GetPlayersAll(), ( GetPlayerName(GetTriggerPlayer()) + " current research level :" ))
    call DisplayTextToForce(GetPlayersAll(), ( "Attack : " + I2S(GetPlayerTechCountSimple('R001', GetTriggerPlayer())) ))
    call DisplayTextToForce(GetPlayersAll(), ( "Armor : " + I2S(GetPlayerTechCountSimple('R002', GetTriggerPlayer())) ))
    call DisplayTextToForce(GetPlayersAll(), ( "Vitality : " + I2S(GetPlayerTechCountSimple('R003', GetTriggerPlayer())) ))
    call DisplayTextToForce(GetPlayersAll(), ( "Energy : " + I2S(GetPlayerTechCountSimple('R004', GetTriggerPlayer())) ))
    call DisplayTextToForce(GetPlayersAll(), ( "Exp Rate (%):" + I2S(R2I(GetPlayerHandicapXPBJ(udg_Temp_Player))) ))
    call DisplayTextToForce(GetPlayersAll(), ( "Team Creep : " + I2S(GetPlayerTechCountSimple('R005', GetTriggerPlayer())) ))
    call DisplayTextToForce(GetPlayersAll(), ( "Team Base : " + I2S(GetPlayerTechCountSimple('R006', GetTriggerPlayer())) ))
    endif
endfunction

//===========================================================================
function InitTrig_Tech_Info takes nothing returns nothing
    set gg_trg_Tech_Info=CreateTrigger()
    call TriggerAddAction(gg_trg_Tech_Info, function Trig_Tech_Info_Actions)
endfunction

//===========================================================================
// Trigger: Spawn Rush
//===========================================================================
function Trig_Spawn_Rush_Conditions takes nothing returns boolean
    if ( not ( TimerGetRemaining(udg_TimeForChoosing) > 0.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Spawn_Rush_Actions takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_6489")
    call TriggerRegisterTimerEventPeriodic(gg_trg_Spawn_Left1, 13.00)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Spawn_Left2, 13.00)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Spawn_Right1, 13.00)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Spawn_Right2, 13.00)
endfunction

//===========================================================================
function InitTrig_Spawn_Rush takes nothing returns nothing
    set gg_trg_Spawn_Rush=CreateTrigger()
    call TriggerAddCondition(gg_trg_Spawn_Rush, Condition(function Trig_Spawn_Rush_Conditions))
    call TriggerAddAction(gg_trg_Spawn_Rush, function Trig_Spawn_Rush_Actions)
endfunction

//===========================================================================
// Trigger: DamageFloatText
//===========================================================================
function Trig_DamageFloatText_Conditions takes nothing returns boolean
    if ( not ( GetOwningPlayer(udg_DamageEventSource) != Player(2) ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(udg_DamageEventSource) != Player(6) ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(udg_DamageEventSource) != Player(8) ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(udg_DamageEventSource) != Player(9) ) ) then
        return false
    endif
    return true
endfunction

function Trig_DamageFloatText_Actions takes nothing returns nothing
    set udg_Temp_Point=GetUnitLoc(udg_DamageEventTarget)
    call CreateTextTagLocBJ(( I2S(R2I(udg_DamageEventAmount)) + "!" ), udg_Temp_Point, 0, ( 6.00 + ( udg_DamageEventAmount / 25.00 ) ), 100, ( 65.00 - RMinBJ(65.00, udg_DamageEventAmount) ), 0.00, 0)
    call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetPlayersAll())
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 32.00, 90)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 2.50)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 3.00)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_DamageFloatText takes nothing returns nothing
    set gg_trg_DamageFloatText=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_DamageFloatText, "udg_DamageEvent", EQUAL, 4.00)
    call TriggerAddCondition(gg_trg_DamageFloatText, Condition(function Trig_DamageFloatText_Conditions))
    call TriggerAddAction(gg_trg_DamageFloatText, function Trig_DamageFloatText_Actions)
endfunction

//===========================================================================
// Trigger: Hide Developer
//===========================================================================
function Trig_Hide_Developer_Actions takes nothing returns nothing
    call ShowUnitHide(gg_unit_h00I_0133)
    call ShowUnitHide(gg_unit_h00I_0134)
endfunction

//===========================================================================
function InitTrig_Hide_Developer takes nothing returns nothing
    set gg_trg_Hide_Developer=CreateTrigger()
    call TriggerAddAction(gg_trg_Hide_Developer, function Trig_Hide_Developer_Actions)
endfunction

//===========================================================================
// Trigger: Developer Mode
//===========================================================================
function Trig_Developer_Mode_Actions takes nothing returns nothing
    set udg_DEVELOPER_MODE=true
    call ShowUnitShow(gg_unit_h00I_0133)
    call ShowUnitShow(gg_unit_h00I_0134)
endfunction

//===========================================================================
function InitTrig_Developer_Mode takes nothing returns nothing
    set gg_trg_Developer_Mode=CreateTrigger()
    call TriggerAddAction(gg_trg_Developer_Mode, function Trig_Developer_Mode_Actions)
endfunction

//===========================================================================
// Trigger: Kill Hero
//===========================================================================
function Trig_Kill_Hero_Conditions takes nothing returns boolean
    if ( not ( udg_DEVELOPER_MODE == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Kill_Hero_Func001Func001C takes nothing returns boolean
    if ( not ( IsUnitType(GetEnumUnit(), UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not ( GetOwningPlayer(GetEnumUnit()) == GetTriggerPlayer() ) ) then
        return false
    endif
    return true
endfunction

function Trig_Kill_Hero_Func001A takes nothing returns nothing
    if ( Trig_Kill_Hero_Func001Func001C() ) then
        call KillUnit(GetEnumUnit())
    else
    endif
endfunction

function Trig_Kill_Hero_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Kill_Hero_Func001A)
endfunction

//===========================================================================
function InitTrig_Kill_Hero takes nothing returns nothing
    set gg_trg_Kill_Hero=CreateTrigger()
    call TriggerAddCondition(gg_trg_Kill_Hero, Condition(function Trig_Kill_Hero_Conditions))
    call TriggerAddAction(gg_trg_Kill_Hero, function Trig_Kill_Hero_Actions)
endfunction

//===========================================================================
// Trigger: Mind Cooperation
//===========================================================================
function Trig_Mind_Cooperation_Conditions takes nothing returns boolean
    if ( not ( GetResearched() == 'R004' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Mind_Cooperation_Actions takes nothing returns nothing
    call SetPlayerHandicapXPBJ(GetTriggerPlayer(), ( GetPlayerHandicapXPBJ(GetTriggerPlayer()) + 3.00 ))
endfunction

//===========================================================================
function InitTrig_Mind_Cooperation takes nothing returns nothing
    set gg_trg_Mind_Cooperation=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Mind_Cooperation, EVENT_PLAYER_UNIT_RESEARCH_FINISH)
    call TriggerAddCondition(gg_trg_Mind_Cooperation, Condition(function Trig_Mind_Cooperation_Conditions))
    call TriggerAddAction(gg_trg_Mind_Cooperation, function Trig_Mind_Cooperation_Actions)
endfunction

//===========================================================================
// Trigger: AI Config
//===========================================================================
function Trig_AI_Config_Func001Func001C takes nothing returns boolean
    if ( not ( GetPlayerController(GetOwningPlayer(GetEnumUnit())) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Config_Func001A takes nothing returns nothing
    if ( Trig_AI_Config_Func001Func001C() ) then
        call GroupAddUnitSimple(GetEnumUnit(), udg_FallAltar)
        call SetUnitRallyPoint(GetEnumUnit(), GetRectCenter(gg_rct_NEF))
    else
    endif
endfunction

function Trig_AI_Config_Func002Func001C takes nothing returns boolean
    if ( not ( GetPlayerController(GetOwningPlayer(GetEnumUnit())) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Config_Func002A takes nothing returns nothing
    if ( Trig_AI_Config_Func002Func001C() ) then
        call GroupAddUnitSimple(GetEnumUnit(), udg_AncAltar)
        call SetUnitRallyPoint(GetEnumUnit(), GetRectCenter(gg_rct_UF))
    else
    endif
endfunction

function Trig_AI_Config_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsOfTypeIdAll('u000'), function Trig_AI_Config_Func001A)
    call ForGroupBJ(GetUnitsOfTypeIdAll('e000'), function Trig_AI_Config_Func002A)
    set udg_TotalAIHero=11
    set udg_TotalAIHeroScourge=udg_TotalAIHero
    set udg_TotalAIHeroSentinel=udg_TotalAIHero
    call ExecuteFunc("AIHeroList")
    endfunction
    function AIHeroList takes nothing returns nothing
    // SENTINEL
    set udg_SentinelHeroAI[1]='E002'
    set udg_SentinelHeroAI[2]='E004'
    set udg_SentinelHeroAI[3]='H004'
    set udg_SentinelHeroAI[4]='H005'
    set udg_SentinelHeroAI[5]='H006'
    set udg_SentinelHeroAI[6]='N006'
    set udg_SentinelHeroAI[7]='O003'
    set udg_SentinelHeroAI[8]='E005'
    set udg_SentinelHeroAI[9]='H008'
    set udg_SentinelHeroAI[10]='H00C'
    set udg_SentinelHeroAI[11]='N007'
    // SCOURGE
    set udg_ScourgeHeroAI[1]='O001'
    set udg_ScourgeHeroAI[2]='U004'
    set udg_ScourgeHeroAI[3]='N000'
    set udg_ScourgeHeroAI[4]='E003'
    set udg_ScourgeHeroAI[5]='U005'
    set udg_ScourgeHeroAI[6]='H007'
    set udg_ScourgeHeroAI[7]='O002'
    set udg_ScourgeHeroAI[8]='U003'
    set udg_ScourgeHeroAI[9]='U002'
    set udg_ScourgeHeroAI[10]='H00E'
    set udg_ScourgeHeroAI[11]='U00A'
    call ExecuteFunc("AIHeroSkill")
    call ExecuteFunc("AIHeroItem")
    endfunction
    function AIHeroItem takes nothing returns nothing
    // AI Item Build
    set udg_Temp_Loop=1
    loop
        exitwhen udg_Temp_Loop > udg_TotalAIHero
        set udg_ItemSlot1[udg_Temp_Loop]='I01I'
        set udg_ItemSlot2[udg_Temp_Loop]='I001'
        set udg_ItemSlot3[udg_Temp_Loop]='I019'
        set udg_ItemSlot4[udg_Temp_Loop]='I01B'
        set udg_ItemSlot5[udg_Temp_Loop]='I01B'
        set udg_ItemSlot6[udg_Temp_Loop]='I01A'
        set udg_Temp_Loop=udg_Temp_Loop + 1
    endloop
    call ExecuteFunc("AIHeroPrice")
    endfunction
    function AIHeroPrice takes nothing returns nothing
    // AI Item Build Price (Intentionally Different)
    set udg_Temp_Loop=1
    loop
        exitwhen udg_Temp_Loop > udg_TotalAIHero
        set udg_ItemBuildPrice1[udg_Temp_Loop]=500
        set udg_ItemBuildPrice2[udg_Temp_Loop]=1000
        set udg_ItemBuildPrice3[udg_Temp_Loop]=2000
        set udg_ItemBuildPrice4[udg_Temp_Loop]=3000
        set udg_ItemBuildPrice5[udg_Temp_Loop]=4000
        set udg_ItemBuildPrice6[udg_Temp_Loop]=9500
        set udg_Temp_Loop=udg_Temp_Loop + 1
    endloop
    call ExecuteFunc("AIHeroPriceReverse")
    endfunction
    function AIHeroPriceReverse takes nothing returns nothing
    set udg_Temp_Loop=1
    loop
        exitwhen udg_Temp_Loop > udg_TotalAIHero
        set udg_PriceReversed1[udg_Temp_Loop]=( - 1 * udg_ItemBuildPrice1[udg_Temp_Loop] )
        set udg_PriceReversed2[udg_Temp_Loop]=( - 1 * udg_ItemBuildPrice2[udg_Temp_Loop] )
        set udg_PriceReversed3[udg_Temp_Loop]=( - 1 * udg_ItemBuildPrice3[udg_Temp_Loop] )
        set udg_PriceReversed4[udg_Temp_Loop]=( - 1 * udg_ItemBuildPrice4[udg_Temp_Loop] )
        set udg_PriceReversed5[udg_Temp_Loop]=( - 1 * udg_ItemBuildPrice5[udg_Temp_Loop] )
        set udg_PriceReversed6[udg_Temp_Loop]=( - 1 * udg_ItemBuildPrice6[udg_Temp_Loop] )
        set udg_Temp_Loop=udg_Temp_Loop + 1
    endloop
    endfunction
    function AIHeroSkill takes nothing returns nothing
    // AI Skill Build - Sentinel
    set udg_SkillBuildSent1[1]='A00W'
    set udg_SkillBuildSent1[2]='A00Z'
    set udg_SkillBuildSent1[3]='A00U'
    set udg_SkillBuildSent1[4]='A029'
    set udg_SkillBuildSent1[5]='A01Q'
    set udg_SkillBuildSent1[6]='A001'
    set udg_SkillBuildSent1[7]='A02A'
    set udg_SkillBuildSent1[8]='A02V'
    set udg_SkillBuildSent1[9]='A031'
    set udg_SkillBuildSent1[10]='A04H'
    set udg_SkillBuildSent1[11]='A031'
    set udg_SkillBuildSent2[1]='A01B'
    set udg_SkillBuildSent2[2]='A03K'
    set udg_SkillBuildSent2[3]='A027'
    set udg_SkillBuildSent2[4]='A018'
    set udg_SkillBuildSent2[5]='A01N'
    set udg_SkillBuildSent2[6]='A002'
    set udg_SkillBuildSent2[7]='A02B'
    set udg_SkillBuildSent2[8]='A02W'
    set udg_SkillBuildSent2[9]='A032'
    set udg_SkillBuildSent2[10]='A04J'
    set udg_SkillBuildSent2[11]='A046'
    set udg_SkillBuildSent3[1]='A01C'
    set udg_SkillBuildSent3[2]='A03I'
    set udg_SkillBuildSent3[3]='A00V'
    set udg_SkillBuildSent3[4]='A028'
    set udg_SkillBuildSent3[5]='A01R'
    set udg_SkillBuildSent3[6]='A001'
    set udg_SkillBuildSent3[7]='A02C'
    set udg_SkillBuildSent3[8]='A02U'
    set udg_SkillBuildSent3[9]='A033'
    set udg_SkillBuildSent3[10]='A04K'
    set udg_SkillBuildSent3[11]='A045'
    set udg_SkillBuildSentUlt[1]='A010'
    set udg_SkillBuildSentUlt[2]='A01I'
    set udg_SkillBuildSentUlt[3]='A016'
    set udg_SkillBuildSentUlt[4]='A019'
    set udg_SkillBuildSentUlt[5]='A01O'
    set udg_SkillBuildSentUlt[6]='A003'
    set udg_SkillBuildSentUlt[7]='A02D'
    set udg_SkillBuildSentUlt[8]='A02X'
    set udg_SkillBuildSentUlt[9]='A034'
    set udg_SkillBuildSentUlt[10]='A04M'
    set udg_SkillBuildSentUlt[11]='A047'
    // AI Skill Build - Scourge
    set udg_SkillBuildScg1[1]='A02F'
    set udg_SkillBuildScg1[2]='A02H'
    set udg_SkillBuildScg1[3]='A000'
    set udg_SkillBuildScg1[4]='A02M'
    set udg_SkillBuildScg1[5]='A01W'
    set udg_SkillBuildScg1[6]='A01Z'
    set udg_SkillBuildScg1[7]='A01Y'
    set udg_SkillBuildScg1[8]='A015'
    set udg_SkillBuildScg1[9]='A02R'
    set udg_SkillBuildScg1[10]='A04O'
    set udg_SkillBuildScg1[11]='A04B'
    set udg_SkillBuildScg2[1]='A01F'
    set udg_SkillBuildScg2[2]='A02J'
    set udg_SkillBuildScg2[3]='A002'
    set udg_SkillBuildScg2[4]='A01M'
    set udg_SkillBuildScg2[5]='A01V'
    set udg_SkillBuildScg2[6]='A01S'
    set udg_SkillBuildScg2[7]='A02O'
    set udg_SkillBuildScg2[8]='A025'
    set udg_SkillBuildScg2[9]='A02Q'
    set udg_SkillBuildScg2[10]='A04J'
    set udg_SkillBuildScg2[11]='A04D'
    set udg_SkillBuildScg3[1]='A02G'
    set udg_SkillBuildScg3[2]='A02I'
    set udg_SkillBuildScg3[3]='A001'
    set udg_SkillBuildScg3[4]='A04L'
    set udg_SkillBuildScg3[5]='A01T'
    set udg_SkillBuildScg3[6]='A022'
    set udg_SkillBuildScg3[7]='A02P'
    set udg_SkillBuildScg3[8]='A023'
    set udg_SkillBuildScg3[9]='A02S'
    set udg_SkillBuildScg3[10]='A04K'
    set udg_SkillBuildScg3[11]='A04C'
    set udg_SkillBuildScgUlt[1]='A01G'
    set udg_SkillBuildScgUlt[2]='A01H'
    set udg_SkillBuildScgUlt[3]='A003'
    set udg_SkillBuildScgUlt[4]='A01L'
    set udg_SkillBuildScgUlt[5]='A01U'
    set udg_SkillBuildScgUlt[6]='A021'
    set udg_SkillBuildScgUlt[7]='A02N'
    set udg_SkillBuildScgUlt[8]='A026'
    set udg_SkillBuildScgUlt[9]='A02T'
    set udg_SkillBuildScgUlt[10]='A04M'
    set udg_SkillBuildScgUlt[11]='A050'
endfunction

//===========================================================================
function InitTrig_AI_Config takes nothing returns nothing
    set gg_trg_AI_Config=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_AI_Config, 3.00)
    call TriggerAddAction(gg_trg_AI_Config, function Trig_AI_Config_Actions)
endfunction

//===========================================================================
// Trigger: AI About to Select
//===========================================================================
function Trig_AI_About_to_Select_Actions takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_4900")
endfunction

//===========================================================================
function InitTrig_AI_About_to_Select takes nothing returns nothing
    set gg_trg_AI_About_to_Select=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_AI_About_to_Select, 110.00)
    call TriggerAddAction(gg_trg_AI_About_to_Select, function Trig_AI_About_to_Select_Actions)
endfunction

//===========================================================================
// Trigger: AI Preparation
//===========================================================================
function Trig_AI_Preparation_Func001Func002Func001Func006C takes nothing returns boolean
    if ( not ( udg_TotalAIHeroScourge > 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Preparation_Func001Func002Func001Func012C takes nothing returns boolean
    if ( not ( udg_TotalAIHeroSentinel > 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Preparation_Func001Func002Func001C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Preparation_Func001Func002Func013C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A02Z', udg_Temp_Unit) > 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Preparation_Func001Func002C takes nothing returns boolean
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(6) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(8) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(9) ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Preparation_Func001A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    if ( Trig_AI_Preparation_Func001Func002C() ) then
        if ( Trig_AI_Preparation_Func001Func002Func001C() ) then
            set udg_Randomizer=GetRandomInt(1, udg_TotalAIHeroSentinel)
            set udg_Temp_Point=GetRectCenter(gg_rct_NEF)
            call CreateNUnitsAtLoc(1, udg_SentinelHeroAI[udg_Randomizer], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
            set udg_Temp_Point_2=GetRandomLocInRect(gg_rct_Undead)
            if ( Trig_AI_Preparation_Func001Func002Func001Func012C() ) then
                set udg_SentinelHeroAI[udg_Randomizer]=udg_SentinelHeroAI[udg_TotalAIHeroSentinel]
                set udg_TotalAIHeroSentinel=( udg_TotalAIHeroSentinel - 1 )
            else
            endif
            set udg_IsAISentinel[udg_AINumber]=true
        else
            set udg_Randomizer=GetRandomInt(1, udg_TotalAIHeroScourge)
            set udg_Temp_Point=GetRectCenter(gg_rct_UF)
            call CreateNUnitsAtLoc(1, udg_ScourgeHeroAI[udg_Randomizer], udg_Temp_Player, udg_Temp_Point, bj_UNIT_FACING)
            set udg_Temp_Point_2=GetRandomLocInRect(gg_rct_NE)
            if ( Trig_AI_Preparation_Func001Func002Func001Func006C() ) then
                set udg_ScourgeHeroAI[udg_Randomizer]=udg_ScourgeHeroAI[udg_TotalAIHeroScourge]
                set udg_TotalAIHeroScourge=( udg_TotalAIHeroScourge - 1 )
            else
            endif
            set udg_IsAISentinel[udg_AINumber]=false
        endif
        set udg_Temp_Unit=GetLastCreatedUnit()
        set udg_AINumber=GetConvertedPlayerId(udg_Temp_Player)
        call RemoveUnit(udg_Circle[udg_AINumber])
        set udg_AIValue[udg_AINumber]=udg_Randomizer
        set udg_AIPickHeroStr=( GetUnitName(udg_Temp_Unit) + ( " has been chosen by " + GetPlayerName(udg_Temp_Player) ) )
        set udg_PlayerHero[udg_AINumber]=udg_Temp_Unit
        call DisplayTimedTextToForce(GetPlayersAll(), 60.00, udg_AIPickHeroStr)
        call SetPlayerName(udg_Temp_Player, ( GetPlayerName(udg_Temp_Player) + ( " (" + ( GetHeroProperName(udg_Temp_Unit) + ")" ) ) ))
        call RemoveLocation(udg_Temp_Point)
        call UnitAddAbilityBJ('AIl2', GetLastCreatedUnit())
        call GroupAddUnitSimple(GetLastCreatedUnit(), udg_AIHeroes)
        if ( Trig_AI_Preparation_Func001Func002Func013C() ) then
            call GroupAddUnitSimple(udg_Temp_Unit, udg_DarknessEyeGroup)
        else
        endif
    else
    endif
endfunction

function Trig_AI_Preparation_Actions takes nothing returns nothing
    call ForForce(GetPlayersAll(), function Trig_AI_Preparation_Func001A)
endfunction

//===========================================================================
function InitTrig_AI_Preparation takes nothing returns nothing
    set gg_trg_AI_Preparation=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_AI_Preparation, 115.00)
    call TriggerAddAction(gg_trg_AI_Preparation, function Trig_AI_Preparation_Actions)
endfunction

//===========================================================================
// Trigger: AI Growth
//===========================================================================
function Trig_AI_Growth_Func001Func003Func001C takes nothing returns boolean
    if ( not ( GetAIDifficulty(udg_Temp_Player) == AI_DIFFICULTY_NEWBIE ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Growth_Func001Func003Func002C takes nothing returns boolean
    if ( not ( GetAIDifficulty(udg_Temp_Player) == AI_DIFFICULTY_NORMAL ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Growth_Func001Func003Func003C takes nothing returns boolean
    if ( not ( GetAIDifficulty(udg_Temp_Player) == AI_DIFFICULTY_INSANE ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Growth_Func001Func003C takes nothing returns boolean
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Growth_Func001A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    set udg_TempInteger=GetConvertedPlayerId(udg_Temp_Player)
    if ( Trig_AI_Growth_Func001Func003C() ) then
        if ( Trig_AI_Growth_Func001Func003Func001C() ) then
            call SetPlayerHandicapXPBJ(udg_Temp_Player, 120.00)
            set udg_AICash[udg_TempInteger]=5
        else
        endif
        if ( Trig_AI_Growth_Func001Func003Func002C() ) then
            call SetPlayerHandicapXPBJ(udg_Temp_Player, 150.00)
            set udg_AICash[udg_TempInteger]=10
        else
        endif
        if ( Trig_AI_Growth_Func001Func003Func003C() ) then
            call SetPlayerHandicapXPBJ(udg_Temp_Player, 200.00)
            set udg_AICash[udg_TempInteger]=15
        else
        endif
    else
    endif
endfunction

function Trig_AI_Growth_Actions takes nothing returns nothing
    call ForForce(GetPlayersAll(), function Trig_AI_Growth_Func001A)
endfunction

//===========================================================================
function InitTrig_AI_Growth takes nothing returns nothing
    set gg_trg_AI_Growth=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_AI_Growth, 0.00)
    call TriggerAddAction(gg_trg_AI_Growth, function Trig_AI_Growth_Actions)
endfunction

//===========================================================================
// Trigger: AI Learn Skill
//===========================================================================
function Trig_AI_Learn_Skill_Func004Func003C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Learn_Skill_Func004C takes nothing returns boolean
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Learn_Skill_Actions takes nothing returns nothing
    set udg_Temp_Unit=GetTriggerUnit()
    set udg_Temp_Player=GetTriggerPlayer()
    if ( Trig_AI_Learn_Skill_Func004C() ) then
        set udg_AINumber=GetConvertedPlayerId(udg_Temp_Player)
        set udg_AISkillCode=udg_AIValue[udg_AINumber]
        if ( Trig_AI_Learn_Skill_Func004Func003C() ) then
            call SelectHeroSkill(udg_Temp_Unit, udg_SkillBuildSentUlt[udg_AISkillCode])
            call SelectHeroSkill(udg_Temp_Unit, udg_SkillBuildSent1[udg_AISkillCode])
            call SelectHeroSkill(udg_Temp_Unit, udg_SkillBuildSent2[udg_AISkillCode])
            call SelectHeroSkill(udg_Temp_Unit, udg_SkillBuildSent3[udg_AISkillCode])
        else
            call SelectHeroSkill(udg_Temp_Unit, udg_SkillBuildScgUlt[udg_AISkillCode])
            call SelectHeroSkill(udg_Temp_Unit, udg_SkillBuildScg1[udg_AISkillCode])
            call SelectHeroSkill(udg_Temp_Unit, udg_SkillBuildScg2[udg_AISkillCode])
            call SelectHeroSkill(udg_Temp_Unit, udg_SkillBuildScg3[udg_AISkillCode])
        endif
        call SelectHeroSkill(udg_Temp_Unit, 'A01X')
    else
    endif
endfunction

//===========================================================================
function InitTrig_AI_Learn_Skill takes nothing returns nothing
    set gg_trg_AI_Learn_Skill=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Learn_Skill, EVENT_PLAYER_HERO_LEVEL)
    call TriggerAddAction(gg_trg_AI_Learn_Skill, function Trig_AI_Learn_Skill_Actions)
endfunction

//===========================================================================
// Trigger: AI Itemizing
//===========================================================================
function Trig_AI_Itemizing_Func007Func001C takes nothing returns boolean
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_LUMBER) > 5000 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func004C takes nothing returns boolean
    if ( not ( udg_AIReport == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func006C takes nothing returns boolean
    if ( not ( UnitItemInSlotBJ(udg_Temp_Unit, 1) == null ) ) then
        return false
    endif
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= udg_ItemBuildPrice1[udg_AIItemBuyCode] ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func007C takes nothing returns boolean
    if ( not ( UnitItemInSlotBJ(udg_Temp_Unit, 2) == null ) ) then
        return false
    endif
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= udg_ItemBuildPrice2[udg_AIItemBuyCode] ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func008C takes nothing returns boolean
    if ( not ( UnitItemInSlotBJ(udg_Temp_Unit, 3) == null ) ) then
        return false
    endif
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= udg_ItemBuildPrice3[udg_AIItemBuyCode] ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func009C takes nothing returns boolean
    if ( not ( UnitItemInSlotBJ(udg_Temp_Unit, 4) == null ) ) then
        return false
    endif
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= udg_ItemBuildPrice4[udg_AIItemBuyCode] ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func010C takes nothing returns boolean
    if ( not ( UnitItemInSlotBJ(udg_Temp_Unit, 5) == null ) ) then
        return false
    endif
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= udg_ItemBuildPrice5[udg_AIItemBuyCode] ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func011C takes nothing returns boolean
    if ( not ( UnitItemInSlotBJ(udg_Temp_Unit, 6) == null ) ) then
        return false
    endif
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= udg_ItemBuildPrice6[udg_AIItemBuyCode] ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func012C takes nothing returns boolean
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= 700 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func013C takes nothing returns boolean
    if ( not ( udg_AIReport == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func014Func001Func001C takes nothing returns boolean
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= 100 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func014Func001C takes nothing returns boolean
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= 300 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func014C takes nothing returns boolean
    if ( not ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD) >= 550 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func017C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007Func019C takes nothing returns boolean
    if ( not ( udg_AIReport == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Func007C takes nothing returns boolean
    if ( not ( IsUnitType(udg_Temp_Unit, UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(6) ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Itemizing_Actions takes nothing returns nothing
    set udg_Temp_Unit=GetTriggerUnit()
    set udg_Temp_Player=GetOwningPlayer(udg_Temp_Unit)
    if ( Trig_AI_Itemizing_Func007C() ) then
        if ( Trig_AI_Itemizing_Func007Func001C() ) then
            call AdjustPlayerStateBJ(( ( ( GetPlayerState(udg_Temp_Player, PLAYER_STATE_RESOURCE_LUMBER) - 5000 ) * 9 ) / 10 ), udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
            call SetPlayerStateBJ(udg_Temp_Player, PLAYER_STATE_RESOURCE_LUMBER, 5000)
        else
        endif
        set udg_AINumber=GetConvertedPlayerId(udg_Temp_Player)
        set udg_AIItemBuyCode=udg_AIValue[udg_AINumber]
        if ( Trig_AI_Itemizing_Func007Func004C() ) then
            call DisplayTextToForce(GetPlayersAllies(udg_Temp_Player), ( GetPlayerName(udg_Temp_Player) + " : Purchasing Item" ))
        else
        endif
        // Slot 1 to 6
        if ( Trig_AI_Itemizing_Func007Func006C() ) then
            call UnitAddItemByIdSwapped(udg_ItemSlot1[udg_AIItemBuyCode], udg_Temp_Unit)
            call AdjustPlayerStateBJ(udg_PriceReversed1[udg_AIItemBuyCode], udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        else
        endif
        if ( Trig_AI_Itemizing_Func007Func007C() ) then
            call UnitAddItemByIdSwapped(udg_ItemSlot2[udg_AIItemBuyCode], udg_Temp_Unit)
            call AdjustPlayerStateBJ(udg_PriceReversed2[udg_AIItemBuyCode], udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        else
        endif
        if ( Trig_AI_Itemizing_Func007Func008C() ) then
            call UnitAddItemByIdSwapped(udg_ItemSlot3[udg_AIItemBuyCode], udg_Temp_Unit)
            call AdjustPlayerStateBJ(udg_PriceReversed3[udg_AIItemBuyCode], udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        else
        endif
        if ( Trig_AI_Itemizing_Func007Func009C() ) then
            call UnitAddItemByIdSwapped(udg_ItemSlot4[udg_AIItemBuyCode], udg_Temp_Unit)
            call AdjustPlayerStateBJ(udg_PriceReversed4[udg_AIItemBuyCode], udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        else
        endif
        if ( Trig_AI_Itemizing_Func007Func010C() ) then
            call UnitAddItemByIdSwapped(udg_ItemSlot5[udg_AIItemBuyCode], udg_Temp_Unit)
            call AdjustPlayerStateBJ(udg_PriceReversed5[udg_AIItemBuyCode], udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        else
        endif
        if ( Trig_AI_Itemizing_Func007Func011C() ) then
            call UnitAddItemByIdSwapped(udg_ItemSlot6[udg_AIItemBuyCode], udg_Temp_Unit)
            call AdjustPlayerStateBJ(udg_PriceReversed6[udg_AIItemBuyCode], udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        else
        endif
        if ( Trig_AI_Itemizing_Func007Func012C() ) then
            call UnitAddItemByIdSwapped('tpow', udg_Temp_Unit)
            call AdjustPlayerStateBJ(- 700, udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        else
        endif
        if ( Trig_AI_Itemizing_Func007Func013C() ) then
            call DisplayTextToForce(GetPlayersAllies(udg_Temp_Player), ( GetPlayerName(udg_Temp_Player) + " : Recovering Energy" ))
        else
        endif
        if ( Trig_AI_Itemizing_Func007Func014C() ) then
            call SetUnitLifePercentBJ(udg_Temp_Unit, 100)
            call SetUnitManaPercentBJ(udg_Temp_Unit, 100)
            call AdjustPlayerStateBJ(- 550, udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
        else
            if ( Trig_AI_Itemizing_Func007Func014Func001C() ) then
                call SetUnitLifePercentBJ(udg_Temp_Unit, ( GetUnitManaPercent(udg_Temp_Unit) + 30.00 ))
                call SetUnitManaPercentBJ(udg_Temp_Unit, 100)
                call AdjustPlayerStateBJ(- 300, udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
            else
                if ( Trig_AI_Itemizing_Func007Func014Func001Func001C() ) then
                    call SetUnitLifePercentBJ(udg_Temp_Unit, ( GetUnitLifePercent(udg_Temp_Unit) + 15.00 ))
                    call AdjustPlayerStateBJ(- 100, udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
                else
                    call SetUnitLifePercentBJ(udg_Temp_Unit, ( GetUnitLifePercent(udg_Temp_Unit) + 5.00 ))
                endif
            endif
        endif
        call AddSpecialEffectTargetUnitBJ("origin", udg_Temp_Unit, "Abilities\\Spells\\Human\\Heal\\HealTarget.mdl")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
        if ( Trig_AI_Itemizing_Func007Func017C() ) then
            set udg_Temp_Point=GetRandomLocInRect(gg_rct_Undead)
        else
            set udg_Temp_Point=GetRandomLocInRect(gg_rct_NE)
        endif
        call IssuePointOrderLocBJ(udg_Temp_Unit, "attack", udg_Temp_Point)
        if ( Trig_AI_Itemizing_Func007Func019C() ) then
            call DisplayTextToForce(GetPlayersAllies(udg_Temp_Player), ( GetPlayerName(udg_Temp_Player) + " : Advancing to Enemy Base" ))
        else
        endif
        call RemoveLocation(udg_Temp_Point)
        set udg_AIRetreating[udg_AINumber]=false
    else
    endif
endfunction

//===========================================================================
function InitTrig_AI_Itemizing takes nothing returns nothing
    set gg_trg_AI_Itemizing=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_AI_Itemizing, gg_rct_NEF)
    call TriggerRegisterEnterRectSimple(gg_trg_AI_Itemizing, gg_rct_UF)
    call TriggerRegisterEnterRectSimple(gg_trg_AI_Itemizing, gg_rct_NE)
    call TriggerRegisterEnterRectSimple(gg_trg_AI_Itemizing, gg_rct_Undead)
    call TriggerAddAction(gg_trg_AI_Itemizing, function Trig_AI_Itemizing_Actions)
endfunction

//===========================================================================
// Trigger: AI Retreat
//===========================================================================
function Trig_AI_Retreat_Func004Func001Func001C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Retreat_Func004Func001Func004Func002C takes nothing returns boolean
    if ( not ( udg_AIReport == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Retreat_Func004Func001Func004C takes nothing returns boolean
    if ( not ( udg_AIRetreating[udg_AINumber] != true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Retreat_Func004Func001Func005C takes nothing returns boolean
    if ( ( GetUnitLifePercent(udg_Temp_Unit) <= 25.00 ) ) then
        return true
    endif
    if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_Temp_Unit) <= 500.00 ) ) then
        return true
    endif
    return false
endfunction

function Trig_AI_Retreat_Func004Func001C takes nothing returns boolean
    if ( not Trig_AI_Retreat_Func004Func001Func005C() ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Retreat_Func004C takes nothing returns boolean
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(6) ) ) then
        return false
    endif
    if ( not ( IsUnitType(udg_Temp_Unit, UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Retreat_Actions takes nothing returns nothing
    set udg_Temp_Unit=GetTriggerUnit()
    set udg_Temp_Player=GetOwningPlayer(udg_Temp_Unit)
    set udg_AINumber=GetConvertedPlayerId(udg_Temp_Player)
    if ( Trig_AI_Retreat_Func004C() ) then
        if ( Trig_AI_Retreat_Func004Func001C() ) then
            if ( Trig_AI_Retreat_Func004Func001Func001C() ) then
                set udg_Temp_Point=GetRectCenter(gg_rct_NEF)
            else
                set udg_Temp_Point=GetRectCenter(gg_rct_UF)
            endif
            call IssuePointOrderLocBJ(udg_Temp_Unit, "move", udg_Temp_Point)
            call RemoveLocation(udg_Temp_Point)
            if ( Trig_AI_Retreat_Func004Func001Func004C() ) then
                set udg_AIRetreating[udg_AINumber]=true
                if ( Trig_AI_Retreat_Func004Func001Func004Func002C() ) then
                    call DisplayTextToForce(GetPlayersAllies(udg_Temp_Player), ( GetPlayerName(udg_Temp_Player) + " : Retreating to Fountain" ))
                else
                endif
            else
            endif
        else
        endif
    else
    endif
endfunction

//===========================================================================
function InitTrig_AI_Retreat takes nothing returns nothing
    set gg_trg_AI_Retreat=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Retreat, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddAction(gg_trg_AI_Retreat, function Trig_AI_Retreat_Actions)
endfunction

//===========================================================================
// Trigger: AI Restart Attack
//===========================================================================
function Trig_AI_Restart_Attack_Func004Func001Func004C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Restart_Attack_Func004Func001Func007C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Restart_Attack_Func004Func001Func010C takes nothing returns boolean
    if ( not ( udg_AIReport == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Restart_Attack_Func004Func001Func011C takes nothing returns boolean
    if ( ( GetUnitLifePercent(udg_Temp_Unit) <= 30.00 ) ) then
        return true
    endif
    if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_Temp_Unit) <= 250.00 ) ) then
        return true
    endif
    return false
endfunction

function Trig_AI_Restart_Attack_Func004Func001C takes nothing returns boolean
    if ( not ( IsUnitType(udg_Temp_Unit, UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not Trig_AI_Restart_Attack_Func004Func001Func011C() ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Restart_Attack_Func004Func005C takes nothing returns boolean
    if ( ( udg_Temp_Player == Player(8) ) ) then
        return true
    endif
    if ( ( udg_Temp_Player == Player(9) ) ) then
        return true
    endif
    if ( ( IsUnitType(udg_Temp_Unit, UNIT_TYPE_HERO) == true ) ) then
        return true
    endif
    return false
endfunction

function Trig_AI_Restart_Attack_Func004C takes nothing returns boolean
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(6) ) ) then
        return false
    endif
    if ( not Trig_AI_Restart_Attack_Func004Func005C() ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Restart_Attack_Actions takes nothing returns nothing
    set udg_Temp_Unit=GetTriggerUnit()
    set udg_Temp_Player=GetOwningPlayer(udg_Temp_Unit)
    set udg_AINumber=GetConvertedPlayerId(udg_Temp_Player)
    if ( Trig_AI_Restart_Attack_Func004C() ) then
        if ( Trig_AI_Restart_Attack_Func004Func001C() ) then
            // Retreat
            if ( Trig_AI_Restart_Attack_Func004Func001Func007C() ) then
                set udg_Temp_Point=GetRectCenter(gg_rct_NEF)
            else
                set udg_Temp_Point=GetRectCenter(gg_rct_UF)
            endif
            call IssuePointOrderLocBJ(udg_Temp_Unit, "move", udg_Temp_Point)
            call RemoveLocation(udg_Temp_Point)
            if ( Trig_AI_Restart_Attack_Func004Func001Func010C() ) then
                call DisplayTextToForce(GetPlayersAllies(udg_Temp_Player), ( GetPlayerName(udg_Temp_Player) + " : Retreating to Fountain" ))
            else
            endif
        else
            // Attack
            if ( Trig_AI_Restart_Attack_Func004Func001Func004C() ) then
                set udg_Temp_Point=GetRandomLocInRect(gg_rct_Undead)
            else
                set udg_Temp_Point=GetRandomLocInRect(gg_rct_NE)
            endif
            call IssuePointOrderLocBJ(udg_Temp_Unit, "attack", udg_Temp_Point)
            call RemoveLocation(udg_Temp_Point)
        endif
    else
    endif
endfunction

//===========================================================================
function InitTrig_AI_Restart_Attack takes nothing returns nothing
    set gg_trg_AI_Restart_Attack=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Restart_Attack, EVENT_PLAYER_UNIT_SPELL_ENDCAST)
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Restart_Attack, EVENT_PLAYER_UNIT_SPELL_FINISH)
    call TriggerAddAction(gg_trg_AI_Restart_Attack, function Trig_AI_Restart_Attack_Actions)
endfunction

//===========================================================================
// Trigger: AI Dies
//===========================================================================
function Trig_AI_Dies_Func003Func008C takes nothing returns boolean
    if ( not ( udg_AIReport == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Dies_Func003Func009C takes nothing returns boolean
    if ( not ( udg_DeadAI == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Dies_Func003C takes nothing returns boolean
    if ( not ( IsUnitType(udg_Temp_Unit, UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(6) ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Dies_Actions takes nothing returns nothing
    set udg_Temp_Player=GetTriggerPlayer()
    set udg_Temp_Unit=GetTriggerUnit()
    if ( Trig_AI_Dies_Func003C() ) then
        set udg_AINumber=GetConvertedPlayerId(udg_Temp_Player)
        set udg_RevivalTimer[udg_AINumber]=( I2R(GetHeroLevel(udg_Temp_Unit)) * 10.00 )
        set udg_RevivalTimer[udg_AINumber]=( udg_RevivalTimer[udg_AINumber] + 10.00 )
        set udg_LoopExist[udg_AINumber]=true
        set udg_AIHeroDead[udg_AINumber]=udg_Temp_Unit
        set udg_DeadAI=( udg_DeadAI + 1 )
        set udg_AIRetreating[udg_AINumber]=true
        if ( Trig_AI_Dies_Func003Func008C() ) then
            call DisplayTextToForce(GetPlayersAll(), ( GetPlayerName(udg_Temp_Player) + " : I have been slain!" ))
        else
        endif
        if ( Trig_AI_Dies_Func003Func009C() ) then
            call EnableTrigger(gg_trg_AI_Return)
        else
        endif
    else
    endif
endfunction

//===========================================================================
function InitTrig_AI_Dies takes nothing returns nothing
    set gg_trg_AI_Dies=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Dies, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(gg_trg_AI_Dies, function Trig_AI_Dies_Actions)
endfunction

//===========================================================================
// Trigger: AI Return
//===========================================================================
function Trig_AI_Return_Func001Func001Func002Func004C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Return_Func001Func001Func002Func005Func003C takes nothing returns boolean
    if ( not ( udg_AIReport == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Return_Func001Func001Func002Func005C takes nothing returns boolean
    if ( not ( GetPlayerStructureCount(udg_Temp_Player, false) > 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Return_Func001Func001Func002Func009C takes nothing returns boolean
    if ( not ( udg_DeadAI == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Return_Func001Func001Func002C takes nothing returns boolean
    if ( not ( udg_RevivalTimer[udg_Temp_Loop] > 0.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Return_Func001Func001C takes nothing returns boolean
    if ( not ( udg_LoopExist[udg_Temp_Loop] == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Return_Actions takes nothing returns nothing
    set udg_Temp_Loop=1
    loop
        exitwhen udg_Temp_Loop > 16
        if ( Trig_AI_Return_Func001Func001C() ) then
            if ( Trig_AI_Return_Func001Func001Func002C() ) then
                set udg_RevivalTimer[udg_Temp_Loop]=( udg_RevivalTimer[udg_Temp_Loop] - 0.03 )
            else
                set udg_AINumber=udg_Temp_Loop
                set udg_Temp_Player=ConvertedPlayer(udg_Temp_Loop)
                if ( Trig_AI_Return_Func001Func001Func002Func004C() ) then
                    set udg_RevPoint=GetRectCenter(gg_rct_NE)
                else
                    set udg_RevPoint=GetRectCenter(gg_rct_Undead)
                endif
                if ( Trig_AI_Return_Func001Func001Func002Func005C() ) then
                    call ReviveHeroLoc(udg_AIHeroDead[udg_Temp_Loop], udg_RevPoint, true)
                    if ( Trig_AI_Return_Func001Func001Func002Func005Func003C() ) then
                        call DisplayTextToForce(GetPlayersAll(), ( GetPlayerName(udg_Temp_Player) + " : I have returned!" ))
                    else
                    endif
                else
                endif
                set udg_LoopExist[udg_Temp_Loop]=false
                set udg_DeadAI=( udg_DeadAI - 1 )
                call RemoveLocation(udg_RevPoint)
                if ( Trig_AI_Return_Func001Func001Func002Func009C() ) then
                    call DisableTrigger(GetTriggeringTrigger())
                else
                endif
            endif
        else
        endif
        set udg_Temp_Loop=udg_Temp_Loop + 1
    endloop
endfunction

//===========================================================================
function InitTrig_AI_Return takes nothing returns nothing
    set gg_trg_AI_Return=CreateTrigger()
    call DisableTrigger(gg_trg_AI_Return)
    call TriggerRegisterTimerEventPeriodic(gg_trg_AI_Return, 0.03)
    call TriggerAddAction(gg_trg_AI_Return, function Trig_AI_Return_Actions)
endfunction

//===========================================================================
// Trigger: AI Upgrades
//===========================================================================
function Trig_AI_Upgrades_Func001A takes nothing returns nothing
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R000')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R005')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R006')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R001')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R003')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R004')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R002')
endfunction

function Trig_AI_Upgrades_Func002A takes nothing returns nothing
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R000')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R005')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R006')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R001')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R002')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R004')
    call IssueUpgradeOrderByIdBJ(GetEnumUnit(), 'R003')
endfunction

function Trig_AI_Upgrades_Actions takes nothing returns nothing
    call ForGroupBJ(udg_AncAltar, function Trig_AI_Upgrades_Func001A)
    call ForGroupBJ(udg_FallAltar, function Trig_AI_Upgrades_Func002A)
endfunction

//===========================================================================
function InitTrig_AI_Upgrades takes nothing returns nothing
    set gg_trg_AI_Upgrades=CreateTrigger()
    call DisableTrigger(gg_trg_AI_Upgrades)
    call TriggerRegisterTimerEventPeriodic(gg_trg_AI_Upgrades, 60.00)
    call TriggerAddAction(gg_trg_AI_Upgrades, function Trig_AI_Upgrades_Actions)
endfunction

//===========================================================================
// Trigger: AI Orb
//===========================================================================
function Trig_AI_Orb_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I019' ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Orb_Func002C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 10) <= 5 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Orb_Actions takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    if ( Trig_AI_Orb_Func002C() ) then
        call UnitAddItemByIdSwapped('I009', GetTriggerUnit())
    else
        call UnitAddItemByIdSwapped('I015', GetTriggerUnit())
    endif
endfunction

//===========================================================================
function InitTrig_AI_Orb takes nothing returns nothing
    set gg_trg_AI_Orb=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Orb, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_AI_Orb, Condition(function Trig_AI_Orb_Conditions))
    call TriggerAddAction(gg_trg_AI_Orb, function Trig_AI_Orb_Actions)
endfunction

//===========================================================================
// Trigger: AI Artifact
//===========================================================================
function Trig_AI_Artifact_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I01A' ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Artifact_Actions takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    call UnitAddItemByIdSwapped(ChooseRandomItemExBJ(1, ITEM_TYPE_ARTIFACT), GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_AI_Artifact takes nothing returns nothing
    set gg_trg_AI_Artifact=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Artifact, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_AI_Artifact, Condition(function Trig_AI_Artifact_Conditions))
    call TriggerAddAction(gg_trg_AI_Artifact, function Trig_AI_Artifact_Actions)
endfunction

//===========================================================================
// Trigger: AI Essence
//===========================================================================
function Trig_AI_Essence_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I01I' ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Essence_Actions takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    call UnitAddItemByIdSwapped(ChooseRandomItemExBJ(8, ITEM_TYPE_PURCHASABLE), GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_AI_Essence takes nothing returns nothing
    set gg_trg_AI_Essence=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Essence, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_AI_Essence, Condition(function Trig_AI_Essence_Conditions))
    call TriggerAddAction(gg_trg_AI_Essence, function Trig_AI_Essence_Actions)
endfunction

//===========================================================================
// Trigger: AI Combat Item
//===========================================================================
function Trig_AI_Combat_Item_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I01B' ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Combat_Item_Func002Func001C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 10) <= 5 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Combat_Item_Func002C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 10) <= 3 ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Combat_Item_Actions takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
    if ( Trig_AI_Combat_Item_Func002C() ) then
        call UnitAddItemByIdSwapped(ChooseRandomItemExBJ(8, ITEM_TYPE_PERMANENT), GetTriggerUnit())
    else
        if ( Trig_AI_Combat_Item_Func002Func001C() ) then
            call UnitAddItemByIdSwapped(ChooseRandomItemExBJ(8, ITEM_TYPE_CAMPAIGN), GetTriggerUnit())
        else
            call UnitAddItemByIdSwapped(ChooseRandomItemExBJ(8, ITEM_TYPE_MISCELLANEOUS), GetTriggerUnit())
        endif
    endif
endfunction

//===========================================================================
function InitTrig_AI_Combat_Item takes nothing returns nothing
    set gg_trg_AI_Combat_Item=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_AI_Combat_Item, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_AI_Combat_Item, Condition(function Trig_AI_Combat_Item_Conditions))
    call TriggerAddAction(gg_trg_AI_Combat_Item, function Trig_AI_Combat_Item_Actions)
endfunction

//===========================================================================
// Trigger: AI Reset
//===========================================================================
function Trig_AI_Reset_Func002Func004Func001Func004C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Reset_Func002Func004Func001Func007C takes nothing returns boolean
    if ( not ( GetPlayerRace(udg_Temp_Player) == RACE_NIGHTELF ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Reset_Func002Func004Func001Func010C takes nothing returns boolean
    if ( not ( udg_AIReport == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Reset_Func002Func004Func001Func011C takes nothing returns boolean
    if ( ( GetUnitLifePercent(udg_Temp_Unit) <= 30.00 ) ) then
        return true
    endif
    if ( ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_Temp_Unit) <= 250.00 ) ) then
        return true
    endif
    return false
endfunction

function Trig_AI_Reset_Func002Func004Func001C takes nothing returns boolean
    if ( not ( IsUnitType(udg_Temp_Unit, UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not Trig_AI_Reset_Func002Func004Func001Func011C() ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Reset_Func002Func004Func005C takes nothing returns boolean
    if ( ( udg_Temp_Player == Player(8) ) ) then
        return true
    endif
    if ( ( udg_Temp_Player == Player(9) ) ) then
        return true
    endif
    if ( ( IsUnitType(udg_Temp_Unit, UNIT_TYPE_HERO) == true ) ) then
        return true
    endif
    return false
endfunction

function Trig_AI_Reset_Func002Func004C takes nothing returns boolean
    if ( not ( GetPlayerController(udg_Temp_Player) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(2) ) ) then
        return false
    endif
    if ( not ( udg_Temp_Player != Player(6) ) ) then
        return false
    endif
    if ( not Trig_AI_Reset_Func002Func004Func005C() ) then
        return false
    endif
    return true
endfunction

function Trig_AI_Reset_Func002A takes nothing returns nothing
    set udg_Temp_Unit=GetTriggerUnit()
    set udg_Temp_Player=GetOwningPlayer(udg_Temp_Unit)
    set udg_AINumber=GetConvertedPlayerId(udg_Temp_Player)
    if ( Trig_AI_Reset_Func002Func004C() ) then
        if ( Trig_AI_Reset_Func002Func004Func001C() ) then
            // Retreat
            if ( Trig_AI_Reset_Func002Func004Func001Func007C() ) then
                set udg_Temp_Point=GetRectCenter(gg_rct_NEF)
            else
                set udg_Temp_Point=GetRectCenter(gg_rct_UF)
            endif
            call IssuePointOrderLocBJ(udg_Temp_Unit, "move", udg_Temp_Point)
            call RemoveLocation(udg_Temp_Point)
            if ( Trig_AI_Reset_Func002Func004Func001Func010C() ) then
                call DisplayTextToForce(GetPlayersAllies(udg_Temp_Player), ( GetPlayerName(udg_Temp_Player) + " : Retreating to Fountain" ))
            else
            endif
        else
            // Attack
            if ( Trig_AI_Reset_Func002Func004Func001Func004C() ) then
                set udg_Temp_Point=GetRandomLocInRect(gg_rct_Undead)
            else
                set udg_Temp_Point=GetRandomLocInRect(gg_rct_NE)
            endif
            call IssuePointOrderLocBJ(udg_Temp_Unit, "attack", udg_Temp_Point)
            call RemoveLocation(udg_Temp_Point)
        endif
    else
    endif
endfunction

function Trig_AI_Reset_Actions takes nothing returns nothing
    call ForGroupBJ(udg_AIHeroes, function Trig_AI_Reset_Func002A)
endfunction

//===========================================================================
function InitTrig_AI_Reset takes nothing returns nothing
    set gg_trg_AI_Reset=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_AI_Reset, 15.00)
    call TriggerAddAction(gg_trg_AI_Reset, function Trig_AI_Reset_Actions)
endfunction

//===========================================================================
// Trigger: SkillData
//===========================================================================
function Trig_SkillData_Actions takes nothing returns nothing
    // Eye of Darkness
    set udg_SKILL_EXTRA_NORMAL=1
    set udg_SKILL_EXTRA_UPGRADED=2
    set udg_SKILL_HEAVEN_BRACER_EXP=30.00
    set udg_SKILL_DARK_EYE_COMMON_TRIGGER=0.00
    set udg_SKILL_DARK_EYE_COMMON_COOLDOWN=20.00
    set udg_SKILL_DARK_EYE_ULTI_TRIGGER=20.00
    set udg_SKILL_DARK_EYE_ULTI_COOLDOWN=180.00
    set udg_SKILL_DARK_EYE_PASSIVE_CHANCE=20
    // Nature Force
    set udg_SKILL_NATURE_FORCE_HP_BONUS=250
    // Death Coil
    set udg_SKILL_DEATH_COIL_DEF_CD=10.00
    set udg_SKILL_DEATH_COIL_SELF_CD=5.00
endfunction

//===========================================================================
function InitTrig_SkillData takes nothing returns nothing
    set gg_trg_SkillData=CreateTrigger()
    call TriggerAddAction(gg_trg_SkillData, function Trig_SkillData_Actions)
endfunction

//===========================================================================
// Trigger: Upgrade Skill
//===========================================================================
function Trig_Upgrade_Skill_Conditions takes nothing returns boolean
    if ( not ( GetResearched() == 'R000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Upgrade_Skill_Func001001002 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true )
endfunction

function Trig_Upgrade_Skill_Func001A takes nothing returns nothing
    call SetUnitAbilityLevelSwapped('A00A', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('S000', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00E', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A009', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A008', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00K', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00L', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00B', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00M', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00I', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00D', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A01D', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00C', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A01E', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('S002', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('S001', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00F', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A006', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A024', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00G', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00Q', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00N', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A007', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00O', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00P', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00H', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00R', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00Y', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A00J', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A020', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A01P', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A02Y', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A03G', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A049', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A048', GetEnumUnit(), 2)
endfunction

function Trig_Upgrade_Skill_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsOfPlayerMatching(GetTriggerPlayer(), Condition(function Trig_Upgrade_Skill_Func001001002)), function Trig_Upgrade_Skill_Func001A)
endfunction

//===========================================================================
function InitTrig_Upgrade_Skill takes nothing returns nothing
    set gg_trg_Upgrade_Skill=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Upgrade_Skill, EVENT_PLAYER_UNIT_RESEARCH_FINISH)
    call TriggerAddCondition(gg_trg_Upgrade_Skill, Condition(function Trig_Upgrade_Skill_Conditions))
    call TriggerAddAction(gg_trg_Upgrade_Skill, function Trig_Upgrade_Skill_Actions)
endfunction

//===========================================================================
// Trigger: Day and Night Skills Index
//===========================================================================
function Trig_Day_and_Night_Skills_Index_Actions takes nothing returns nothing
    // DAY
    set udg_DaySkill[1]='S002'
    set udg_DaySkill[2]='A005'
    set udg_DaySkill[3]='A00T'
    set udg_DaySkill[4]='A011'
    set udg_DaySkill[5]='A00C'
    // NIGHT
    set udg_NightSkill[1]='S001'
    set udg_NightSkill[2]='A004'
    set udg_NightSkill[3]='A00S'
    set udg_NightSkill[4]='A012'
    set udg_NightSkill[5]='A01E'
    // Total
    set udg_MaxSwitchSkill=5
endfunction

//===========================================================================
function InitTrig_Day_and_Night_Skills_Index takes nothing returns nothing
    set gg_trg_Day_and_Night_Skills_Index=CreateTrigger()
    call TriggerAddAction(gg_trg_Day_and_Night_Skills_Index, function Trig_Day_and_Night_Skills_Index_Actions)
endfunction

//===========================================================================
// Trigger: Day and Night Skills Switch
//===========================================================================
function Trig_Day_and_Night_Skills_Switch_Func001Func001A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    set udg_SkillLoop=1
    loop
        exitwhen udg_SkillLoop > udg_MaxSwitchSkill
        call SetPlayerAbilityAvailableBJ(false, udg_DaySkill[udg_SkillLoop], udg_Temp_Player)
        call SetPlayerAbilityAvailableBJ(true, udg_NightSkill[udg_SkillLoop], udg_Temp_Player)
        set udg_SkillLoop=udg_SkillLoop + 1
    endloop
endfunction

function Trig_Day_and_Night_Skills_Switch_Func001Func002Func002Func003Func004C takes nothing returns boolean
    if ( ( udg_DaySkill[udg_SkillLoop] == 'A011' ) ) then
        return true
    endif
    if ( ( udg_DaySkill[udg_SkillLoop] == 'A005' ) ) then
        return true
    endif
    return false
endfunction

function Trig_Day_and_Night_Skills_Switch_Func001Func002Func002Func003C takes nothing returns boolean
    if ( not ( GetPlayerTechCountSimple('R000', udg_Temp_Player) == 1 ) ) then
        return false
    endif
    if ( not Trig_Day_and_Night_Skills_Switch_Func001Func002Func002Func003Func004C() ) then
        return false
    endif
    return true
endfunction

function Trig_Day_and_Night_Skills_Switch_Func001Func002A takes nothing returns nothing
    set udg_Temp_Player=GetEnumPlayer()
    set udg_SkillLoop=1
    loop
        exitwhen udg_SkillLoop > udg_MaxSwitchSkill
        call SetPlayerAbilityAvailableBJ(true, udg_DaySkill[udg_SkillLoop], udg_Temp_Player)
        call SetPlayerAbilityAvailableBJ(false, udg_NightSkill[udg_SkillLoop], udg_Temp_Player)
        if ( Trig_Day_and_Night_Skills_Switch_Func001Func002Func002Func003C() ) then
            call SetPlayerAbilityAvailableBJ(false, udg_DaySkill[udg_SkillLoop], udg_Temp_Player)
            call SetPlayerAbilityAvailableBJ(true, udg_NightSkill[udg_SkillLoop], udg_Temp_Player)
        else
        endif
        set udg_SkillLoop=udg_SkillLoop + 1
    endloop
endfunction

function Trig_Day_and_Night_Skills_Switch_Func001C takes nothing returns boolean
    if ( not ( GetTimeOfDay() == 6.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Day_and_Night_Skills_Switch_Actions takes nothing returns nothing
    if ( Trig_Day_and_Night_Skills_Switch_Func001C() ) then
        call ForForce(GetPlayersAll(), function Trig_Day_and_Night_Skills_Switch_Func001Func002A)
    else
        call ForForce(GetPlayersAll(), function Trig_Day_and_Night_Skills_Switch_Func001Func001A)
    endif
endfunction

//===========================================================================
function InitTrig_Day_and_Night_Skills_Switch takes nothing returns nothing
    set gg_trg_Day_and_Night_Skills_Switch=CreateTrigger()
    call TriggerRegisterGameStateEventTimeOfDay(gg_trg_Day_and_Night_Skills_Switch, EQUAL, 6.00)
    call TriggerRegisterGameStateEventTimeOfDay(gg_trg_Day_and_Night_Skills_Switch, EQUAL, 18.00)
    call TriggerAddAction(gg_trg_Day_and_Night_Skills_Switch, function Trig_Day_and_Night_Skills_Switch_Actions)
endfunction

//===========================================================================
// Trigger: Dummy Hero Skill Index
//===========================================================================
function Trig_Dummy_Hero_Skill_Index_Actions takes nothing returns nothing
    // BASE USELESS DUMMY SPELL
    set udg_DummySkill[1]='A00U'
    // SKILL 1
    set udg_RealSkill1[1]='A00T'
    // SKILL 2
    set udg_RealSkill2[1]='A00S'
    // Total Dummy Skill
    set udg_DummySkillTotal=1
endfunction

//===========================================================================
function InitTrig_Dummy_Hero_Skill_Index takes nothing returns nothing
    set gg_trg_Dummy_Hero_Skill_Index=CreateTrigger()
    call TriggerAddAction(gg_trg_Dummy_Hero_Skill_Index, function Trig_Dummy_Hero_Skill_Index_Actions)
endfunction

//===========================================================================
// Trigger: Dummy Hero Skills Adding
//===========================================================================
function Trig_Dummy_Hero_Skills_Adding_Func002Func002C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped(udg_DummySkill[udg_DummySkillLoop], udg_Temp_Unit) <= 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Dummy_Hero_Skills_Adding_Actions takes nothing returns nothing
    set udg_Temp_Unit=GetTriggerUnit()
    set udg_DummySkillLoop=1
    loop
        exitwhen udg_DummySkillLoop > udg_DummySkillTotal
        if GetLearnedSkill() == udg_DummySkill[udg_DummySkillLoop] then
        if ( Trig_Dummy_Hero_Skills_Adding_Func002Func002C() ) then
            call UnitAddAbilityBJ(udg_RealSkill1[udg_DummySkillLoop], udg_Temp_Unit)
            call UnitAddAbilityBJ(udg_RealSkill2[udg_DummySkillLoop], udg_Temp_Unit)
        else
            call IncUnitAbilityLevelSwapped(udg_RealSkill1[udg_DummySkillLoop], udg_Temp_Unit)
            call IncUnitAbilityLevelSwapped(udg_RealSkill2[udg_DummySkillLoop], udg_Temp_Unit)
        endif
        endif
        set udg_DummySkillLoop=udg_DummySkillLoop + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Dummy_Hero_Skills_Adding takes nothing returns nothing
    set gg_trg_Dummy_Hero_Skills_Adding=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Dummy_Hero_Skills_Adding, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(gg_trg_Dummy_Hero_Skills_Adding, function Trig_Dummy_Hero_Skills_Adding_Actions)
endfunction

//===========================================================================
// Trigger: Empowered Elementals
//===========================================================================
function Trig_Empowered_Elementals_Func004C takes nothing returns boolean
    if ( ( GetUnitTypeId(GetSummonedUnit()) == 'hwat' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetSummonedUnit()) == 'hwt2' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetSummonedUnit()) == 'hwt3' ) ) then
        return true
    endif
    return false
endfunction

function Trig_Empowered_Elementals_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetSummoningUnit()) == 'H005' ) ) then
        return false
    endif
    if ( not Trig_Empowered_Elementals_Func004C() ) then
        return false
    endif
    return true
endfunction

function Trig_Empowered_Elementals_Actions takes nothing returns nothing
    call BlzSetUnitMaxHP(GetSummonedUnit(), ( BlzGetUnitMaxHP(GetSummonedUnit()) + ( GetUnitAbilityLevelSwapped('A018', GetSummoningUnit()) * GetHeroStatBJ(bj_HEROSTAT_INT, GetSummoningUnit(), true) ) ))
    call SetUnitLifePercentBJ(GetSummonedUnit(), 100)
endfunction

//===========================================================================
function InitTrig_Empowered_Elementals takes nothing returns nothing
    set gg_trg_Empowered_Elementals=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Empowered_Elementals, EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(gg_trg_Empowered_Elementals, Condition(function Trig_Empowered_Elementals_Conditions))
    call TriggerAddAction(gg_trg_Empowered_Elementals, function Trig_Empowered_Elementals_Actions)
endfunction

//===========================================================================
// Trigger: Elune Arrow
//===========================================================================
function Trig_Elune_Arrow_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A00Z' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Elune_Arrow_Func002C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 100) <= 25 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Elune_Arrow_Actions takes nothing returns nothing
    set udg_TempInt=GetUnitAbilityLevelSwapped('A00Z', GetTriggerUnit())
    if ( Trig_Elune_Arrow_Func002C() ) then
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A00Z', udg_TempInt, 2.00)
        call BlzSetUnitAbilityManaCost(GetTriggerUnit(), 'A00Z', udg_TempInt, 0)
    else
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A00Z', udg_TempInt, 10.00)
        call BlzSetUnitAbilityManaCost(GetTriggerUnit(), 'A00Z', udg_TempInt, 125)
    endif
endfunction

//===========================================================================
function InitTrig_Elune_Arrow takes nothing returns nothing
    set gg_trg_Elune_Arrow=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Elune_Arrow, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Elune_Arrow, Condition(function Trig_Elune_Arrow_Conditions))
    call TriggerAddAction(gg_trg_Elune_Arrow, function Trig_Elune_Arrow_Actions)
endfunction

//===========================================================================
// Trigger: Star Rain
//===========================================================================
function Trig_Star_Rain_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A01I' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Star_Rain_Actions takes nothing returns nothing
    set udg_Temp_Point=GetSpellTargetLoc()
    set udg_Temp_Loop=1
    loop
        exitwhen udg_Temp_Loop > 4
        set udg_Temp_Point_2=PolarProjectionBJ(udg_Temp_Point, GetRandomReal(0, 1000.00), GetRandomDirectionDeg())
        call CreateNUnitsAtLoc(1, 'e00B', GetOwningPlayer(GetTriggerUnit()), udg_Temp_Point_2, bj_UNIT_FACING)
        call RemoveGuardPosition(GetLastCreatedUnit())
        call LockGuardPosition(GetLastCreatedUnit())
        call UnitAddAbilityBJ('A01J', GetLastCreatedUnit())
        call UnitAddAbilityBJ('A01K', GetLastCreatedUnit())
        call SetUnitAbilityLevelSwapped('A01J', GetLastCreatedUnit(), GetUnitAbilityLevelSwapped('A03I', GetTriggerUnit()))
        call IssueImmediateOrderBJ(GetLastCreatedUnit(), "starfall")
        call UnitApplyTimedLifeBJ(15.00, 'BTLF', GetLastCreatedUnit())
        call RemoveLocation(udg_Temp_Point_2)
        set udg_Temp_Loop=udg_Temp_Loop + 1
    endloop
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Star_Rain takes nothing returns nothing
    set gg_trg_Star_Rain=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Star_Rain, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Star_Rain, Condition(function Trig_Star_Rain_Conditions))
    call TriggerAddAction(gg_trg_Star_Rain, function Trig_Star_Rain_Actions)
endfunction

//===========================================================================
// Trigger: Holy Aura
//===========================================================================
function Trig_Holy_Aura_Conditions takes nothing returns boolean
    if ( not ( GetLearnedSkillBJ() == 'A027' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Holy_Aura_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A017', GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_Holy_Aura takes nothing returns nothing
    set gg_trg_Holy_Aura=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Holy_Aura, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(gg_trg_Holy_Aura, Condition(function Trig_Holy_Aura_Conditions))
    call TriggerAddAction(gg_trg_Holy_Aura, function Trig_Holy_Aura_Actions)
endfunction

//===========================================================================
// Trigger: Exorcism
//===========================================================================
function Trig_Exorcism_Conditions takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A016', GetTriggerUnit()) == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Exorcism_Func003Func001C takes nothing returns boolean
    if ( not ( IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(GetTriggerUnit())) == true ) ) then
        return false
    endif
    if ( not ( IsUnitAliveBJ(GetEnumUnit()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Exorcism_Func003A takes nothing returns nothing
    if ( Trig_Exorcism_Func003Func001C() ) then
        call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), ( 50.00 + ( 2.00 * ( I2R(GetHeroStatBJ(bj_HEROSTAT_STR, GetTriggerUnit(), true)) + I2R(GetHeroStatBJ(bj_HEROSTAT_INT, GetTriggerUnit(), true)) ) ) ), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
    else
    endif
endfunction

function Trig_Exorcism_Actions takes nothing returns nothing
    set udg_Temp_Point=GetUnitLoc(GetTriggerUnit())
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocAll(400.00, udg_Temp_Point), function Trig_Exorcism_Func003A)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Exorcism takes nothing returns nothing
    set gg_trg_Exorcism=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Exorcism, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Exorcism, Condition(function Trig_Exorcism_Conditions))
    call TriggerAddAction(gg_trg_Exorcism, function Trig_Exorcism_Actions)
endfunction

//===========================================================================
// Trigger: No Autocast Blood Money
//===========================================================================
function Trig_No_Autocast_Blood_Money_Func004C takes nothing returns boolean
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'N000' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'N006' ) ) then
        return true
    endif
    return false
endfunction

function Trig_No_Autocast_Blood_Money_Conditions takes nothing returns boolean
    if ( not ( GetIssuedOrderIdBJ() == String2OrderIdBJ("faeriefireon") ) ) then
        return false
    endif
    if ( not Trig_No_Autocast_Blood_Money_Func004C() ) then
        return false
    endif
    return true
endfunction

function Trig_No_Autocast_Blood_Money_Actions takes nothing returns nothing
    call TriggerSleepAction(0.00)
    call IssueImmediateOrderBJ(GetTriggerUnit(), "faeriefireoff")
endfunction

//===========================================================================
function InitTrig_No_Autocast_Blood_Money takes nothing returns nothing
    set gg_trg_No_Autocast_Blood_Money=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_No_Autocast_Blood_Money, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(gg_trg_No_Autocast_Blood_Money, Condition(function Trig_No_Autocast_Blood_Money_Conditions))
    call TriggerAddAction(gg_trg_No_Autocast_Blood_Money, function Trig_No_Autocast_Blood_Money_Actions)
endfunction

//===========================================================================
// Trigger: Blood Money Hit
//===========================================================================
function Trig_Blood_Money_Hit_Conditions takes nothing returns boolean
    if ( not ( UnitHasBuffBJ(udg_DamageEventTarget, 'B000') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Blood_Money_Hit_Actions takes nothing returns nothing
    set udg_Temp_Player=GetOwningPlayer(udg_DamageEventTarget)
    set udg_Temp_Player_2=GetOwningPlayer(udg_DamageEventSource)
    // Attacked
    call AdjustPlayerStateBJ(- 5, udg_Temp_Player, PLAYER_STATE_RESOURCE_GOLD)
    call CreateTextTagUnitBJ("TRIGSTR_4954", udg_DamageEventTarget, 0, 10, 100.00, 80.00, 0.00, 0)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 5)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 4)
    call AddSpecialEffectTargetUnitBJ("origin", udg_DamageEventTarget, "Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl")
    call DestroyEffectBJ(GetLastCreatedEffectBJ())
    // Attacking
    call AdjustPlayerStateBJ(5, udg_Temp_Player_2, PLAYER_STATE_RESOURCE_GOLD)
    call CreateTextTagUnitBJ("TRIGSTR_4953", udg_DamageEventSource, 0, 10, 100.00, 80.00, 0.00, 0)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 5)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 4)
endfunction

//===========================================================================
function InitTrig_Blood_Money_Hit takes nothing returns nothing
    set gg_trg_Blood_Money_Hit=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Blood_Money_Hit, "udg_DamageModifierEvent", EQUAL, 1.00)
    call TriggerAddCondition(gg_trg_Blood_Money_Hit, Condition(function Trig_Blood_Money_Hit_Conditions))
    call TriggerAddAction(gg_trg_Blood_Money_Hit, function Trig_Blood_Money_Hit_Actions)
endfunction

//===========================================================================
// Trigger: Will of the Earth
//===========================================================================
function Trig_Will_of_the_Earth_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A02D' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Will_of_the_Earth_Actions takes nothing returns nothing
    call BlzSetUnitArmor(GetTriggerUnit(), ( BlzGetUnitArmor(GetTriggerUnit()) + 3.00 ))
endfunction

//===========================================================================
function InitTrig_Will_of_the_Earth takes nothing returns nothing
    set gg_trg_Will_of_the_Earth=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Will_of_the_Earth, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Will_of_the_Earth, Condition(function Trig_Will_of_the_Earth_Conditions))
    call TriggerAddAction(gg_trg_Will_of_the_Earth, function Trig_Will_of_the_Earth_Actions)
endfunction

//===========================================================================
// Trigger: Totem of Might
//===========================================================================
function Trig_Totem_of_Might_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'o000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Totem_of_Might_Actions takes nothing returns nothing
    call SetUnitAnimation(GetTriggerUnit(), "stand")
endfunction

//===========================================================================
function InitTrig_Totem_of_Might takes nothing returns nothing
    set gg_trg_Totem_of_Might=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Totem_of_Might, GetPlayableMapRect())
    call TriggerAddCondition(gg_trg_Totem_of_Might, Condition(function Trig_Totem_of_Might_Conditions))
    call TriggerAddAction(gg_trg_Totem_of_Might, function Trig_Totem_of_Might_Actions)
endfunction

//===========================================================================
// Trigger: Judgement
//===========================================================================
function Trig_Judgement_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A03N' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Judgement_Func001C takes nothing returns boolean
    if ( not ( BlzGetUnitAbilityCooldown(GetTriggerUnit(), 'A03N', 1) > 300.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Judgement_Actions takes nothing returns nothing
    if ( Trig_Judgement_Func001C() ) then
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A03N', 1, ( BlzGetUnitAbilityCooldown(GetTriggerUnit(), 'A03N', 1) - 15.00 ))
    else
    endif
endfunction

//===========================================================================
function InitTrig_Judgement takes nothing returns nothing
    set gg_trg_Judgement=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Judgement, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Judgement, Condition(function Trig_Judgement_Conditions))
    call TriggerAddAction(gg_trg_Judgement, function Trig_Judgement_Actions)
endfunction

//===========================================================================
// Trigger: Light Blast
//===========================================================================
function Trig_Light_Blast_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A03L' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Light_Blast_Func003Func001C takes nothing returns boolean
    if ( not ( IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(GetTriggerUnit())) == true ) ) then
        return false
    endif
    if ( not ( IsUnitAliveBJ(GetEnumUnit()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Light_Blast_Func003A takes nothing returns nothing
    if ( Trig_Light_Blast_Func003Func001C() ) then
        call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), ( 75.00 + ( 2.25 * I2R(GetHeroStatBJ(bj_HEROSTAT_INT, GetTriggerUnit(), true)) ) ), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
    else
    endif
endfunction

function Trig_Light_Blast_Actions takes nothing returns nothing
    set udg_Temp_Point=GetUnitLoc(GetTriggerUnit())
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocAll(800.00, udg_Temp_Point), function Trig_Light_Blast_Func003A)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Light_Blast takes nothing returns nothing
    set gg_trg_Light_Blast=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Light_Blast, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Light_Blast, Condition(function Trig_Light_Blast_Conditions))
    call TriggerAddAction(gg_trg_Light_Blast, function Trig_Light_Blast_Actions)
endfunction

//===========================================================================
// Trigger: Light Pulse
//===========================================================================
function Trig_Light_Pulse_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A03F' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Light_Pulse_Func003Func001C takes nothing returns boolean
    if ( not ( IsUnitEnemy(GetEnumUnit(), GetOwningPlayer(GetTriggerUnit())) == true ) ) then
        return false
    endif
    if ( not ( IsUnitAliveBJ(GetEnumUnit()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Light_Pulse_Func003A takes nothing returns nothing
    if ( Trig_Light_Pulse_Func003Func001C() ) then
        call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), I2R(GetHeroStatBJ(bj_HEROSTAT_INT, GetTriggerUnit(), true)), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
    else
    endif
endfunction

function Trig_Light_Pulse_Actions takes nothing returns nothing
    set udg_Temp_Point=GetUnitLoc(GetTriggerUnit())
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocAll(5000.00, udg_Temp_Point), function Trig_Light_Pulse_Func003A)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Light_Pulse takes nothing returns nothing
    set gg_trg_Light_Pulse=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Light_Pulse, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Light_Pulse, Condition(function Trig_Light_Pulse_Conditions))
    call TriggerAddAction(gg_trg_Light_Pulse, function Trig_Light_Pulse_Actions)
endfunction

//===========================================================================
// Trigger: Mana Burn
//===========================================================================
function Trig_Mana_Burn_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A02M' ) ) then
        return false
    endif
    if ( not ( GetUnitAbilityLevelSwapped('A02M', GetTriggerUnit()) >= 3 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Mana_Burn_Func001Func001C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A02M', GetTriggerUnit()) == 3 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Mana_Burn_Func001A takes nothing returns nothing
    if ( Trig_Mana_Burn_Func001Func001C() ) then
        call SetUnitManaBJ(GetEnumUnit(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetEnumUnit()) - 100.00 ))
    else
        call SetUnitManaBJ(GetEnumUnit(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetEnumUnit()) - 150.00 ))
    endif
    call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\NightElf\\ManaBurn\\ManaBurnTarget.mdl")
    call DestroyEffectBJ(GetLastCreatedEffectBJ())
endfunction

function Trig_Mana_Burn_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRangeOfLocAll(300.00, udg_Temp_Point), function Trig_Mana_Burn_Func001A)
endfunction

//===========================================================================
function InitTrig_Mana_Burn takes nothing returns nothing
    set gg_trg_Mana_Burn=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Mana_Burn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Mana_Burn, Condition(function Trig_Mana_Burn_Conditions))
    call TriggerAddAction(gg_trg_Mana_Burn, function Trig_Mana_Burn_Actions)
endfunction

//===========================================================================
// Trigger: Eye of Seer
//===========================================================================
function Trig_Eye_of_Seer_Conditions takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A00M', udg_DamageEventTarget) > 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eye_of_Seer_Func001Func001C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A00M', udg_DamageEventTarget) == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eye_of_Seer_Func001C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 10) <= 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eye_of_Seer_Actions takes nothing returns nothing
    if ( Trig_Eye_of_Seer_Func001C() ) then
        if ( Trig_Eye_of_Seer_Func001Func001C() ) then
            call SetUnitLifeBJ(udg_DamageEventTarget, ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_DamageEventTarget) + 25.00 ))
        else
            call SetUnitLifeBJ(udg_DamageEventTarget, ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_DamageEventTarget) + 100.00 ))
        endif
        call AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Orc\\HealingWave\\HealingWaveTarget.mdl")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
    else
    endif
endfunction

//===========================================================================
function InitTrig_Eye_of_Seer takes nothing returns nothing
    set gg_trg_Eye_of_Seer=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Eye_of_Seer, "udg_DamageModifierEvent", EQUAL, 1.00)
    call TriggerAddCondition(gg_trg_Eye_of_Seer, Condition(function Trig_Eye_of_Seer_Conditions))
    call TriggerAddAction(gg_trg_Eye_of_Seer, function Trig_Eye_of_Seer_Actions)
endfunction

//===========================================================================
// Trigger: Elementalist
//===========================================================================
function Trig_Elementalist_Conditions takes nothing returns boolean
    if ( not ( GetLearnedSkillBJ() == 'A02N' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Elementalist_Actions takes nothing returns nothing
    set udg_TempInt=1
    loop
        exitwhen udg_TempInt > 4
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A01Y', udg_TempInt, 7.50)
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A02O', udg_TempInt, 7.50)
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A02P', udg_TempInt, 7.50)
        call BlzSetUnitAbilityManaCost(GetTriggerUnit(), 'A01Y', udg_TempInt, 50)
        call BlzSetUnitAbilityManaCost(GetTriggerUnit(), 'A02O', udg_TempInt, 50)
        call BlzSetUnitAbilityManaCost(GetTriggerUnit(), 'A02P', udg_TempInt, 50)
        set udg_TempInt=udg_TempInt + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Elementalist takes nothing returns nothing
    set gg_trg_Elementalist=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Elementalist, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(gg_trg_Elementalist, Condition(function Trig_Elementalist_Conditions))
    call TriggerAddAction(gg_trg_Elementalist, function Trig_Elementalist_Actions)
endfunction

//===========================================================================
// Trigger: Relocation Magic TP
//===========================================================================
function Trig_Relocation_Magic_TP_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A020' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Relocation_Magic_TP_Func002C takes nothing returns boolean
    if ( not ( UnitHasBuffBJ(GetSpellTargetUnit(), 'B00I') == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Relocation_Magic_TP_Actions takes nothing returns nothing
    set udg_TempInt=GetUnitAbilityLevelSwapped(GetSpellAbilityId(), GetTriggerUnit())
    if ( Trig_Relocation_Magic_TP_Func002C() ) then
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A020', udg_TempInt, 120.00)
    else
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A020', udg_TempInt, 1.00)
    endif
    set udg_Temp_Point=GetUnitLoc(GetSpellTargetUnit())
    call SetUnitPositionLoc(GetTriggerUnit(), udg_Temp_Point)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Relocation_Magic_TP takes nothing returns nothing
    set gg_trg_Relocation_Magic_TP=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Relocation_Magic_TP, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Relocation_Magic_TP, Condition(function Trig_Relocation_Magic_TP_Conditions))
    call TriggerAddAction(gg_trg_Relocation_Magic_TP, function Trig_Relocation_Magic_TP_Actions)
endfunction

//===========================================================================
// Trigger: Death Coil
//===========================================================================
function Trig_Death_Coil_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A02R' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Death_Coil_Func002C takes nothing returns boolean
    if ( not ( GetTriggerUnit() == GetSpellTargetUnit() ) ) then
        return false
    endif
    return true
endfunction

function Trig_Death_Coil_Actions takes nothing returns nothing
    set udg_TempInt=GetUnitAbilityLevelSwapped('A02R', GetTriggerUnit())
    if ( Trig_Death_Coil_Func002C() ) then
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A02R', udg_TempInt, 5.00)
    else
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A02R', udg_TempInt, 10.00)
    endif
endfunction

//===========================================================================
function InitTrig_Death_Coil takes nothing returns nothing
    set gg_trg_Death_Coil=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Death_Coil, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Death_Coil, Condition(function Trig_Death_Coil_Conditions))
    call TriggerAddAction(gg_trg_Death_Coil, function Trig_Death_Coil_Actions)
endfunction

//===========================================================================
// Trigger: Death Decree
//===========================================================================
function Trig_Death_Decree_Conditions takes nothing returns boolean
    if ( not ( GetLearnedSkillBJ() == 'A02T' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Death_Decree_Actions takes nothing returns nothing
    set udg_TempInt=1
    loop
        exitwhen udg_TempInt > 4
        call BlzSetUnitAbilityManaCost(GetTriggerUnit(), 'A02R', udg_TempInt, ( BlzGetUnitAbilityManaCost(GetTriggerUnit(), 'A02R', udg_TempInt) - 25 ))
        call BlzSetUnitAbilityManaCost(GetTriggerUnit(), 'A02Q', udg_TempInt, 55)
        set udg_TempInt=udg_TempInt + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Death_Decree takes nothing returns nothing
    set gg_trg_Death_Decree=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Death_Decree, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(gg_trg_Death_Decree, Condition(function Trig_Death_Decree_Conditions))
    call TriggerAddAction(gg_trg_Death_Decree, function Trig_Death_Decree_Actions)
endfunction

//===========================================================================
// Trigger: Armor of Darkness
//===========================================================================
function Trig_Armor_of_Darkness_Conditions takes nothing returns boolean
    if ( not ( GetLearnedSkillBJ() == 'A02Q' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Armor_of_Darkness_Actions takes nothing returns nothing
    set udg_TempInt=1
    loop
        exitwhen udg_TempInt > 4
        call BlzSetUnitAbilityManaCost(GetTriggerUnit(), 'A02R', udg_TempInt, ( BlzGetUnitAbilityManaCost(GetTriggerUnit(), 'A02R', udg_TempInt) - 10 ))
        set udg_TempInt=udg_TempInt + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Armor_of_Darkness takes nothing returns nothing
    set gg_trg_Armor_of_Darkness=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Armor_of_Darkness, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(gg_trg_Armor_of_Darkness, Condition(function Trig_Armor_of_Darkness_Conditions))
    call TriggerAddAction(gg_trg_Armor_of_Darkness, function Trig_Armor_of_Darkness_Actions)
endfunction

//===========================================================================
// Trigger: Nature Force
//===========================================================================
function Trig_Nature_Force_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A02W' ) ) then
        return false
    endif
    if ( not ( IsUnitType(GetSpellTargetUnit(), UNIT_TYPE_HERO) == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Nature_Force_Actions takes nothing returns nothing
    call BlzSetUnitMaxHP(GetSpellTargetUnit(), ( BlzGetUnitMaxHP(GetSpellTargetUnit()) + ( GetHeroStatBJ(bj_HEROSTAT_INT, GetTriggerUnit(), true) * GetUnitAbilityLevelSwapped('A02W', GetTriggerUnit()) ) ))
endfunction

//===========================================================================
function InitTrig_Nature_Force takes nothing returns nothing
    set gg_trg_Nature_Force=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Nature_Force, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Nature_Force, Condition(function Trig_Nature_Force_Conditions))
    call TriggerAddAction(gg_trg_Nature_Force, function Trig_Nature_Force_Actions)
endfunction

//===========================================================================
// Trigger: Peace
//===========================================================================
function Trig_Peace_Conditions takes nothing returns boolean
    if ( not ( GetLearnedSkillBJ() == 'A02X' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Peace_Actions takes nothing returns nothing
    set udg_TempInt=1
    loop
        exitwhen udg_TempInt > 4
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A02V', udg_TempInt, 8.00)
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A02W', udg_TempInt, 8.00)
        set udg_TempInt=udg_TempInt + 1
    endloop
    set udg_TempInt=1
    loop
        exitwhen udg_TempInt > 2
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A00F', udg_TempInt, 16.00)
        call BlzSetUnitAbilityCooldown(GetTriggerUnit(), 'A00G', udg_TempInt, 16.00)
        set udg_TempInt=udg_TempInt + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Peace takes nothing returns nothing
    set gg_trg_Peace=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Peace, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(gg_trg_Peace, Condition(function Trig_Peace_Conditions))
    call TriggerAddAction(gg_trg_Peace, function Trig_Peace_Actions)
endfunction

//===========================================================================
// Trigger: Eye of Darkness Loop
//===========================================================================
function Trig_Eye_of_Darkness_Loop_Func001Func001C takes nothing returns boolean
    if ( not ( GetUnitLifePercent(GetEnumUnit()) > 40.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eye_of_Darkness_Loop_Func001A takes nothing returns nothing
    if ( Trig_Eye_of_Darkness_Loop_Func001Func001C() ) then
        call SetUnitAbilityLevelSwapped('A02Z', GetEnumUnit(), udg_SKILL_EXTRA_NORMAL)
        call SetUnitAbilityLevelSwapped('A030', GetEnumUnit(), udg_SKILL_EXTRA_NORMAL)
    else
        call SetUnitAbilityLevelSwapped('A02Z', GetEnumUnit(), udg_SKILL_EXTRA_UPGRADED)
        call SetUnitAbilityLevelSwapped('A030', GetEnumUnit(), udg_SKILL_EXTRA_UPGRADED)
        call SetUnitManaPercentBJ(GetEnumUnit(), 100)
    endif
endfunction

function Trig_Eye_of_Darkness_Loop_Actions takes nothing returns nothing
    call ForGroupBJ(udg_DarknessEyeGroup, function Trig_Eye_of_Darkness_Loop_Func001A)
endfunction

//===========================================================================
function InitTrig_Eye_of_Darkness_Loop takes nothing returns nothing
    set gg_trg_Eye_of_Darkness_Loop=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Eye_of_Darkness_Loop, 1.00)
    call TriggerAddAction(gg_trg_Eye_of_Darkness_Loop, function Trig_Eye_of_Darkness_Loop_Actions)
endfunction

//===========================================================================
// Trigger: Eye of Darkness Proc
//===========================================================================
function Trig_Eye_of_Darkness_Proc_Conditions takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A02Z', GetTriggerUnit()) > 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eye_of_Darkness_Proc_Func001Func001Func002Func001C takes nothing returns boolean
    if ( not ( GetSpellAbilityId() != 'A034' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eye_of_Darkness_Proc_Func001Func001Func002C takes nothing returns boolean
    if ( not ( GetSpellAbilityId() != 'A034' ) ) then
        return false
    endif
    if ( not ( GetRandomInt(1, 100) <= udg_SKILL_DARK_EYE_PASSIVE_CHANCE ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eye_of_Darkness_Proc_Func001Func001C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A02Z', GetTriggerUnit()) > udg_SKILL_EXTRA_NORMAL ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eye_of_Darkness_Proc_Actions takes nothing returns nothing
    set udg_TempInt=0
    loop
        exitwhen udg_TempInt > 4
        if ( Trig_Eye_of_Darkness_Proc_Func001Func001C() ) then
            // Active
            call UnitResetCooldown(GetTriggerUnit())
        else
            // Passive
            if ( Trig_Eye_of_Darkness_Proc_Func001Func001Func002C() ) then
                call BlzSetUnitAbilityCooldown(GetTriggerUnit(), GetSpellAbilityId(), udg_TempInt, udg_SKILL_DARK_EYE_COMMON_TRIGGER)
            else
                if ( Trig_Eye_of_Darkness_Proc_Func001Func001Func002Func001C() ) then
                    call BlzSetUnitAbilityCooldown(GetTriggerUnit(), GetSpellAbilityId(), udg_TempInt, udg_SKILL_DARK_EYE_COMMON_COOLDOWN)
                else
                    call BlzSetUnitAbilityCooldown(GetTriggerUnit(), GetSpellAbilityId(), udg_TempInt, udg_SKILL_DARK_EYE_ULTI_COOLDOWN)
                endif
            endif
        endif
        set udg_TempInt=udg_TempInt + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Eye_of_Darkness_Proc takes nothing returns nothing
    set gg_trg_Eye_of_Darkness_Proc=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Eye_of_Darkness_Proc, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(gg_trg_Eye_of_Darkness_Proc, Condition(function Trig_Eye_of_Darkness_Proc_Conditions))
    call TriggerAddAction(gg_trg_Eye_of_Darkness_Proc, function Trig_Eye_of_Darkness_Proc_Actions)
endfunction

//===========================================================================
// Trigger: Navalas
//===========================================================================
function Trig_Navalas_Conditions takes nothing returns boolean
    if ( not ( GetLearnedSkillBJ() == 'A046' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Navalas_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('S003', GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_Navalas takes nothing returns nothing
    set gg_trg_Navalas=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Navalas, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(gg_trg_Navalas, Condition(function Trig_Navalas_Conditions))
    call TriggerAddAction(gg_trg_Navalas, function Trig_Navalas_Actions)
endfunction

//===========================================================================
// Trigger: Tsukuyomi Config
//===========================================================================
function Trig_Tsukuyomi_Config_Actions takes nothing returns nothing
    //  
    // I have created this trigger as a means to show users what can (or must) be configured for each spell
    // Tsukoyomi Ability
    set udg_Spell__Ability='A03B'
    // Tsukoyomi Slow Ability
    set udg_Tsukuyomi_DummyAbil='A03C'
    // Tsukoyomi Slow Buff
    set udg_Tsukuyomi_Buff='B00Q'
    // Tsukoyomi SFX
    set udg_Tsukuyomi_SFX="Abilities\\Spells\\Undead\\VampiricAura\\VampiricAura.mdl"
    // Tsukoyomi SFX Dissipate
    set udg_Tsukuyomi_SFX_Dissipate="Objects\\Spawnmodels\\Undead\\UCancelDeath\\UCancelDeath.mdl"
    // Tsukoyomi Cast Trigger below
    set udg_Spell__Trigger_OnCast=gg_trg_Tsukuyomi_Cast
    // Tsukoyomi Loop Trigger below
    set udg_Spell__Trigger_OnLoop=gg_trg_Tsukuyomi_Loop
    // Time is damage tick
    // Do not put values below 0.20, there's a high chance of bug out on extremely low values like 0.05
    set udg_Spell__Time=1.00
    // Spell Duration is for channeling time
    set udg_Spell__Duration=4.00
    // Activation time
    set udg_Tsukuyomi_ActivationTime[1]=4.00
    set udg_Tsukuyomi_ActivationTime[2]=4.00
    set udg_Tsukuyomi_ActivationTime[3]=4.00
    set udg_Tsukuyomi_ActivationTime[4]=4.00
    // Active duration
    set udg_Tsukuyomi_ActiveTime[1]=25.00
    set udg_Tsukuyomi_ActiveTime[2]=25.00
    set udg_Tsukuyomi_ActiveTime[3]=25.00
    set udg_Tsukuyomi_ActiveTime[4]=25.00
    // Damage
    set udg_Tsukuyomi_Damage[1]=10.00
    set udg_Tsukuyomi_Damage[2]=20.00
    set udg_Tsukuyomi_Damage[3]=30.00
    set udg_Tsukuyomi_Damage[4]=40.00
    // Damage and slow area
    set udg_Tsukuyomi_AoE_Radius[1]=800.00
    set udg_Tsukuyomi_AoE_Radius[2]=800.00
    set udg_Tsukuyomi_AoE_Radius[3]=800.00
    set udg_Tsukuyomi_AoE_Radius[4]=800.00
    // Penalties (uses the tick value)
    set udg_Tsukuyomi_HPPenalty[1]=10.00
    set udg_Tsukuyomi_HPPenalty[2]=20.00
    set udg_Tsukuyomi_HPPenalty[3]=30.00
    set udg_Tsukuyomi_HPPenalty[4]=40.00
    set udg_Tsukuyomi_MPPenalty[1]=10.00
    set udg_Tsukuyomi_MPPenalty[2]=20.00
    set udg_Tsukuyomi_MPPenalty[3]=30.00
    set udg_Tsukuyomi_MPPenalty[4]=40.00
    // If set to false, HP lost will be increased with MP lost on mana depletion
    set udg_Tsukuyomi_StopOnManaDepletion=true
    // Attack/Damage Types
    set udg_Tsukuyomi_AT=ATTACK_TYPE_NORMAL
    set udg_Tsukuyomi_DT=DAMAGE_TYPE_MIND
    // END MAIN CONFIGURATION
    // BELOW ARE SPELL SYSTEM CONFIGS
    // The next ones are for the InRange filter, if you use it. You don't have to include any of these for many typical spells.
    // TIPS:
    // > For healing spells, you'll want to set AllowAllies to True and AllowEnemies to False.
    // > If you are creating a "kill unit" spell, you'll want to set AllowHero to False.
    // > If you are making a custom "Resurrect", you'll want to set AllowDead to True and AllowLiving to False.
    // > AllowMagicImmune as False also prevents invulnerable units from being picked, which is a plus in my opinion.
    //  
    set udg_Spell__Filter_AllowEnemy=true
    set udg_Spell__Filter_AllowLiving=true
    set udg_Spell__Filter_AllowHero=true
    set udg_Spell__Filter_AllowNonHero=true
    set udg_Spell__Filter_AllowAlly=false
    set udg_Spell__Filter_AllowDead=false
    set udg_Spell__Filter_AllowFlying=false
    set udg_Spell__Filter_AllowMechanical=false
    set udg_Spell__Filter_AllowStructure=false
    set udg_Spell__Filter_AllowMagicImmune=false
    //  
    // If you want to keep track of which units have already been hit by the spell, set UseTargetGroup to True
    // TIPS:
    // > The group is called Spell__TargetGroup. It starts empty and will destroy itself when the spell is finished
    // > After using a Spell__InRange check, you can use "Add all units in Spell__InRangeGroup to Spell__TargetGroup"
    //  
    set udg_Spell__UseTargetGroup=true
    //  
    // When everything is set the way you want it, run Spell System <gen>:
    //  
    call TriggerExecute(gg_trg_Spell_System)
    //  
    // To recap, you MUST set Spell__Ability and you MUST have an OnChannel/Cast/Effect or Finish trigger
    //  
endfunction

//===========================================================================
function InitTrig_Tsukuyomi_Config takes nothing returns nothing
    set gg_trg_Tsukuyomi_Config=CreateTrigger()
    call TriggerAddAction(gg_trg_Tsukuyomi_Config, function Trig_Tsukuyomi_Config_Actions)
endfunction

//===========================================================================
// Trigger: Tsukuyomi Cast
//===========================================================================
function Trig_Tsukuyomi_Cast_Actions takes nothing returns nothing
    set udg_Spell__Duration=udg_Tsukuyomi_ActivationTime[udg_Spell_i_Level[udg_Spell__Index]]
    set udg_Spell__StartDuration=true
    call CreateNUnitsAtLoc(1, udg_Spell__DummyType, udg_Spell__DummyOwner, udg_Spell__CastPoint, GetUnitFacing(udg_Spell__Caster))
    set udg_Tsukuyomi_DummyUnitSFX[udg_Spell__Index]=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1, udg_Spell__DummyType, udg_Spell__DummyOwner, udg_Spell__CastPoint, GetUnitFacing(udg_Spell__Caster))
    set udg_Tsukuyomi_DummyUnitSpell[udg_Spell__Index]=GetLastCreatedUnit()
    call UnitAddAbilityBJ(udg_Tsukuyomi_DummyAbil, udg_Tsukuyomi_DummyUnitSpell[udg_Spell__Index])
    call AddSpecialEffectTargetUnitBJ("origin", udg_Tsukuyomi_DummyUnitSFX[udg_Spell__Index], udg_Tsukuyomi_SFX)
    set udg_Tsukuyomi_DummyEffect[udg_Spell__Index]=GetLastCreatedEffectBJ()
    call SetUnitScalePercent(udg_Tsukuyomi_DummyUnitSFX[udg_Spell__Index], udg_Tsukuyomi_AoE_Radius[udg_Spell_i_Level[udg_Spell__Index]], udg_Tsukuyomi_AoE_Radius[udg_Spell_i_Level[udg_Spell__Index]], udg_Tsukuyomi_AoE_Radius[udg_Spell_i_Level[udg_Spell__Index]])
endfunction

//===========================================================================
function InitTrig_Tsukuyomi_Cast takes nothing returns nothing
    set gg_trg_Tsukuyomi_Cast=CreateTrigger()
    call TriggerAddAction(gg_trg_Tsukuyomi_Cast, function Trig_Tsukuyomi_Cast_Actions)
endfunction

//===========================================================================
// Trigger: Tsukuyomi Loop
//===========================================================================
function Trig_Tsukuyomi_Loop_Func001Func001Func006C takes nothing returns boolean
    if ( not ( udg_Tsukuyomi_ActiveMode[udg_Spell__Index] == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tsukuyomi_Loop_Func001Func001Func011Func002C takes nothing returns boolean
    if ( not ( UnitHasBuffBJ(udg_Tsukuyomi_Victim, udg_Tsukuyomi_Buff) == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tsukuyomi_Loop_Func001Func001Func011A takes nothing returns nothing
    set udg_Tsukuyomi_Victim=GetEnumUnit()
    if ( Trig_Tsukuyomi_Loop_Func001Func001Func011Func002C() ) then
        call IssueTargetOrderBJ(udg_Tsukuyomi_DummyUnitSpell[udg_Spell__Index], "slow", udg_Tsukuyomi_Victim)
    else
    endif
    call UnitDamageTargetBJ(udg_Spell_i_Caster[udg_Spell__Index], udg_Tsukuyomi_Victim, udg_Tsukuyomi_Damage[udg_Spell_i_Level[udg_Spell__Index]], udg_Tsukuyomi_AT, udg_Tsukuyomi_DT)
endfunction

function Trig_Tsukuyomi_Loop_Func001Func001Func013Func002C takes nothing returns boolean
    if ( not ( udg_Tsukuyomi_StopOnManaDepletion == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tsukuyomi_Loop_Func001Func001Func013C takes nothing returns boolean
    if ( not ( GetUnitStateSwap(UNIT_STATE_MANA, udg_Spell_i_Caster[udg_Spell__Index]) <= udg_Tsukuyomi_MPPenalty[udg_Spell_i_Level[udg_Spell__Index]] ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tsukuyomi_Loop_Func001Func001Func014Func003Func002C takes nothing returns boolean
    if ( not ( UnitHasBuffBJ(udg_Tsukuyomi_Victim, udg_Tsukuyomi_Buff) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tsukuyomi_Loop_Func001Func001Func014Func003A takes nothing returns nothing
    set udg_Tsukuyomi_Victim=GetEnumUnit()
    if ( Trig_Tsukuyomi_Loop_Func001Func001Func014Func003Func002C() ) then
        call UnitRemoveBuffBJ(udg_Tsukuyomi_Buff, udg_Tsukuyomi_Victim)
    else
    endif
endfunction

function Trig_Tsukuyomi_Loop_Func001Func001Func014C takes nothing returns boolean
    if ( not ( udg_Spell__Duration <= 0.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tsukuyomi_Loop_Func001Func001C takes nothing returns boolean
    if ( not ( udg_Spell__Completed == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tsukuyomi_Loop_Func001C takes nothing returns boolean
    if ( not ( udg_Spell__Channeling == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tsukuyomi_Loop_Actions takes nothing returns nothing
    if ( Trig_Tsukuyomi_Loop_Func001C() ) then
        if ( Trig_Tsukuyomi_Loop_Func001Func001C() ) then
            if ( Trig_Tsukuyomi_Loop_Func001Func001Func006C() ) then
                set udg_Tsukuyomi_ActiveMode[udg_Spell__Index]=true
                set udg_Spell__Duration=udg_Tsukuyomi_ActiveTime[udg_Spell_i_Level[udg_Spell__Index]]
            else
            endif
            call SetUnitPositionLocFacingBJ(udg_Tsukuyomi_DummyUnitSFX[udg_Spell__Index], udg_Spell__CastPoint, GetUnitFacing(udg_Spell_i_Caster[udg_Spell__Index]))
            call SetUnitPositionLocFacingBJ(udg_Tsukuyomi_DummyUnitSpell[udg_Spell__Index], udg_Spell__CastPoint, GetUnitFacing(udg_Spell_i_Caster[udg_Spell__Index]))
            set udg_Spell__InRangePoint=udg_Spell__CastPoint
            set udg_Spell__InRange=udg_Tsukuyomi_AoE_Radius[udg_Spell_i_Level[udg_Spell__Index]]
            call ForGroupBJ(udg_Spell__InRangeGroup, function Trig_Tsukuyomi_Loop_Func001Func001Func011A)
            call SetUnitLifeBJ(udg_Spell_i_Caster[udg_Spell__Index], ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_Spell_i_Caster[udg_Spell__Index]) - udg_Tsukuyomi_HPPenalty[udg_Spell_i_Level[udg_Spell__Index]] ))
            if ( Trig_Tsukuyomi_Loop_Func001Func001Func013C() ) then
                if ( Trig_Tsukuyomi_Loop_Func001Func001Func013Func002C() ) then
                    set udg_Spell__Duration=0.00
                else
                    call SetUnitLifeBJ(udg_Spell_i_Caster[udg_Spell__Index], ( GetUnitStateSwap(UNIT_STATE_LIFE, udg_Spell_i_Caster[udg_Spell__Index]) - udg_Tsukuyomi_MPPenalty[udg_Spell_i_Level[udg_Spell__Index]] ))
                endif
            else
                call SetUnitManaBJ(udg_Spell_i_Caster[udg_Spell__Index], ( GetUnitStateSwap(UNIT_STATE_MANA, udg_Spell_i_Caster[udg_Spell__Index]) - udg_Tsukuyomi_MPPenalty[udg_Spell_i_Level[udg_Spell__Index]] ))
            endif
            if ( Trig_Tsukuyomi_Loop_Func001Func001Func014C() ) then
                set udg_Spell__InRangePoint=udg_Spell__CastPoint
                set udg_Spell__InRange=udg_Tsukuyomi_AoE_Radius[udg_Spell_i_Level[udg_Spell__Index]]
                call ForGroupBJ(udg_Spell__InRangeGroup, function Trig_Tsukuyomi_Loop_Func001Func001Func014Func003A)
                set udg_Tsukuyomi_ActiveMode[udg_Spell__Index]=false
                call AddSpecialEffectLocBJ(udg_Spell__CastPoint, udg_Tsukuyomi_SFX_Dissipate)
                call DestroyEffectBJ(GetLastCreatedEffectBJ())
                call DestroyEffectBJ(udg_Tsukuyomi_DummyEffect[udg_Spell__Index])
                call RemoveUnit(udg_Tsukuyomi_DummyUnitSFX[udg_Spell__Index])
                call RemoveUnit(udg_Tsukuyomi_DummyUnitSpell[udg_Spell__Index])
            else
            endif
        else
            set udg_Spell__Duration=0.00
            call UnitRemoveAbilityBJ(udg_Spell__Ability, udg_Spell_i_Caster[udg_Spell__Index])
            call UnitAddAbilityBJ(udg_Spell__Ability, udg_Spell_i_Caster[udg_Spell__Index])
            call SetUnitAbilityLevelSwapped(udg_Spell__Ability, udg_Spell_i_Caster[udg_Spell__Index], udg_Spell_i_Level[udg_Spell__Index])
            call DestroyEffectBJ(udg_Tsukuyomi_DummyEffect[udg_Spell__Index])
            call RemoveUnit(udg_Tsukuyomi_DummyUnitSFX[udg_Spell__Index])
            call RemoveUnit(udg_Tsukuyomi_DummyUnitSpell[udg_Spell__Index])
        endif
    else
    endif
endfunction

//===========================================================================
function InitTrig_Tsukuyomi_Loop takes nothing returns nothing
    set gg_trg_Tsukuyomi_Loop=CreateTrigger()
    call TriggerAddAction(gg_trg_Tsukuyomi_Loop, function Trig_Tsukuyomi_Loop_Actions)
endfunction

//===========================================================================
// Trigger: Hamaria the Aeon
//===========================================================================
function Trig_Hamaria_the_Aeon_Conditions takes nothing returns boolean
    if ( not ( GetLearnedSkillBJ() == 'A050' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Hamaria_the_Aeon_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('S004', GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_Hamaria_the_Aeon takes nothing returns nothing
    set gg_trg_Hamaria_the_Aeon=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hamaria_the_Aeon, EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(gg_trg_Hamaria_the_Aeon, Condition(function Trig_Hamaria_the_Aeon_Conditions))
    call TriggerAddAction(gg_trg_Hamaria_the_Aeon, function Trig_Hamaria_the_Aeon_Actions)
endfunction

//===========================================================================
// Trigger: Upgrade Skill Persona
//===========================================================================
function Trig_Upgrade_Skill_Persona_Conditions takes nothing returns boolean
    if ( not ( GetResearched() == 'R000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Upgrade_Skill_Persona_Func001001002 takes nothing returns boolean
    return ( IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO) == true )
endfunction

function Trig_Upgrade_Skill_Persona_Func001A takes nothing returns nothing
    call SetUnitAbilityLevelSwapped('A04F', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A04G', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A04P', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A04Q', GetEnumUnit(), 2)
    call SetUnitAbilityLevelSwapped('A052', GetEnumUnit(), 2)
endfunction

function Trig_Upgrade_Skill_Persona_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsOfPlayerMatching(GetTriggerPlayer(), Condition(function Trig_Upgrade_Skill_Persona_Func001001002)), function Trig_Upgrade_Skill_Persona_Func001A)
endfunction

//===========================================================================
function InitTrig_Upgrade_Skill_Persona takes nothing returns nothing
    set gg_trg_Upgrade_Skill_Persona=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Upgrade_Skill_Persona, EVENT_PLAYER_UNIT_RESEARCH_FINISH)
    call TriggerAddCondition(gg_trg_Upgrade_Skill_Persona, Condition(function Trig_Upgrade_Skill_Persona_Conditions))
    call TriggerAddAction(gg_trg_Upgrade_Skill_Persona, function Trig_Upgrade_Skill_Persona_Actions)
endfunction

//===========================================================================
// Trigger: Eiga
//===========================================================================
function Trig_Eiga_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A04J' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Eiga_Actions takes nothing returns nothing
    set udg_Temp_Point=GetUnitLoc(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, udg_Spell__DummyType, udg_Spell__DummyOwner, udg_Temp_Point, 0.00)
    call UnitAddAbilityBJ('A04N', GetLastCreatedUnit())
    call IssueTargetOrderBJ(GetLastCreatedUnit(), "faeriefire", GetSpellTargetUnit())
    call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Eiga takes nothing returns nothing
    set gg_trg_Eiga=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Eiga, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Eiga, Condition(function Trig_Eiga_Conditions))
    call TriggerAddAction(gg_trg_Eiga, function Trig_Eiga_Actions)
endfunction

//===========================================================================
// Trigger: Lavaeteinn
//===========================================================================
function Trig_Lavaeteinn_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A04Q' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lavaeteinn_Func001C takes nothing returns boolean
    if ( not ( UnitHasBuffBJ(GetTriggerUnit(), 'B014') == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lavaeteinn_Actions takes nothing returns nothing
    if ( Trig_Lavaeteinn_Func001C() ) then
        call UnitDamageTargetBJ(GetTriggerUnit(), GetSpellTargetUnit(), ( 0.25 * GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) ), ATTACK_TYPE_CHAOS, DAMAGE_TYPE_NORMAL)
        call SetUnitLifeBJ(GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) - ( 0.25 * GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) ) ))
    else
        call UnitDamageTargetBJ(GetTriggerUnit(), GetSpellTargetUnit(), ( 0.50 * GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) ), ATTACK_TYPE_CHAOS, DAMAGE_TYPE_NORMAL)
    endif
endfunction

//===========================================================================
function InitTrig_Lavaeteinn takes nothing returns nothing
    set gg_trg_Lavaeteinn=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Lavaeteinn, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Lavaeteinn, Condition(function Trig_Lavaeteinn_Conditions))
    call TriggerAddAction(gg_trg_Lavaeteinn, function Trig_Lavaeteinn_Actions)
endfunction

//===========================================================================
// Trigger: Lavaeteinn Cancel
//===========================================================================
function Trig_Lavaeteinn_Cancel_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A04Q' ) ) then
        return false
    endif
    if ( not ( GetUnitLifePercent(GetTriggerUnit()) <= 30.00 ) ) then
        return false
    endif
    if ( not ( UnitHasBuffBJ(GetTriggerUnit(), 'B014') == false ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lavaeteinn_Cancel_Func001001001 takes nothing returns boolean
    return ( GetOwningPlayer(GetTriggerUnit()) == GetFilterPlayer() )
endfunction

function Trig_Lavaeteinn_Cancel_Actions takes nothing returns nothing
    call QuestMessageBJ(GetPlayersMatching(Condition(function Trig_Lavaeteinn_Cancel_Func001001001)), bj_QUESTMESSAGE_WARNING, "TRIGSTR_5829")
    call IssueImmediateOrderBJ(GetTriggerUnit(), "stop")
endfunction

//===========================================================================
function InitTrig_Lavaeteinn_Cancel takes nothing returns nothing
    set gg_trg_Lavaeteinn_Cancel=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Lavaeteinn_Cancel, EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Lavaeteinn_Cancel, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(gg_trg_Lavaeteinn_Cancel, Condition(function Trig_Lavaeteinn_Cancel_Conditions))
    call TriggerAddAction(gg_trg_Lavaeteinn_Cancel, function Trig_Lavaeteinn_Cancel_Actions)
endfunction

//===========================================================================
// Trigger: Lavaeteinn Cancel Level
//===========================================================================
function Trig_Lavaeteinn_Cancel_Level_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A04Q' ) ) then
        return false
    endif
    if ( not ( GetHeroLevel(GetTriggerUnit()) < 4 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lavaeteinn_Cancel_Level_Func003001001 takes nothing returns boolean
    return ( GetOwningPlayer(GetTriggerUnit()) == GetFilterPlayer() )
endfunction

function Trig_Lavaeteinn_Cancel_Level_Actions takes nothing returns nothing
    call QuestMessageBJ(GetPlayersMatching(Condition(function Trig_Lavaeteinn_Cancel_Level_Func003001001)), bj_QUESTMESSAGE_WARNING, "TRIGSTR_5834")
    call IssueImmediateOrderBJ(GetTriggerUnit(), "stop")
endfunction

//===========================================================================
function InitTrig_Lavaeteinn_Cancel_Level takes nothing returns nothing
    set gg_trg_Lavaeteinn_Cancel_Level=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Lavaeteinn_Cancel_Level, EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Lavaeteinn_Cancel_Level, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(gg_trg_Lavaeteinn_Cancel_Level, Condition(function Trig_Lavaeteinn_Cancel_Level_Conditions))
    call TriggerAddAction(gg_trg_Lavaeteinn_Cancel_Level, function Trig_Lavaeteinn_Cancel_Level_Actions)
endfunction

//===========================================================================
// Trigger: Lavaeteinn Telegraph
//===========================================================================
function Trig_Lavaeteinn_Telegraph_Func007C takes nothing returns boolean
    if ( ( GetUnitLifePercent(GetTriggerUnit()) >= 30.00 ) ) then
        return true
    endif
    if ( ( UnitHasBuffBJ(GetTriggerUnit(), 'B014') == true ) ) then
        return true
    endif
    return false
endfunction

function Trig_Lavaeteinn_Telegraph_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A04Q' ) ) then
        return false
    endif
    if ( not Trig_Lavaeteinn_Telegraph_Func007C() ) then
        return false
    endif
    if ( not ( GetHeroLevel(GetTriggerUnit()) >= 4 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lavaeteinn_Telegraph_Func001Func001C takes nothing returns boolean
    if ( not ( IsUnitType(GetSpellTargetUnit(), UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lavaeteinn_Telegraph_Func001Func003C takes nothing returns boolean
    if ( not ( IsUnitType(GetSpellTargetUnit(), UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lavaeteinn_Telegraph_Func001C takes nothing returns boolean
    if ( not ( IsPlayerAlly(GetTriggerPlayer(), Player(2)) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lavaeteinn_Telegraph_Actions takes nothing returns nothing
    if ( Trig_Lavaeteinn_Telegraph_Func001C() ) then
        if ( Trig_Lavaeteinn_Telegraph_Func001Func001C() ) then
            call CreateTextTagUnitBJ(( "Loki glares at " + GetHeroProperName(GetSpellTargetUnit()) ), GetTriggerUnit(), 0.00, 10, 0.00, 0.00, 100, 0)
        else
            call CreateTextTagUnitBJ(( "Loki glares at " + GetUnitName(GetSpellTargetUnit()) ), GetTriggerUnit(), 0.00, 10, 0.00, 0.00, 100, 0)
        endif
    else
        if ( Trig_Lavaeteinn_Telegraph_Func001Func003C() ) then
            call CreateTextTagUnitBJ(( "Loki glares at " + GetHeroProperName(GetSpellTargetUnit()) ), GetTriggerUnit(), 0.00, 10, 0.00, 100.00, 0.00, 0)
        else
            call CreateTextTagUnitBJ(( "Loki glares at " + GetUnitName(GetSpellTargetUnit()) ), GetTriggerUnit(), 0.00, 10, 0.00, 100.00, 0.00, 0)
        endif
    endif
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 3.00)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 6.00)
endfunction

//===========================================================================
function InitTrig_Lavaeteinn_Telegraph takes nothing returns nothing
    set gg_trg_Lavaeteinn_Telegraph=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Lavaeteinn_Telegraph, EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call TriggerAddCondition(gg_trg_Lavaeteinn_Telegraph, Condition(function Trig_Lavaeteinn_Telegraph_Conditions))
    call TriggerAddAction(gg_trg_Lavaeteinn_Telegraph, function Trig_Lavaeteinn_Telegraph_Actions)
endfunction

//===========================================================================
// Trigger: Tactical Spirit
//===========================================================================
function Trig_Tactical_Spirit_Conditions takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A04F', GetTriggerUnit()) > 0 ) ) then
        return false
    endif
    if ( not ( GetRandomInt(1, 2) == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tactical_Spirit_Func001C takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A04F', GetTriggerUnit()) == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tactical_Spirit_Func002C takes nothing returns boolean
    if ( not ( IsPlayerAlly(GetTriggerPlayer(), Player(2)) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Tactical_Spirit_Actions takes nothing returns nothing
    if ( Trig_Tactical_Spirit_Func001C() ) then
        call SetUnitManaBJ(GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()) + 100.00 ))
    else
        call SetUnitManaBJ(GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetTriggerUnit()) + 250.00 ))
    endif
    if ( Trig_Tactical_Spirit_Func002C() ) then
        call CreateTextTagUnitBJ("TRIGSTR_5835", GetTriggerUnit(), - 256.00, 10, 0.00, 0.00, 100, 0)
    else
        call CreateTextTagUnitBJ("TRIGSTR_5836", GetTriggerUnit(), - 256.00, 10, 0.00, 100.00, 0.00, 0)
    endif
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 3.00)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 6.00)
endfunction

//===========================================================================
function InitTrig_Tactical_Spirit takes nothing returns nothing
    set gg_trg_Tactical_Spirit=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Tactical_Spirit, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Tactical_Spirit, Condition(function Trig_Tactical_Spirit_Conditions))
    call TriggerAddAction(gg_trg_Tactical_Spirit, function Trig_Tactical_Spirit_Actions)
endfunction

//===========================================================================
// Trigger: Megaton Raid
//===========================================================================
function Trig_Megaton_Raid_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A04G' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Megaton_Raid_Actions takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(), GetSpellTargetUnit(), ( 0.16 * GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) ), ATTACK_TYPE_CHAOS, DAMAGE_TYPE_NORMAL)
    call SetUnitLifeBJ(GetTriggerUnit(), ( GetUnitStateSwap(UNIT_STATE_LIFE, GetTriggerUnit()) - ( 0.16 * GetUnitStateSwap(UNIT_STATE_MAX_LIFE, GetTriggerUnit()) ) ))
endfunction

//===========================================================================
function InitTrig_Megaton_Raid takes nothing returns nothing
    set gg_trg_Megaton_Raid=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Megaton_Raid, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Megaton_Raid, Condition(function Trig_Megaton_Raid_Conditions))
    call TriggerAddAction(gg_trg_Megaton_Raid, function Trig_Megaton_Raid_Actions)
endfunction

//===========================================================================
// Trigger: Megaton Raid Cancel
//===========================================================================
function Trig_Megaton_Raid_Cancel_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A04G' ) ) then
        return false
    endif
    if ( not ( GetUnitLifePercent(GetTriggerUnit()) <= 25.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Megaton_Raid_Cancel_Func001001001 takes nothing returns boolean
    return ( GetOwningPlayer(GetTriggerUnit()) == GetFilterPlayer() )
endfunction

function Trig_Megaton_Raid_Cancel_Actions takes nothing returns nothing
    call QuestMessageBJ(GetPlayersMatching(Condition(function Trig_Megaton_Raid_Cancel_Func001001001)), bj_QUESTMESSAGE_WARNING, "TRIGSTR_5771")
    call IssueImmediateOrderBJ(GetTriggerUnit(), "stop")
endfunction

//===========================================================================
function InitTrig_Megaton_Raid_Cancel takes nothing returns nothing
    set gg_trg_Megaton_Raid_Cancel=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Megaton_Raid_Cancel, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(gg_trg_Megaton_Raid_Cancel, Condition(function Trig_Megaton_Raid_Cancel_Conditions))
    call TriggerAddAction(gg_trg_Megaton_Raid_Cancel, function Trig_Megaton_Raid_Cancel_Actions)
endfunction

//===========================================================================
// Trigger: Kouga
//===========================================================================
function Trig_Kouga_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A04H' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Kouga_Actions takes nothing returns nothing
    set udg_Temp_Point=GetUnitLoc(GetTriggerUnit())
    call CreateNUnitsAtLoc(1, udg_Spell__DummyType, udg_Spell__DummyOwner, udg_Temp_Point, 0.00)
    call UnitAddAbilityBJ('A04I', GetLastCreatedUnit())
    call IssueTargetOrderBJ(GetLastCreatedUnit(), "slow", GetSpellTargetUnit())
    call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Kouga takes nothing returns nothing
    set gg_trg_Kouga=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Kouga, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Kouga, Condition(function Trig_Kouga_Conditions))
    call TriggerAddAction(gg_trg_Kouga, function Trig_Kouga_Actions)
endfunction

//===========================================================================
// Trigger: HazyPresence
//===========================================================================
function Trig_HazyPresence_Conditions takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A052', udg_DamageEventTarget) > 0 ) ) then
        return false
    endif
    if ( not ( GetRandomInt(1, 100) <= 22 ) ) then
        return false
    endif
    return true
endfunction

function Trig_HazyPresence_Actions takes nothing returns nothing
    set udg_DamageEventAmount=0.00
    call UnitDamageTargetBJ(udg_DamageEventTarget, udg_DamageEventSource, I2R(( GetHeroStatBJ(bj_HEROSTAT_AGI, udg_DamageEventTarget, true) * GetUnitAbilityLevelSwapped('A052', udg_DamageEventTarget) )), ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL)
    // Counter Text
    set udg_Temp_Point=GetUnitLoc(udg_DamageEventTarget)
    call AddSpecialEffectTargetUnitBJ("origin", udg_DamageEventTarget, "Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl")
    call DestroyEffectBJ(GetLastCreatedEffectBJ())
    call CreateTextTagLocBJ("TRIGSTR_6484", udg_Temp_Point, 64.00, 12.00, 100, 0.00, 0.00, 0)
    call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetPlayersAll())
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 3.00)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 5)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_HazyPresence takes nothing returns nothing
    set gg_trg_HazyPresence=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_HazyPresence, "udg_DamageEvent", EQUAL, 1.00)
    call TriggerAddCondition(gg_trg_HazyPresence, Condition(function Trig_HazyPresence_Conditions))
    call TriggerAddAction(gg_trg_HazyPresence, function Trig_HazyPresence_Actions)
endfunction

//===========================================================================
// Trigger: PhantomShow
//===========================================================================
function Trig_PhantomShow_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A054' ) ) then
        return false
    endif
    return true
endfunction

function Trig_PhantomShow_Func003Func001C takes nothing returns boolean
    if ( not ( IsUnitEnemy(GetEnumUnit(), GetTriggerPlayer()) == true ) ) then
        return false
    endif
    if ( not ( IsUnitAliveBJ(GetEnumUnit()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_PhantomShow_Func003A takes nothing returns nothing
    if ( Trig_PhantomShow_Func003Func001C() ) then
        // Sleep
        call CreateNUnitsAtLoc(1, udg_Spell__DummyType, udg_Spell__DummyOwner, udg_Temp_Point, 0.00)
        call UnitAddAbilityBJ('A053', GetLastCreatedUnit())
        call IssueTargetOrderBJ(GetLastCreatedUnit(), "sleep", GetEnumUnit())
        call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
        // Critical
        call CreateNUnitsAtLoc(1, udg_Spell__DummyType, udg_Spell__DummyOwner, udg_Temp_Point, 0.00)
        call UnitAddAbilityBJ('A055', GetLastCreatedUnit())
        call IssueTargetOrderBJ(GetLastCreatedUnit(), "slow", GetEnumUnit())
        call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
    else
    endif
endfunction

function Trig_PhantomShow_Actions takes nothing returns nothing
    set udg_Temp_Point=GetSpellTargetLoc()
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocAll(850.00, udg_Temp_Point), function Trig_PhantomShow_Func003A)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_PhantomShow takes nothing returns nothing
    set gg_trg_PhantomShow=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_PhantomShow, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_PhantomShow, Condition(function Trig_PhantomShow_Conditions))
    call TriggerAddAction(gg_trg_PhantomShow, function Trig_PhantomShow_Actions)
endfunction

//===========================================================================
// Trigger: PhantomShowBlow
//===========================================================================
function Trig_PhantomShowBlow_Conditions takes nothing returns boolean
    if ( not ( UnitHasBuffBJ(udg_DamageEventTarget, 'B018') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_PhantomShowBlow_Func002C takes nothing returns boolean
    if ( not ( GetUnitTypeId(udg_DamageEventSource) == 'H00L' ) ) then
        return false
    endif
    return true
endfunction

function Trig_PhantomShowBlow_Actions takes nothing returns nothing
    call UnitRemoveBuffBJ('B018', udg_DamageEventTarget)
    if ( Trig_PhantomShowBlow_Func002C() ) then
        set udg_DamageEventAmount=( udg_DamageEventAmount * 4.00 )
    else
        set udg_DamageEventAmount=( udg_DamageEventAmount * GetRandomReal(1.50, 3.00) )
    endif
    set udg_Temp_Point=GetUnitLoc(udg_DamageEventTarget)
    call CreateTextTagLocBJ(( I2S(R2I(udg_DamageEventAmount)) + "!" ), udg_Temp_Point, 0, 20.00, 100, 0.00, 0.00, 0)
    call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetPlayersAll())
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 3.00)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 5)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_PhantomShowBlow takes nothing returns nothing
    set gg_trg_PhantomShowBlow=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_PhantomShowBlow, "udg_DamageEvent", EQUAL, 1.00)
    call TriggerAddCondition(gg_trg_PhantomShowBlow, Condition(function Trig_PhantomShowBlow_Conditions))
    call TriggerAddAction(gg_trg_PhantomShowBlow, function Trig_PhantomShowBlow_Actions)
endfunction

//===========================================================================
// Trigger: Maeiga
//===========================================================================
function Trig_Maeiga_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A056' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Maeiga_Func003Func001C takes nothing returns boolean
    if ( not ( IsUnitEnemy(GetEnumUnit(), GetTriggerPlayer()) == true ) ) then
        return false
    endif
    if ( not ( IsUnitAliveBJ(GetEnumUnit()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Maeiga_Func003A takes nothing returns nothing
    if ( Trig_Maeiga_Func003Func001C() ) then
        call UnitDamageTargetBJ(GetTriggerUnit(), GetEnumUnit(), ( 110.00 * I2R(GetUnitAbilityLevelSwapped('A056', GetTriggerUnit())) ), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
        // Armor reduction
        call CreateNUnitsAtLoc(1, udg_Spell__DummyType, udg_Spell__DummyOwner, udg_Temp_Point, 0.00)
        call UnitAddAbilityBJ('A04N', GetLastCreatedUnit())
        call IssueTargetOrderBJ(GetLastCreatedUnit(), "faeriefire", GetSpellTargetUnit())
        call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
    else
    endif
endfunction

function Trig_Maeiga_Actions takes nothing returns nothing
    set udg_Temp_Point=GetSpellTargetLoc()
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocAll(600.00, udg_Temp_Point), function Trig_Maeiga_Func003A)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Maeiga takes nothing returns nothing
    set gg_trg_Maeiga=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Maeiga, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Maeiga, Condition(function Trig_Maeiga_Conditions))
    call TriggerAddAction(gg_trg_Maeiga, function Trig_Maeiga_Actions)
endfunction

//===========================================================================
// Trigger: LifeAid
//===========================================================================
function Trig_LifeAid_Conditions takes nothing returns boolean
    if ( not ( IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) == true ) ) then
        return false
    endif
    if ( not ( GetUnitAbilityLevelSwapped('A057', GetKillingUnitBJ()) > 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_LifeAid_Actions takes nothing returns nothing
    set udg_LifeAidInt=1
    loop
        exitwhen udg_LifeAidInt > GetUnitAbilityLevelSwapped('A057', GetKillingUnitBJ())
        call SetUnitLifePercentBJ(GetKillingUnitBJ(), ( GetUnitLifePercent(GetKillingUnitBJ()) + 10.00 ))
        call SetUnitManaPercentBJ(GetKillingUnitBJ(), ( GetUnitManaPercent(GetKillingUnitBJ()) + 10.00 ))
        call ModifyHeroStat(bj_HEROSTAT_AGI, GetKillingUnitBJ(), bj_MODIFYMETHOD_ADD, 1)
        set udg_LifeAidInt=udg_LifeAidInt + 1
    endloop
endfunction

//===========================================================================
function InitTrig_LifeAid takes nothing returns nothing
    set gg_trg_LifeAid=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_LifeAid, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_LifeAid, Condition(function Trig_LifeAid_Conditions))
    call TriggerAddAction(gg_trg_LifeAid, function Trig_LifeAid_Actions)
endfunction

//===========================================================================
// Trigger: HeatRiserNoAutocast
//===========================================================================
function Trig_HeatRiserNoAutocast_Conditions takes nothing returns boolean
    if ( not ( GetIssuedOrderIdBJ() == String2OrderIdBJ("innerfireon") ) ) then
        return false
    endif
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'H00L' ) ) then
        return false
    endif
    return true
endfunction

function Trig_HeatRiserNoAutocast_Actions takes nothing returns nothing
    call TriggerSleepAction(0.00)
    call IssueImmediateOrderBJ(GetTriggerUnit(), "innerfireoff")
endfunction

//===========================================================================
function InitTrig_HeatRiserNoAutocast takes nothing returns nothing
    set gg_trg_HeatRiserNoAutocast=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_HeatRiserNoAutocast, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(gg_trg_HeatRiserNoAutocast, Condition(function Trig_HeatRiserNoAutocast_Conditions))
    call TriggerAddAction(gg_trg_HeatRiserNoAutocast, function Trig_HeatRiserNoAutocast_Actions)
endfunction

//===========================================================================
// Trigger: Heaven Bracer Get
//===========================================================================
function Trig_Heaven_Bracer_Get_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I00A' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Heaven_Bracer_Get_Actions takes nothing returns nothing
    call SetPlayerHandicapXPBJ(GetOwningPlayer(GetTriggerUnit()), ( GetPlayerHandicapXPBJ(GetOwningPlayer(GetTriggerUnit())) + udg_SKILL_HEAVEN_BRACER_EXP ))
endfunction

//===========================================================================
function InitTrig_Heaven_Bracer_Get takes nothing returns nothing
    set gg_trg_Heaven_Bracer_Get=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Heaven_Bracer_Get, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_Heaven_Bracer_Get, Condition(function Trig_Heaven_Bracer_Get_Conditions))
    call TriggerAddAction(gg_trg_Heaven_Bracer_Get, function Trig_Heaven_Bracer_Get_Actions)
endfunction

//===========================================================================
// Trigger: Heaven Bracer Lost
//===========================================================================
function Trig_Heaven_Bracer_Lost_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I00A' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Heaven_Bracer_Lost_Actions takes nothing returns nothing
    call SetPlayerHandicapXPBJ(GetOwningPlayer(GetTriggerUnit()), ( GetPlayerHandicapXPBJ(GetOwningPlayer(GetTriggerUnit())) - udg_SKILL_HEAVEN_BRACER_EXP ))
endfunction

//===========================================================================
function InitTrig_Heaven_Bracer_Lost takes nothing returns nothing
    set gg_trg_Heaven_Bracer_Lost=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Heaven_Bracer_Lost, EVENT_PLAYER_UNIT_DROP_ITEM)
    call TriggerAddCondition(gg_trg_Heaven_Bracer_Lost, Condition(function Trig_Heaven_Bracer_Lost_Conditions))
    call TriggerAddAction(gg_trg_Heaven_Bracer_Lost, function Trig_Heaven_Bracer_Lost_Actions)
endfunction

//===========================================================================
// Trigger: Check Essence
//===========================================================================
function Trig_Check_Essence_Conditions takes nothing returns boolean
    if ( not ( GetItemType(GetManipulatedItem()) == ITEM_TYPE_PURCHASABLE ) ) then
        return false
    endif
    return true
endfunction

function Trig_Check_Essence_Func002Func001Func002C takes nothing returns boolean
    if ( not ( udg_PurchasableCounter > 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Check_Essence_Func002Func001C takes nothing returns boolean
    if ( not ( GetItemType(UnitItemInSlotBJ(GetTriggerUnit(), GetForLoopIndexA())) == ITEM_TYPE_PURCHASABLE ) ) then
        return false
    endif
    return true
endfunction

function Trig_Check_Essence_Actions takes nothing returns nothing
    set udg_PurchasableCounter=0
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        if ( Trig_Check_Essence_Func002Func001C() ) then
            set udg_PurchasableCounter=( udg_PurchasableCounter + 1 )
            if ( Trig_Check_Essence_Func002Func001Func002C() ) then
                set udg_Temp_Player=GetTriggerPlayer()
                call UnitRemoveItemSwapped(GetManipulatedItem(), GetTriggerUnit())
                if GetLocalPlayer() == udg_Temp_Player then
                call QuestMessageBJ(GetPlayersAll(), bj_QUESTMESSAGE_WARNING, "TRIGSTR_6185")
                endif
            else
            endif
        else
        endif
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Check_Essence takes nothing returns nothing
    set gg_trg_Check_Essence=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Check_Essence, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_Check_Essence, Condition(function Trig_Check_Essence_Conditions))
    call TriggerAddAction(gg_trg_Check_Essence, function Trig_Check_Essence_Actions)
endfunction

//===========================================================================
// Trigger: Raidou Essence
//===========================================================================
function Trig_Raidou_Essence_Conditions takes nothing returns boolean
    if ( not ( GetItemTypeId(GetManipulatedItem()) == 'I01L' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Raidou_Essence_Actions takes nothing returns nothing
    call BlzSetUnitWeaponIntegerFieldBJ(GetTriggerUnit(), UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE, 0, 5)
    call BlzSetUnitWeaponIntegerFieldBJ(GetTriggerUnit(), UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE, 1, 5)
endfunction

//===========================================================================
function InitTrig_Raidou_Essence takes nothing returns nothing
    set gg_trg_Raidou_Essence=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Raidou_Essence, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_Raidou_Essence, Condition(function Trig_Raidou_Essence_Conditions))
    call TriggerAddAction(gg_trg_Raidou_Essence, function Trig_Raidou_Essence_Actions)
endfunction

//===========================================================================
// Trigger: DirectiveEssence
//===========================================================================
function Trig_DirectiveEssence_Conditions takes nothing returns boolean
    if ( not ( UnitHasItemOfTypeBJ(udg_DamageEventTarget, 'I01K') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_DirectiveEssence_Func001Func002C takes nothing returns boolean
    if ( not ( udg_DamageEventAmount >= 200.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_DirectiveEssence_Func001C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 2) == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_DirectiveEssence_Actions takes nothing returns nothing
    if ( Trig_DirectiveEssence_Func001C() ) then
        set udg_Temp_Point=GetUnitLoc(udg_DamageEventTarget)
        if ( Trig_DirectiveEssence_Func001Func002C() ) then
            set udg_DamageEventAmount=( udg_DamageEventAmount - 200.00 )
            call CreateTextTagLocBJ("TRIGSTR_6446", udg_Temp_Point, 0, 10, 100, 0.00, 0.00, 0)
        else
            set udg_DamageEventAmount=0.00
            call CreateTextTagLocBJ("TRIGSTR_6445", udg_Temp_Point, 0, 10, 100, 0.00, 0.00, 0)
        endif
        call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetPlayersAll())
        call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
        call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
        call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 3.00)
        call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 5)
        call RemoveLocation(udg_Temp_Point)
    else
    endif
endfunction

//===========================================================================
function InitTrig_DirectiveEssence takes nothing returns nothing
    set gg_trg_DirectiveEssence=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_DirectiveEssence, "udg_DamageModifierEvent", EQUAL, 1.00)
    call TriggerAddCondition(gg_trg_DirectiveEssence, Condition(function Trig_DirectiveEssence_Conditions))
    call TriggerAddAction(gg_trg_DirectiveEssence, function Trig_DirectiveEssence_Actions)
endfunction

//===========================================================================
// Trigger: Assar Essence
//===========================================================================
function Trig_Assar_Essence_Conditions takes nothing returns boolean
    if ( not ( UnitHasItemOfTypeBJ(udg_DamageEventSource, 'I01J') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Assar_Essence_Func002Func001C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 100) <= ( GetHeroLevel(udg_DamageEventSource) / 5 ) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Assar_Essence_Func002C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 100) <= GetHeroLevel(udg_DamageEventSource) ) ) then
        return false
    endif
    return true
endfunction

function Trig_Assar_Essence_Actions takes nothing returns nothing
    set udg_AssarHeroStats=( GetHeroStatBJ(bj_HEROSTAT_STR, udg_DamageEventSource, true) + ( GetHeroStatBJ(bj_HEROSTAT_AGI, udg_DamageEventSource, true) + GetHeroStatBJ(bj_HEROSTAT_INT, udg_DamageEventSource, true) ) )
    if ( Trig_Assar_Essence_Func002C() ) then
        set udg_AssarHeroStats=( udg_AssarHeroStats * 2 )
    else
        if ( Trig_Assar_Essence_Func002Func001C() ) then
            set udg_AssarHeroStats=( udg_AssarHeroStats * 3 )
        else
        endif
    endif
    set udg_DamageEventAmount=( udg_DamageEventAmount + I2R(udg_AssarHeroStats) )
endfunction

//===========================================================================
function InitTrig_Assar_Essence takes nothing returns nothing
    set gg_trg_Assar_Essence=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Assar_Essence, "udg_DamageModifierEvent", EQUAL, 1.00)
    call TriggerAddCondition(gg_trg_Assar_Essence, Condition(function Trig_Assar_Essence_Conditions))
    call TriggerAddAction(gg_trg_Assar_Essence, function Trig_Assar_Essence_Actions)
endfunction

//===========================================================================
// Trigger: LegendzKing Essence
//===========================================================================
function Trig_LegendzKing_Essence_Conditions takes nothing returns boolean
    if ( not ( UnitHasItemOfTypeBJ(udg_DamageEventTarget, 'I018') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_LegendzKing_Essence_Actions takes nothing returns nothing
    call BlzSetUnitMaxHP(udg_DamageEventTarget, ( BlzGetUnitMaxHP(udg_DamageEventTarget) + 2 ))
    call BlzSetUnitArmor(udg_DamageEventTarget, ( BlzGetUnitArmor(udg_DamageEventTarget) + 0.10 ))
    call SetPlayerHandicapXPBJ(GetOwningPlayer(udg_DamageEventTarget), ( GetPlayerHandicapXPBJ(GetOwningPlayer(udg_DamageEventTarget)) + 0.10 ))
endfunction

//===========================================================================
function InitTrig_LegendzKing_Essence takes nothing returns nothing
    set gg_trg_LegendzKing_Essence=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_LegendzKing_Essence, "udg_DamageModifierEvent", EQUAL, 1.00)
    call TriggerAddCondition(gg_trg_LegendzKing_Essence, Condition(function Trig_LegendzKing_Essence_Conditions))
    call TriggerAddAction(gg_trg_LegendzKing_Essence, function Trig_LegendzKing_Essence_Actions)
endfunction

//===========================================================================
// Trigger: Affa Essence
//===========================================================================
function Trig_Affa_Essence_Conditions takes nothing returns boolean
    if ( not ( UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01D') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Affa_Essence_Func002C takes nothing returns boolean
    if ( not ( GetHeroStatBJ(bj_HEROSTAT_STR, GetTriggerUnit(), false) >= 20 ) ) then
        return false
    endif
    if ( not ( GetHeroStatBJ(bj_HEROSTAT_AGI, GetTriggerUnit(), false) >= 20 ) ) then
        return false
    endif
    if ( not ( GetHeroStatBJ(bj_HEROSTAT_INT, GetTriggerUnit(), false) >= 20 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Affa_Essence_Actions takes nothing returns nothing
    set udg_AffaPoint=GetUnitLoc(GetTriggerUnit())
    if ( Trig_Affa_Essence_Func002C() ) then
        set udg_PlayerKilled=GetTriggerPlayer()
        set udg_VictimCode=GetConvertedPlayerId(udg_PlayerKilled)
        set udg_Reward=udg_BountyBonus[udg_VictimCode]
        call AdjustPlayerStateBJ(udg_Reward, udg_PlayerKilled, PLAYER_STATE_RESOURCE_GOLD)
        set udg_BountyBonus[udg_VictimCode]=0
        set udg_Temp_Point=GetUnitLoc(GetTriggerUnit())
        call CreateTextTagLocBJ(( "+" + I2S(udg_Reward) ), udg_Temp_Point, 0, 10.00, 100, 80.00, 0.00, 0)
        call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), GetPlayersAllies(udg_PlayerKilled))
        call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
        call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 32.00, 90)
        call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 2.50)
        call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 3.00)
        call RemoveLocation(udg_Temp_Point)
        if GetLocalPlayer() == GetTriggerPlayer() then
        call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_6403")
        endif
        call ReviveHeroLoc(GetTriggerUnit(), udg_AffaPoint, true)
        call ModifyHeroStat(bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_SUB, 7)
        call ModifyHeroStat(bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_SUB, 7)
        call ModifyHeroStat(bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_SUB, 7)
        call SetUnitManaPercentBJ(GetTriggerUnit(), 100)
        call UnitResetCooldown(GetTriggerUnit())
    else
    endif
    call RemoveLocation(udg_AffaPoint)
endfunction

//===========================================================================
function InitTrig_Affa_Essence takes nothing returns nothing
    set gg_trg_Affa_Essence=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Affa_Essence, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Affa_Essence, Condition(function Trig_Affa_Essence_Conditions))
    call TriggerAddAction(gg_trg_Affa_Essence, function Trig_Affa_Essence_Actions)
endfunction

//===========================================================================
// Trigger: Sadim Essence
//===========================================================================
function Trig_Sadim_Essence_Conditions takes nothing returns boolean
    if ( not ( UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I01C') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Sadim_Essence_Actions takes nothing returns nothing
    call BlzSetUnitMaxHP(GetTriggerUnit(), ( BlzGetUnitMaxHP(GetTriggerUnit()) + ( 18 * GetHeroLevel(GetTriggerUnit()) ) ))
endfunction

//===========================================================================
function InitTrig_Sadim_Essence takes nothing returns nothing
    set gg_trg_Sadim_Essence=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Sadim_Essence, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Sadim_Essence, Condition(function Trig_Sadim_Essence_Conditions))
    call TriggerAddAction(gg_trg_Sadim_Essence, function Trig_Sadim_Essence_Actions)
endfunction

//===========================================================================
// Trigger: Affad Essence A
//===========================================================================
function Trig_Affad_Essence_A_Conditions takes nothing returns boolean
    if ( not ( UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I017') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Affad_Essence_A_Actions takes nothing returns nothing
    call ModifyHeroStat(bj_HEROSTAT_INT, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, 1)
    call ModifyHeroStat(bj_HEROSTAT_AGI, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, 1)
    call ModifyHeroStat(bj_HEROSTAT_STR, GetTriggerUnit(), bj_MODIFYMETHOD_ADD, 1)
endfunction

//===========================================================================
function InitTrig_Affad_Essence_A takes nothing returns nothing
    set gg_trg_Affad_Essence_A=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Affad_Essence_A, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Affad_Essence_A, Condition(function Trig_Affad_Essence_A_Conditions))
    call TriggerAddAction(gg_trg_Affad_Essence_A, function Trig_Affad_Essence_A_Actions)
endfunction

//===========================================================================
// Trigger: Affad Essence B
//===========================================================================
function Trig_Affad_Essence_B_Conditions takes nothing returns boolean
    if ( not ( UnitHasItemOfTypeBJ(udg_DamageEventTarget, 'I017') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Affad_Essence_B_Func001C takes nothing returns boolean
    if ( not ( udg_DamageEventAmount > 200.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Affad_Essence_B_Actions takes nothing returns nothing
    if ( Trig_Affad_Essence_B_Func001C() ) then
        set udg_DamageEventAmount=( udg_DamageEventAmount - 20.00 )
        call ModifyHeroStat(bj_HEROSTAT_INT, udg_DamageEventTarget, bj_MODIFYMETHOD_ADD, 1)
        call ModifyHeroStat(bj_HEROSTAT_AGI, udg_DamageEventTarget, bj_MODIFYMETHOD_ADD, 1)
        call ModifyHeroStat(bj_HEROSTAT_STR, udg_DamageEventTarget, bj_MODIFYMETHOD_ADD, 1)
    else
    endif
endfunction

//===========================================================================
function InitTrig_Affad_Essence_B takes nothing returns nothing
    set gg_trg_Affad_Essence_B=CreateTrigger()
    call h__TriggerRegisterVariableEvent(gg_trg_Affad_Essence_B, "udg_DamageModifierEvent", EQUAL, 1.00)
    call TriggerAddCondition(gg_trg_Affad_Essence_B, Condition(function Trig_Affad_Essence_B_Conditions))
    call TriggerAddAction(gg_trg_Affad_Essence_B, function Trig_Affad_Essence_B_Actions)
endfunction

//===========================================================================
// Trigger: Atika Essence
//===========================================================================
function Trig_Atika_Essence_Conditions takes nothing returns boolean
    if ( not ( UnitHasItemOfTypeBJ(GetTriggerUnit(), 'I016') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Atika_Essence_Func005Func001C takes nothing returns boolean
    if ( not ( IsUnitAlly(GetEnumUnit(), GetTriggerPlayer()) == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Atika_Essence_Func005A takes nothing returns nothing
    if ( Trig_Atika_Essence_Func005Func001C() ) then
        call SetUnitLifeBJ(GetEnumUnit(), ( GetUnitStateSwap(UNIT_STATE_LIFE, GetEnumUnit()) + 100.00 ))
        call AddSpecialEffectTargetUnitBJ("origin", GetEnumUnit(), "Abilities\\Spells\\Human\\Heal\\HealTarget.mdl")
        call DestroyEffectBJ(GetLastCreatedEffectBJ())
    else
    endif
endfunction

function Trig_Atika_Essence_Actions takes nothing returns nothing
    call BlzSetUnitMaxHP(GetTriggerUnit(), ( BlzGetUnitMaxHP(GetTriggerUnit()) + ( 15 * GetHeroLevel(GetTriggerUnit()) ) ))
    call BlzSetUnitMaxMana(GetTriggerUnit(), ( BlzGetUnitMaxMana(GetTriggerUnit()) + ( 15 * GetHeroLevel(GetTriggerUnit()) ) ))
    set udg_Temp_Point=GetUnitLoc(GetTriggerUnit())
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocAll(512.00, udg_Temp_Point), function Trig_Atika_Essence_Func005A)
    call RemoveLocation(udg_Temp_Point)
endfunction

//===========================================================================
function InitTrig_Atika_Essence takes nothing returns nothing
    set gg_trg_Atika_Essence=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Atika_Essence, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Atika_Essence, Condition(function Trig_Atika_Essence_Conditions))
    call TriggerAddAction(gg_trg_Atika_Essence, function Trig_Atika_Essence_Actions)
endfunction

//===========================================================================
// Trigger: Spell System Config
//===========================================================================
function Trig_Spell_System_Config_Actions takes nothing returns nothing
    // Only one dummy unit type is needed as you can attach an effect to it of any kind
    //  
    set udg_Spell__DummyType='n008'
    set udg_Spell__DummyOwner=Player(bj_PLAYER_NEUTRAL_EXTRA)
    set udg_Spell__Interval=( 1 / 32.00 )
    //  
    // Configure default values for the unit filter:
    //  
    set udg_Spell__Filter_AllowEnemy=true
    set udg_Spell__Filter_AllowLiving=true
    set udg_Spell__Filter_AllowHero=true
    set udg_Spell__Filter_AllowNonHero=true
    set udg_Spell__Filter_AllowAlly=false
    set udg_Spell__Filter_AllowDead=false
    set udg_Spell__Filter_AllowFlying=false
    set udg_Spell__Filter_AllowMechanical=false
    set udg_Spell__Filter_AllowStructure=false
    //  
    // Magic immunity is a great thing to block, as it also discludes invulnerable units from being picked
    //  
    set udg_Spell__Filter_AllowMagicImmune=false
    //  
    // Normal WC3 abilities, like Channel, wake sleeping creeps - even if they don't deal damage or apply buffs.
    // Because of this, I provided an option to wake up creeps when they are enumerated by an InRange command.
    //  
    set udg_Spell__WakeTargets=true
    //  
    // Do not enable the following lines as they are variable declarations which make copying this system easier
    //  
endfunction

//===========================================================================
function InitTrig_Spell_System_Config takes nothing returns nothing
    set gg_trg_Spell_System_Config=CreateTrigger()
    call TriggerAddAction(gg_trg_Spell_System_Config, function Trig_Spell_System_Config_Actions)
endfunction

//===========================================================================
// Trigger: Spell System
//===========================================================================
function SpellIndexGetVars takes integer i returns nothing
    set udg_Spell__Ability=udg_Spell_i_Abil[udg_Spell_i_Head[i]]
    set udg_Spell__Index=i
    set udg_Spell__Caster=udg_Spell_i_Caster[i]
    set udg_Spell__CasterOwner=GetOwningPlayer(udg_Spell__Caster)
    set udg_Spell__Level=udg_Spell_i_Level[i]
    set udg_Spell__LevelMultiplier=udg_Spell__Level //Spell__LevelMultiplier is a real variable.
    set udg_Spell__Target=udg_Spell_i_Target[i]
    
    //Magic to ensure the locations never leak.
    call MoveLocation(udg_Spell__CastPoint, GetUnitX(udg_Spell__Caster), GetUnitY(udg_Spell__Caster))
    if udg_Spell__Target == null then
        call MoveLocation(udg_Spell__TargetPoint, udg_Spell_i_TargetX[i], udg_Spell_i_TargetY[i])
    else
        call MoveLocation(udg_Spell__TargetPoint, GetUnitX(udg_Spell__Target), GetUnitY(udg_Spell__Target))
    endif
    set udg_Spell__TargetGroup=udg_Spell_i_TargetGroup[i]
    set udg_Spell__Completed=udg_Spell_i_Completed[i]
    set udg_Spell__Channeling=udg_Spell_i_Channeling[i]
endfunction

function SpellSetFilters takes integer i returns nothing
    set udg_Spell_i_AllowEnemy[i]=udg_Spell__Filter_AllowEnemy
    set udg_Spell_i_AllowAlly[i]=udg_Spell__Filter_AllowAlly
    set udg_Spell_i_AllowDead[i]=udg_Spell__Filter_AllowDead
    set udg_Spell_i_AllowLiving[i]=udg_Spell__Filter_AllowLiving
    set udg_Spell_i_AllowMagicImmune[i]=udg_Spell__Filter_AllowMagicImmune
    set udg_Spell_i_AllowMechanical[i]=udg_Spell__Filter_AllowMechanical
    set udg_Spell_i_AllowStructure[i]=udg_Spell__Filter_AllowStructure
    set udg_Spell_i_AllowFlying[i]=udg_Spell__Filter_AllowFlying
    set udg_Spell_i_AllowHero[i]=udg_Spell__Filter_AllowHero
    set udg_Spell_i_AllowNonHero[i]=udg_Spell__Filter_AllowNonHero
endfunction

function SpellIndexDestroy takes integer i returns nothing
    local integer indexOf
    local integer index
    if udg_Spell_i_RecycleList[i] >= 0 then
        return
    endif
    //If the caster is still channeling on the spell, don't destroy until it's finished:
    if not udg_Spell_i_Channeling[i] then
        set index=udg_Spell_i_Head[i]
        set udg_Spell_i_RecycleList[i]=udg_Spell_i_Recycle
        set udg_Spell_i_Recycle=i
        
        //Reset things to defaults:
        set udg_Spell_i_Time[i]=0.00
        set udg_Spell_i_LastTime[i]=0.00
        set udg_Spell_i_Duration[i]=0.00
        set udg_Spell_i_Completed[i]=false
        set udg_Spell_i_Caster[i]=null
        set udg_Spell_i_Target[i]=null
        set udg_Spell_i_OnLoopStack[i]=null
        
        //Recycle any applicable target unit group.
        if udg_Spell_i_TargetGroup[i] != null then
            call GroupClear(udg_Spell_i_TargetGroup[i])
            set udg_Spell_i_GroupStack[udg_Spell_i_GroupN]=udg_Spell_i_TargetGroup[i]
            set udg_Spell_i_GroupN=udg_Spell_i_GroupN + 1
            set udg_Spell_i_TargetGroup[i]=null
        endif
        
        //Clear any user-specified data in the hashtable:
        call FlushChildHashtable(udg_Spell__Hash, i)
        //call BJDebugMsg("Destroying index: " + I2S(i))
    endif
    
    set indexOf=udg_Spell_i_StackRef[i]
    if indexOf >= 0 then
        set index=udg_Spell_i_StackN - 1
        set udg_Spell_i_StackN=index
        
        set udg_Spell_i_StackRef[udg_Spell_i_Stack[index]]=indexOf
        set udg_Spell_i_Stack[indexOf]=udg_Spell_i_Stack[index]
        if index == 0 then
            //If no more spells require the timer, pause it.
            call PauseTimer(udg_Spell_i_Timer)
        endif
        set udg_Spell_i_StackRef[i]=- 1
    endif
endfunction

function SpellTriggerExecute takes integer i,trigger t returns real
    local real d= udg_Spell_i_Duration[i]
    local boolean b= false
    set udg_Spell__Duration=d
    set udg_Spell__Time=0.00
    if t != null then
        set udg_Spell__Trigger_OnLoop=null
        set udg_Spell__Expired=d <= 0.00 //If the duration is <= 0, the spell has expired.
        call SpellIndexGetVars(i)
        if TriggerEvaluate(t) then
            call TriggerExecute(t)
        endif
        if udg_Spell__Trigger_OnLoop != null then
            set udg_Spell_i_OnLoopStack[i]=udg_Spell__Trigger_OnLoop
        endif
        //The remaining lines in this function process the duration specified by the user.
        if udg_Spell__StartDuration then
            set udg_Spell__StartDuration=false
            set udg_Spell__Duration=udg_Spell_i_Duration[udg_Spell_i_Head[i]] + udg_Spell_i_LastTime[udg_Spell_i_Head[i]] * udg_Spell__LevelMultiplier
        elseif ( udg_Spell__Expired and d > 0.00 ) or ( udg_Spell__Duration <= 0.00 ) then
            set udg_Spell__Duration=0.00
            return udg_Spell__Time
            //The user manually expired the spell or the spell duration ended on its own.
        endif
        if d != udg_Spell__Duration then
            //A new duration has been assigned
            set d=udg_Spell__Duration
            set b=true
        endif
        set udg_Spell__Duration=0.00
        if udg_Spell__Time == 0.00 then
            if udg_Spell_i_LastTime[i] == 0.00 then
                if udg_Spell_i_Time[udg_Spell_i_Head[i]] > 0.00 then
                    //The user specified a default interval to follow:
                    set udg_Spell__Time=udg_Spell_i_Time[udg_Spell_i_Head[i]]
                else
                    //Set the spell time to the minimum.
                    set udg_Spell__Time=udg_Spell__Interval
                endif
            else
                //Otherwise, set it to what it was before.
                set udg_Spell__Time=udg_Spell_i_LastTime[i]
            endif
        //else, the user is specifying a new time for the spell.
        endif
        set udg_Spell_i_LastTime[i]=udg_Spell__Time //Whatever the case, remember this time for next time.
        if b then
            //The duration was just assigned
            set udg_Spell_i_Duration[i]=d
        else
            //The duration has been ongoing
            set udg_Spell_i_Duration[i]=d - udg_Spell__Time
        endif
    endif
    return udg_Spell__Time
endfunction

//===========================================================================
// Runs every Spell__Interval seconds and handles all of the timed events.
// 
function SpellTimerLoop takes nothing returns nothing
    local integer i= udg_Spell_i_StackN
    local integer node
    local real time
    set udg_Spell__Running=true
    
    //Run stack top to bottom to avoid skipping slots when destroying.
    loop
        set i=i - 1
        exitwhen i < 0
        set node=udg_Spell_i_Stack[i]
        set time=udg_Spell_i_Time[node] - udg_Spell__Interval
        if time <= 0.00 then
            set time=SpellTriggerExecute(node , udg_Spell_i_OnLoopStack[node])
        endif
        if time <= 0.00 then
            call SpellIndexDestroy(node)
        else
            set udg_Spell_i_Time[node]=time
        endif
    endloop
    set udg_Spell__Running=false
endfunction

//===========================================================================
// This is the meat of the system as it handles the event responses.
// 
function RunSpellEvent takes nothing returns boolean
    local boolean b
    local integer aid= GetSpellAbilityId()
    local integer head= LoadInteger(udg_Spell__Hash, 0, aid)
    local integer i
    local integer id
    local trigger t
    local playerunitevent eid
    if head == 0 then
        //Nothing for this ability has been registered. Skip the sequence.
        return false
    endif
    set eid=ConvertPlayerUnitEvent(GetHandleId(GetTriggerEventId()))
    set udg_Spell__Caster=GetTriggerUnit()
    set id=GetHandleId(udg_Spell__Caster)
    set i=LoadInteger(udg_Spell__Hash, aid, id)
    if i == 0 then
        //This block will almost always happen with the OnChannel event. In the
        //case of Charge Gold and Lumber, only an OnEffect event will run.
        set i=udg_Spell_i_Recycle
        if i == 0 then
            //Create a new, unique index
            set i=udg_Spell_i_Instances + 1
            set udg_Spell_i_Instances=i
        else
            //Repurpose an existing one
            set udg_Spell_i_Recycle=udg_Spell_i_RecycleList[i]
        endif
        //call BJDebugMsg("Creating index: " + I2S(i))
        set udg_Spell_i_RecycleList[i]=- 1
        set udg_Spell_i_StackRef[i]=- 1
        set udg_Spell_i_Head[i]=head
        
        if eid == EVENT_PLAYER_UNIT_SPELL_CHANNEL then
            set udg_Spell_i_Channeling[i]=true
            call SaveInteger(udg_Spell__Hash, aid, id, i)
            set t=udg_Spell_i_OnChannelStack[head]
        else //eid == EVENT_PLAYER_UNIT_SPELL_EFFECT
            set t=udg_Spell_i_OnEffectStack[head]
        endif
        set udg_Spell_i_Caster[i]=udg_Spell__Caster
        set udg_Spell_i_Level[i]=GetUnitAbilityLevel(udg_Spell__Caster, aid)
        set udg_Spell_i_Target[i]=GetSpellTargetUnit()
        set udg_Spell_i_TargetX[i]=GetSpellTargetX()
        set udg_Spell_i_TargetY[i]=GetSpellTargetY()
        
        set udg_Spell_i_OnLoopStack[i]=udg_Spell_i_OnLoopStack[head]
        if udg_Spell_i_UseTG[head] then
            //Get a recycled unit group or create a new one.
            set id=udg_Spell_i_GroupN - 1
            if id >= 0 then
                set udg_Spell_i_GroupN=id
                set udg_Spell_i_TargetGroup[i]=udg_Spell_i_GroupStack[id]
            else
                set udg_Spell_i_TargetGroup[i]=CreateGroup()
            endif
        endif
    elseif eid == EVENT_PLAYER_UNIT_SPELL_CAST then
        set t=udg_Spell_i_OnCastStack[head]
    elseif eid == EVENT_PLAYER_UNIT_SPELL_EFFECT then
        set t=udg_Spell_i_OnEffectStack[head]
    elseif eid == EVENT_PLAYER_UNIT_SPELL_FINISH then
        set udg_Spell_i_Completed[i]=true
        return true
    else //eid == EVENT_PLAYER_UNIT_SPELL_ENDCAST
        set udg_Spell_i_Channeling[i]=false
        call RemoveSavedInteger(udg_Spell__Hash, aid, id)
        set t=udg_Spell_i_OnFinishStack[head]
    endif
    if SpellTriggerExecute(i , t) > 0.00 then
        //Set the spell time to the user-specified one.
        set udg_Spell_i_Time[i]=udg_Spell__Time
        if udg_Spell_i_StackRef[i] < 0 then
            //Allocate the spell index onto the loop stack.
            set aid=udg_Spell_i_StackN
            set udg_Spell_i_Stack[aid]=i
            set udg_Spell_i_StackRef[i]=aid
            set udg_Spell_i_StackN=aid + 1
            if aid == 0 then
                //If this is the first spell index using the timer, start it up:
                call TimerStart(udg_Spell_i_Timer, udg_Spell__Interval, true, function SpellTimerLoop)
            endif
        endif
    elseif ( not udg_Spell_i_Channeling[i] ) and ( t != null or udg_Spell_i_Time[i] <= 0.00 ) then
        call SpellIndexDestroy(i)
    endif
    set t=null
    return true
endfunction

//This function is invoked if an event was launched recursively by another event's callback.
function RunPreSpellEvent takes nothing returns nothing
    local integer i= udg_Spell__Index
    local real time= udg_Spell__Time
    local real d= udg_Spell__Duration
    local boolean expired= udg_Spell__Expired
    if udg_Spell__Trigger_OnLoop != null then
        set udg_Spell_i_OnLoopStack[i]=udg_Spell__Trigger_OnLoop
    endif
    if RunSpellEvent() then
        set udg_Spell__Time=time
        set udg_Spell__Duration=d
        set udg_Spell__Expired=expired
        call SpellIndexGetVars(i)
    endif
endfunction

//===========================================================================
// Base function of the system: runs when an ability event does something.
// 
function SpellSystemEvent takes nothing returns boolean
    if udg_Spell__Running then
        call RunPreSpellEvent()
    else
        set udg_Spell__Running=true
        call RunSpellEvent()
        set udg_Spell__Running=false
    endif
    return false
endfunction

//===========================================================================
// Set Spell__Ability to your spell's ability
// Set Spell__Trigger_OnChannel/Cast/Effect/Finish/Loop to any trigger(s) you
// want to automatically run.
// 
// GUI-friendly: Run Spell System <gen> (ignoring conditions)
// 
function SpellSystemRegister takes nothing returns nothing
    local integer aid= udg_Spell__Ability
    local integer head= udg_Spell_i_Instances + 1
    
    if HaveSavedInteger(udg_Spell__Hash, 0, aid) or aid == 0 then
        //The system rejects duplicate or unassigned abilities.
        return
    endif
    set udg_Spell_i_Instances=head
    set udg_Spell_i_Abil[head]=aid
    
    //Preload the ability on dummy unit to help prevent first-instance lag
    call UnitAddAbility(udg_Spell_i_PreloadDummy, aid)
    
    //Save head index to the spell ability so it be referenced later.
    call SaveInteger(udg_Spell__Hash, 0, aid, head)
    
    //Set any applicable event triggers.
    set udg_Spell_i_OnChannelStack[head]=udg_Spell__Trigger_OnChannel
    set udg_Spell_i_OnCastStack[head]=udg_Spell__Trigger_OnCast
    set udg_Spell_i_OnEffectStack[head]=udg_Spell__Trigger_OnEffect
    set udg_Spell_i_OnFinishStack[head]=udg_Spell__Trigger_OnFinish
    set udg_Spell_i_OnLoopStack[head]=udg_Spell__Trigger_OnLoop
    set udg_Spell_i_InRangeFilter[head]=udg_Spell__Trigger_InRangeFilter
    
    //Set any customized filter variables:
    call SpellSetFilters(head)
    
    //Tell the system to automatically create target groups, if needed
    set udg_Spell_i_AutoAddTargets[head]=udg_Spell__AutoAddTargets
    set udg_Spell_i_UseTG[head]=udg_Spell__UseTargetGroup or udg_Spell__AutoAddTargets
    
    //Handle automatic buff assignment
    set udg_Spell_i_BuffAbil[head]=udg_Spell__BuffAbility
    set udg_Spell_i_BuffOrder[head]=udg_Spell__BuffOrder
    
    //Set the default time sequences if a duration is used:
    set udg_Spell_i_Time[head]=udg_Spell__Time
    set udg_Spell_i_Duration[head]=udg_Spell__Duration
    set udg_Spell_i_LastTime[head]=udg_Spell__DurationPerLevel
    
    //Set variables back to their defaults:
    set udg_Spell__Trigger_OnChannel=null
    set udg_Spell__Trigger_OnCast=null
    set udg_Spell__Trigger_OnEffect=null
    set udg_Spell__Trigger_OnFinish=null
    set udg_Spell__Trigger_OnLoop=null
    set udg_Spell__Trigger_InRangeFilter=null
    set udg_Spell__AutoAddTargets=false
    set udg_Spell__UseTargetGroup=false
    set udg_Spell__Time=0.00
    set udg_Spell__Duration=0.00
    set udg_Spell__DurationPerLevel=0.00
    set udg_Spell__BuffAbility=0
    set udg_Spell__BuffOrder=0
    
    set udg_Spell__Filter_AllowEnemy=udg_Spell_i_AllowEnemy[0]
    set udg_Spell__Filter_AllowAlly=udg_Spell_i_AllowAlly[0]
    set udg_Spell__Filter_AllowDead=udg_Spell_i_AllowDead[0]
    set udg_Spell__Filter_AllowMagicImmune=udg_Spell_i_AllowMagicImmune[0]
    set udg_Spell__Filter_AllowMechanical=udg_Spell_i_AllowMechanical[0]
    set udg_Spell__Filter_AllowStructure=udg_Spell_i_AllowStructure[0]
    set udg_Spell__Filter_AllowFlying=udg_Spell_i_AllowFlying[0]
    set udg_Spell__Filter_AllowHero=udg_Spell_i_AllowHero[0]
    set udg_Spell__Filter_AllowNonHero=udg_Spell_i_AllowNonHero[0]
    set udg_Spell__Filter_AllowLiving=udg_Spell_i_AllowLiving[0]
endfunction

function SpellFilterCompare takes boolean is,boolean yes,boolean no returns boolean
    return ( is and yes ) or ( ( not is ) and no )
endfunction

//===========================================================================
// Before calling this function, set Spell__InRangePoint to whatever point
// you need, THEN set Spell__InRange to the radius you need. The system will
// enumerate the units matching the configured filter and fill them into
// Spell_InRangeGroup.
// 
function SpellGroupUnitsInRange takes nothing returns boolean
    local integer i= udg_Spell_i_Head[udg_Spell__Index]
    local integer j= 0
    local unit u
    local real padding= 64.00
    if udg_Spell_i_AllowStructure[i] then
        //A normal unit can only have up to size 64.00 collision, but if the
        //user needs to check for structures we need a padding big enough for
        //the "fattest" ones: Tier 3 town halls.
        set padding=197.00
    endif
    call GroupEnumUnitsInRangeOfLoc(udg_Spell__InRangeGroup, udg_Spell__InRangePoint, udg_Spell__InRange + padding, null)
    loop
        set u=FirstOfGroup(udg_Spell__InRangeGroup)
        exitwhen u == null
        call GroupRemoveUnit(udg_Spell__InRangeGroup, u)
        loop
            exitwhen udg_Spell_i_AutoAddTargets[i] and IsUnitInGroup(u, udg_Spell__TargetGroup)
            exitwhen not IsUnitInRangeLoc(u, udg_Spell__InRangePoint, udg_Spell__InRange)
            exitwhen not SpellFilterCompare(IsUnitType(u, UNIT_TYPE_DEAD) , udg_Spell_i_AllowDead[i] , udg_Spell_i_AllowLiving[i])
            exitwhen not SpellFilterCompare(IsUnitAlly(u, udg_Spell__CasterOwner) , udg_Spell_i_AllowAlly[i] , udg_Spell_i_AllowEnemy[i])
            exitwhen not SpellFilterCompare(IsUnitType(u, UNIT_TYPE_HERO) or IsUnitType(u, UNIT_TYPE_RESISTANT) , udg_Spell_i_AllowHero[i] , udg_Spell_i_AllowNonHero[i])
            exitwhen IsUnitType(u, UNIT_TYPE_STRUCTURE) and not udg_Spell_i_AllowStructure[i]
            exitwhen IsUnitType(u, UNIT_TYPE_FLYING) and not udg_Spell_i_AllowFlying[i]
            exitwhen IsUnitType(u, UNIT_TYPE_MECHANICAL) and not udg_Spell_i_AllowMechanical[i]
            exitwhen IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) and not udg_Spell_i_AllowMagicImmune[i]
            set udg_Spell__InRangeUnit=u
            //Run the user's designated filter, if one exists.
            exitwhen udg_Spell_i_InRangeFilter[i] != null and not TriggerEvaluate(udg_Spell_i_InRangeFilter[i])
            set j=j + 1
            set udg_Spell__InRangeUnits[j]=u
            exitwhen true
        endloop
    endloop
    if j > udg_Spell__InRangeMax and udg_Spell__InRangeMax > 0 then
        //The user has defined a maximum number of units allowed in the group.
        //Remove a random unit until the total does not exceed capacity.
        loop
            set i=GetRandomInt(1, j)
            set udg_Spell__InRangeUnits[i]=udg_Spell__InRangeUnits[j]
            set j=j - 1
            exitwhen j == udg_Spell__InRangeMax
        endloop
    endif
    set udg_Spell__InRangeCount=j
    set udg_Spell__InRangeMax=0
    set udg_Spell__InRange=0.00
    set i=udg_Spell_i_Head[udg_Spell__Index]
    loop
        exitwhen j == 0
        set u=udg_Spell__InRangeUnits[j]
        call GroupAddUnit(udg_Spell__InRangeGroup, u)
        if udg_Spell_i_AutoAddTargets[i] then
            call GroupAddUnit(udg_Spell__TargetGroup, u)
        endif
        if udg_Spell__WakeTargets and UnitIsSleeping(u) then
            call UnitWakeUp(u)
        endif
        if udg_Spell_i_BuffAbil[i] != 0 and udg_Spell_i_BuffOrder[i] != 0 then
            //Auto-buff units added to group:
            call UnitAddAbility(udg_Spell_i_PreloadDummy, udg_Spell_i_BuffAbil[i])
            call IssueTargetOrderById(udg_Spell_i_PreloadDummy, udg_Spell_i_BuffOrder[i], u)
            call UnitRemoveAbility(udg_Spell_i_PreloadDummy, udg_Spell_i_BuffAbil[i])
        endif
        set j=j - 1
    endloop
    set u=null
    return false
endfunction

function SpellPreloadEnd takes nothing returns nothing
    local integer i= udg_Spell_i_Instances
    loop
        exitwhen i == 0
        //Remove preloaded abilities so they don't interfere with orders
        call UnitRemoveAbility(udg_Spell_i_PreloadDummy, udg_Spell_i_Abil[udg_Spell_i_Head[i]])
        set i=i - 1
    endloop
endfunction

//===========================================================================
function InitTrig_Spell_System takes nothing returns nothing
    local integer i= bj_MAX_PLAYER_SLOTS
    local player p
    local trigger t
    
    if gg_trg_Spell_System != null then
        //A JASS function call already initialized the system.
        return
    endif
    
    //This runs before map init events so the hashtable is ready before then.
    set udg_Spell__Hash=InitHashtable()
    
    //Initialize these two locations which will never get removed
    set udg_Spell__CastPoint=Location(0, 0)
    set udg_Spell__TargetPoint=Location(0, 0)
    
    //Recycle existing unit groups into the recycle stack to avoid needing to destroy any extras.
    set udg_Spell_i_GroupStack[2]=udg_Spell__TargetGroup
    set udg_Spell_i_GroupStack[3]=udg_Spell_i_TargetGroup[0]
    set udg_Spell_i_GroupStack[4]=udg_Spell_i_TargetGroup[1]
    set udg_Spell_i_GroupN=5 //There are already five valid unit groups thanks to Variable Editor.
    
    set t=CreateTrigger()
    call h__TriggerRegisterVariableEvent(t, "udg_Spell__InRange", GREATER_THAN, 0.00)
    call TriggerAddCondition(t, Filter(function SpellGroupUnitsInRange))
    
    set t=CreateTrigger()
    call TriggerAddCondition(t, Filter(function SpellSystemEvent))
    loop
        set i=i - 1
        set p=Player(i)
        call TriggerRegisterPlayerUnitEvent(t, p, EVENT_PLAYER_UNIT_SPELL_CHANNEL, null)
        call TriggerRegisterPlayerUnitEvent(t, p, EVENT_PLAYER_UNIT_SPELL_CAST, null)
        call TriggerRegisterPlayerUnitEvent(t, p, EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
        call TriggerRegisterPlayerUnitEvent(t, p, EVENT_PLAYER_UNIT_SPELL_FINISH, null)
        call TriggerRegisterPlayerUnitEvent(t, p, EVENT_PLAYER_UNIT_SPELL_ENDCAST, null)
        exitwhen i == 0
    endloop
    set p=null
    set t=null
    
    //Run the configuration trigger so its variables are ready before the
    //map initialization events run.
    call TriggerExecute(gg_trg_Spell_System_Config)
    call SpellSetFilters(0)
    
    //Create this trigger so it's GUI-friendly.
    set gg_trg_Spell_System=CreateTrigger()
    call TriggerAddAction(gg_trg_Spell_System, function SpellSystemRegister)
    set gg_trg_Spell_System_Config=gg_trg_Spell_System //In case the user accidentally picks this one
    
    //Create a dummy unit for preloading abilities and casting buffs.
    set udg_Spell_i_PreloadDummy=CreateUnit(udg_Spell__DummyOwner, udg_Spell__DummyType, 0, 0, 0)
    
    //Start the timer to remove its abilities:
    call TimerStart(udg_Spell_i_Timer, 0.00, false, function SpellPreloadEnd)
    call UnitRemoveAbility(udg_Spell_i_PreloadDummy, 'Amov') //Force it to never move to cast spells
endfunction

//===========================================================================
// Trigger: Item Cleanup
//
// Original mechanics by Trilititi, made portable for GUI users by Bribe.
// Disclaimer: Don't set the life of a dead item unless you know what you are doing.
// It will bug the system if you set a dead item's life to a value between 0 and 1.
//===========================================================================
function Trig_Item_Cleanup_Func001Func010Func001C takes nothing returns boolean
    if ( not ( GetItemLifeBJ(GetEnumItem()) == 0.00 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Item_Cleanup_Func001Func010A takes nothing returns nothing
    if ( Trig_Item_Cleanup_Func001Func010Func001C() ) then
        set udg_ItemsToClean=( udg_ItemsToClean + 1 )
        set udg_CleanedItem[udg_ItemsToClean]=GetEnumItem()
    else
    endif
endfunction

function Trig_Item_Cleanup_Func001Func011C takes nothing returns boolean
    if ( not ( udg_ItemsToClean >= 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Item_Cleanup_Func001C takes nothing returns boolean
    if ( not ( udg_ItemCleanupFlag == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Item_Cleanup_Actions takes nothing returns nothing
    if ( Trig_Item_Cleanup_Func001C() ) then
        set udg_ItemCleanupFlag=false
        //  
        // Loop through all dead items and remove them
        //  
        set udg_Loop=0
        loop
            exitwhen udg_Loop > udg_ItemsToClean
            call SetItemLifeBJ(udg_CleanedItem[udg_Loop], 1.00)
            call RemoveItem(udg_CleanedItem[udg_Loop])
            set udg_CleanedItem[udg_Loop]=null
            set udg_Loop=udg_Loop + 1
        endloop
    else
        //  
        // Clean up all dead items on the map every 15 seconds
        //  
        set udg_ItemsToClean=- 1
        call EnumItemsInRectBJ(GetPlayableMapRect(), function Trig_Item_Cleanup_Func001Func010A)
        if ( Trig_Item_Cleanup_Func001Func011C() ) then
            //  
            // Start a 1.50 second timer to give time for any death animations to play
            //  
            call StartTimerBJ(udg_ItemCleanupTimer, false, 1.50)
            set udg_ItemCleanupFlag=true
        else
        endif
    endif
endfunction

//===========================================================================
function InitTrig_Item_Cleanup takes nothing returns nothing
    set gg_trg_Item_Cleanup=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Item_Cleanup, 15.00)
    call TriggerRegisterTimerExpireEventBJ(gg_trg_Item_Cleanup, udg_ItemCleanupTimer)
    call TriggerAddAction(gg_trg_Item_Cleanup, function Trig_Item_Cleanup_Actions)
endfunction

//===========================================================================
// Trigger: Damage Engine Config
//===========================================================================
function Trig_Damage_Engine_Config_Actions takes nothing returns nothing
    // -
    // New in Damage Engine 5.7 - you can use the below to automatically assign conditions
    // -
    // Equal to - Same as no conditions, works as it always has
    // Less than - Same as IsDamageAttack Equal to True
    // Less than or equal to - Same as IsDamageMelee Equal to True
    // Greater than or equal to - Same as IsDamageRanged Equal to True
    // Greater than - Same as IsDamageSpell Equal to True
    // Not Equal to - Same as IsDamageCode Equal to True
    // -
    // You can add extra classifications here if you want to differentiate between your triggered damage
    // Use DamageTypeExplosive (or any negative value damage type) if you want a unit killed by that damage to explode
    // -
    // The pre-defined type Code might be set by Damage Engine if Unit - Damage Target is detected and the user didn't define a type of their own.
    // "Pure" is especially important because it overrides both the Damage Engine as well as WarCraft 3 damage modification.
    // I therefore gave the user "Explosive Pure" in case one wants to combine the functionality of the two.
    // -
    set udg_DamageTypePureExplosive=- 2
    set udg_DamageTypeExplosive=- 1
    set udg_DamageTypeCode=1
    set udg_DamageTypePure=2
    // -
    set udg_DamageTypeHeal=3
    set udg_DamageTypeBlocked=4
    set udg_DamageTypeReduced=5
    // -
    set udg_DamageTypeCriticalStrike=6
    // -
    // Added 25 July 2017 to allow detection of things like Bash or Pulverize or AOE spread
    // -
    set udg_DamageEventAOE=1
    set udg_DamageEventLevel=1
    // -
    // In-game World Editor doesn't allow Attack Type and Damage Type comparisons. Therefore I need to code them as integers into GUI
    // -
    set udg_ATTACK_TYPE_SPELLS=0
    set udg_ATTACK_TYPE_NORMAL=1
    set udg_ATTACK_TYPE_PIERCE=2
    set udg_ATTACK_TYPE_SIEGE=3
    set udg_ATTACK_TYPE_MAGIC=4
    set udg_ATTACK_TYPE_CHAOS=5
    set udg_ATTACK_TYPE_HERO=6
    // -
    set udg_DAMAGE_TYPE_UNKNOWN=0
    set udg_DAMAGE_TYPE_NORMAL=4
    set udg_DAMAGE_TYPE_ENHANCED=5
    set udg_DAMAGE_TYPE_FIRE=8
    set udg_DAMAGE_TYPE_COLD=9
    set udg_DAMAGE_TYPE_LIGHTNING=10
    set udg_DAMAGE_TYPE_POISON=11
    set udg_DAMAGE_TYPE_DISEASE=12
    set udg_DAMAGE_TYPE_DIVINE=13
    set udg_DAMAGE_TYPE_MAGIC=14
    set udg_DAMAGE_TYPE_SONIC=15
    set udg_DAMAGE_TYPE_ACID=16
    set udg_DAMAGE_TYPE_FORCE=17
    set udg_DAMAGE_TYPE_DEATH=18
    set udg_DAMAGE_TYPE_MIND=19
    set udg_DAMAGE_TYPE_PLANT=20
    set udg_DAMAGE_TYPE_DEFENSIVE=21
    set udg_DAMAGE_TYPE_DEMOLITION=22
    set udg_DAMAGE_TYPE_SLOW_POISON=23
    set udg_DAMAGE_TYPE_SPIRIT_LINK=24
    set udg_DAMAGE_TYPE_SHADOW_STRIKE=25
    set udg_DAMAGE_TYPE_UNIVERSAL=26
    // -
    // The below variables don't affect damage amount, but do affect the sound played
    // They also give important information about the type of attack used.
    // They can differentiate between ranged and melee for units who are both
    // -
    set udg_WEAPON_TYPE_NONE=0
    // Metal Light/Medium/Heavy
    set udg_WEAPON_TYPE_ML_CHOP=1
    set udg_WEAPON_TYPE_MM_CHOP=2
    set udg_WEAPON_TYPE_MH_CHOP=3
    set udg_WEAPON_TYPE_ML_SLICE=4
    set udg_WEAPON_TYPE_MM_SLICE=5
    set udg_WEAPON_TYPE_MH_SLICE=6
    set udg_WEAPON_TYPE_MM_BASH=7
    set udg_WEAPON_TYPE_MH_BASH=8
    set udg_WEAPON_TYPE_MM_STAB=9
    set udg_WEAPON_TYPE_MH_STAB=10
    // Wood Light/Medium/Heavy
    set udg_WEAPON_TYPE_WL_SLICE=11
    set udg_WEAPON_TYPE_WM_SLICE=12
    set udg_WEAPON_TYPE_WH_SLICE=13
    set udg_WEAPON_TYPE_WL_BASH=14
    set udg_WEAPON_TYPE_WM_BASH=15
    set udg_WEAPON_TYPE_WH_BASH=16
    set udg_WEAPON_TYPE_WL_STAB=17
    set udg_WEAPON_TYPE_WM_STAB=18
    // Claw Light/Medium/Heavy
    set udg_WEAPON_TYPE_CL_SLICE=19
    set udg_WEAPON_TYPE_CM_SLICE=20
    set udg_WEAPON_TYPE_CH_SLICE=21
    // Axe Medium
    set udg_WEAPON_TYPE_AM_CHOP=22
    // Rock Heavy
    set udg_WEAPON_TYPE_RH_BASH=23
    // -
    // Since GUI still doesn't provide Defense Type and Armor Types, I needed to include the below
    // -
    set udg_ARMOR_TYPE_NONE=0
    set udg_ARMOR_TYPE_FLESH=1
    set udg_ARMOR_TYPE_METAL=2
    set udg_ARMOR_TYPE_WOOD=3
    set udg_ARMOR_TYPE_ETHEREAL=4
    set udg_ARMOR_TYPE_STONE=5
    // -
    set udg_DEFENSE_TYPE_LIGHT=0
    set udg_DEFENSE_TYPE_MEDIUM=1
    set udg_DEFENSE_TYPE_HEAVY=2
    set udg_DEFENSE_TYPE_FORTIFIED=3
    set udg_DEFENSE_TYPE_NORMAL=4
    set udg_DEFENSE_TYPE_HERO=5
    set udg_DEFENSE_TYPE_DIVINE=6
    set udg_DEFENSE_TYPE_UNARMORED=7
    // -
    set udg_DamageFilterAttackT=- 1
    set udg_DamageFilterDamageT=- 1
    // -
    call DamageEngine_DebugStr()
endfunction

//===========================================================================
function InitTrig_Damage_Engine_Config takes nothing returns nothing
    set gg_trg_Damage_Engine_Config=CreateTrigger()
    call TriggerAddAction(gg_trg_Damage_Engine_Config, function Trig_Damage_Engine_Config_Actions)
endfunction

//===========================================================================
// Trigger: Damage Engine
//===========================================================================

//===========================================================================
//
//  Damage Engine 5.7.1.2 - update requires replacing the JASS script.
//

//===========================================================================
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Core()
    call InitTrig_Ability_Cast()
    call InitTrig_Quest_Log()
    call InitTrig_Spawn_Right1()
    call InitTrig_Spawn_Right2()
    call InitTrig_Spawn_Left1()
    call InitTrig_Spawn_Left2()
    call InitTrig_Hero_Bounty()
    call InitTrig_Hero_Unit_Enters_Map()
    call InitTrig_Hero_Revival()
    call InitTrig_Bonus_Money()
    call InitTrig_Resources()
    call InitTrig_Selection_Circle_On()
    call InitTrig_Selection_Circle_Off()
    call InitTrig_Choosing_Time()
    call InitTrig_Time_Up()
    call InitTrig_Only_One()
    call InitTrig_Creep_Boost()
    call InitTrig_Handicap_Boost()
    call InitTrig_Bonus2()
    call InitTrig_Hero_Bounty_Rise()
    call InitTrig_Main_Building_Falls()
    call InitTrig_TestCenter()
    call InitTrig_TestVision()
    call InitTrig_TestLevel()
    call InitTrig_TestRestore()
    call InitTrig_TestMoney()
    call InitTrig_AIReport()
    call InitTrig_Bounty_Info()
    call InitTrig_Bounty_Info_Self()
    call InitTrig_Tech_Info()
    call InitTrig_Spawn_Rush()
    call InitTrig_DamageFloatText()
    call InitTrig_Hide_Developer()
    call InitTrig_Developer_Mode()
    call InitTrig_Kill_Hero()
    call InitTrig_Mind_Cooperation()
    call InitTrig_AI_Config()
    call InitTrig_AI_About_to_Select()
    call InitTrig_AI_Preparation()
    call InitTrig_AI_Growth()
    call InitTrig_AI_Learn_Skill()
    call InitTrig_AI_Itemizing()
    call InitTrig_AI_Retreat()
    call InitTrig_AI_Restart_Attack()
    call InitTrig_AI_Dies()
    call InitTrig_AI_Return()
    call InitTrig_AI_Upgrades()
    call InitTrig_AI_Orb()
    call InitTrig_AI_Artifact()
    call InitTrig_AI_Essence()
    call InitTrig_AI_Combat_Item()
    call InitTrig_AI_Reset()
    call InitTrig_SkillData()
    call InitTrig_Upgrade_Skill()
    call InitTrig_Day_and_Night_Skills_Index()
    call InitTrig_Day_and_Night_Skills_Switch()
    call InitTrig_Dummy_Hero_Skill_Index()
    call InitTrig_Dummy_Hero_Skills_Adding()
    call InitTrig_Empowered_Elementals()
    call InitTrig_Elune_Arrow()
    call InitTrig_Star_Rain()
    call InitTrig_Holy_Aura()
    call InitTrig_Exorcism()
    call InitTrig_No_Autocast_Blood_Money()
    call InitTrig_Blood_Money_Hit()
    call InitTrig_Will_of_the_Earth()
    call InitTrig_Totem_of_Might()
    call InitTrig_Judgement()
    call InitTrig_Light_Blast()
    call InitTrig_Light_Pulse()
    call InitTrig_Mana_Burn()
    call InitTrig_Eye_of_Seer()
    call InitTrig_Elementalist()
    call InitTrig_Relocation_Magic_TP()
    call InitTrig_Death_Coil()
    call InitTrig_Death_Decree()
    call InitTrig_Armor_of_Darkness()
    call InitTrig_Nature_Force()
    call InitTrig_Peace()
    call InitTrig_Eye_of_Darkness_Loop()
    call InitTrig_Eye_of_Darkness_Proc()
    call InitTrig_Navalas()
    call InitTrig_Tsukuyomi_Config()
    call InitTrig_Tsukuyomi_Cast()
    call InitTrig_Tsukuyomi_Loop()
    call InitTrig_Hamaria_the_Aeon()
    call InitTrig_Upgrade_Skill_Persona()
    call InitTrig_Eiga()
    call InitTrig_Lavaeteinn()
    call InitTrig_Lavaeteinn_Cancel()
    call InitTrig_Lavaeteinn_Cancel_Level()
    call InitTrig_Lavaeteinn_Telegraph()
    call InitTrig_Tactical_Spirit()
    call InitTrig_Megaton_Raid()
    call InitTrig_Megaton_Raid_Cancel()
    call InitTrig_Kouga()
    call InitTrig_HazyPresence()
    call InitTrig_PhantomShow()
    call InitTrig_PhantomShowBlow()
    call InitTrig_Maeiga()
    call InitTrig_LifeAid()
    call InitTrig_HeatRiserNoAutocast()
    call InitTrig_Heaven_Bracer_Get()
    call InitTrig_Heaven_Bracer_Lost()
    call InitTrig_Check_Essence()
    call InitTrig_Raidou_Essence()
    call InitTrig_DirectiveEssence()
    call InitTrig_Assar_Essence()
    call InitTrig_LegendzKing_Essence()
    call InitTrig_Affa_Essence()
    call InitTrig_Sadim_Essence()
    call InitTrig_Affad_Essence_A()
    call InitTrig_Affad_Essence_B()
    call InitTrig_Atika_Essence()
    call InitTrig_Spell_System_Config()
    call InitTrig_Spell_System()
    call InitTrig_Item_Cleanup()
    call InitTrig_Damage_Engine_Config()
    //Function not found: call InitTrig_Damage_Engine()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Hide_Developer)
    call ConditionalTriggerExecute(gg_trg_SkillData)
    call ConditionalTriggerExecute(gg_trg_Day_and_Night_Skills_Index)
    call ConditionalTriggerExecute(gg_trg_Dummy_Hero_Skill_Index)
    call ConditionalTriggerExecute(gg_trg_Tsukuyomi_Config)
    call ConditionalTriggerExecute(gg_trg_Damage_Engine_Config)
endfunction

//***************************************************************************
//*
//*  TechTree
//*
//***************************************************************************

function InitTechTree_Player0 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(0), 'eate', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'uaod', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'oalt', 0)
    call SetPlayerTechMaxAllowed(Player(0), 'halt', 0)
endfunction

function InitTechTree_Player1 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(1), 'eate', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'uaod', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'oalt', 0)
    call SetPlayerTechMaxAllowed(Player(1), 'halt', 0)
endfunction

function InitTechTree_Player3 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(3), 'eate', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'uaod', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'oalt', 0)
    call SetPlayerTechMaxAllowed(Player(3), 'halt', 0)
endfunction

function InitTechTree_Player4 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(4), 'eate', 0)
    call SetPlayerTechMaxAllowed(Player(4), 'uaod', 0)
    call SetPlayerTechMaxAllowed(Player(4), 'oalt', 0)
    call SetPlayerTechMaxAllowed(Player(4), 'halt', 0)
endfunction

function InitTechTree_Player5 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(5), 'eate', 0)
    call SetPlayerTechMaxAllowed(Player(5), 'uaod', 0)
    call SetPlayerTechMaxAllowed(Player(5), 'oalt', 0)
    call SetPlayerTechMaxAllowed(Player(5), 'halt', 0)
endfunction

function InitTechTree_Player7 takes nothing returns nothing
    call SetPlayerTechMaxAllowed(Player(7), 'eate', 0)
    call SetPlayerTechMaxAllowed(Player(7), 'uaod', 0)
    call SetPlayerTechMaxAllowed(Player(7), 'oalt', 0)
    call SetPlayerTechMaxAllowed(Player(7), 'halt', 0)
endfunction

function InitTechTree takes nothing returns nothing
    call InitTechTree_Player0()
    call InitTechTree_Player1()
    call InitTechTree_Player3()
    call InitTechTree_Player4()
    call InitTechTree_Player5()
    call InitTechTree_Player7()
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_COMPUTER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)

    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)

    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call ForcePlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)

    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call ForcePlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(7), false)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)

    // Player 8
    call SetPlayerStartLocation(Player(8), 8)
    call ForcePlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_COMPUTER)

    // Player 9
    call SetPlayerStartLocation(Player(9), 9)
    call ForcePlayerStartLocation(Player(9), 9)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_COMPUTER)

    // Player 10
    call SetPlayerStartLocation(Player(10), 10)
    call ForcePlayerStartLocation(Player(10), 10)
    call SetPlayerColor(Player(10), ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(10), false)
    call SetPlayerController(Player(10), MAP_CONTROL_USER)

    // Player 11
    call SetPlayerStartLocation(Player(11), 11)
    call ForcePlayerStartLocation(Player(11), 11)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(11), false)
    call SetPlayerController(Player(11), MAP_CONTROL_USER)

    // Player 12
    call SetPlayerStartLocation(Player(12), 12)
    call ForcePlayerStartLocation(Player(12), 12)
    call SetPlayerColor(Player(12), ConvertPlayerColor(12))
    call SetPlayerRacePreference(Player(12), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(12), false)
    call SetPlayerController(Player(12), MAP_CONTROL_USER)

    // Player 13
    call SetPlayerStartLocation(Player(13), 13)
    call ForcePlayerStartLocation(Player(13), 13)
    call SetPlayerColor(Player(13), ConvertPlayerColor(13))
    call SetPlayerRacePreference(Player(13), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(13), false)
    call SetPlayerController(Player(13), MAP_CONTROL_USER)

    // Player 14
    call SetPlayerStartLocation(Player(14), 14)
    call ForcePlayerStartLocation(Player(14), 14)
    call SetPlayerColor(Player(14), ConvertPlayerColor(14))
    call SetPlayerRacePreference(Player(14), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(14), false)
    call SetPlayerController(Player(14), MAP_CONTROL_USER)

    // Player 15
    call SetPlayerStartLocation(Player(15), 15)
    call ForcePlayerStartLocation(Player(15), 15)
    call SetPlayerColor(Player(15), ConvertPlayerColor(15))
    call SetPlayerRacePreference(Player(15), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(15), false)
    call SetPlayerController(Player(15), MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_014
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(9), 0)
    call SetPlayerState(Player(9), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(10), 0)
    call SetPlayerState(Player(10), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(13), 0)
    call SetPlayerState(Player(13), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(14), 0)
    call SetPlayerState(Player(14), PLAYER_STATE_ALLIED_VICTORY, 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(13), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(14), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(13), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(14), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(13), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(14), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(13), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(14), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(13), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(14), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(13), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(14), true)
    call SetPlayerAllianceStateAllyBJ(Player(13), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(13), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(13), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(13), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(13), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(13), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(13), Player(14), true)
    call SetPlayerAllianceStateAllyBJ(Player(14), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(14), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(14), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(14), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(14), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(14), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(14), Player(13), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(13), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(14), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(13), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(14), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(13), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(14), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(13), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(14), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(13), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(14), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(13), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(14), true)
    call SetPlayerAllianceStateVisionBJ(Player(13), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(13), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(13), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(13), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(13), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(13), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(13), Player(14), true)
    call SetPlayerAllianceStateVisionBJ(Player(14), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(14), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(14), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(14), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(14), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(14), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(14), Player(13), true)

    // Force: TRIGSTR_015
    call SetPlayerTeam(Player(4), 1)
    call SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(5), 1)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(6), 1)
    call SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(7), 1)
    call SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(8), 1)
    call SetPlayerState(Player(8), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(11), 1)
    call SetPlayerState(Player(11), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(12), 1)
    call SetPlayerState(Player(12), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(15), 1)
    call SetPlayerState(Player(15), PLAYER_STATE_ALLIED_VICTORY, 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(12), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(15), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(12), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(15), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(12), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(15), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(12), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(15), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(12), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(15), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(12), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(15), true)
    call SetPlayerAllianceStateAllyBJ(Player(12), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(12), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(12), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(12), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(12), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(12), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(12), Player(15), true)
    call SetPlayerAllianceStateAllyBJ(Player(15), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(15), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(15), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(15), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(15), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(15), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(15), Player(12), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(12), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(15), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(12), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(15), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(12), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(15), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(12), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(15), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(12), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(15), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(12), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(15), true)
    call SetPlayerAllianceStateVisionBJ(Player(12), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(12), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(12), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(12), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(12), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(12), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(12), Player(15), true)
    call SetPlayerAllianceStateVisionBJ(Player(15), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(15), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(15), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(15), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(15), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(15), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(15), Player(12), true)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 2)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(1, 2)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(2, 2)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(3, 3)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(4, 2)
    call SetStartLocPrio(4, 0, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 6, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(5, 2)
    call SetStartLocPrio(5, 0, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 1, 6, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(6, 2)
    call SetStartLocPrio(6, 0, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 1, 5, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(7, 3)
    call SetStartLocPrio(7, 0, 4, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(7, 1, 5, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(7, 2, 6, MAP_LOC_PRIO_LOW)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 11520.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3200.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 19712.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 6272.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 11520.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 6272.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 19712.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3200.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("NorthrendDay")
    call SetAmbientNightSound("NorthrendNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call CreateRegions()
    call InitTechTree()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs481967515")

    call InitGlobals()
    call InitCustomTriggers()
    call RunInitializationTriggers()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_001")
    call SetMapDescription("TRIGSTR_003")
    call SetPlayers(16)
    call SetTeams(16)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, 4032.0, 1408.0)
    call DefineStartLocation(1, 4032.0, 1408.0)
    call DefineStartLocation(2, - 10048.0, 1792.0)
    call DefineStartLocation(3, 4032.0, 1408.0)
    call DefineStartLocation(4, 4032.0, 1408.0)
    call DefineStartLocation(5, 4032.0, 1408.0)
    call DefineStartLocation(6, 18240.0, 1728.0)
    call DefineStartLocation(7, 4032.0, 1408.0)
    call DefineStartLocation(8, 16192.0, 1728.0)
    call DefineStartLocation(9, - 7744.0, 1728.0)
    call DefineStartLocation(10, 4032.0, 1408.0)
    call DefineStartLocation(11, 4032.0, 1408.0)
    call DefineStartLocation(12, 4032.0, 1408.0)
    call DefineStartLocation(13, 4032.0, 1408.0)
    call DefineStartLocation(14, 4032.0, 1408.0)
    call DefineStartLocation(15, 4032.0, 1408.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:
function sa___prototype2_DamageEngine_RegisterFromHook takes nothing returns boolean
    call DamageEngine_RegisterFromHook(f__arg_trigger1,f__arg_string1,f__arg_limitop1,f__arg_real1)
    return true
endfunction

function jasshelper__initstructs481967515 takes nothing returns nothing
    set st___prototype2[1]=CreateTrigger()
    call TriggerAddAction(st___prototype2[1],function sa___prototype2_DamageEngine_RegisterFromHook)
    call TriggerAddCondition(st___prototype2[1],Condition(function sa___prototype2_DamageEngine_RegisterFromHook))



    call ExecuteFunc("s__Damage_onInit")
endfunction

