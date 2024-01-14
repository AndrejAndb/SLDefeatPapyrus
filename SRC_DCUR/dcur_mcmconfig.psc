Scriptname dcur_mcmconfig extends SKI_ConfigBase

dcur_library Property dclibs  Auto  
zadlibs Property libs  Auto  
dcur_clocktickScript Property cts Auto
dcur_genericlib Property dglib Auto

GlobalVariable Property dcur_prison_UseVanilla Auto
GlobalVariable Property dcur_prison_nosex Auto

String File

; OIDs
int trapcooldownOID
int useflashbanganimationOID
int flashbangnodroppingitemsOID
int modenabledOID
int containersenabledOID
int corpsesenabledOID
int plantsenabledOID
int minesenabledOID
int doorsenabledOID
int lockeddoorsonlyOID
int debugenabledOID
int debuglogenabledOID
int resetquestsOID
int heavilyrestrainedthresholdOID
int alwaysequipfullsetOID
int basechanceOID
int minArousalOID
int maxArousalOID
int numEquippedItemsOID
int losekeychanceOID
;int useCDOID
int useSDOID
int useSkoomaWhoreOID
int useMMEOID
int useAradiaOID
int useEstrusOID
int useArmbinderOID
int useBlindfoldOID
int usehoodsOID
int useGagOID
int equipthemeOID
int useBraOID
int useBeltOID
int useBootsOID
int useSlaveHarnessOID
int dungeonchanceOID
int wildernesschanceOID
int citychanceOID
int useRefinedOptionsOID
int deadbodymodifierOID
int doormodifierOID
int arousalmodifierOID
int arousalweightOID
int enableundressOID
int commoncontainerweightOID
int ornatecontainerweightOID
int escape_containersenabledOID
int escape_corpsesenabledOID
int sharpitemchanceOID
int keydropchanceOID
int rarekeydropchanceOID
int keydropnodemodifierOID
int chastitykeyweightOID
int restraintskeyweightOID
int piercingkeyweightOID
int nokeyswithoutrestraintsOID
int useitemsfrominventoryOID
int minnumEquippedItemsOID
int useVPiercingOID 
int useNPiercingOID 
int trapsenabledOID
int trapchancemodifierOID
int equipthemefollowerOID
int enablefollowersupportOID
int allowarmbindersfollowersOID
int consistentthemeOID
int disablesafewordsOID
int dothetestOID
int plantchancemodifierOID
int createkeysOID
;int EssentialPlayerOID
int pickpocketkeysOID
int traprewardsOID
int UltraTightSJWeightOID

int ringgagweightOID
int ballgagweightOID
int panelgagweightOID
int slavebootsweightOID
int ponybootsweightOID
int corsetweightOID
int collarharnessweightOID
int lockingharnessweightOID
int armbinderweightOID
int shacklesweightOID
int yokeweightOID
int slutcollarweightOID
int whorecollarweightOID

int AradiaLivingHarnessWeightOID
int AradiaRogueWeightOID
int TentacleParasiteWeightOID
Int ChainHarnessWeightOID
int cursedcollaroccurranceOID
int estrusweightOID
int FlashBangChestWeightOID
int hisecweightOID
int stripteasecollarweightOID
int slavecollarweightOID
int slavegagweightOID
int standardweightOID
int slaveitemsweightOID
int dashaitemsweightOID
int bondageadventuretrapweightOID

int AradiaLivingHarnesskeychanceOID
int hisecallowarmbinderOID
int hisecuseyokeOID
int hisecremovalgoldperlevelOID
int cursedcollarquestchanceOID
int collarquestnofasttravelOID
int slavecollarkeyneededOID
int slavecollarminsexactsOID
int slavecollarmaxsexactsOID
int slavecollarmindayswornOID
int slavecollarmaxdayswornOID
int slavecollarjewelleryallowedOID
int slavecollarbuffsactiveOID

int slutcollarminsexlessdaysneededOID
int slutcollarmaxsexlessdaysneededOID
int slavegagreleasetimeOID
int shockbootsweightOID
int slavebeltweightOID
int slavecollarbeltweightOID
int slavecollarcrimeweightOID
int slavecollarsolicitationcriticalfailurechanceOID
int slavecollarsolicitationsuccesschanceOID
int slavecollarsolicitationenabledOID
int rubberdollweightOID
int exhibitionistsuitweightOID

int solicitationmintipOID
int solicitationmaxtipOID
int solicitationbountyamountOID
int solicitationadditemsweightOID
int solicitationaddpunishingitemweightOID
int solicitationchainharnessweightOID
int solicitationbondagesexchanceOID
int solicitationbondagesexremovalchanceOID
int solicitationslutcollarweightOID
int solicitationinnsonlyOID
int solicitationpaychanceOID
int solicitationthreesomechanceOID
int solicitationdrugchanceOID
int solicitationenforceclothingOID
int solicitationinnkeepershareOID 
int solicitationinnchancebonusOID 
int solicitationminNPCarousalOID
int solicitationdancerapechanceOID
int solicitationguardgambleOID

int yokeremovalhelpchanceOID
int yokeremovalwalkawayweightOID
int yokeremovalrapeweightOID
int yokeremovaltakekeyweightOID
int yokeremovaladditemweightOID

int estrusincityOID
int flashbangincityOID
int cursedcollarquestendgiftOID
int stripbeltsonrapeOID
int rapistgenderOID
int difficultyOID
int cursedcollarusepanelgagOID
int cursedcollarsurfaceweightOID
int cursedcollarhideoutweightOID
int cursedcollardungeonweightOID

int drugweightOID
int sprigganweightOID
int estrusplantattackOID
int estrusimpregnatechanceOID
int estrustentacleimpregnationonlyOID
int estrusdrawcrowdOID

int enslaveweightOID
int selfbondageOID
int dropkeysOID

int sleepdungeonchanceOID
int sleepwildernesschanceOID
int sleepcitychanceOID
int sleepnakedbonusOID
int sleeparousedbonusOID
int sleepbelterweightOID

int usesuitsOID
int catsuitweightOID
int hobbledressweightOID
int straitjacketweightOID

int rubbersuitweightOID ; difficult version
int rubberglovesbindchanceOID

int lbquestweightOID
int handrestraintkeychanceOID
int headrestraintkeychanceOID
int bodyrestraintkeychanceOID
int legrestraintkeychanceOID
int lbkeydropmodifierOID

int resetfollowersOID

int devicecommentsenabledOID
int devicecommentscooldownOID
int devicecommentsactionchanceOID
int devicecommentsactionadditemsweightOID
int devicecommentsactionrapeOID
int devicecommentsactiongivekeysOID
int devicecommentsfollowersenabledOID
int devicecommentsfolloweractionenabledOID
int devicecommentsvisibleonlyOID
int deviceactionsvisibleonlyOID
int deviceactionsarousalmodOID

int punishingitemsminlevelOID

int sexDisallowBeastRacesOID
int sexDisallowElderOID
int sexDisallowGuardsOID
int sexAllowHumanoidsOID
int sexAllowCreaturesOID
int sexMatchingMobsOID
int sexMinrapistsOID
int sexMaxrapistsOID
int sexAllowThreesomesOID
int sexAttackCooldownOID
int sexchastitypreventsrapeOID
int sexEnableNakedAttacksOID
int sexEnableNightAttacksOID
int sexEnableBoundAttacksOID
int sexEnableNakedAttacksArousalMinOID
int sexNakedAttackChancePerTickOID
int sexTieUpOnRapeChanceOID
int sexEnableCombatAttacksOID
int sexEnableUnarmedAttacksOID
int sexEnableArousedAttacksOID
int sexArousedAttacksThresholdOID
int sexUseConsensualScenesChanceOID
int sexGloballyEnabledOID
int sexCombatSurrenderHealthOID
int sexCombatKnockAwayWeaponChanceOID
int sexCombatSurrenderRestraintsChanceOID
int sexCombatResistChanceOID
int sexOutcomeHealOID
int sexOutcomeInnOID
int sexOutcomeBAQOID
int sexOutcomeSSOID
int sexOutcomeLeftinWildernessOID
int sexForceLesbianOID
int sexBootsMakeHelplessOID
int sexOutcomeHardcoreOID
int sexOutcomeRobberyChanceOID
int sexAttackThresholdOID
int sexCombatNPCSurrenderChanceOID

int luckycharmdropchanceOID
int shameidleOID
int progressivebondageOID
int shutdownmodOID

int selfbondageenableOID
int selfbondagewarningOID
int selfbondageminitemsOID
int selfbondagemaxitemsOID
int selfbondagecooldownOID
int selfbondagegastrapweightOID
int selfbondagewhenrestrainedOID
int selfbondagenoitemdropsOID

int fasttravelcontrolOID
int enablehornybuffsOID
int enabledevicebuffsOID

int lowperformancemodeOID
int dropusefulkeysOID
int scanforfollowersOID
int SurrenderKeyOID

int breastresizeOID
int breastminsizeOID
int breastmaxsizeOID
int bellyminsizeOID
int bellymaxsizeOID
int buttminsizeOID
int buttmaxsizeOID

int pienabledOID
int piarrestweightOID
int pibeltweightOID
int piyokeweightOID
int pichainharnessweightOID
int pifineweightOID
int piletgoweightOID
int pirapeweightOID
int pitieupweightOID
int pimisogynyOID
int pidelayedarrestOID
int pibountyOID
int pienforcenuditylawOID

int exportsettingsOID
int importsettingsOID

Int MaxCombinationsOID
Int NumbersPerTickOID
int SpotChancePerTickOID
int KeyStealBaseChanceOID

int uncontrollablelustOID
int restraintsdropchanceOID
int rc_minplayerlevelOID
int rc_itemdropchanceOID
int rc_diarydropchanceOID

int uncontrollablelustThresholdOID
int uncontrollablelustChanceOID
int lockmenuwhentiedOID
int shakyhandsOID
int pimisogynyrapechanceOID
int pimisogynyrapeoralweightOID
int picitizensreporttoguardOID
int freefollowersOID
int HornyBuffsThresholdOID

int anklechainsweightOID
int simpleslaveryweightOID
int cuminflationenableOID
int gagtalkchanceOID
int gagtalksuccesschanceOID
int alwayssleepnakedOID
int shoppingquestenabledOID
int lossofcontrolOID
int chastitygearneedsgagOID
int numboundgirlsOID

int prison_DifficultyOID
int prison_EscapeDifficultyOID
int prison_NoSexOID
int prison_useVanillaOID
int prison_WhippingOID
int prison_usePOChanceOID

int mercyfuldungeonsOID
int furnituretrapWeightOID

bool property mercyfuldungeons = false Auto

bool property sex_allowresist = true Auto
int property prison_Difficulty = 4 Auto
int property prison_EscapeDifficulty = 4 Auto
bool property prison_NoSex = False Auto
bool property prison_useVanilla = False Auto
string[] Property DifficultyList Auto
bool property prison_Whipping = False Auto
Float Property prison_usePOChance = 0.0 Auto

float property trapcooldown = 1.0 Auto
bool property useflashbanganimation = False Auto
bool property flashbangnodroppingitems = False Auto
bool property modenabled = true auto
bool property containersenabled = true auto
bool property corpsesenabled = true auto
bool property plantsenabled = true Auto
bool property minesenabled = true Auto
bool property doorsenabled = true Auto
bool property lockeddoorsonly = False Auto
bool property debugenabled = false auto
bool property debuglogenabled = true auto
bool property resetquests = false auto
bool property alwaysequipfullset = false auto
int property heavilyrestrainedthreshold = 5 auto
float property basechance = 5.0 auto
int property minArousal = 20 auto
int property maxArousal = 90 auto
int property numEquippedItems = 3 auto
int property losekeychance = 50 auto
bool property useCD = false auto
bool property useSD = false auto
bool property useSkoomaWhore = false auto
bool property useMME = false auto
bool property useAradia = false auto
bool property useEstrus = false auto
bool property useArmbinder = true auto
bool property useBlindfold = true auto
bool property useGag = true auto
bool property useBra = true auto
bool property useBelt = true auto
bool property useBoots = true auto
bool property useHoods = true Auto
bool property useVPiercing = true Auto
bool property useNPiercing = true Auto
int property equiptheme = 0 auto
int property equipthemefollower = 0 auto
bool property useSlaveHarness = true auto
float property sleepdungeonchance = 50.0 auto
float property sleepwildernesschance = 30.0 auto
float property sleepcitychance = 5.0 auto
float property sleepnakedbonus = 1.5 auto
float property sleeparousedbonus = 1.5 auto
float property sleepbelterweight = 1.0 auto
float property dungeonchance = 10.0 auto
float property wildernesschance = 7.0 auto
float property citychance = 5.0 auto
bool property useRefinedOptions = false auto
float property arousalmodifier = 0.5 auto
float property arousalweight = 0.5 auto
float property deadbodymodifier = 1.0 Auto
float property doormodifier = 1.0 Auto
bool property enableundress = true auto
bool property escape_containersenabled = true auto
bool property escape_corpsesenabled = true auto
int property sharpitemchance = 15 auto
float property keydropchance = 5.0 auto
float property rarekeydropchance = 2.5 auto
float property keydropnodemodifier = 0.5 Auto
float property chastitykeyweight = 40.0 auto
float property restraintskeyweight = 55.0 Auto
float property piercingkeyweight = 5.0 auto
float property commoncontainerweight = 0.8 Auto
float property ornatecontainerweight = 1.5 Auto
bool property nokeyswithoutrestraints = false Auto
int property minnumEquippedItems = 2 Auto
bool property useitemsfrominventory = False Auto
bool property trapsenabled = True Auto
float property trapchancemodifier = 1.3 Auto
bool property enablefollowersupport = true Auto
bool property allowarmbindersfollowers = true Auto
bool property consistenttheme = true auto
bool property disablesafewords = false auto
float property plantchancemodifier = 0.5 Auto
bool property createkeys = false Auto
;bool property EssentialPlayer = true Auto
float property pickpocketkeys = 5.0 Auto

int property ringgagweight = 50 Auto
int property ballgagweight = 50 Auto
int property panelgagweight = 50 Auto
int property slavebootsweight = 50 Auto
int property ponybootsweight = 50 Auto
int property corsetweight = 50 Auto
int property collarharnessweight = 50 Auto
int property lockingharnessweight = 50 Auto
int property armbinderweight = 50 Auto
int property shacklesweight = 50 Auto
int property yokeweight = 50 Auto

float property estrusweight = 50.0 auto
float property FlashBangChestWeight = 75.0 auto
float property cursedcollarquestchance = 10.0 Auto
float property hisecweight = 35.0 Auto
float property stripteasecollarweight = 10.0 Auto
float property slavecollarweight = 10.0 Auto
float property slavegagweight = 10.0 Auto
float property AradiaLivingHarnessWeight = 10.0 Auto
float property AradiaRogueWeight = 10.0 Auto
float property TentacleParasiteWeight = 15.0 Auto
float property ChainHarnessWeight = 25.0 Auto
float property UltraTightSJWeight = 25.0 Auto
float property standardweight = 150.0 Auto
float property FurnitureTrapWeight = 50.0 Auto
float property slaveitemsweight = 2.5 Auto
float property dashaitemsweight = 2.5 Auto
float property slutcollarweight = 10.0 Auto
float property whorecollarweight = 15.0 Auto
float property bondageadventuretrapweight = 10.0 Auto

bool property slavecollarkeyneeded = True Auto
int property slavecollarminsexacts = 10 Auto
int property slavecollarmaxsexacts = 50 Auto
int property slavecollarmindaysworn = 5 Auto
int property slavecollarmaxdaysworn = 25 Auto

int property slutcollarminsexlessdaysneeded = 5 Auto
int property slutcollarmaxsexlessdaysneeded = 20 Auto

int property slavegagreleasetime = 12 Auto

float property shockbootsweight = 10.0 Auto
float property slavebeltweight = 10.0 Auto

float property rubberdollweight = 10.0 Auto

float property exhibitionistsuitweight = 10.0 Auto

int property slavecollarbeltweight = 50 Auto
int property slavecollarcrimeweight = 50 Auto
int property slavecollarsolicitationcriticalfailurechance = 20 Auto
int property slavecollarsolicitationsuccesschance = 30 Auto
int property solicitationmintip = 10 Auto
int property solicitationmaxtip = 30 Auto
int property slavecollarsolicitationenabled = 0 Auto
int property solicitationbountyamount = 1500 Auto
int property solicitationadditemsweight = 50 Auto
int property solicitationaddpunishingitemweight = 10 Auto
int property solicitationchainharnessweight = 33 Auto
int property solicitationbondagesexchance = 33 Auto
int property solicitationbondagesexremovalchance = 50 Auto
int property solicitationslutcollarweight = 15 Auto
bool property solicitationinnsonly = False Auto
int property solicitationpaychance = 50 Auto
int property solicitationthreesomechance = 33 Auto
int property solicitationdrugchance = 33 Auto
bool property solicitationenforceclothing = False Auto
int property solicitationinnkeepershare = 33 Auto
int property solicitationinnchancebonus = 40 Auto
int property solicitationminNPCarousal = 20 Auto
int property solicitationdancerapechance = 15 Auto
bool property solicitationguardgamble = True Auto

int property yokeremovalhelpchance = 33 Auto
int property yokeremovalwalkawayweight = 80 Auto
int property yokeremovalrapeweight = 30 Auto
int property yokeremovaltakekeyweight = 5 Auto
int property yokeremovaladditemweight = 5 Auto

float property AradiaLivingHarnesskeychance = 2.0 Auto
bool property slavecollarbuffsactive = True Auto
bool property slavecollarjewelleryallowed = True Auto
int property sexAttackCooldown = 6 Auto
bool property hisecallowarmbinder = True Auto
bool property hisecuseyoke = True Auto
int property hisecremovalgoldperlevel = 200 Auto
bool property estrusincity = False Auto
bool property flashbangincity = False Auto
int property Difficulty = 0 Auto
bool property collarquestnofasttravel = True Auto
bool property cursedcollarquestendgift = true Auto
bool property stripbeltsonrape = true Auto
int property rapistgender = 0 Auto
bool property cursedcollarusepanelgag = false Auto

int property cursedcollarsurfaceweight = 50 Auto
int property cursedcollarhideoutweight = 50 Auto
int property cursedcollardungeonweight = 50 Auto

float property drugweight = 50.0 Auto
float property sprigganweight = 0.0 Auto
float property estrusplantattack = 50.0 Auto
float property estrusimpregnatechance = 75.0 Auto
bool property estrustentacleimpregnationonly = True Auto
bool property estrusdrawcrowd = True Auto

float property enslaveweight = 0.0 Auto

bool property selfbondage = False Auto
bool property dropkeys = False Auto
bool property dothetest = False Auto

bool property usesuits = True Auto
float property catsuitweight = 10.0 Auto
float property hobbledressweight = 10.0 Auto
float property straitjacketweight = 10.0 Auto

float property rubbersuitweight = 10.0 Auto
int property rubberglovesbindchance = 25 Auto

bool property lb = True Auto
float property lbquestweight = 0.0 Auto
float property handrestraintkeychance = 15.0 Auto
float property headrestraintkeychance = 9.0 Auto
float property bodyrestraintkeychance = 6.0 Auto
float property legrestraintkeychance = 3.0 Auto
float property lbkeydropmodifier = 3.0 Auto

bool property resetfollowers = false Auto

bool property devicecommentsenabled = true Auto
float property devicecommentscooldown = 1.0 Auto
float property devicecommentsactionchance = 10.0 Auto
float property devicecommentsactionadditemsweight = 50.0 Auto
float property devicecommentsactionrape = 50.0 Auto
float property devicecommentsactiongivekeys = 25.0 Auto
bool property devicecommentsfollowersenabled = True Auto
bool property devicecommentsfolloweractionenabled = True Auto
bool property devicecommentsvisibleonly = False Auto
bool property deviceactionsvisibleonly = False Auto
bool property deviceactionsarousalmod = True Auto

int property punishingitemsminlevel = 1 Auto

bool property sexDisallowBeastRaces = true Auto
bool property sexDisallowElder = true Auto
bool property sexDisallowGuards = False Auto
bool property sexAllowHumanoids = true Auto
bool property sexAllowCreatures = false Auto
bool property sexMatchingMobs = true Auto
int property sexMinrapists = 1 Auto
int property sexMaxrapists = 5 Auto
bool property sexAllowThreesomes = True Auto
bool property sexchastitypreventsrape = true Auto
bool property sexEnableNakedAttacks = True Auto
bool property sexEnableNightAttacks = True Auto
bool property sexEnableBoundAttacks = True Auto
Float property sexTieUpOnRapeChance = 10.0 Auto
Float property sexNakedAttackChancePerTick = 100.0 Auto
int property sexEnableNakedAttacksArousalMin = 25 Auto
int property sexUseConsensualScenesChance = 25 Auto
bool property sexEnableCombatAttacks = False Auto
bool property sexEnableUnarmedAttacks = True Auto
bool property sexEnableArousedAttacks = True Auto
int property sexArousedAttacksThreshold = 75 Auto
bool property sexGloballyEnabled = False Auto
int property sexCombatSurrenderHealth = 25 Auto
Float property sexCombatKnockAwayWeaponChance = 7.5 Auto
Float property sexCombatSurrenderRestraintsChance = 75.0 Auto
Float property sexCombatResistChance = 25.0 Auto
Float property sexOutcomeHeal = 50.0 Auto
Float property sexOutcomeInn = 40.0 Auto
Float property sexOutcomeBAQ = 10.0 Auto
Float property sexOutcomeSS = 10.0 Auto
Float property sexOutcomeLeftinWilderness = 30.0 Auto
Bool property sexForceLesbian = True Auto
Bool property sexOutcomeHardcore = False Auto
Bool property sexBootsMakeHelpless = True Auto
Float property sexOutcomeRobberyChance = 100.0 Auto
int property sexAttackThreshold = 1 Auto
Float property sexCombatNPCSurrenderChance = 50.0 Auto

float property luckycharmdropchance = 1.0 Auto
bool property shameidle = True Auto
bool property progressivebondage = False Auto
bool property shutdownmod = False Auto
; bool property overridenomales = False Auto

bool property baqEnabled = True Auto
float Property baqDoNothingWeight = 70.0 Auto
float Property baqGiveKeyWeight = 10.0 Auto
float Property baqUnlockOneWeight = 10.0 Auto
float Property baqUnlockAllWeight = 10.0 Auto
float Property baqStartBAQWeight = 10.0 Auto
float Property baqAddRestraintsWeight = 10.0 Auto
float Property baqStealStuffWeight = 10.0 Auto
float Property baqRapeWeight = 10.0 Auto

bool property selfbondageenable = True Auto
bool property selfbondagewarning = True Auto
int property selfbondageminitems = 1 Auto
int property selfbondagemaxitems = 10 Auto
int property selfbondagecooldown = 48 Auto
float Property selfbondagegastrapweight = 25.0 Auto
bool property selfbondagewhenrestrained = True Auto
bool property selfbondagenoitemdrops = False Auto

int property rditemcooldownhours = 12 Auto
int property rdsexactsneeded = 5 Auto
int property rdbasearousalthreshold = 25 Auto
int property rdarousalthresholdreduceperitem = 5 Auto
int property rdfightoffmuliplier = 10 Auto
int property rdsexactsdecayperday = 3 Auto
bool property rdallowhood = true Auto
bool property rdrapeallowed = true Auto
int property rdrapecooldown = 1 Auto

bool property lowperformancemode = false Auto
bool property dropusefulkeys = true Auto
bool property scanforfollowers = false Auto
int Property SurrenderKey = 207 Auto ; mapped to END key

bool property breastresize = False Auto
float Property breastminsize = 0.0 Auto
float Property breastmaxsize = 1.0 Auto
float Property buttminsize = 0.0 Auto
float Property buttmaxsize = 1.0 Auto
float Property bellyminsize = 0.0 Auto
float Property bellymaxsize = 1.0 Auto

bool property pienabled = True Auto
float Property piarrestweight = 25.0 Auto
float Property piyokeweight = 25.0 Auto
float Property pichainharnessweight = 25.0 Auto
float Property pibeltweight = 25.0 Auto
float Property pifineweight = 25.0 Auto
float Property piletgoweight = 25.0 Auto
float Property pirapeweight = 25.0 Auto
float Property pitieupweight = 25.0 Auto
bool property pidelayedarrest = False Auto
bool property pienforcenuditylaw = True Auto
int property pibounty = 1000 Auto

bool property exportsettings = false Auto
bool property importsettings = false Auto

Int Property MaxCombinations = 9999 Auto
Int Property NumbersPerTick = 250 Auto
Float Property SpotChancePerTick = 5.0 Auto
Float Property KeyStealBaseChance = 25.0 Auto
int property fasttravelcontrol = 2 Auto
bool property pimisogyny = True Auto

bool property enablehornybuffs = True Auto
bool property enabledevicebuffs = True Auto

bool property uncontrollablelust = True Auto
int property uncontrollablelustThreshold = 75 Auto
float property uncontrollablelustChance = 50.0 Auto

float property restraintsdropchance = 5.0 Auto
int property rc_minplayerlevel = 5 Auto
float property rc_itemdropchance = 50.0 Auto
float property rc_diarydropchance = 5.0 Auto
bool property lockmenuwhentied = true Auto
float property shakyhands = 50.0 Auto
float property pimisogynyrapechance = 20.0 Auto
float property pimisogynyrapeoralweight = 50.0 Auto
Float property picitizensreporttoguard = 50.0 Auto
Bool Property freefollowers = false Auto
Int Property HornyBuffsThreshold = 65 Auto

Bool property tm_enabled = True Auto
Float property tm_basesuccesschance = 33.0 Auto
Float property tm_wantsunlockedchance = 50.0 Auto
Bool property tm_nicerewards = True Auto
Float property tm_fail_donothingweight = 50.0 Auto
Float property tm_fail_tiesPC = 25.0 Auto
Float property tm_fail_rapes = 25.0 Auto
Float property tm_fail_reports = 10.0 Auto
Float property tm_fail_tiesboth = 25.0 Auto

Float property anklechainsweight = 25.0 Auto
Float property simpleslaveryweight = 20.0 Auto

Bool property cuminflationenable = False Auto
Float property gagtalkchance = 75.0 Auto
Float property gagtalksuccesschance = 50.0 Auto
Bool Property alwayssleepnaked = True Auto
Float property traprewards = 25.0 Auto
Bool Property shoppingquestenabled = True Auto

Bool Property lossofcontrol = true Auto
Bool Property chastitygearneedsgag = false Auto

Int Property numboundgirls = 15 Auto

FormList Property dcur_commoncontainers Auto

; Custom High Security Set
Armor Property dcur_hisecBelt Auto
Armor Property dcur_hisecBeltRendered Auto
Armor Property dcur_hisecBra Auto
Armor Property dcur_hisecBraRendered Auto
Armor Property dcur_hisecArmCuffs Auto
Armor Property dcur_hisecArmCuffsRendered Auto
Armor Property dcur_hisecLegCuffs Auto
Armor Property dcur_hisecLegCuffsRendered Auto
Armor Property dcur_hisecCollar Auto
Armor Property dcur_hisecCollarRendered Auto
Armor Property dcur_hisecBoots Auto
Armor Property dcur_hisecBootsRendered Auto
Armor Property dcur_hisecBallGag Auto
Armor Property dcur_hisecBallGagRendered Auto
Armor Property dcur_hisecArmbinder Auto
Armor Property dcur_hisecArmbinderRendered Auto
Armor Property dcur_hisecpanelgag Auto
Armor Property dcur_hisecpanelgagRendered Auto
Armor Property dcur_hisecHarness Auto
Armor Property dcur_hisecHarnessRendered Auto
Keyword Property dcur_kw_hisecYoke Auto
Armor Property dcur_hisecYoke Auto
Armor Property dcur_hisecYokeRendered Auto
 
Armor Property dcur_slavecollar Auto
Armor Property dcur_slavecollarRendered Auto
Armor Property dcur_customVagPlug Auto
Armor Property dcur_customVagPlugRendered Auto
Armor Property dcur_customAnPlug Auto
Armor Property dcur_customAnPlugRendered Auto
Key Property dcur_hiseckey Auto

Race Property ManakinRace Auto

Keyword Property ActorTypeCreature Auto
Keyword Property ActorTypeDwarven Auto
Keyword Property ActorTypeNPC Auto
Keyword Property dcur_highsecurityrestraint Auto
Keyword Property dcur_cursedRestraint Auto

Armor Property dcur_shackles Auto
Armor Property dcur_shacklesRendered Auto
Keyword Property dcur_kw_wristshackles Auto

Armor Property dcur_slaveGag Auto
Armor Property dcur_slavegagRendered Auto
GlobalVariable Property dcur_slavegagplugged Auto
Armor Property dcur_shockboots Auto
Armor Property dcur_shockbootsRendered Auto
Armor Property dcur_slaveBelt Auto
Armor Property dcur_slaveBeltRendered Auto

Armor Property dcur_heavyyoke Auto
Armor Property dcur_HeavyYokeRendered Auto
Armor Property dcur_yoke Auto
Armor Property dcur_yokeRendered Auto
Keyword Property dcur_kw_yoke Auto
Keyword Property dcur_kw_heavyyoke Auto

Keyword Property dcur_kw_slavecollar Auto
Armor Property dcur_slutcollar Auto
Armor Property dcur_slutCollarRendered Auto
Keyword Property dcur_kw_slutcollar Auto

Package Property dcur_pk_hogtie Auto
Package Property dcur_pk_movetoplayer Auto
Package Property dcur_pk_standstill Auto

Explosion Property TG08BShockwaveExplosion Auto
Explosion Property dcur_gascloud Auto

SPELL Property dcur_electricblastspell Auto
MiscObject Property Gold001 Auto
GlobalVariable Property dcur_solicitationacts Auto
GlobalVariable Property dcur_solicitationinnsonly Auto
GlobalVariable Property dcur_solicitationoutcome Auto
FormList Property dcur_solicitationcustomers Auto
GlobalVariable Property dcur_solicitationbonus Auto

Perk Property dcur_containerperk Auto
Perk Property dcur_corpseperk Auto
Perk Property dcur_trapperk Auto
Perk Property dcur_npcchatperk Auto
Perk Property dcur_harvestperk Auto
Perk Property dcur_mineperk Auto
ImageSpaceModifier Property black Auto
Faction Property CurrentFollowerFaction Auto
Faction Property zadGagPanelFaction Auto

Quest Property dcur_curseddialogue Auto
Quest Property dcur_mastercontroller Auto
Quest Property dcur_yokeerrand Auto

GlobalVariable Property dcur_assaulter_dialogue Auto
Topic Property dcur_assaulters_dialogue Auto

FormList Property dcur_bigchestlist Auto
FormList Property dcur_keys Auto
FormList Property dcur_evilfactions Auto

GlobalVariable Property dcur_solicitationenabled Auto
GlobalVariable Property dcur_slavecollarbuffsactive Auto

GlobalVariable Property dcur_misogyny_active Auto

Light Property Torch01 Auto
Idle Property WakeUp Auto

Potion Property Skooma Auto

Armor Property dcur_rubberHood Auto
Armor Property dcur_rubberHoodRendered Auto
Armor Property dcur_rubberSuit Auto
Armor Property dcur_rubberSuitRendered Auto
Armor Property dcur_rubberCollar Auto
Armor Property dcur_rubberCollarRendered Auto
Armor Property dcur_rubberSuitSimple Auto
Armor Property dcur_rubberSuitSimpleRendered Auto
Armor Property dcur_rubberBoots Auto
Armor Property dcur_rubberBootsRendered Auto
Armor Property dcur_rubberGloves Auto
Armor Property dcur_rubberGlovesRendered Auto
Armor Property dcur_rubberGlovesLocked Auto
Armor Property dcur_rubberGlovesLockedRendered Auto
Armor Property dcur_rubberBootsSimple Auto
Armor Property dcur_rubberBootsSimpleRendered Auto
Armor Property dcur_rubberGlovesSimple Auto
Armor Property dcur_rubberGlovesSimpleRendered Auto

Faction Property CarriageSystemFaction Auto
Keyword Property dcur_kw_cursedArmbinder Auto
Keyword Property dcur_kw_hisecArmbinder Auto

Keyword Property dcur_kw_lb_linkedarmcuffs Auto
Keyword Property dcur_kw_lb_leatherbindings Auto
Keyword Property dcur_kw_lb_lockedrubbergloves Auto
Keyword Property dcur_kw_lb_shackles Auto

Key Property dcur_handrestraintskey Auto
Key Property dcur_headrestraintskey Auto
Key Property dcur_bodyrestraintskey Auto
Key Property dcur_legrestraintskey Auto

FormList Property dcur_DDFrameworkItemList Auto
FormList Property dcur_DDcustomitemlist Auto
Formlist property dcur_DDgenericblockitems Auto
FormList Property dcur_devicekeywords Auto
Armor Property dcur_fakearmbinder Auto

Faction Property PotentialFollowerFaction Auto
Faction Property PotentialMarriageFaction Auto

FormList Property dcur_drinks Auto
FormList Property dcur_food Auto
FormList Property dcur_childraceslist  Auto  
Package Property dcur_pk_keepdistancetoplayer Auto
Keyword Property IsBeastRace Auto
Keyword Property ActorTypeAnimal Auto
Race Property ElderRace Auto
FormList Property dcur_humanoidcreaturessexlist Auto
FormList Property dcur_creaturesexlist Auto
Package Property dcur_pk_fleefromplayer Auto

FormList Property dcur_busyrapists Auto
FormList Property dcur_notbusyrapists Auto
Keyword Property dcur_kw_cursedcollar Auto
Package Property dcur_pk_noidletalk Auto

GlobalVariable Property dcur_devicecomments_followerallowed Auto

FormList Property dcur_ammolist Auto
FormList Property dcur_tradesfactions Auto

SPELL Property dcur_detectioncloakspell Auto
SPELL Property dcur_detectioncloakFFspell Auto
SPELL Property dcur_pacifycloakFFspell Auto
GlobalVariable Property dcur_devicecomments_followeractionallowed Auto

Faction Property IsGuardFaction Auto
ReferenceAlias Property dcur_WhiterunInnMarker  Auto  
Perk Property dcur_doorperk  Auto  
Perk Property dcur_corpseperkashpiles Auto
Armor property dcur_luckycharm Auto

GlobalVariable Property dcur_modshutdown  Auto  
GlobalVariable Property dcur_isvisiblyrestrained  Auto  

Actor Property questgiver Auto
Armor Property dcur_questArmbinder Auto
Armor Property dcur_questArmbinderRendered Auto

Package Property dcur_pk_dancerandom  Auto  
GlobalVariable Property dcur_bondageadventurequestenabled  Auto  
GlobalVariable Property dcur_scquest_demandsroughsex Auto

Armor Property dcur_rubberHoodOpenEyes Auto
Armor Property dcur_rubberHoodOpenEyesRendered Auto
Armor Property dcur_rubberHoodSimple Auto
Armor Property dcur_rubberHoodSimpleRendered Auto
Armor Property dcur_rubberCollarSimple Auto
Armor Property dcur_rubberCollarSimpleRendered Auto

Armor Property dcur_zipsuitInventory Auto
Armor Property dcur_zipsuitRendered Auto
Armor Property dcur_zipsuitbootsInventory Auto
Armor Property dcur_zipsuitbootsRendered Auto
Armor Property dcur_exhibitionistsuit Auto
Armor Property dcur_exhibitionistsuitRendered Auto
Armor Property dcur_exhibitionistboots Auto
Armor Property dcur_exhibitionistbootsRendered Auto

Armor Property dcur_anklechains Auto
Armor Property dcur_anklechainsRendered Auto

Armor Property dcur_beltofshame Auto
Armor Property dcur_beltofshameRendered Auto
Armor Property dcur_yokeofshame Auto
Armor Property dcur_yokeofshameRendered Auto

Armor Property dcur_balloonhoodblacksimple Auto
Armor Property dcur_balloonhoodblacksimpleRendered Auto
Armor Property dcur_balloonhoodpinksimple Auto
Armor Property dcur_balloonhoodpinksimpleRendered Auto

Key Property dcur_lawEnforcementKey Auto

Keyword Property dcur_kw_rdcollar Auto
Keyword Property dcur_kw_rditem Auto
Armor Property dcur_sexgodessamulet Auto
FormList Property dcur_DDSimpleItems  Auto  

Armor Property dcur_pinkarmbinder Auto
Armor Property dcur_pinkarmbinderRendered Auto

Book Property dcur_royalchastity_bookstart Auto
Key Property dcur_royalchastity_key Auto
Armor Property dcur_royalchastity_belt Auto
Armor Property dcur_royalchastity_beltRendered Auto
Armor Property dcur_royalchastity_bra Auto
Armor Property dcur_royalchastity_braRendered Auto
Armor Property dcur_royalchastity_collar Auto
Armor Property dcur_royalchastity_collarRendered Auto
Armor Property dcur_royalchastity_armcuffs Auto
Armor Property dcur_royalchastity_armcuffsRendered Auto
Armor Property dcur_royalchastity_legcuffs Auto
Armor Property dcur_royalchastity_legcuffsRendered Auto

Armor Property dcur_stripteasecollar Auto
Armor Property dcur_stripteasecollarRendered Auto

Armor Property dcur_MaidensShield Auto
Armor Property dcur_MaidensShieldRendered Auto

GlobalVariable Property dcur_scquest_sfk_offeredsex  Auto  
GlobalVariable Property dcur_shoppingquest_enabled Auto

Armor Property dcur_misogynyBelt Auto
Armor Property dcur_misogynyBeltRendered Auto

int property updateinterval = 7 Auto
float property clocktickshortinterval = 17.0 Auto

bool property kimytest = false Auto

string[] CCDifficulty
string[] property ThemeList Auto
string[] property GenderList Auto
string[] property SolicitationList Auto
string[] property FastTravelControlList Auto

int[] Property lastlooted Auto
int property lastlootedcounter = 1 Auto
; Silly Papyrus doesn't allow dynamic arrays, so if this number is changed, change the array initialization in InitPages() accordingly!
int property lootedlistsize = 40 Auto

int[] Property lasttalkedto Auto
int property lasttalkedtocounter = 1 Auto
; Silly Papyrus doesn't allow dynamic arrays, so if this number is changed, change the array initialization in InitPages() accordingly!
int property lasttalkedtolistsize = 20 Auto

Message Property dcur_freeme_confirmMSG Auto
Message Property dcur_freemeMSG Auto

;bool property installed_CD = False Auto
bool property installed_Aradia = False Auto
bool property installed_Estrus = False Auto
bool property installed_SD = False Auto
bool property installed_PO = False Auto
bool property installed_SS = False Auto
bool property installed_SkoomaWhore = False Auto
bool property installed_MME = False Auto
bool property installed_SerialStrip = False Auto

bool Function isWearingRestraints()	
	If libs.PlayerRef.WornHasKeyword(libs.zad_Lockable) 
		return true
	else
		return false
	endif
endfunction

int function GetVersion()
	return 85
endFunction

string Function GetStringVer()
	return "Version 9.0"
EndFunction

event OnConfigInit()
	InitPages()
endEvent

Function CheckOptionalMods()	
	
	if Game.GetModByName("EstrusChaurus.esp") == 255
		installed_Estrus = false		
	else		
		installed_Estrus = true
	endif
 
	;if Game.GetModByName("Captured Dreams.esp") == 255
	;	installed_CD = false
	;else
	;	installed_CD = true
	;endif
	
	if Game.GetModByName("xazPrisonOverhaulPatched.esp") == 255
		installed_PO = false
	else
		installed_PO = true
		; note to self: Make sure to condition ALL POP releated code with this variable, so POP support can be easily disabled with just changing this one line. It's Inte, after all....
	endif
	
	if Game.GetModByName("sanguinesDebauchery.esp") == 255
		installed_SD = false		
	else
		installed_SD = true
	endif
	
	if Game.GetModByName("SimpleSlavery.esp") == 255
		installed_SS = false		
	else
		installed_SS = true
	endif
	
	if Game.GetModByName("Aradia Devious Expansion.esp") == 255
		installed_Aradia = false		
	else
		installed_Aradia = true
	endif
	
	if Game.GetModByName("SexLabSkoomaWhore.esp") == 255
		installed_SkoomaWhore = false
	else
		installed_SkoomaWhore = true
	endif

	if Game.GetModByName("MilkModNEW.esp") == 255
		installed_MME = false
	else
		installed_MME = true
	endif
	
	if Game.GetModByName("SerialStrip.esp") == 255
		installed_SerialStrip = false
	else
		installed_SerialStrip = true
	endif	
		
	;if !installed_CD
	;	useCD = False
	;endif
	if !installed_Aradia
		useAradia = False
	endif
	if !installed_Estrus 
		useEstrus = False
	endif
	if !installed_SD
		useSD = False
	endif		
	if !installed_SkoomaWhore
		useSkoomaWhore = False
	endif	
	
	if !installed_MME
		useMME = False
	endif
	
	if !installed_SS
		simpleslaveryweight = 0.0
		sexOutcomeSS = 0.0
	endif		
	If !useSD
		sprigganweight = 0.0
		enslaveweight = 0.0
	Endif	
	if !useEstrus
		estrusweight = 0.0
		estrusplantattack = 0.0
	Endif
	if !useAradia
		AradiaLivingHarnessWeight = 0.0
		AradiaLivingHarnesskeychance = 0.0
		AradiaRogueWeight = 0.0
	Endif
	
endFunction

Function SetVariables(bool firststart = false)
	If debuglogenabled
		debug.trace("[DCUR] Initializing Variables.")
	Endif
	
	if shutdownmod
		dcur_modshutdown.SetValueInt(1)
	else
		dcur_modshutdown.SetValueInt(0)
	endif	
	if useAradia		
		dcur_aradialib.aradialib_setDevices()
	else
		AradiaLivingHarnessWeight = 0.0	
		AradiaLivingHarnesskeychance = 0.0
		AradiaRogueWeight = 0.0		
	endif	
	if !useSD
		enslaveweight = 0.0
		sprigganweight = 0.0
	endif
	if !useEstrus
		estrusweight = 0.0
		estrusplantattack = 0.0
	Endif
	if slavecollarbuffsactive
		dcur_slavecollarbuffsactive.SetValueInt(1)
	else
		dcur_slavecollarbuffsactive.SetValueInt(0)
	endif
	if solicitationinnsonly
		dcur_solicitationinnsonly.SetValueInt(1)
	else
		dcur_solicitationinnsonly.SetValueInt(0)
	endif
	if tm_enabled
		dcur_tieme_enabled.SetValueInt(1)
	else
		dcur_tieme_enabled.SetValueInt(0)
	endif		
	If !firststart
		if sexEnableCombatAttacks && sexGloballyEnabled			
			cts.EssentialPlayer.ForceRefTo(libs.playerref)
		elseif cts.EssentialPlayer.GetActorReference() != None	
			libs.playerref.ResetHealthAndLimbs()
			cts.EssentialPlayer.Clear()			
		endif
		cts.refscr.RegisterKeys()		
	Endif	
	if devicecommentsfollowersenabled
		dcur_devicecomments_followerallowed.SetValueInt(1)
	else
		dcur_devicecomments_followerallowed.SetValueInt(0)
	endif
	if devicecommentsfolloweractionenabled
		dcur_devicecomments_followeractionallowed.SetValueInt(1)
	else
		dcur_devicecomments_followeractionallowed.SetValueInt(0)
	endif					
	If baqEnabled
		dcur_bondageadventurequestenabled.SetValueInt(1)
	else
		dcur_bondageadventurequestenabled.SetValueInt(0)
	endif
	If shoppingquestenabled
		dcur_shoppingquest_enabled.SetValueInt(1)
	else
		dcur_shoppingquest_enabled.SetValueInt(0)
	endif	
	If lowperformancemode
		updateinterval = 17
		clocktickshortinterval = 30.0	
	else
		updateinterval = 7
		clocktickshortinterval = 17.0
	endif
	If prison_NoSex
		dcur_prison_nosex.SetValueInt(1)
	else
		dcur_prison_nosex.SetValueInt(0)
	EndIf	
	If prison_useVanilla
		dcur_prison_UseVanilla.SetValueInt(1)
	else
		dcur_prison_UseVanilla.SetValueInt(0)
	EndIf
	If pimisogyny
		dcur_misogyny_active.SetValueInt(1)
	else
		dcur_misogyny_active.SetValueInt(0)
	endif
	if slavecollarsolicitationenabled == 0
		dcur_solicitationenabled.SetValueInt(0)
	elseif slavecollarsolicitationenabled == 1
		dcur_solicitationenabled.SetValueInt(1)
	elseif slavecollarsolicitationenabled == 2
		dcur_solicitationenabled.SetValueInt(2)
	endif		
EndFunction

Function InitPages()
	If debuglogenabled
		debug.trace("[DCUR] Initializing Menu.")
	Endif
	
	CheckOptionalMods()
	
	Actor Player = Game.GetPlayer()
	if !Player.HasPerk(dcur_containerperk)
		Player.AddPerk(dcur_containerperk)
	endif

	if !Player.HasPerk(dcur_corpseperk)
		Player.AddPerk(dcur_corpseperk)
	endif
	
	if !Player.HasPerk(dcur_trapperk)
		Player.AddPerk(dcur_trapperk)
	endif
	
	if !Player.HasPerk(dcur_mineperk)
		Player.AddPerk(dcur_mineperk)
	endif
	
	if !Player.HasPerk(dcur_harvestperk)
		Player.AddPerk(dcur_harvestperk)
	endif
	
	if !Player.HasPerk(dcur_doorperk)
		Player.AddPerk(dcur_doorperk)
	endif
	
	if !Player.HasPerk(dcur_corpseperkashpiles)
		Player.AddPerk(dcur_corpseperkashpiles)
	endif
	
	if !Player.HasPerk(dcur_npcchatperk) && pickpocketkeys > 0.0
		Player.AddPerk(dcur_npcchatperk)
	elseif Player.HasPerk(dcur_npcchatperk) && pickpocketkeys == 0.0
		Player.RemovePerk(dcur_npcchatperk)
	endif
	
	Pages = new string[12]
	Pages[0] = "$DCL_GENERAL"
	Pages[1] = "$DCL_EVENTS"
	Pages[2] = "$DCL_DEVICES"
	Pages[3] = "$DCL_EVENTPARAMS"
	Pages[4] = "$DCL_OPTIONALMODS"
	Pages[5] = "$DCL_MISCOPTIONS"
	Pages[6] = "$DCL_ESCAPEOPTIONS"
	Pages[7] = "$DCL_FOLLOWEROPTIONS"	
	Pages[8] = "$DCL_CONSEQUENCES"		
	Pages[9] = "$DCL_SOLICITATION"
	Pages[10] = "$DCL_SEXATTACKS"			
	Pages[11] = "$DCL_DEBUG"

	ThemeList = new string[13]
	ThemeList[0] = "$DCL_RANDOM"
	ThemeList[1] = "$DCL_METAL"
	ThemeList[2] = "$DCL_LEATHER"
	ThemeList[3] = "$DCL_EBONITE"
	ThemeList[4] = "$DCL_GOLD"
	ThemeList[5] = "$DCL_SILVER"
	ThemeList[6] = "$DCL_WHITEEBONITE"
	ThemeList[7] = "$DCL_WHITELEATHER"
	ThemeList[8] = "$DCL_REDEBONITE"
	ThemeList[9] = "$DCL_REDLEATHER"
	ThemeList[10] = "$DCL_ARADIA"
	ThemeList[11] = "$DCL_RESTRICTIVE"
	ThemeList[12] = "$DCL_RUBBER"
	
	FastTravelControlList = new string[3]
	FastTravelControlList[0] = "$DCL_FASTTRAVELDISABLE_ALWAYS"
	FastTravelControlList[1] = "$DCL_FASTTRAVELDISABLE_WHENRESTRAINED"
	FastTravelControlList[2] = "$DCL_FASTTRAVELDISABLE_QUESTONLY"
		
	CCDifficulty = new string[5]
	CCDifficulty[0] = "$DCL_CUSTOM"
	CCDifficulty[1] = "$DCL_VANILLA"
	CCDifficulty[2] = "$DCL_QUESTIONING"
	CCDifficulty[3] = "$DCL_KINKY"
	CCDifficulty[4] = "$DCL_HARDCORE"
	
	GenderList = new string[3]
	GenderList[0] = "$DCL_MALE"
	GenderList[1] = "$DCL_FEMALE"
	GenderList[2] = "$DCL_BOTH"
	
	SolicitationList = new string[3]
	SolicitationList[0] = "$DCL_ALWAYS"
	SolicitationList[1] = "$DCL_WHENCOLLARED"
	SolicitationList[2] = "$DCL_NEVER"
		
	lastlooted = new int[40]
	lasttalkedto = new int[20]
		
	DifficultyList = new String[9]
	DifficultyList[0] = "$DCL_DIFF1"
	DifficultyList[1] = "$DCL_DIFF2"
	DifficultyList[2] = "$DCL_DIFF3"
	DifficultyList[3] = "$DCL_DIFF4"
	DifficultyList[4] = "$DCL_DIFF5"
	DifficultyList[5] = "$DCL_DIFF6"
	DifficultyList[6] = "$DCL_DIFF7"
	DifficultyList[7] = "$DCL_DIFF8"
	DifficultyList[8] = "$DCL_DIFF9"
	
	SetVariables(firststart = true)
	If debuglogenabled
		debug.trace("[DCUR] Initializing Menu done.")
	Endif
endFunction

event OnVersionUpdate(int a_version)
	InitPages()
	debug.notification("Deviously Cursed Loot Version " + GetStringVer() + " loaded.")
endEvent

event OnPageReset(string page)
	CheckOptionalMods()
	SetCursorFillMode(TOP_TO_BOTTOM)
	if (page == "" || !Self.IsRunning())
		LoadCustomContent("CursedLoot/DCLbanner.dds", 0, 82)
		return
	else
		UnloadCustomContent()
	endIf	
	if shutdownmod 
		AddHeaderOption("$DCL_MODSHUTDOWN_MENUMSG1")		
		shutdownmodOID = AddToggleOption("$DCL_MODSHUTDOWN", shutdownmod)
		;overridenomalesOID = AddToggleOption("$DCL_OVERRIDENOMALES", overridenomales)
		if !disablesafewords
			resetquestsOID = AddTextOption("$DCL_SAFEWORD", "$DCL_FREEME")
		endif				
		return
	endif
	bool restrained = isWearingRestraints()
	
	if (page == "$DCL_GENERAL")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			AddHeaderOption("$DCL_ENCOUNTERCHANCES")
			basechanceOID = addslideroption("$DCL_BASECHANCE", basechance, "{1}%")
			useRefinedOptionsOID = AddToggleOption("$DCL_USEREFINEDOPTIONS", useRefinedOptions)
			if useRefinedOptions						
				dungeonchanceOID = addslideroption("$DCL_DUNGEONCHANCE", dungeonchance, "{1}%")
				wildernesschanceOID = addslideroption("$DCL_WILDERNESSCHANCE", wildernesschance, "{1}%")
				citychanceOID = addslideroption("$DCL_CITYCHANCE", citychance, "{1}%")
			else
				dungeonchanceOID = addslideroption("$DCL_DUNGEONCHANCE", dungeonchance, "{1}%", OPTION_FLAG_DISABLED)
				wildernesschanceOID = addslideroption("$DCL_WILDERNESSCHANCE", wildernesschance, "{1}%", OPTION_FLAG_DISABLED)
				citychanceOID = addslideroption("$DCL_CITYCHANCE", citychance, "{1}%", OPTION_FLAG_DISABLED)
			endif
			trapcooldownOID = AddSliderOption("$DCL_TRAPCOOLDOWN", trapcooldown, "$DCL_HOURS1")
			commoncontainerweightOID = AddSliderOption("$DCL_COMMONCONTAINERWEIGHT", commoncontainerweight,"{1}")
			ornatecontainerweightOID = AddSliderOption("$DCL_ORNATECONTAINERWEIGHT", ornatecontainerweight,"{1}")
			deadbodymodifierOID = AddSliderOption("$DCL_DEADBODYMODIFIER", deadbodymodifier,"{1}")		
			trapchancemodifierOID = AddSliderOption("$DCL_TRAPCHANCEMODIFIER", trapchancemodifier,"{1}")
			plantchancemodifierOID = AddSliderOption("$DCL_PLANTMINECHANCEMOD", plantchancemodifier,"{1}")
			doormodifierOID = AddSliderOption("$DCL_DOORCHANCEMOD", doormodifier,"{1}")
			arousalweightOID = AddSliderOption("$DCL_AROUSALWEIGHT", arousalweight,"{1}")
			arousalmodifierOID = AddSliderOption("$DCL_AROUSALMODIFIER", arousalmodifier,"{1}")
			SetCursorPosition(1)
			AddHeaderOption("$DCL_PARAMETERS")
			minnumEquippedItemsOID = addslideroption("$DCL_MINIMUMEQUIPPEDITEMS", minnumEquippedItems, "{0}") 
			numEquippedItemsOID = addslideroption("$DCL_NUMEQUIPPEDITEMS", numEquippedItems, "{0}") 
			losekeychanceOID = addslideroption("$DCL_LOSEKEYCHANCE", losekeychance, "{0}%")
			heavilyrestrainedthresholdOID = addslideroption("$DCL_HEAVILYRESTRAINEDTHRESHOLD", heavilyrestrainedthreshold, "{0}")
			minArousalOID = addslideroption("$DCL_MINAROUSAL", minArousal, "{0}")
			maxArousalOID = addslideroption("$DCL_AROUSALTHRESHOLDFULLSET", maxArousal, "{0}")
			alwaysequipfullsetOID = AddToggleOption("$DCL_ALWAYSFORCEFULLSET", alwaysequipfullset)
			progressivebondageOID = AddToggleOption("$DCL_PROGRRESSIVEBONDAGE", progressivebondage)
			mercyfuldungeonsOID = AddToggleOption("$DCL_MERCYFULDUNGEONS", mercyfuldungeons)
			AddHeaderOption("$DCL_ELIGIBLECONTAINERS")
			containersenabledOID = AddToggleOption("$DCL_CONTAINERSENABLED", containersenabled)
			corpsesenabledOID = AddToggleOption("$DCL_CORPSESENABLED", corpsesenabled)
			trapsenabledOID = AddToggleOption("$DCL_TRAPSENABLED", trapsenabled)
			plantsenabledOID = AddToggleOption("$DCL_PLANTSENABLED", plantsenabled)
			minesenabledOID = AddToggleOption("$DCL_MINESENABLED", minesenabled)
			doorsenabledOID = AddToggleOption("$DCL_DOORSENABLED", doorsenabled)
			lockeddoorsonlyOID = AddToggleOption("$DCL_DOORSLOCKEDONLY", lockeddoorsonly)		
		endif
	elseif (page == "$DCL_EVENTS")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			AddHeaderOption("$DCL_EVENTPROBABILITYWEIGHTS")
			standardweightOID = addslideroption("$DCL_STANDARDWEIGHT", standardweight, "{1}")
			FurnitureTrapWeightOID = addslideroption("$DCL_FURNITURETRAPWEIGHT", FurnitureTrapWeight, "{1}")
			cursedcollarquestchanceOID = addslideroption("$DCL_CURSEDCOLLARQUESTCHANCE", cursedcollarquestchance, "{1}")
			FlashBangChestWeightOID = AddSliderOption("$DCL_FLASHBANGCHESTWEIGHT", FlashBangChestWeight, "{1}")
			drugweightOID = AddSliderOption("$DCL_DRUGWEIGHT", drugweight, "{1}")
			hisecweightOID = AddSliderOption("$DCL_HISECWEIGHT", hisecweight, "{1}")
			stripteasecollarweightOID = AddSliderOption("$DCL_STRIPTEASECOLLARWEIGHT", stripteasecollarweight, "{1}")
			slavecollarweightOID = AddSliderOption("$DCL_SLAVECOLLARWEIGHT", slavecollarweight, "{1}")
			slutcollarweightOID = AddSliderOption("$DCL_SLUTCOLLARWEIGHT", slutcollarweight, "{1}")
			whorecollarweightOID = AddSliderOption("$DCL_WHORECOLLARWEIGHT", whorecollarweight, "{1}")
			slavegagweightOID = AddSliderOption("$DCL_SLAVEGAGWEIGHT", slavegagweight, "{1}")
			shockbootsweightOID = AddSliderOption("$DCL_SHOCKBOOTSWEIGHT", shockbootsweight, "{1}")
			slavebeltweightOID = AddSliderOption("$DCL_SLAVEBELTWEIGHT", slavebeltweight, "{1}")
			slaveitemsweightOID = AddSliderOption("$DCL_SLAVEITEMSWEIGHT", slaveitemsweight, "{1}")		
			dashaitemsweightOID = AddSliderOption("$DCL_DASHAITEMSWEIGHT", dashaitemsweight, "{1}")
			UltraTightSJWeightOID = AddSliderOption("$DCL_ULTRATIGHTSJWEIGHT", UltraTightSJWeight, "{1}")		
			SetCursorPosition(1)
			AddEmptyOption()
			rubbersuitweightOID = AddSliderOption("$DCL_RUBBERSUITWEIGHT", rubbersuitweight, "{1}")
			exhibitionistsuitweightOID = AddSliderOption("$DCL_EXHIBITIONISTSUITWEIGHT", exhibitionistsuitweight, "{1}")
			lbquestweightOID = AddSliderOption("$DCL_LBQUESTWEIGHT", lbquestweight, "{1}")
			rubberdollweightOID = AddSliderOption("$DCL_RUBBERDOLLWEIGHT", rubberdollweight, "{1}")
			selfbondagegastrapweightOID = AddSliderOption("$DCL_SELFBONDAGEGASTRAPWEIGHT", selfbondagegastrapweight, "{1}")
			bondageadventuretrapweightOID = AddSliderOption("$DCL_BONDAGEADVENTURETRAPWEIGHT", bondageadventuretrapweight, "{1}")
			TentacleParasiteWeightOID = AddSliderOption("$DCL_TENTACLEPARASITEWEIGHT", TentacleParasiteWeight, "{1}")			
			ChainHarnessWeightOID = AddSliderOption("$DCL_CHAINHARNESSWEIGHT", ChainHarnessWeight, "{1}")			
			if useAradia
				AradiaLivingHarnessWeightOID = AddSliderOption("$DCL_ARADIALIVINGHARNESSWEIGHT", AradiaLivingHarnessWeight, "{1}")
				AradiaRogueWeightOID = AddSliderOption("$DCL_ARADIAROGUEWEIGHT", AradiaRogueWeight, "{1}")
			endif
			if useEstrus			
				estrusweightOID = addslideroption("$DCL_ESTRUSWEIGHT", estrusweight, "{1}")
				estrusplantattackOID = addslideroption("$DCL_ESTRUSPLANTATTACK", estrusplantattack, "{1}")
			endif
			if useSD
				enslaveweightOID = addslideroption("$DCL_ENSLAVEWEIGHT", enslaveweight, "{1}")
				sprigganweightOID = addslideroption("$DCL_SPRIGGANWEIGHT", sprigganweight, "{1}")
			endif
			if installed_SS
				simpleslaveryweightOID = addslideroption("$DCL_SIMPLESLAVERYWEIGHT", simpleslaveryweight, "{1}")
			Endif
		endif
	elseif (page == "$DCL_EVENTPARAMS")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		Else
			if useEstrus			
				AddHeaderOption("$DCL_ESTRUSPARAMETERS")
				estrusincityOID = AddToggleOption("$DCL_ESTRUSINCITY", estrusincity)
				estrusimpregnatechanceOID = addslideroption("$DCL_ESTRUSIMPREGNATECHANCE", estrusimpregnatechance, "{1}%") 
				;estrustentacleimpregnationonlyOID = AddToggleOption("$DCL_ESTRUSTENTACLEIMPREGNATIONONLY", estrustentacleimpregnationonly)
				estrusdrawcrowdOID = AddToggleOption("$DCL_ESTRUSDRAWCROWD", estrusdrawcrowd)
			endif
			AddHeaderOption("$DCL_FLASHBANGSLEEPPARAMETERS")
			flashbangincityOID = AddToggleOption("$DCL_FLASHBANGCITY", flashbangincity)
			AddHeaderOption("$DCL_HISECRESTPARAMETERS")
			hisecremovalgoldperlevelOID = AddSliderOption("$DCL_HISECREMOVALGOLDPERLEVEL", hisecremovalgoldperlevel, "$DCL_LEVEL")
			hisecallowarmbinderOID = AddToggleOption("$DCL_HISECALLOWARMBINDER", hisecallowarmbinder)
			hisecuseyokeOID = AddToggleOption("$DCL_HISECUSEYOKE", hisecuseyoke)
			AddHeaderOption("$DCL_YOKEPARAMETERS")			
			yokeremovalhelpchanceOID = addslideroption("$DCL_YOKEREMOVALHELPCHANCE", yokeremovalhelpchance, "{0}%")
			yokeremovalwalkawayweightOID = addslideroption("$DCL_YOKEREMOVALWALKAWAYWEIGHT", yokeremovalwalkawayweight, "{0}")
			yokeremovalrapeweightOID = addslideroption("$DCL_YOKEREMOVALRAPEWEIGHT", yokeremovalrapeweight, "{0}")
			yokeremovaltakekeyweightOID = addslideroption("$DCL_YOKEREMOVALTAKEKEYWEIGHT", yokeremovaltakekeyweight, "{0}")
			yokeremovaladditemweightOID = addslideroption("$DCL_YOKEREMOVALADDITEMWEIGHT", yokeremovaladditemweight, "{0}")
			AddHeaderOption("$DCL_SLAVEGAGPARAMETERS")
			slavegagreleasetimeOID = addslideroption("$DCL_SLAVEGAGRELEASETIME", slavegagreleasetime, "$DCL_HOURS0")
			;AddHeaderOption("$DCL_SHOCKBOOTSPARAMETERS")			
			AddHeaderOption("$DCL_RUBBERGEARPARAMETERS")
			rubberglovesbindchanceOID = addslideroption("$DCL_RUBBERGLOVESBINDCHANCE", rubberglovesbindchance, "{0}%")
			SetCursorPosition(1)
			AddHeaderOption("$DCL_COLLARPARAMETERSSHARED")
			slavecollarjewelleryallowedOID = AddToggleOption("$DCL_SLAVECOLLARJEWELLERYALLOWED", slavecollarjewelleryallowed)
			slavecollarbuffsactiveOID = AddToggleOption("$DCL_SLAVECOLLARBUFFSACTIVE", slavecollarbuffsactive)
			AddHeaderOption("$DCL_SLAVECOLLARPARAMETERS")
			slavecollarkeyneededOID = AddToggleOption("$DCL_SLAVECOLLARKEYNEEDED", slavecollarkeyneeded)
			slavecollarminsexactsOID = addslideroption("$DCL_SLAVECOLLARMINSEXACTS", slavecollarminsexacts, "{0}")
			slavecollarmaxsexactsOID = addslideroption("$DCL_SLAVECOLLARMAXSEXACTS", slavecollarmaxsexacts, "{0}")
			slavecollarmindayswornOID = addslideroption("$DCL_SLAVECOLLARMINDAYSWORN", slavecollarmindaysworn, "{0}")
			slavecollarmaxdayswornOID = addslideroption("$DCL_SLAVECOLLARMAXDAYSWORN", slavecollarmaxdaysworn, "{0}")
			AddHeaderOption("$DCL_SLUTCOLLARPARAMETERS")
			slutcollarminsexlessdaysneededOID = addslideroption("$DCL_SLUTCOLLARMINSEXLESSDAYSNEEDED", slutcollarminsexlessdaysneeded, "{0}")
			slutcollarmaxsexlessdaysneededOID = addslideroption("$DCL_SLUTCOLLARMAXSEXLESSDAYSNEEDED", slutcollarmaxsexlessdaysneeded, "{0}")
			AddHeaderOption("$DCL_CURSEDCOLLARQUESTPARAMETERS")
			;DifficultyOID = AddMenuOption("$DCL_CCDIFFICULTY", CCDifficulty[Difficulty])
			collarquestnofasttravelOID = AddToggleOption("$DCL_COLLARQUESTNOFASTTRAVEL", collarquestnofasttravel)
			cursedcollarquestendgiftOID = AddToggleOption("$DCL_CURSEDCOLLARQUESTENDGIFT", cursedcollarquestendgift)
			cursedcollarusepanelgagOID = AddToggleOption("$DCL_CURSEDCOLLARUSEPANELGAG", cursedcollarusepanelgag)
			;cursedcollaruseblindfoldOID = AddToggleOption("$DCL_CURSEDCOLLARUSEBLINDFOLD", cursedcollaruseblindfold)
			cursedcollarsurfaceweightOID = addslideroption("$DCL_CURSEDCOLLARSURFACEWEIGHT", cursedcollarsurfaceweight, "{0}")
			cursedcollarhideoutweightOID = addslideroption("$DCL_CURSEDCOLLARHIDEOUTWEIGHT", cursedcollarhideoutweight, "{0}")
			cursedcollardungeonweightOID = addslideroption("$DCL_CURSEDCOLLARDUNGEONWEIGHT", cursedcollardungeonweight, "{0}")
			AddHeaderOption("$DCL_DAMSELINDISTRESSQUESTPARAMETERS")			
			lbkeydropmodifierOID = addslideroption("$DCL_LBKEYDROPMODIFIER", lbkeydropmodifier, "{1}")
			;AddHeaderOption("$DCL_ROYALCHASTITYQUESTPARAMETERS")			
			;rc_minplayerlevelOID = addslideroption("$DCL_RCMINLEVEL", rc_minplayerlevel, "{0}")
			;rc_itemdropchanceOID = addslideroption("$DCL_RCITEMDROPCHANCE", rc_itemdropchance, "{1}%")
			;rc_diarydropchanceOID = addslideroption("$DCL_RCDIARYDROPCHANCE", rc_diarydropchance, "{1}%")			
			if useAradia
				AddHeaderOption("$DCL_ARADIALIVINGHARNESSPARAMETERS")
				AradiaLivingHarnesskeychanceOID = addslideroption("$DCL_ARADIALIVINGHARNESSKEYCHANCE", AradiaLivingHarnesskeychance, "{1}%")
			endif
		endif
	elseif (page == "$DCL_DEVICES")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			AddHeaderOption("$DCL_ARMBINDERS")
			useArmbinderOID = AddToggleOption("$DCL_USEARMBINDERS", useArmbinder)
			armbinderweightOID = addslideroption("$DCL_ARMBINDERWEIGHT", armbinderweight, "{0}")
			shacklesweightOID = addslideroption("$DCL_SHACKLESWEIGHT", shacklesweight, "{0}")
			yokeweightOID = addslideroption("$DCL_YOKEWEIGHT", yokeweight, "{0}")
			AddHeaderOption("$DCL_BLINDFOLDS")
			useBlindfoldOID = AddToggleOption("$DCL_USEBLINDFOLD", useBlindfold)
			AddHeaderOption("$DCL_HOODS")
			useHoodsOID = AddToggleOption("$DCL_USEHOODS", useHoods)
			AddHeaderOption("$DCL_GAGS")
			useGagOID = AddToggleOption("$DCL_USEGAG", useGag)
			ringgagweightOID = addslideroption("$DCL_RINGGAGWEIGHT", ringgagweight, "{0}")
			ballgagweightOID = addslideroption("$DCL_BALLGAGWEIGHT", ballgagweight, "{0}")
			panelgagweightOID = addslideroption("$DCL_PANELGAGWEIGHT", panelgagweight, "{0}")
			AddHeaderOption("$DCL_BOOTS")
			useBootsOID = AddToggleOption("$DCL_USEBOOTS", useBoots)
			slavebootsweightOID = addslideroption("$DCL_SLAVEBOOTSWEIGHT", slavebootsweight, "{0}")
			ponybootsweightOID = addslideroption("$DCL_PONYBOOTSWEIGHT", ponybootsweight, "{0}")
			SetCursorPosition(1)
			AddHeaderOption("$DCL_HARNESSES")
			useSlaveHarnessOID = AddToggleOption("$DCL_USESLAVEHARNESS", useSlaveHarness)
			collarharnessweightOID = addslideroption("$DCL_COLLARHARNESSWEIGHT", collarharnessweight, "{0}")
			lockingharnessweightOID = addslideroption("$DCL_LOCKINGHARNESSWEIGHT", lockingharnessweight, "{0}")
			corsetweightOID = addslideroption("$DCL_CORSETWEIGHT", corsetweight, "{0}")
			AddHeaderOption("$DCL_CHASTITY")
			useBeltOID = AddToggleOption("$DCL_USEBELT", useBelt)
			useBraOID = AddToggleOption("$DCL_USEBRA", useBra)
			AddHeaderOption("$DCL_SUITS")
			usesuitsOID = AddToggleOption("$DCL_USESUITS", usesuits)
			catsuitweightOID = addslideroption("$DCL_CATSUITWEIGHT", catsuitweight, "{0}")
			hobbledressweightOID = addslideroption("$DCL_HOBBLEDRESSWEIGHT", hobbledressweight, "{0}")
			straitjacketweightOID = addslideroption("$DCL_STRAITJACKETWEIGHT", straitjacketweight, "{0}")
			AddHeaderOption("$DCL_OTHER")
			useVPiercingOID = AddToggleOption("$DCL_USEVPIERCING", useVPiercing)
			useNPiercingOID = AddToggleOption("$DCL_USENPIERCING", useNPiercing)
			anklechainsweightOID = addslideroption("$DCL_ANKLECHAINSWEIGHT", anklechainsweight, "{0}")
		endif
	elseif (page == "$DCL_MISCOPTIONS")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			lockmenuwhentiedOID = AddToggleOption("$DCL_LOCKMENUWHENTIED", lockmenuwhentied)
			enableundressOID = AddToggleOption("$DCL_ENABLEUNDRESS", enableundress)
			useitemsfrominventoryOID = AddToggleOption("$DCL_USEITEMSFROMINVENTORY", useitemsfrominventory)
			equipthemeOID = AddMenuOption("$DCL_EQUIPTHEME", ThemeList[equiptheme])
			consistentthemeOID = AddToggleOption("$DCL_CONSISTENTTHEME", consistenttheme)
			useflashbanganimationOID = AddToggleOption("$DCL_USEFLASHBANGANIMATION", useflashbanganimation)
			flashbangnodroppingitemsOID = AddToggleOption("$DCL_FLASHBANGNODROPPINGITEMS", flashbangnodroppingitems)		
			punishingitemsminlevelOID = addslideroption("$DCL_PUNISHINGITEMSMINLEVEL", punishingitemsminlevel, "{0}")
			shameidleOID = AddToggleOption("$DCL_SHAMEIDLE", shameidle)
			enablehornybuffsOID = AddToggleOption("$DCL_ENABLEHORNYBUFFS", enablehornybuffs)
			enabledevicebuffsOID = AddToggleOption("$DCL_ENABLEDEVICEBUFFS", enabledevicebuffs)			
			HornyBuffsThresholdOID = addslideroption("$DCL_HORNYBUFFSTHRESHOLD", HornyBuffsThreshold, "{0}")
			traprewardsOID = addslideroption("$DCL_TRAPREWARDS", traprewards, "{1}%")
			shoppingquestenabledOID = AddToggleOption("$DCL_ENABLESHOPPINGQUEST", shoppingquestenabled)						
			numboundgirlsOID = addslideroption("$DCL_NUMBOUNDGIRLS", numboundgirls, "{0}")
			shakyhandsOID = addslideroption("$DCL_SHAKYHANDS", shakyhands, "{1}%")					
			restraintsdropchanceOID = addslideroption("$DCL_RESTRAINTSDROPCHANCE", restraintsdropchance, "{1}%")		
			luckycharmdropchanceOID = addslideroption("$DCL_LUCKYCHARMDROPCHANCE", luckycharmdropchance, "{1}%")
			fasttravelcontrolOID = AddMenuOption("$DCL_FASTTRAVELDISABLE", FastTravelControlList[FastTravelControl])					
			dropkeysOID = AddTextOption("$DCL_DROPALLKEYS", "$DCL_YESREALLY")			
			AddHeaderOption("$DCL_LEON")			
			KeyStealBaseChanceOID = addslideroption("$DCL_LEONESCAPEKEYSTEALCHANCE", KeyStealBaseChance, "{1}%")
			NumbersPerTickOID = addslideroption("$DCL_LEONESCAPENUMPERTICK", NumbersPerTick, "{0}")
			SpotChancePerTickOID = addslideroption("$DCL_LEONESCAPESPOTCHANCEPERTICK", SpotChancePerTick, "{1}%")	
			SetCursorPosition(1)
			AddHeaderOption("$DCL_PRISONSETTINGS")			
			prison_DifficultyOID = AddMenuOption("$DCL_PRISONDIFFICULTY", DifficultyList[prison_Difficulty])
			prison_EscapeDifficultyOID = AddMenuOption("$DCL_PRISONESCAPEDIFFICULTY", DifficultyList[prison_EscapeDifficulty])
			prison_NoSexOID = AddToggleOption("$DCL_PRISONSEX", prison_NoSex)
			prison_WhippingOID = AddToggleOption("$DCL_PRISON_WHIPPING", prison_Whipping)
			prison_useVanillaOID = AddToggleOption("$DCL_PRISONVANILLA", prison_useVanilla)
			If installed_PO
				prison_usePOChanceOID = addslideroption("$DCL_PRISONUSEPOCHANCE", prison_usePOChance, "{0}")
			EndIf			
			AddHeaderOption("$DCL_BODYSCALING")
			breastresizeOID = AddToggleOption("$DCL_BREASTRESIZE", breastresize)
			breastminsizeOID = addslideroption("$DCL_BREASTMINSIZE", breastminsize, "{1}")
			breastmaxsizeOID = addslideroption("$DCL_BREASTMAXSIZE", breastmaxsize, "{1}")			
			buttminsizeOID = addslideroption("$DCL_BUTTMINSIZE", buttminsize, "{1}")
			buttmaxsizeOID = addslideroption("$DCL_BUTTMAXSIZE", buttmaxsize, "{1}")							
			cuminflationenableOID = AddToggleOption("$DCL_CUMINFLATION", cuminflationenable)
			bellyminsizeOID = addslideroption("$DCL_BELLYMINSIZE", bellyminsize, "{1}")
			bellymaxsizeOID = addslideroption("$DCL_BELLYMAXSIZE", bellymaxsize, "{1}")			
		Endif
	elseif (page == "$DCL_OPTIONALMODS")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			AddHeaderOption("$DCL_SUPPORTEDMODS")
			;if installed_CD
			;	AddHeaderOption("$DCL_CDSFOUND", OPTION_FLAG_DISABLED)
			;else
			;	AddHeaderOption("$DCL_CDSNOTFOUND", OPTION_FLAG_DISABLED)
			;endif
			if installed_Aradia
				AddHeaderOption("$DCL_ARADIAFOUND", OPTION_FLAG_DISABLED)
			else
				AddHeaderOption("$DCL_ARADIANOTFOUND", OPTION_FLAG_DISABLED)
			endif		
			if installed_Estrus
				AddHeaderOption("$DCL_ECPFOUND", OPTION_FLAG_DISABLED)
			else
				AddHeaderOption("$DCL_ECPNOTFOUND", OPTION_FLAG_DISABLED)
			endif
			if installed_SD
				AddHeaderOption("$DCL_SDFOUND", OPTION_FLAG_DISABLED)
			else
				AddHeaderOption("$DCL_SDNOTFOUND", OPTION_FLAG_DISABLED)
			endif
			if installed_PO
				AddHeaderOption("$DCL_POFOUND", OPTION_FLAG_DISABLED)
			else
				AddHeaderOption("$DCL_PONOTFOUND", OPTION_FLAG_DISABLED)
			endif
			if installed_SS
				AddHeaderOption("$DCL_SSFOUND", OPTION_FLAG_DISABLED)
			else
				AddHeaderOption("$DCL_SSNOTFOUND", OPTION_FLAG_DISABLED)
			endif
			if installed_SkoomaWhore
				AddHeaderOption("$DCL_SKOOMAWHOREFOUND", OPTION_FLAG_DISABLED)
			else
				AddHeaderOption("$DCL_SKOOMAWHORENOTFOUND", OPTION_FLAG_DISABLED)
			endif			
			if installed_MME
				AddHeaderOption("$DCL_MMEFOUND", OPTION_FLAG_DISABLED)
			else
				AddHeaderOption("$DCL_MMENOTFOUND", OPTION_FLAG_DISABLED)
			endif			
			if installed_SerialStrip
				AddHeaderOption("$DCL_SERIALSTRIPFOUND", OPTION_FLAG_DISABLED)
			else
				AddHeaderOption("$DCL_SERIALSTRIPNOTFOUND", OPTION_FLAG_DISABLED)
			endif			
			SetCursorPosition(1)
			AddHeaderOption("$DCL_OPTIONALMODSUPPORT")			
			if !installed_SS
				simpleslaveryweight = 0.0
				sexOutcomeSS = 0.0
			Endif
			if !installed_SD
				useSD = False
				enslaveweight = 0.0	
				sprigganweight = 0.0
			 else	
				useSDOID = AddToggleOption("$DCL_USESD", useSD)
			endif
			if !installed_Aradia
				AradiaLivingHarnessWeight = 0.0
				AradiaLivingHarnesskeychance = 0.0
				AradiaRogueWeight = 0.0
				useAradia = False
			else	
				useAradiaOID = AddToggleOption("$DCL_USEARADIA", useAradia)
			endif
			if !installed_SkoomaWhore
				useSkoomaWhore = False
			else	
				useSkoomaWhoreOID = AddToggleOption("$DCL_USESKOOMAWHORE", useSkoomaWhore)
			endif
			if !installed_MME
				useMME = False
			else	
				useMMEOID = AddToggleOption("$DCL_USEMME", useMME)
			endif
			if !installed_Estrus 
				useEstrus = False
				estrusweight = 0.0
				estrusplantattack = 0.0
			endif
			if  installed_Estrus 
				useEstrusOID = AddToggleOption("$DCL_USEESTRUS", useEstrus)
			endif
		Endif
	elseif (page == "$DCL_ESCAPEOPTIONS")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			disablesafewordsOID = AddToggleOption("$DCL_DISABLESAFEWORDS", disablesafewords)
			AddHeaderOption("$DCL_ESCAPEOPTIONS")			
			escape_containersenabledOID = AddToggleOption("$DCL_ESCAPECONTAINERSENABLED", escape_containersenabled)
			escape_corpsesenabledOID = AddToggleOption("$DCL_ESCAPECORPSESENABLED", escape_corpsesenabled)
			keydropnodemodifierOID = addslideroption("$DCL_KEYDROPNODEMODIFIER", keydropnodemodifier, "{1}")
			pickpocketkeysOID = addslideroption("$DCL_PICKPOCKETKEYCHANCE", pickpocketkeys, "{1}")			
			dropusefulkeysOID = AddToggleOption("$DCL_DROPUSEFULKEYS", dropusefulkeys)			
			nokeyswithoutrestraintsOID = AddToggleOption("$DCL_NOKEYSWITHOUTRESTRAINTS", nokeyswithoutrestraints)			
			AddHeaderOption("$DCL_ARMBINDERESCAPE")
			sharpitemchanceOID = addslideroption("$DCL_SHARPITEMCHANCE", sharpitemchance, "{0}%")
			SetCursorPosition(1)
			AddHeaderOption("$DCL_RESTRAINTSESCAPE")			
			keydropchanceOID = addslideroption("$DCL_KEYDROPCHANCE", keydropchance, "{1}%")
			chastitykeyweightOID = addslideroption("$DCL_CHASTITYKEYWEIGHT", chastitykeyweight, "{1}")
			restraintskeyweightOID = addslideroption("$DCL_RESTRAINTSKEYWEIGHT", restraintskeyweight, "{1}")
			piercingkeyweightOID = addslideroption("$DCL_PIERCINGKEYWEIGHT", piercingkeyweight, "{1}")
			AddEmptyOption()
			rarekeydropchanceOID = addslideroption("$DCL_RAREKEYDROPCHANCE", rarekeydropchance, "{1}%")
			handrestraintkeychanceOID = addslideroption("$DCL_LBHANDRESTRAINEDKEYCHANCE", handrestraintkeychance, "{1}")
			headrestraintkeychanceOID = addslideroption("$DCL_LBHEADRESTRAINEDKEYCHANCE", headrestraintkeychance, "{1}")
			bodyrestraintkeychanceOID = addslideroption("$DCL_LBBODYRESTRAINEDKEYCHANCE", bodyrestraintkeychance, "{1}")
			legrestraintkeychanceOID = addslideroption("$DCL_LBLEGRESTRAINEDKEYCHANCE", legrestraintkeychance, "{1}")			
		endif
	elseif (page == "$DCL_FOLLOWEROPTIONS")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			enablefollowersupportOID = AddToggleOption("$DCL_ENABLEFOLLOWERSUPPORT", enablefollowersupport)
			equipthemefollowerOID = AddMenuOption("$DCL_EQUIPTHEMEFOLLOWER", ThemeList[equipthemefollower])
			allowarmbindersfollowersOID = AddToggleOption("$DCL_ALLOWARMBINDERSFOLLOWERS", allowarmbindersfollowers)			
		Endif
		SetCursorPosition(1)
		AddHeaderOption("$DCL_FOLLOWERS")
		Actor afw		
		int fw = dclibs.dcur_followerlist.GetSize() - 1
		While fw >= 0
			afw = (dclibs.dcur_followerlist.GetAt(fw) As Actor)
			If afw
				if afw.GetLeveledActorBase().GetSex() == 0
					AddHeaderOption(afw.GetLeveledActorBase().GetName() + " (M)", OPTION_FLAG_DISABLED)					
				Else
					AddHeaderOption(afw.GetLeveledActorBase().GetName() + " (F)", OPTION_FLAG_DISABLED)
				Endif				
			EndIf
			fw -= 1
		EndWhile 		
	elseif (page == "$DCL_DEBUG")		
		shutdownmodOID = AddToggleOption("$DCL_MODSHUTDOWN", shutdownmod)
		modenabledOID = AddToggleOption("$DCL_MODENABLED", modenabled)
		debugenabledOID = AddToggleOption("$DCL_DEBUGENABLED", debugenabled)
		debuglogenabledOID = AddToggleOption("$DCL_DEBUGLOGENABLED", debuglogenabled)		
		lowperformancemodeOID = AddToggleOption("$DCL_LOWPERFORMANCEMODE", lowperformancemode)
		selfbondageOID = AddTextOption("$DCL_SELFBONDAGE", "$DCL_TIEMEUP")		
		scanforfollowersOID = AddTextOption("$DCL_SCANFOLLOWERS", "$DCL_USE")		
		if restrained && lockmenuwhentied && !kimytest
			
		else
			exportsettingsOID = AddTextOption("$DCL_EXPORTSETTINGS", "$DCL_USE")		
			importsettingsOID = AddTextOption("$DCL_IMPORTSETTINGS", "$DCL_USE")		
		EndIf
		freefollowersOID = AddTextOption("$DCL_FREEFOLLOWERS", "$DCL_USE")		
		if !disablesafewords
			resetquestsOID = AddTextOption("$DCL_SAFEWORD", "$DCL_FREEME")
		endif				
		if kimytest
			dothetestOID = AddTextOption("$DCL_KIMYTESTBUTTON", "$DCL_USE")
			createkeysOID = AddTextOption("$DCL_FINDKEYSET", "$DCL_GIVEKEYS")
		endif
		SetCursorPosition(1)
		AddHeaderOption("Deviously Cursed Loot " + GetStringVer() + " by Kimy")
		AddEmptyOption()
		AddHeaderOption("$DCL_PLAYERSTATUS")
		if Game.GetPlayer().IsEssential()
			AddHeaderOption(Game.GetPlayer().GetLeveledActorBase().GetName() + " (Essential)")
		Else
			AddHeaderOption(Game.GetPlayer().GetLeveledActorBase().GetName() + " (not Essential)")
		Endif
		AddHeaderOption("Cursed Loot Chance: " + " " + dclibs.getcurrenttrapchance() + "%", OPTION_FLAG_DISABLED)									
		If cts.isVulnerableToRape && sexGloballyEnabled
			AddHeaderOption("$DCL_STATUS_VULNERABLE", OPTION_FLAG_DISABLED)					
			AddHeaderOption("- Conditions met: " + cts.attackflags, OPTION_FLAG_DISABLED)					
			String s = "- ( "
			If cts.hasbeennaked
				s += "naked/"
			EndIf
			If cts.hasbeenrestrained
				s += "tied/"
			EndIf
			If cts.hasbeenunarmed
				s += "unarmed/"
			EndIf
			If cts.hasbeenaroused
				s += "horny/"
			EndIf
			If cts.hasbeennight
				s += "darkness"
			EndIf
			AddHeaderOption(s, OPTION_FLAG_DISABLED)					
		Else
			AddHeaderOption("$DCL_STATUS_NOTVULNERABLE", OPTION_FLAG_DISABLED)					
		Endif								
		AddHeaderOption("Active Quest Running: " + dclibs.mcs.isDCURQuestRunning, OPTION_FLAG_DISABLED)					
	elseif (page == "$DCL_SOLICITATION")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			int sa = dcur_solicitationacts.GetValueInt()
			string sa_rank = ""
			if sa > 500
				sa_rank = CreateRankDisplay("J")
			elseif sa > 350
				sa_rank = CreateRankDisplay("I")
			elseif sa > 200
				sa_rank = CreateRankDisplay("H")
			elseif sa > 100
				sa_rank = CreateRankDisplay("G")
			elseif sa > 75
				sa_rank = CreateRankDisplay("F")
			elseif sa > 50
				sa_rank = CreateRankDisplay("E")
			elseif sa > 25
				sa_rank = CreateRankDisplay("D")
			elseif sa > 10
				sa_rank = CreateRankDisplay("C")
			elseif sa > 1
				sa_rank = CreateRankDisplay("B")
			else
				sa_rank = CreateRankDisplay("A")
			endif
			AddTextOption(sa_rank, "")
			AddEmptyOption()
			slavecollarsolicitationenabledOID = AddMenuOption("$DCL_SLAVECOLLARSOLICITATIONENABLED", SolicitationList[slavecollarsolicitationenabled])
			solicitationinnsonlyOID = AddToggleOption("$DCL_SOLICITATIONINNSONLY", solicitationinnsonly)
			solicitationenforceclothingOID = AddToggleOption("$DCL_SOLICITATIONENFORCECLOTHING", solicitationenforceclothing)
			slavecollarsolicitationsuccesschanceOID = addslideroption("$DCL_SLAVECOLLARSOLICITATIONSUCCESSCHANCE", slavecollarsolicitationsuccesschance, "{0}%")
			solicitationminNPCarousalOID = addslideroption("$DCL_SOLICITATIONMINNPCAROUSAL", solicitationminNPCarousal, "{0}")
			solicitationmintipOID = addslideroption("$DCL_SOLICITATIONMINTIP", solicitationmintip, "$DCL_GOLDPERLEVEL0")
			solicitationmaxtipOID = addslideroption("$DCL_SOLICITATIONMAXTIP", solicitationmaxtip, "$DCL_GOLDPERLEVEL0")
			solicitationinnkeepershareOID = addslideroption("$DCL_SOLICITATIONINNKEEPERSHARE", solicitationinnkeepershare, "{0}%")
			solicitationinnchancebonusOID = addslideroption("$DCL_SOLICITATIONINNCHANCEBONUS", solicitationinnchancebonus, "{0}%")
			slavecollarsolicitationcriticalfailurechanceOID = addslideroption("$DCL_SLAVECOLLARSOLICITATIONCRITICALFAILURECHANCE", slavecollarsolicitationcriticalfailurechance, "{0}%")
			solicitationthreesomechanceOID = addslideroption("$DCL_SOLICITATIONTHREESOMECHANCE", solicitationthreesomechance, "{0}%")
			solicitationdrugchanceOID = addslideroption("$DCL_SOLICITATIONDRUGCHANCE", solicitationdrugchance, "{0}%")
			solicitationbondagesexchanceOID = addslideroption("$DCL_SOLICITATIONBONDAGESEXCHANCE", solicitationbondagesexchance, "{0}%")
			solicitationbondagesexremovalchanceOID = addslideroption("$DCL_SOLICITATIONBONDAGESEXREMOVALCHANCE", solicitationbondagesexremovalchance, "{0}%")
			solicitationpaychanceOID = addslideroption("$DCL_SOLICITATIONPAYCHANCE", solicitationpaychance, "{0}%")
			solicitationdancerapechanceOID = addslideroption("$DCL_SOLICITATIONDANCERAPECHANCE", solicitationdancerapechance, "{0}%")		
			solicitationguardgambleOID = AddToggleOption("$DCL_SOLICITATIONGUARDGAMBLE", solicitationguardgamble)
			SetCursorPosition(1)
			AddEmptyOption()
			AddEmptyOption()
			AddHeaderOption("$DCL_FAILEDSOLICITATION")
			slavecollarbeltweightOID = addslideroption("$DCL_SLAVECOLLARBELTWEIGHT", slavecollarbeltweight, "{0}")
			slavecollarcrimeweightOID = addslideroption("$DCL_SLAVECOLLARCRIMEWEIGHT", slavecollarcrimeweight, "{0}")
			solicitationadditemsweightOID = addslideroption("$DCL_SOLICITATIONADDITEMSWEIGHT", solicitationadditemsweight, "{0}")
			solicitationaddpunishingitemweightOID = addslideroption("$DCL_SOLICITATIONADDPUNISHINGITEMWEIGHT", solicitationaddpunishingitemweight, "{0}")
			solicitationchainharnessweightOID = addslideroption("$DCL_SOLICITATIONCHAINHARNESSWEIGHT", solicitationchainharnessweight, "{0}")
			solicitationslutcollarweightOID = addslideroption("$DCL_SOLICITATIONSLUTCOLLARWEIGHT", solicitationslutcollarweight, "{0}")
			solicitationbountyamountOID = addslideroption("$DCL_SOLICITATIONBOUNTYAMOUNT", solicitationbountyamount, "$DCL_GOLD0")
		Endif
	elseif (page == "$DCL_SEXATTACKS")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			AddHeaderOption("$DCL_PARAMETERS")
			sexCombatResistChanceOID = addslideroption("$DCL_SEXCOMBATRESISTCHANCE", sexCombatResistChance, "{1}%")
			sexMinrapistsOID = addslideroption("$DCL_SEXMINRAPISTS", sexMinrapists, "{0}")
			sexMaxrapistsOID = addslideroption("$DCL_SEXMAXRAPISTS", sexMaxrapists, "{0}")
			RapistGenderOID = AddMenuOption("$DCL_RAPISTGENDER", GenderList[RapistGender])
			sexForceLesbianOID = AddToggleOption("$DCL_SEXFORCELESBIAN", sexForceLesbian)
			sexNakedAttackChancePerTickOID = addslideroption("$DCL_SEXNAKEDATTACKCHANCEPERTICK", sexNakedAttackChancePerTick, "{1}")
			sexAttackCooldownOID = addslideroption("$DCL_SEXATTACKCOOLDOWN", sexAttackCooldown, "$DCL_HOURS0")
			sexchastitypreventsrapeOID = AddToggleOption("$DCL_SEXCHASTITYPREVENTSRAPE", sexchastitypreventsrape)
			chastitygearneedsgagOID = AddToggleOption("$DCL_CHASTITYGEARNEEDSGAG", chastitygearneedsgag)			
			sexEnableNakedAttacksArousalMinOID = addslideroption("$DCL_SEXENABLENAKEDATTACKSAROUSALMIN", sexEnableNakedAttacksArousalMin, "{0}")
			sexTieUpOnRapeChanceOID = addslideroption("$DCL_SEXTIEUPONRAPECHANCE", sexTieUpOnRapeChance, "{1}%")
			sexDisallowBeastRacesOID = AddToggleOption("$DCL_SEXDISALLOWBEASTRACES", sexDisallowBeastRaces)
			sexDisallowElderOID = AddToggleOption("$DCL_SEXDISALLOWELDER", sexDisallowElder)
			sexDisallowGuardsOID = AddToggleOption("$DCL_SEXDISALLOWGUARDS", sexDisallowGuards)
			sexAllowHumanoidsOID = AddToggleOption("$DCL_SEXALLOWHUMANOIDS", sexAllowHumanoids)			
			sexAllowCreaturesOID = AddToggleOption("$DCL_SEXALLOWCREATURES", sexAllowCreatures)			
			sexMatchingMobsOID = AddToggleOption("$DCL_SEXMATCHINGMOBS", sexMatchingMobs)
			sexAllowThreesomesOID = AddToggleOption("$DCL_SEXALLOWTHREESOMES", sexAllowThreesomes)			
			stripbeltsonrapeOID = AddToggleOption("$DCL_STRIPBELTSONRAPE", stripbeltsonrape)
			sexUseConsensualScenesChanceOID = addslideroption("$DCL_SEXUSECONSENSUALSCENESCHANCE", sexUseConsensualScenesChance, "{0}")
			SetCursorPosition(1)
			sexGloballyEnabledOID = AddToggleOption("$DCL_SEXGLOBALLYENABLED", sexGloballyEnabled)
			AddHeaderOption("$DCL_ATTACKTYPES")
			sexAttackThresholdOID = addslideroption("$DCL_SEXATTACKTHRESHOLD", sexAttackThreshold, "{0}")
			sexEnableNightAttacksOID = AddToggleOption("$DCL_SEXENABLENIGHTATTACKS", sexEnableNightAttacks)
			sexEnableNakedAttacksOID = AddToggleOption("$DCL_SEXENABLENAKEDATTACKS", sexEnableNakedAttacks)
			sexEnableBoundAttacksOID = AddToggleOption("$DCL_SEXENABLEBOUNDATTACKS", sexEnableBoundAttacks)
			sexEnableUnarmedAttacksOID = AddToggleOption("$DCL_SEXENABLEUNARMEDATTACKS", sexEnableUnarmedAttacks)
			sexEnableArousedAttacksOID = AddToggleOption("$DCL_SEXENABLEAROUSEDATTACKS", sexEnableArousedAttacks)		
			sexEnableCombatAttacksOID = AddToggleOption("$DCL_SEXENABLECOMBATATTACKS", sexEnableCombatAttacks)		
			AddHeaderOption("$DCL_AROUSEDATTACKS")
			sexArousedAttacksThresholdOID = addslideroption("$DCL_SEXAROUSEDATTACKSTHRESHOLD", sexArousedAttacksThreshold, "{0}")
			AddHeaderOption("$DCL_BOUNDATTACKS")
			sexBootsMakeHelplessOID = AddToggleOption("$DCL_SEXBOOTSMAKEHELPLESS", sexBootsMakeHelpless)		
			AddHeaderOption("$DCL_COMBATATTACKS")
			sexCombatSurrenderHealthOID = addslideroption("$DCL_SEXCOMBATSURRENDERHEALTH", sexCombatSurrenderHealth, "{0}")
			sexCombatKnockAwayWeaponChanceOID = addslideroption("$DCL_SEXCOMBATKNOCKWEAPONCHANCE", sexCombatKnockAwayWeaponChance, "{1}%")			
			sexCombatSurrenderRestraintsChanceOID = addslideroption("$DCL_SEXCOMBATSURRENDERADDRESTRAINTSCHANCE", sexCombatSurrenderRestraintsChance, "{1}%")			
			sexCombatNPCSurrenderChanceOID = addslideroption("$DCL_SEXCOMBATNPCSURRENDERCHANCE", sexCombatNPCSurrenderChance, "{1}%")
			SurrenderKeyOID = AddKeyMapOption("$DCL_SEXCOMBATSURRENDERKEY", SurrenderKey)
			AddHeaderOption("$DCL_OUTCOME")
			sexOutcomeHardcoreOID = AddToggleOption("$DCL_SEXOUTCOMEHARDCORE", sexOutcomeHardcore)
			sexOutcomeRobberyChanceOID = addslideroption("$DCL_SEXOUTCOMEROBBERYCHANCE", sexOutcomeRobberyChance, "{1}%")
			sexOutcomeHealOID = addslideroption("$DCL_SEXOUTCOMEHEAL", sexOutcomeHeal, "{1}")
			sexOutcomeInnOID = addslideroption("$DCL_SEXOUTCOMEINN", sexOutcomeInn, "{1}")
			sexOutcomeBAQOID = addslideroption("$DCL_SEXOUTCOMEBAQ", sexOutcomeBAQ, "{1}")		
			sexOutcomeLeftinWildernessOID = addslideroption("$DCL_SEXOUTCOMEWILDERNESS", sexOutcomeLeftinWilderness, "{1}")		
			if installed_SS
				sexOutcomeSSOID = addslideroption("$DCL_SEXOUTCOMESS", sexOutcomeSS, "{1}")
			Endif
			AddHeaderOption("$DCL_SLEEPATTACKS")
			alwayssleepnakedOID = AddToggleOption("$DCL_ALWAYSSLEEPNAKED", alwayssleepnaked)		
			sleepdungeonchanceOID = addslideroption("$DCL_DUNGEONCHANCE", sleepdungeonchance, "{1}%")
			sleepwildernesschanceOID = addslideroption("$DCL_WILDERNESSCHANCE", sleepwildernesschance, "{1}%")
			sleepcitychanceOID = addslideroption("$DCL_CITYCHANCE", sleepcitychance, "{1}%")
			sleepnakedbonusOID = addslideroption("$DCL_SLEEPNAKEDBONUS", sleepnakedbonus, "{1}")
			sleeparousedbonusOID = addslideroption("$DCL_SLEEPAROUSEDBONUS", sleeparousedbonus, "{1}")
			sleepbelterweightOID = addslideroption("$DCL_SLEEPBELTERWEIGHT", sleepbelterweight, "{1}")
		Endif
	elseif (page == "$DCL_CONSEQUENCES")
		if restrained && lockmenuwhentied && !kimytest
			AddHeaderOption("$DCL_MENULOCKED")
			AddHeaderOption("$DCL_WHILERESTRAINED")
		else
			AddHeaderOption("$DCL_DEVICECOMMENTS")
			devicecommentsenabledOID = AddToggleOption("$DCL_DEVICECOMMENTSENABLED", devicecommentsenabled)
			devicecommentscooldownOID = addslideroption("$DCL_DEVICECOMMENTSCOOLDOWN", devicecommentscooldown, "$DCL_HOURS1")
			devicecommentsactionchanceOID = addslideroption("$DCL_DEVICECOMMENTSACTIONCHANCE", devicecommentsactionchance, "{1}%")
			devicecommentsfollowersenabledOID = AddToggleOption("$DCL_DEVICECOMMENTSFOLLOWERSENABLED", devicecommentsfollowersenabled)
			devicecommentsfolloweractionenabledOID = AddToggleOption("$DCL_DEVICECOMMENTSFOLLOWERSACTIONENABLED", devicecommentsfolloweractionenabled)
			devicecommentsvisibleonlyOID = AddToggleOption("$DCL_DEVICECOMMENTSVISIBLEONLY", devicecommentsvisibleonly)
			deviceactionsvisibleonlyOID = AddToggleOption("$DCL_DEVICEACTIONSVISIBLEONLY", deviceactionsvisibleonly)
			deviceactionsarousalmodOID = AddToggleOption("$DCL_DEVICEACTIONSAROUSALMOD", deviceactionsarousalmod)
			AddHeaderOption("$DCL_NPCACTIONWEIGHTS")
			devicecommentsactionadditemsweightOID = addslideroption("$DCL_DEVICECOMMENTSACTIONADDITEMSWEIGHT", devicecommentsactionadditemsweight, "{1}")
			devicecommentsactionrapeOID = addslideroption("$DCL_DEVICECOMMENTSACTIONRAPE", devicecommentsactionrape, "{1}")
			devicecommentsactiongivekeysOID = addslideroption("$DCL_DEVICECOMMENTSACTIONGIVEKEYS", devicecommentsactiongivekeys, "{1}")
			AddEmptyOption()						
			AddHeaderOption("$DCL_UNCONROLLABLELUST")
			lossofcontrolOID = AddToggleOption("$DCL_LOSSOFCONTROLENABLED", lossofcontrol)
			uncontrollablelustOID = AddToggleOption("$DCL_UNCONROLLABLELUSTENABLED", uncontrollablelust)
			uncontrollablelustThresholdOID = addslideroption("$DCL_UNCONROLLABLELUSTTHRESHOLD", uncontrollablelustThreshold, "{0}")
			uncontrollablelustChanceOID = addslideroption("$DCL_UNCONROLLABLELUSTCHANCE", uncontrollablelustChance, "{1}%")		
			AddEmptyOption()
			;AddHeaderOption("$DCL_SELFBONDAGEMENU")
			selfbondageenableOID = AddToggleOption("$DCL_SELFBONDAGEENABLED", selfbondageenable)			
			selfbondagewarningOID = AddToggleOption("$DCL_SELFBONDAGEWARNING", selfbondagewarning)
			selfbondageminitemsOID = addslideroption("$DCL_SELFBONDAGEMINITEMS", selfbondageminitems, "{0}")
			selfbondagemaxitemsOID = addslideroption("$DCL_SELFBONDAGEMAXITEMS", selfbondagemaxitems, "{0}")
			selfbondagecooldownOID = addslideroption("$DCL_SELFBONDAGECOOLDOWN", selfbondagecooldown, "$DCL_HOURS0")	
			selfbondagewhenrestrainedOID = AddToggleOption("$DCL_SELFBONDAGEWHENRESTRAINED", selfbondagewhenrestrained)				
			;selfbondagenoitemdropsOID = AddToggleOption("$DCL_SELFBONDAGENOITEMDROPS", selfbondagenoitemdrops)
			SetCursorPosition(1)
			AddHeaderOption("$DCL_PUBLICINDENCENY")		
			pienabledOID = AddToggleOption("$DCL_PIENABLED", pienabled)		
			picitizensreporttoguardOID = addslideroption("$DCL_PICITIZENSREPORTTOGUARD", picitizensreporttoguard, "{1}%")			
			pibountyOID = addslideroption("$DCL_PIBOUNTY", pibounty, "{0}")			
			pidelayedarrestOID = AddToggleOption("$DCL_PIDELAYEDARREST", pidelayedarrest)		
			pienforcenuditylawOID = AddToggleOption("$DCL_PIENFORCENUDITYLAW", pienforcenuditylaw)	
			pimisogynyOID = AddToggleOption("$DCL_PIMISOGYNY", pimisogyny)		
			;pimisogynyrapechanceOID = addslideroption("$DCL_PIMISOGYNYRAPECHANCE", pimisogynyrapechance, "{1}%")
			pimisogynyrapeoralweightOID = addslideroption("$DCL_PIMISOGYNYRAPEORALWEIGHT", pimisogynyrapeoralweight, "{1}")
			AddHeaderOption("$DCL_PIOUTCOMES")
			piarrestweightOID = addslideroption("$DCL_PIARRESTWEIGHT", piarrestweight, "{1}")
			pibeltweightOID = addslideroption("$DCL_PIBELTWEIGHT", pibeltweight, "{1}")
			piyokeweightOID = addslideroption("$DCL_PIYOKEWEIGHT", piyokeweight, "{1}")
			pichainharnessweightOID = addslideroption("$DCL_PICHAINHARNESSWEIGHT", pichainharnessweight, "{1}")
			pifineweightOID = addslideroption("$DCL_PIFINEWEIGHT", pifineweight, "{1}")
			pirapeweightOID = addslideroption("$DCL_PIRAPEWEIGHT", pirapeweight, "{1}")
			piletgoweightOID = addslideroption("$DCL_PILETGOWEIGHT", piletgoweight, "{1}")
			pitieupweightOID = addslideroption("$DCL_PITIEUPWEIGHT", pitieupweight, "{1}")			
			AddEmptyOption()
			AddHeaderOption("$DCL_GAGTALK")
			gagtalkchanceOID = AddSliderOption("$DCL_GAGTALKCHANCE", gagtalkchance)
			gagtalksuccesschanceOID = addslideroption("$DCL_GAGTALKSUCCESSCHANCE", gagtalksuccesschance, "{1}%")
		Endif		
	endif
endEvent

event OnOptionSelect(int option)
    if (option == modenabledOID)
        modenabled = !modenabled
        SetToggleOptionValue(modenabledOID, modenabled)
	elseIf (option == shutdownmodOID)
		if shutdownmod && !dclibs.validate()
			ShowMessage("$DCL_MODSHUTDOWN_ERROR")		
			return
		endif
        shutdownmod = !shutdownmod
        SetToggleOptionValue(shutdownmodOID, shutdownmod)
		if shutdownmod
			dcur_modshutdown.SetValueInt(1)
		else
			dcur_modshutdown.SetValueInt(0)
		endif	
	elseIf (option == useflashbanganimationOID)
	    useflashbanganimation = !useflashbanganimation
        SetToggleOptionValue(useflashbanganimationOID, useflashbanganimation)
	elseIf (option == flashbangnodroppingitemsOID)
	    flashbangnodroppingitems = !flashbangnodroppingitems
        SetToggleOptionValue(flashbangnodroppingitemsOID, flashbangnodroppingitems)
	elseIf (option == containersenabledOID)
	    containersenabled = !containersenabled
        SetToggleOptionValue(containersenabledOID, containersenabled)
	elseIf (option == corpsesenabledOID)
	    corpsesenabled = !corpsesenabled
        SetToggleOptionValue(corpsesenabledOID, corpsesenabled)
	elseIf (option == trapsenabledOID)
	    trapsenabled = !trapsenabled
        SetToggleOptionValue(trapsenabledOID, trapsenabled)
	elseIf (option == doorsenabledOID)
	    doorsenabled = !doorsenabled
        SetToggleOptionValue(doorsenabledOID, doorsenabled)
	elseIf (option == plantsenabledOID)
	    plantsenabled = !plantsenabled
        SetToggleOptionValue(plantsenabledOID, plantsenabled)
	elseIf (option == minesenabledOID)
	    minesenabled = !minesenabled
        SetToggleOptionValue(minesenabledOID, minesenabled)
	elseIf (option == debugenabledOID)
	    debugenabled = !debugenabled
        SetToggleOptionValue(debugenabledOID, debugenabled)
	elseIf (option == debuglogenabledOID)
	    debuglogenabled = !debuglogenabled
        SetToggleOptionValue(debuglogenabledOID, debuglogenabled)
	elseIf (option == resetquestsOID)
		resetquests = true
		(dcur_mastercontroller As dcur_mastercontrollerscript).UnregisterForUpdate()
		(dcur_mastercontroller As dcur_mastercontrollerscript).RegisterForSingleUpdate(1)
		SetTextOptionValue(resetquestsOID, "$DCL_EXITMENUTOAPPLY")
	elseIf (option == exportsettingsOID)
		If ShowMessage("Are you sure?")
			ExportSettings()	
			ForcePageReset()		
		Endif
	elseIf (option == importsettingsOID)
		If ShowMessage("Are you sure?")
			ImportSettings()		
			ForcePageReset()
		Endif
	elseIf (option == createkeysOID)
		createkeys = true
		(dcur_mastercontroller As dcur_mastercontrollerscript).UnregisterForUpdate()
		(dcur_mastercontroller As dcur_mastercontrollerscript).RegisterForSingleUpdate(1)
		SetTextOptionValue(createkeysOID, "$DCL_EXITMENUTOAPPLY")
	elseIf (option == freefollowersOID)
		freefollowers = true
		(dcur_mastercontroller As dcur_mastercontrollerscript).UnregisterForUpdate()
		(dcur_mastercontroller As dcur_mastercontrollerscript).RegisterForSingleUpdate(1)
		SetTextOptionValue(freefollowersOID, "$DCL_EXITMENUTOAPPLY")	
    elseIf (option == selfbondageOID)
		selfbondage = true
		(dcur_mastercontroller As dcur_mastercontrollerscript).UnregisterForUpdate()
		(dcur_mastercontroller As dcur_mastercontrollerscript).RegisterForSingleUpdate(1)
		SetTextOptionValue(selfbondageOID, "$DCL_EXITMENUTOAPPLY")
	elseIf (option == dropkeysOID)
		dropkeys = true
		(dcur_mastercontroller As dcur_mastercontrollerscript).UnregisterForUpdate()
		(dcur_mastercontroller As dcur_mastercontrollerscript).RegisterForSingleUpdate(1)
		SetTextOptionValue(dropkeysOID, "$DCL_EXITMENUTOAPPLY")
	elseIf (option == dothetestOID)
		dothetest = true
		(dcur_mastercontroller As dcur_mastercontrollerscript).UnregisterForUpdate()
		(dcur_mastercontroller As dcur_mastercontrollerscript).RegisterForSingleUpdate(1)
		SetTextOptionValue(dothetestOID, "$DCL_EXITMENUTOAPPLY")
	elseIf (option == scanforfollowersOID)
		scanforfollowers = true
		(dcur_mastercontroller As dcur_mastercontrollerscript).UnregisterForUpdate()
		(dcur_mastercontroller As dcur_mastercontrollerscript).RegisterForSingleUpdate(1)
		SetTextOptionValue(scanforfollowersOID, "$DCL_EXITMENUTOAPPLY")
	elseIf (option == alwaysequipfullsetOID)
        alwaysequipfullset = !alwaysequipfullset
        SetToggleOptionValue(alwaysequipfullsetOID, alwaysequipfullset)
	elseIf (option == useAradiaOID)
        useAradia = !useAradia
        SetToggleOptionValue(useAradiaOID, useAradia)
		if useAradia			
			dcur_aradialib.aradialib_setDevices()
		else
			AradiaLivingHarnessWeight = 0.0		
			AradiaLivingHarnesskeychance = 0.0
			AradiaRogueWeight = 0.0			
		endif		
	;elseIf (option == useCDOID)
    ;    useCD = !useCD
    ;    SetToggleOptionValue(useCDOID, useCD)
	;	if useCD
	;		dcur_cdlib.cdlib_setDevices()
	;	endif
	elseIf (option == useSkoomaWhoreOID)
        useSkoomaWhore = !useSkoomaWhore
        SetToggleOptionValue(useSkoomaWhoreOID, useSkoomaWhore)
		if useSkoomaWhore
			dcur_skoomawhorelib.skoomawhorelib_setDevices()
		Endif
	elseIf (option == useMMEOID)
        useMME = !useMME
        SetToggleOptionValue(useMMEOID, useMME)
		if useMME
			dclibs.MME_setDevices()
		Endif
	elseIf (option == useSDOID)
        useSD = !useSD
        SetToggleOptionValue(useSDOID, useSD)
		if !useSD
			enslaveweight = 0.0
			sprigganweight = 0.0
		endif
	elseIf (option == useEstrusOID)
        useEstrus = !useEstrus
        SetToggleOptionValue(useEstrusOID, useEstrus)
		if !useEstrus
			estrusweight = 0.0
			estrusplantattack = 0.0
		Endif
	elseIf (option == useArmbinderOID)
        useArmbinder = !useArmbinder
        SetToggleOptionValue(useArmbinderOID, useArmbinder)
		dclibs.processalloweditemlist()
	elseIf (option == useBlindfoldOID)
        useBlindfold = !useBlindfold
        SetToggleOptionValue(useBlindfoldOID, useBlindfold)
		dclibs.processalloweditemlist()
	elseIf (option == useGagOID)
        useGag = !useGag
        SetToggleOptionValue(useGagOID, useGag)
		dclibs.processalloweditemlist()
	elseIf (option == useHoodsOID)
        useHoods = !useHoods
        SetToggleOptionValue(useHoodsOID, useHoods)
		dclibs.processalloweditemlist()
	elseIf (option == useBraOID)
        useBra = !useBra
        SetToggleOptionValue(useBraOID, useBra)
		dclibs.processalloweditemlist()
	elseIf (option == useBeltOID)
        useBelt = !useBelt
        SetToggleOptionValue(useBeltOID, useBelt)
		dclibs.processalloweditemlist()
	elseIf (option == useSuitsOID)
        useSuits = !useSuits
        SetToggleOptionValue(useSuitsOID, useSuits)
		dclibs.processalloweditemlist()
	elseIf (option == useBootsOID)
        useBoots = !useBoots
        SetToggleOptionValue(useBootsOID, useBoots)
		dclibs.processalloweditemlist()
	elseIf (option == useVPiercingOID)
        useVPiercing = !useVPiercing
        SetToggleOptionValue(useVPiercingOID, useVPiercing)
		dclibs.processalloweditemlist()
	elseIf (option == useNPiercingOID)
        useNPiercing = !useNPiercing
        SetToggleOptionValue(useNPiercingOID, useNPiercing)
		dclibs.processalloweditemlist()
	elseIf (option == useSlaveHarnessOID)
        useSlaveHarness = !useSlaveHarness
        SetToggleOptionValue(useSlaveHarnessOID, useSlaveHarness)
		dclibs.processalloweditemlist()
	elseIf (option == enableundressOID)
        enableundress = !enableundress
        SetToggleOptionValue(enableundressOID, enableundress)
	elseIf (option == escape_containersenabledOID)
        escape_containersenabled = !escape_containersenabled
        SetToggleOptionValue(escape_containersenabledOID, escape_containersenabled)
	elseIf (option == escape_corpsesenabledOID)
        escape_corpsesenabled = !escape_corpsesenabled
        SetToggleOptionValue(escape_corpsesenabledOID, escape_corpsesenabled)
	elseIf (option == nokeyswithoutrestraintsOID)
        nokeyswithoutrestraints = !nokeyswithoutrestraints
        SetToggleOptionValue(nokeyswithoutrestraintsOID, nokeyswithoutrestraints)
	elseIf (option == useitemsfrominventoryOID)
        useitemsfrominventory = !useitemsfrominventory
        SetToggleOptionValue(useitemsfrominventoryOID, useitemsfrominventory)
	elseIf (option == useRefinedOptionsOID)
        useRefinedOptions = !useRefinedOptions
        SetToggleOptionValue(useRefinedOptionsOID, useRefinedOptions)
		if useRefinedOptions
			SetOptionFlags(dungeonchanceOID, OPTION_FLAG_NONE)
			SetOptionFlags(wildernesschanceOID, OPTION_FLAG_NONE)
			SetOptionFlags(citychanceOID, OPTION_FLAG_NONE)
		else
			SetOptionFlags(dungeonchanceOID, OPTION_FLAG_DISABLED)
			SetOptionFlags(wildernesschanceOID, OPTION_FLAG_DISABLED)
			SetOptionFlags(citychanceOID, OPTION_FLAG_DISABLED)
		endIf
	elseIf (option == enablefollowersupportOID)
        enablefollowersupport = !enablefollowersupport
        SetToggleOptionValue(enablefollowersupportOID, enablefollowersupport)
	elseIf (option == allowarmbindersfollowersOID)
        allowarmbindersfollowers = !allowarmbindersfollowers
        SetToggleOptionValue(allowarmbindersfollowersOID, allowarmbindersfollowers)
	elseIf (option == consistentthemeOID)
        consistenttheme = !consistenttheme
        SetToggleOptionValue(consistentthemeOID, consistenttheme)
	elseIf (option == cursedcollarquestendgiftOID)
        cursedcollarquestendgift = !cursedcollarquestendgift
        SetToggleOptionValue(cursedcollarquestendgiftOID, cursedcollarquestendgift)
	elseIf (option == stripbeltsonrapeOID)
        stripbeltsonrape = !stripbeltsonrape
        SetToggleOptionValue(stripbeltsonrapeOID, stripbeltsonrape)
	elseIf (option == sexchastitypreventsrapeOID)
        sexchastitypreventsrape = !sexchastitypreventsrape
        SetToggleOptionValue(sexchastitypreventsrapeOID, sexchastitypreventsrape)
	elseIf (option == chastitygearneedsgagOID)
        chastitygearneedsgag = !chastitygearneedsgag
        SetToggleOptionValue(chastitygearneedsgagOID, chastitygearneedsgag)
	elseIf (option == collarquestnofasttravelOID)
        collarquestnofasttravel = !collarquestnofasttravel
        SetToggleOptionValue(collarquestnofasttravelOID, collarquestnofasttravel)
  	elseIf (option == cursedcollarusepanelgagOID)
        cursedcollarusepanelgag = !cursedcollarusepanelgag
        SetToggleOptionValue(cursedcollarusepanelgagOID, cursedcollarusepanelgag)
	elseIf (option == hisecallowarmbinderOID)
        hisecallowarmbinder = !hisecallowarmbinder
        SetToggleOptionValue(hisecallowarmbinderOID, hisecallowarmbinder)
	elseIf (option == estrusincityOID)
        estrusincity = !estrusincity
        SetToggleOptionValue(estrusincityOID, estrusincity)
	elseIf (option == flashbangincityOID)
        flashbangincity = !flashbangincity
        SetToggleOptionValue(flashbangincityOID, flashbangincity)
	elseIf (option == slavecollarbuffsactiveOID)
        slavecollarbuffsactive = !slavecollarbuffsactive
        SetToggleOptionValue(slavecollarbuffsactiveOID, slavecollarbuffsactive)
		if slavecollarbuffsactive
			dcur_slavecollarbuffsactive.SetValueInt(1)
		else
			dcur_slavecollarbuffsactive.SetValueInt(0)
		endif
	elseIf (option == solicitationinnsonlyOID)
        solicitationinnsonly = !solicitationinnsonly
        SetToggleOptionValue(solicitationinnsonlyOID, solicitationinnsonly)
		if solicitationinnsonly
			dcur_solicitationinnsonly.SetValueInt(1)
		else
			dcur_solicitationinnsonly.SetValueInt(0)
		endif			
	elseIf (option == slavecollarjewelleryallowedOID)
        slavecollarjewelleryallowed = !slavecollarjewelleryallowed
        SetToggleOptionValue(slavecollarjewelleryallowedOID, slavecollarjewelleryallowed)
	elseIf (option == slavecollarkeyneededOID)
        slavecollarkeyneeded = !slavecollarkeyneeded
        SetToggleOptionValue(slavecollarkeyneededOID, slavecollarkeyneeded)
	elseIf (option == disablesafewordsOID)
        disablesafewords = !disablesafewords
        SetToggleOptionValue(disablesafewordsOID, disablesafewords)
	elseIf (option == solicitationenforceclothingOID)
        solicitationenforceclothing = !solicitationenforceclothing
        SetToggleOptionValue(solicitationenforceclothingOID, solicitationenforceclothing)
	elseIf (option == solicitationguardgambleOID)
        solicitationguardgamble = !solicitationguardgamble
        SetToggleOptionValue(solicitationguardgambleOID, solicitationguardgamble)
	elseIf (option == hisecuseyokeOID)
        hisecuseyoke= !hisecuseyoke
        SetToggleOptionValue(hisecuseyokeOID, hisecuseyoke)
	elseIf (option == estrustentacleimpregnationonlyOID)
        estrustentacleimpregnationonly = !estrustentacleimpregnationonly
        SetToggleOptionValue(estrustentacleimpregnationonlyOID, estrustentacleimpregnationonly)
	elseIf (option == estrusdrawcrowdOID)
        estrusdrawcrowd = !estrusdrawcrowd
        SetToggleOptionValue(estrusdrawcrowdOID, estrusdrawcrowd)	
	elseIf (option == devicecommentsenabledOID)
        devicecommentsenabled = !devicecommentsenabled
        SetToggleOptionValue(devicecommentsenabledOID, devicecommentsenabled)
	elseIf (option == deviceactionsarousalmodOID)
        deviceactionsarousalmod = !deviceactionsarousalmod
        SetToggleOptionValue(deviceactionsarousalmodOID, deviceactionsarousalmod)
	elseIf (option == sexDisallowBeastRacesOID)
        sexDisallowBeastRaces = !sexDisallowBeastRaces
        SetToggleOptionValue(sexDisallowBeastRacesOID, sexDisallowBeastRaces)
	elseIf (option == sexDisallowElderOID)
        sexDisallowElder = !sexDisallowElder
        SetToggleOptionValue(sexDisallowElderOID, sexDisallowElder)
	elseIf (option == sexDisallowGuardsOID)
        sexDisallowGuards = !sexDisallowGuards
        SetToggleOptionValue(sexDisallowGuardsOID, sexDisallowGuards)
	elseIf (option == sexAllowHumanoidsOID)
        sexAllowHumanoids = !sexAllowHumanoids
        SetToggleOptionValue(sexAllowHumanoidsOID, sexAllowHumanoids)
	elseIf (option == sexAllowCreaturesOID)
        sexAllowCreatures = !sexAllowCreatures
        SetToggleOptionValue(sexAllowCreaturesOID, sexAllowCreatures)
	elseIf (option == sexMatchingMobsOID)
        sexMatchingMobs = !sexMatchingMobs
        SetToggleOptionValue(sexMatchingMobsOID, sexMatchingMobs)
	elseIf (option == sexAllowThreesomesOID)
        sexAllowThreesomes = !sexAllowThreesomes
        SetToggleOptionValue(sexAllowThreesomesOID, sexAllowThreesomes)
	elseIf (option == sexEnableBoundAttacksOID)
        sexEnableBoundAttacks = !sexEnableBoundAttacks
        SetToggleOptionValue(sexEnableBoundAttacksOID, sexEnableBoundAttacks)
	elseIf (option == sexEnableNakedAttacksOID)
        sexEnableNakedAttacks = !sexEnableNakedAttacks
        SetToggleOptionValue(sexEnableNakedAttacksOID, sexEnableNakedAttacks)
	elseIf (option == sexEnableNightAttacksOID)
        sexEnableNightAttacks = !sexEnableNightAttacks
        SetToggleOptionValue(sexEnableNightAttacksOID, sexEnableNightAttacks)
	elseIf (option == sexEnableCombatAttacksOID)
        sexEnableCombatAttacks = !sexEnableCombatAttacks
        SetToggleOptionValue(sexEnableCombatAttacksOID, sexEnableCombatAttacks)
		if sexEnableCombatAttacks && sexGloballyEnabled			
			cts.EssentialPlayer.ForceRefTo(libs.playerref)
		elseif cts.EssentialPlayer.GetActorReference() != None						
			libs.playerref.ResetHealthAndLimbs()
			cts.EssentialPlayer.Clear()			
		endif
	elseIf (option == sexEnableUnarmedAttacksOID)
        sexEnableUnarmedAttacks = !sexEnableUnarmedAttacks
        SetToggleOptionValue(sexEnableUnarmedAttacksOID, sexEnableUnarmedAttacks)
	elseIf (option == sexEnableArousedAttacksOID)
        sexEnableArousedAttacks = !sexEnableArousedAttacks
        SetToggleOptionValue(sexEnableArousedAttacksOID, sexEnableArousedAttacks)
	elseIf (option == devicecommentsfollowersenabledOID)
        devicecommentsfollowersenabled = !devicecommentsfollowersenabled
        SetToggleOptionValue(devicecommentsfollowersenabledOID, devicecommentsfollowersenabled)
		if devicecommentsfollowersenabled
			dcur_devicecomments_followerallowed.SetValueInt(1)
		else
			dcur_devicecomments_followerallowed.SetValueInt(0)
		endif	
	elseIf (option == devicecommentsfolloweractionenabledOID)
        devicecommentsfolloweractionenabled = !devicecommentsfolloweractionenabled
        SetToggleOptionValue(devicecommentsfolloweractionenabledOID, devicecommentsfolloweractionenabled)
		if devicecommentsfolloweractionenabled
			dcur_devicecomments_followeractionallowed.SetValueInt(1)
		else
			dcur_devicecomments_followeractionallowed.SetValueInt(0)
		endif
	elseIf (option == sexGloballyEnabledOID)
        sexGloballyEnabled = !sexGloballyEnabled
        SetToggleOptionValue(sexGloballyEnabledOID, sexGloballyEnabled)
		if sexEnableCombatAttacks && sexGloballyEnabled			
			cts.EssentialPlayer.ForceRefTo(libs.playerref)
		elseif cts.EssentialPlayer.GetActorReference() != None											
			libs.playerref.ResetHealthAndLimbs()									
			cts.EssentialPlayer.Clear()			
		endif
	elseIf (option == shameidleOID)
        shameidle = !shameidle
        SetToggleOptionValue(shameidleOID, shameidle)
	elseIf (option == progressivebondageOID)
        progressivebondage = !progressivebondage
        SetToggleOptionValue(progressivebondageOID, progressivebondage)
	elseIf (option == devicecommentsvisibleonlyOID)
        devicecommentsvisibleonly = !devicecommentsvisibleonly
        SetToggleOptionValue(devicecommentsvisibleonlyOID, devicecommentsvisibleonly)
	elseIf (option == deviceactionsvisibleonlyOID)
        deviceactionsvisibleonly = !deviceactionsvisibleonly
        SetToggleOptionValue(deviceactionsvisibleonlyOID, deviceactionsvisibleonly)	
	elseIf (option == lockeddoorsonlyOID)
        lockeddoorsonly= !lockeddoorsonly
        SetToggleOptionValue(lockeddoorsonlyOID, lockeddoorsonly)		
	elseIf (option == selfbondageenableOID)
        selfbondageenable = !selfbondageenable
        SetToggleOptionValue(selfbondageenableOID, selfbondageenable)		
	elseIf (option == selfbondagewarningOID)
        selfbondagewarning = !selfbondagewarning
        SetToggleOptionValue(selfbondagewarningOID, selfbondagewarning)			
	elseIf (option == lowperformancemodeOID)
        lowperformancemode = !lowperformancemode
        SetToggleOptionValue(lowperformancemodeOID, lowperformancemode)	
		If lowperformancemode
			updateinterval = 17
			clocktickshortinterval = 30.0	
		else
			updateinterval = 7
			clocktickshortinterval = 17.0
		endif	
	elseIf (option == dropusefulkeysOID)
        dropusefulkeys = !dropusefulkeys
        SetToggleOptionValue(dropusefulkeysOID, dropusefulkeys)
	elseIf (option == sexForceLesbianOID)
        sexForceLesbian = !sexForceLesbian
        SetToggleOptionValue(sexForceLesbianOID, sexForceLesbian)
	elseIf (option == sexOutcomeHardcoreOID)
        sexOutcomeHardcore = !sexOutcomeHardcore
        SetToggleOptionValue(sexOutcomeHardcoreOID, sexOutcomeHardcore)
	elseIf (option == sexBootsMakeHelplessOID)
        sexBootsMakeHelpless = !sexBootsMakeHelpless
        SetToggleOptionValue(sexBootsMakeHelplessOID, sexBootsMakeHelpless)
	elseIf (option == selfbondagewhenrestrainedOID)
        selfbondagewhenrestrained = !selfbondagewhenrestrained
        SetToggleOptionValue(selfbondagewhenrestrainedOID, selfbondagewhenrestrained)
	elseIf (option == selfbondagenoitemdropsOID)
        selfbondagenoitemdrops = !selfbondagenoitemdrops
        SetToggleOptionValue(selfbondagenoitemdropsOID, selfbondagenoitemdrops)
	elseIf (option == breastresizeOID)
        breastresize = !breastresize
        SetToggleOptionValue(breastresizeOID, breastresize)	
		If !breastresize
			cts.SetMorphValue(libs.playerref, 0.0, "Breasts")
			cts.SetMorphValue(libs.playerref, 0.0, "BreastsSH")
			;SetMorphValue(libs.playerref, 0.0, "BreastsSSH")
			cts.SetMorphValue(libs.playerref, 0.0, "DoubleMelon")
			cts.SetMorphValue(libs.playerref, 0.0, "BreastsFantasy")
			cts.SetMorphValue(libs.playerref, 0.0, "BreastWidth")
			cts.SetMorphValue(libs.playerref, 0.0, "PushUp")
			cts.SetMorphValue(libs.playerref, 0.0, "BreastGravity")
			cts.SetMorphValue(libs.playerref, 0.0, "BreastHeight")
			cts.SetMorphValue(libs.playerref, 0.0, "NippleSize")
			cts.SetMorphValue(libs.playerref, 0.0, "NippleAreola")
			cts.SetMorphValue(libs.playerref, 0.0, "Butt")
			cts.SetMorphValue(libs.playerref, 0.0, "BigButt")
			cts.SetMorphValue(libs.playerref, 0.0, "RoundAss")
			cts.SetMorphValue(libs.playerref, 0.0, "Thighs")
			cts.SetMorphValue(libs.playerref, 0.0, "Waist")
		EndIf
	elseIf (option == cuminflationenableOID)
        If cuminflationenable			
			cts.SetMorphValue(libs.playerref, 0.0, "Waist")
		endif
		cuminflationenable = !cuminflationenable
        SetToggleOptionValue(cuminflationenableOID, cuminflationenable)	
	elseIf (option == pienabledOID)
        pienabled = !pienabled
        SetToggleOptionValue(pienabledOID, pienabled)
	elseIf (option == pimisogynyOID)
        pimisogyny = !pimisogyny
        SetToggleOptionValue(pimisogynyOID, pimisogyny)
		If pimisogyny
			dcur_misogyny_active.SetValueInt(1)
		else
			dcur_misogyny_active.SetValueInt(0)
		endif
	elseIf (option == enablehornybuffsOID)
        enablehornybuffs = !enablehornybuffs
        SetToggleOptionValue(enablehornybuffsOID, enablehornybuffs)
	elseIf (option == enabledevicebuffsOID)
        enabledevicebuffs = !enabledevicebuffs
        SetToggleOptionValue(enabledevicebuffsOID, enabledevicebuffs)
	elseIf (option == uncontrollablelustOID)
        uncontrollablelust = !uncontrollablelust
        SetToggleOptionValue(uncontrollablelustOID, uncontrollablelust)
	elseIf (option == lossofcontrolOID)
        lossofcontrol = !lossofcontrol
        SetToggleOptionValue(lossofcontrolOID, lossofcontrol)
	elseIf (option == lockmenuwhentiedOID)
        lockmenuwhentied = !lockmenuwhentied
        SetToggleOptionValue(lockmenuwhentiedOID, lockmenuwhentied)		
	elseIf (option == pidelayedarrestOID)
        pidelayedarrest = !pidelayedarrest
        SetToggleOptionValue(pidelayedarrestOID, pidelayedarrest)	
	elseIf (option == pienforcenuditylawOID)
        pienforcenuditylaw = !pienforcenuditylaw
        SetToggleOptionValue(pienforcenuditylawOID, pienforcenuditylaw)
	elseIf (option == alwayssleepnakedOID)
        alwayssleepnaked = !alwayssleepnaked
        SetToggleOptionValue(alwayssleepnakedOID, alwayssleepnaked)	
	elseIf (option == shoppingquestenabledOID)
        shoppingquestenabled = !shoppingquestenabled
        SetToggleOptionValue(shoppingquestenabledOID, shoppingquestenabled)	
		If shoppingquestenabled
			dcur_shoppingquest_enabled.SetValueInt(1)
		else
			dcur_shoppingquest_enabled.SetValueInt(0)
		endif
	elseIf (option == prison_NoSexOID)
        prison_NoSex = !prison_NoSex
        SetToggleOptionValue(prison_NoSexOID, prison_NoSex)	
		If prison_NoSex
			dcur_prison_nosex.SetValueInt(1)
		else
			dcur_prison_nosex.SetValueInt(0)
		endif
	elseIf (option == prison_useVanillaOID)
        prison_useVanilla = !prison_useVanilla
        SetToggleOptionValue(prison_useVanillaOID, prison_useVanilla)	
		If prison_useVanilla
			dcur_prison_UseVanilla.SetValueInt(1)
		else
			dcur_prison_UseVanilla.SetValueInt(0)
		endif
	elseIf (option == prison_WhippingOID)
        prison_Whipping = !prison_Whipping
        SetToggleOptionValue(prison_WhippingOID, prison_Whipping)	
	elseIf (option == mercyfuldungeonsOID)
        mercyfuldungeons = !mercyfuldungeons
        SetToggleOptionValue(mercyfuldungeonsOID, mercyfuldungeons)	
	endIf
endEvent

event OnOptionHighlight(int option)
    if (option == modenabledOID)
        SetInfoText("$DCL_MODENABLED_DESC")
	elseIf (option == useflashbanganimationOID)
        SetInfoText("$DCL_USEFLASHBANGANIMATION_DESC")
	elseIf (option == flashbangnodroppingitemsOID)
        SetInfoText("$DCL_FLASHBANGNODROPPINGITEMS_DESC")
	elseIf (option == containersenabledOID)
        SetInfoText("$DCL_CONTAINERSENABLED_DESC")
	elseIf (option == corpsesenabledOID)
        SetInfoText("$DCL_CORPSESENABLED_DESC")
	elseIf (option == trapsenabledOID)
        SetInfoText("$DCL_TRAPSENABLED_DESC")
	elseIf (option == plantsenabledOID)
        SetInfoText("$DCL_PLANTSENABLED_DESC")
	elseIf (option == doorsenabledOID)
        SetInfoText("$DCL_DOORSENABLED_DESC")
	elseIf (option == minesenabledOID)
        SetInfoText("$DCL_MINESENABLED_DESC")
    elseIf (option == debugenabledOID)
        SetInfoText("$DCL_DEBUGENABLED_DESC")
	elseIf (option == debuglogenabledOID)
        SetInfoText("$DCL_DEBUGLOGENABLED_DESC")
	elseIf (option == alwaysequipfullsetOID)
        SetInfoText("$DCL_ALWAYSFORCEFULLSET_DESC")
	elseif (option == basechanceOID)
		SetInfoText("$DCL_BASECHANCE_DESC")
	elseif (option == useRefinedOptionsOID)
		SetInfoText("$DCL_USEREFINEDOPTIONS_DESC")
	elseif (option == dungeonchanceOID)
		SetInfoText("$DCL_DUNGEONCHANCE_DESC")
	elseif (option == wildernesschanceOID)
		SetInfoText("$DCL_WILDERNESSCHANCE_DESC")
	elseif (option == citychanceOID)
		SetInfoText("$DCL_CITYCHANCE_DESC")
	elseif (option == commoncontainerweightOID)
		SetInfoText("$DCL_COMMONCONTAINERWEIGHT_DESC")
	elseif (option == ornatecontainerweightOID)
		SetInfoText("$DCL_ORNATECONTAINERWEIGHT_DESC")
	elseif (option == trapchancemodifierOID)
		SetInfoText("$DCL_TRAPCHANCEMODIFIER_DESC")
	elseif (option == plantchancemodifierOID)
		SetInfoText("$DCL_PLANTMINECHANCEMOD_DESC")
	elseif (option == arousalweightOID)
		SetInfoText("$DCL_AROUSALWEIGHT_DESC")
	elseif (option == arousalmodifierOID)
		SetInfoText("$DCL_AROUSALMODIFIER_DESC")
	elseif (option == deadbodymodifierOID)
		SetInfoText("$DCL_DEADBODYMODIFIER_DESC")
	elseif (option == heavilyrestrainedthresholdOID)
		SetInfoText("$DCL_HEAVILYRESTRAINEDTHRESHOLD_DESC")
	elseif (option == minArousalOID)
		SetInfoText("$DCL_MINAROUSAL_DESC")
	elseif (option == maxArousalOID)
		SetInfoText("$DCL_AROUSALTHRESHOLDFULLSET_DESC")
	elseif (option == numEquippedItemsOID)
		SetInfoText("$DCL_NUMEQUIPPEDITEMS_DESC")
	elseif (option == losekeychanceOID)
		SetInfoText("$DCL_LOSEKEYCHANCE_DESC")
	;elseif (option == useCDOID)
	;	SetInfoText("$DCL_USECD_DESC")
	elseif (option == useSDOID)
		SetInfoText("$DCL_USESD_DESC")
	elseif (option == useAradiaOID)
		SetInfoText("$DCL_USEARADIA_DESC")
	elseif (option == AradiaRogueWeightOID)
		SetInfoText("$DCL_ARADIAROGUEWEIGHT_DESC")
	elseif (option == TentacleParasiteWeightOID)
		SetInfoText("$DCL_TENTACLEPARASITEWEIGHT_DESC")
	elseif (option == ChainHarnessWeightOID)
		SetInfoText("$DCL_CHAINHARNESSWEIGHT_DESC")
	elseif (option == useSkoomaWhoreOID)
		SetInfoText("$DCL_USESKOOMAWHORE_DESC")
	elseif (option == useMMEOID)
		SetInfoText("$DCL_USEMME_DESC")
	elseif (option == useEstrusOID)
		SetInfoText("$DCL_USEESTRUS_DESC")
	elseif (option == useArmbinderOID)
		SetInfoText("$DCL_USEARMBINDERS_DESC")
	elseif (option == useBlindfoldOID)
		SetInfoText("$DCL_USEBLINDFOLD_DESC")
	elseif (option == useGagOID)
		SetInfoText("$DCL_USEGAG_DESC")
	elseif (option == useBeltOID)
		SetInfoText("$DCL_USEBELT_DESC")
	elseif (option == useBootsOID)
		SetInfoText("$DCL_USEBOOTS_DESC")
	elseif (option == useBraOID)
		SetInfoText("$DCL_USEBRA_DESC")
	elseif (option == useVPiercingOID)
		SetInfoText("$DCL_USEVPIERCING_DESC")
	elseif (option == useNPiercingOID)
		SetInfoText("$DCL_USENPIERCING_DESC")
	elseif (option == usesuitsOID)
		SetInfoText("$DCL_USESUITS_DESC")		
	elseif (option == useSlaveHarnessOID)
		SetInfoText("$DCL_USESLAVEHARNESS_DESC")
	elseif (option == equipthemeOID)
		SetInfoText("$DCL_EQUIPTHEME_DESC")
	elseif (option == equipthemefollowerOID)
		SetInfoText("$DCL_EQUIPTHEMEFOLLOWER_DESC")
	elseif (option == enableundressOID)
		SetInfoText("$DCL_ENABLEUNDRESS_DESC")	
	elseif (option == escape_containersenabledOID)
		SetInfoText("$DCL_ESCAPECONTAINERSENABLED_DESC")
	elseif (option == escape_corpsesenabledOID)
		SetInfoText("$DCL_ESCAPECORPSESENABLED_DESC")
	elseif (option == sharpitemchanceOID)
		SetInfoText("$DCL_SHARPITEMCHANCE_DESC")
	elseif (option == keydropchanceOID)
		SetInfoText("$DCL_KEYDROPCHANCE_DESC")
	elseif (option == rarekeydropchanceOID)
		SetInfoText("$DCL_RAREKEYDROPCHANCE_DESC")
	elseif (option == piercingkeyweightOID)
		SetInfoText("$DCL_PIERCINGKEYWEIGHT_DESC")
	elseif (option == restraintskeyweightOID)
		SetInfoText("$DCL_RESTRAINTSKEYWEIGHT_DESC")
	elseif (option == chastitykeyweightOID)
		SetInfoText("$DCL_CHASTITYKEYWEIGHT_DESC")
	elseif (option == nokeyswithoutrestraintsOID)
		SetInfoText("$DCL_NOKEYSWITHOUTRESTRAINTS_DESC")
	elseif (option == useitemsfrominventoryOID)
		SetInfoText("$DCL_USEITEMSFROMINVENTORY_DESC")
	elseif (option == minnumEquippedItemsOID)
		SetInfoText("$DCL_MINIMUMEQUIPPEDITEMS_DESC")
	elseIf (option == AradiaLivingHarnessWeightOID)
		SetInfoText("$DCL_ARADIALIVINGHARNESSWEIGHT_DESC")
	elseIf (option == AradiaLivingHarnesskeychanceOID)
		SetInfoText("$DCL_ARADIALIVINGHARNESSKEYCHANCE_DESC")
	elseIf (option == enablefollowersupportOID)
		SetInfoText("$DCL_ENABLEFOLLOWERSUPPORT_DESC")
	elseIf (option == allowarmbindersfollowersOID)
		SetInfoText("$DCL_ALLOWARMBINDERSFOLLOWERS_DESC")
	elseIf (option == consistentthemeOID)
		SetInfoText("$DCL_CONSISTENTTHEME_DESC")
	elseif (option == collarquestnofasttravelOID)
		SetInfoText("$DCL_COLLARQUESTNOFASTTRAVEL_DESC")
	elseif (option == cursedcollarquestendgiftOID)
		SetInfoText("$DCL_CURSEDCOLLARQUESTENDGIFT_DESC")
	elseif (option == DifficultyOID)
		SetInfoText("$DCL_CCDIFFICULTY_DESC")
	elseif (option == cursedcollarusepanelgagOID)
		SetInfoText("$DCL_CURSEDCOLLARUSEPANELGAG_DESC")
	elseif (option == cursedcollarsurfaceweightOID)
		SetInfoText("$DCL_CURSEDCOLLARSURFACEWEIGHT_DESC")
	elseif (option == cursedcollarhideoutweightOID)
		SetInfoText("$DCL_CURSEDCOLLARHIDEOUTWEIGHT_DESC")
	elseif (option == cursedcollardungeonweightOID)
		SetInfoText("$DCL_CURSEDCOLLARDUNGEONWEIGHT_DESC")
	elseif (option == estrusweightOID)
		SetInfoText("$DCL_ESTRUSWEIGHT_DESC")
	elseif (option == hisecweightOID)
		SetInfoText("$DCL_HISECWEIGHT_DESC")
	elseif (option == slavecollarweightOID)
		SetInfoText("$DCL_SLAVECOLLARWEIGHT_DESC")
	elseif (option == stripteasecollarweightOID)
		SetInfoText("$DCL_STRIPTEASECOLLARWEIGHT_DESC")
	elseif (option == slutcollarweightOID)
		SetInfoText("$DCL_SLUTCOLLARWEIGHT_DESC")
	elseif (option == whorecollarweightOID)
		SetInfoText("$DCL_WHORECOLLARWEIGHT_DESC")
	elseif (option == shockbootsweightOID)
		SetInfoText("$DCL_SHOCKBOOTSWEIGHT_DESC")
	elseif (option == standardweightOID)
		SetInfoText("$DCL_STANDARDWEIGHT_DESC")
	elseif (option == slavegagweightOID)
		SetInfoText("$DCL_SLAVEGAGWEIGHT_DESC")
	elseif (option == rubbersuitweightOID)
		SetInfoText("$DCL_RUBBERSUITWEIGHT_DESC")
	elseif (option == slavebeltweightOID)
		SetInfoText("$DCL_SLAVEBELTWEIGHT_DESC")
	elseif (option == slaveitemsweightOID)
		SetInfoText("$DCL_SLAVEITEMSWEIGHT_DESC")
	elseif (option == dashaitemsweightOID)
		SetInfoText("$DCL_DASHAITEMSWEIGHT_DESC")	
	elseif (option == hisecremovalgoldperlevelOID)
		SetInfoText("$DCL_HISECREMOVALGOLDPERLEVEL_DESC")
	elseif (option == flashbangchestweightOID)
		SetInfoText("$DCL_FLASHBANGCHESTWEIGHT_DESC")
	elseif (option == stripbeltsonrapeOID)
		SetInfoText("$DCL_STRIPBELTSONRAPE_DESC")
	elseif (option == sexchastitypreventsrapeOID)
		SetInfoText("$DCL_SEXCHASTITYPREVENTSRAPE_DESC")
	elseif (option == chastitygearneedsgagOID)
		SetInfoText("$DCL_CHASTITYGEARNEEDSGAG_DESC")
	elseif (option == rapistgenderOID)
		SetInfoText("$DCL_RAPISTGENDER_DESC")
	elseif (option == cursedcollarquestchanceOID)
		SetInfoText("$DCL_CURSEDCOLLARQUESTCHANCE_DESC")
	elseif (option == hisecallowarmbinderOID)
		SetInfoText("$DCL_HISECALLOWARMBINDER_DESC")
	elseif (option == estrusincityOID)
		SetInfoText("$DCL_ESTRUSINCITY_DESC")
	elseif (option == flashbangincityOID)
		SetInfoText("$DCL_FLASHBANGCITY_DESC")
	elseif (option == sexAttackCooldownOID)
		SetInfoText("$DCL_SEXATTACKCOOLDOWN_DESC")
	elseif (option == slavecollarjewelleryallowedOID)
		SetInfoText("$DCL_SLAVECOLLARJEWELLERYALLOWED_DESC")
	elseif (option == slavecollarbuffsactiveOID)
		SetInfoText("$DCL_SLAVECOLLARBUFFSACTIVE_DESC")		
	elseif (option == slavecollarkeyneededOID)
		SetInfoText("$DCL_SLAVECOLLARKEYNEEDED_DESC")
	elseif (option == slavecollarminsexactsOID)
		SetInfoText("$DCL_SLAVECOLLARMINSEXACTS_DESC")
	elseif (option == slavecollarmaxsexactsOID)
		SetInfoText("$DCL_SLAVECOLLARMAXSEXACTS_DESC")
	elseif (option == slavecollarmindayswornOID)
		SetInfoText("$DCL_SLAVECOLLARMINDAYSWORN_DESC")
	elseif (option == slavecollarmaxdayswornOID)
		SetInfoText("$DCL_SLAVECOLLARMAXDAYSWORN_DESC")
	elseif (option == slavecollarbeltweightOID)
		SetInfoText("$DCL_SLAVECOLLARBELTWEIGHT_DESC")
	elseif (option == solicitationadditemsweightOID)
		SetInfoText("$DCL_SOLICITATIONADDITEMSWEIGHT_DESC")
	elseif (option == slavecollarcrimeweightOID)
		SetInfoText("$DCL_SLAVECOLLARCRIMEWEIGHT_DESC")
	elseif (option == slavecollarsolicitationcriticalfailurechanceOID)
		SetInfoText("$DCL_SLAVECOLLARSOLICITATIONCRITICALFAILURECHANCE_DESC")
	elseif (option == slavecollarsolicitationsuccesschanceOID)
		SetInfoText("$DCL_SLAVECOLLARSOLICITATIONSUCCESSCHANCE_DESC")
	elseif (option == solicitationmintipOID)
		SetInfoText("$DCL_SOLICITATIONMINTIP_DESC")
	elseif (option == solicitationmaxtipOID)
		SetInfoText("$DCL_SOLICITATIONMAXTIP_DESC")
	elseif (option == sexMinrapistsOID)
		SetInfoText("$DCL_SEXMINRAPISTS_DESC")
	elseif (option == sexMaxrapistsOID)
		SetInfoText("$DCL_SEXMAXRAPISTS_DESC")
	elseif (option == slavecollarsolicitationenabledOID)
		SetInfoText("$DCL_SLAVECOLLARSOLICITATIONENABLED_DESC")		
	elseif (option == slavegagreleasetimeOID)
		SetInfoText("$DCL_SLAVEGAGRELEASETIME_DESC")
	elseif (option == ringgagweightOID)
		SetInfoText("$DCL_RINGGAGWEIGHT_DESC")
	elseif (option == ballgagweightOID)
		SetInfoText("$DCL_BALLGAGWEIGHT_DESC")
	elseif (option == panelgagweightOID)
		SetInfoText("$DCL_PANELGAGWEIGHT_DESC")
	elseif (option == slavebootsweightOID)
		SetInfoText("$DCL_SLAVEBOOTSWEIGHT_DESC")
	elseif (option == ponybootsweightOID)
		SetInfoText("$DCL_PONYBOOTSWEIGHT_DESC")
	elseif (option == armbinderweightOID)
		SetInfoText("$DCL_ARMBINDERWEIGHT_DESC")
	elseif (option == yokeweightOID)
		SetInfoText("$DCL_YOKEWEIGHT_DESC")
	elseif (option == shacklesweightOID)
		SetInfoText("$DCL_SHACKLESWEIGHT_DESC")
	elseif (option == lockingharnessweightOID)
		SetInfoText("$DCL_LOCKINGHARNESSWEIGHT_DESC")
	elseif (option == corsetweightOID)
		SetInfoText("$DCL_CORSETWEIGHT_DESC")
	elseif (option == collarharnessweightOID)
		SetInfoText("$DCL_COLLARHARNESSWEIGHT_DESC")
	elseif (option == resetquestsOID)
		SetInfoText("$DCL_SAFEWORD_DESC")
	elseif (option == disablesafewordsOID)
		SetInfoText("$DCL_DISABLESAFEWORDS_DESC")
	elseif (option == solicitationbountyamountOID)
		SetInfoText("$DCL_SOLICITATIONBOUNTYAMOUNT_DESC")
	elseif (option == yokeremovalhelpchanceOID)
		SetInfoText("$DCL_YOKEREMOVALHELPCHANCE_DESC")
	elseif (option == yokeremovalwalkawayweightOID)
		SetInfoText("$DCL_YOKEREMOVALWALKAWAYWEIGHT_DESC")
	elseif (option == yokeremovalrapeweightOID)
		SetInfoText("$DCL_YOKEREMOVALRAPEWEIGHT_DESC")
	elseif (option == yokeremovaltakekeyweightOID)
		SetInfoText("$DCL_YOKEREMOVALTAKEKEYWEIGHT_DESC")
	elseif (option == yokeremovaladditemweightOID)
		SetInfoText("$DCL_YOKEREMOVALADDITEMWEIGHT_DESC")	
	elseif (option == solicitationaddpunishingitemweightOID)
		SetInfoText("$DCL_SOLICITATIONADDPUNISHINGITEMWEIGHT_DESC")
	elseif (option == solicitationchainharnessweightOID)
		SetInfoText("$DCL_SOLICITATIONCHAINHARNESSWEIGHT_DESC")
	elseif (option == solicitationbondagesexchanceOID)
		SetInfoText("$DCL_SOLICITATIONBONDAGESEXCHANCE_DESC")
	elseif (option == solicitationbondagesexremovalchanceOID)
		SetInfoText("$DCL_SOLICITATIONBONDAGESEXREMOVALCHANCE_DESC")
	elseif (option == slutcollarminsexlessdaysneededOID)
		SetInfoText("$DCL_SLUTCOLLARMINSEXLESSDAYSNEEDED_DESC")
	elseif (option == slutcollarmaxsexlessdaysneededOID)
		SetInfoText("$DCL_SLUTCOLLARMAXSEXLESSDAYSNEEDED_DESC")
	elseif (option == solicitationslutcollarweightOID)
		SetInfoText("$DCL_SOLICITATIONSLUTCOLLARWEIGHT_DESC")
	elseif (option == solicitationinnsonlyOID)
		SetInfoText("$DCL_SOLICITATIONINNSONLY_DESC")
	elseif (option == solicitationpaychanceOID)
		SetInfoText("$DCL_SOLICITATIONPAYCHANCE_DESC")
	elseif (option == solicitationthreesomechanceOID)
		SetInfoText("$DCL_SOLICITATIONTHREESOMECHANCE_DESC")
	elseif (option == solicitationdrugchanceOID)
		SetInfoText("$DCL_SOLICITATIONDRUGCHANCE_DESC")
	elseif (option == solicitationenforceclothingOID)
		SetInfoText("$DCL_SOLICITATIONENFORCECLOTHING_DESC")
	elseif (option == hisecuseyokeOID)
		SetInfoText("$DCL_HISECUSEYOKE_DESC")
	elseif (option == solicitationinnkeepershareOID)
		SetInfoText("$DCL_SOLICITATIONINNKEEPERSHARE_DESC")
	elseif (option == solicitationinnchancebonusOID)
		SetInfoText("$DCL_SOLICITATIONINNCHANCEBONUS_DESC")
	elseif (option == enslaveweightOID)
		SetInfoText("$DCL_ENSLAVEWEIGHT_DESC")
	elseif (option == sprigganweightOID)
		SetInfoText("$DCL_SPRIGGANWEIGHT_DESC")
	elseif (option == simpleslaveryweightOID)
		SetInfoText("$DCL_SIMPLESLAVERYWEIGHT_DESC")
	elseif (option == lbquestweightOID)
		SetInfoText("$DCL_LBQUESTWEIGHT_DESC")
	elseif (option == estrusimpregnatechanceOID)
		SetInfoText("$DCL_ESTRUSIMPREGNATECHANCE_DESC")
	elseif (option == estrusplantattackOID)
		SetInfoText("$DCL_ESTRUSPLANTATTACK_DESC")
	elseif (option == estrustentacleimpregnationonlyOID)
		SetInfoText("$DCL_ESTRUSTENTACLEIMPREGNATIONONLY_DESC")
	elseif (option == estrusdrawcrowdOID)
		SetInfoText("$DCL_ESTRUSDRAWCROWD_DESC")
	elseif (option == drugweightOID)
		SetInfoText("$DCL_DRUGWEIGHT_DESC")
	elseif (option == dropkeysOID)
		SetInfoText("$DCL_DROPALLKEYS_DESC")
	elseif (option == keydropnodemodifierOID)
		SetInfoText("$DCL_KEYDROPNODEMODIFIER_DESC")
	elseif (option == sleepdungeonchanceOID)
		SetInfoText("$DCL_SLEEPDUNGEONCHANCE_DESC")
	elseif (option == sleepwildernesschanceOID)
		SetInfoText("$DCL_SLEEPWILDERNESSCHANCE_DESC")
	elseif (option == sleepcitychanceOID)
		SetInfoText("$DCL_SLEEPCITYCHANCE_DESC")
	elseif (option == sleepnakedbonusOID)
		SetInfoText("$DCL_SLEEPNAKEDBONUS_DESC")
	elseif (option == sleeparousedbonusOID)
		SetInfoText("$DCL_SLEEPAROUSEDBONUS_DESC")
	elseif (option == sleepbelterweightOID)
		SetInfoText("$DCL_SLEEPBELTERWEIGHT_DESC")	
	elseif (option == handrestraintkeychanceOID)
		SetInfoText("$DCL_LBHANDRESTRAINEDKEYCHANCE_DESC")
	elseif (option == headrestraintkeychanceOID)
		SetInfoText("$DCL_LBHEADRESTRAINEDKEYCHANCE_DESC")
	elseif (option == bodyrestraintkeychanceOID)
		SetInfoText("$DCL_LBBODYRESTRAINEDKEYCHANCE_DESC")
	elseif (option == legrestraintkeychanceOID)
		SetInfoText("$DCL_LBLEGRESTRAINEDKEYCHANCE_DESC")
	elseif (option == devicecommentsenabledOID)
		SetInfoText("$DCL_DEVICECOMMENTSENABLED_DESC")
	elseif (option == devicecommentscooldownOID)
		SetInfoText("$DCL_DEVICECOMMENTSCOOLDOWN_DESC")
	elseif (option == devicecommentsactionchanceOID)
		SetInfoText("$DCL_DEVICECOMMENTSACTIONCHANCE_DESC")
	elseif (option == devicecommentsactionadditemsweightOID)
		SetInfoText("$DCL_DEVICECOMMENTSACTIONADDITEMSWEIGHT_DESC")
	elseif (option == devicecommentsactionrapeOID)
		SetInfoText("$DCL_DEVICECOMMENTSACTIONRAPE_DESC")
	elseif (option == devicecommentsactiongivekeysOID)
		SetInfoText("$DCL_DEVICECOMMENTSACTIONGIVEKEYS_DESC")
	elseif (option == punishingitemsminlevelOID)
		SetInfoText("$DCL_PUNISHINGITEMSMINLEVEL_DESC")
	elseif (option == rubberglovesbindchanceOID)
		SetInfoText("$DCL_RUBBERGLOVESBINDCHANCE_DESC")
	elseif (option == sexDisallowBeastRacesOID)
		SetInfoText("$DCL_SEXDISALLOWBEASTRACES_DESC")
	elseif (option == sexDisallowElderOID)
		SetInfoText("$DCL_SEXDISALLOWELDER_DESC")
	elseif (option == sexDisallowGuardsOID)
		SetInfoText("$DCL_SEXDISALLOWGUARDS_DESC")
	elseif (option == sexAllowHumanoidsOID)
		SetInfoText("$DCL_SEXALLOWHUMANOIDS_DESC")
	elseif (option == sexAllowCreaturesOID)
		SetInfoText("$DCL_SEXALLOWCREATURES_DESC")
	elseif (option == sexMatchingMobsOID)
		SetInfoText("$DCL_SEXMATCHINGMOBS_DESC")
	elseif (option == sexAllowThreesomesOID)
		SetInfoText("$DCL_SEXALLOWTHREESOMES_DESC")
	elseif (option == sexEnableBoundAttacksOID)
		SetInfoText("$DCL_SEXENABLEBOUNDATTACKS_DESC")
	elseif (option == sexEnableNakedAttacksOID)
		SetInfoText("$DCL_SEXENABLENAKEDATTACKS_DESC")
	elseif (option == sexEnableNightAttacksOID)
		SetInfoText("$DCL_SEXENABLENIGHTATTACKS_DESC")
	elseif (option == sexTieUpOnRapeChanceOID)
		SetInfoText("$DCL_SEXTIEUPONRAPECHANCE_DESC")
	elseif (option == sexEnableCombatAttacksOID)
		SetInfoText("$DCL_SEXENABLECOMBATATTACKS_DESC")
	elseif (option == sexNakedAttackChancePerTickOID)
		SetInfoText("$DCL_SEXNAKEDATTACKCHANCEPERTICK_DESC")
	elseif (option == sexEnableNakedAttacksArousalMinOID)
		SetInfoText("$DCL_SEXENABLENAKEDATTACKSAROUSALMIN_DESC")
	elseif (option == sexUseConsensualScenesChanceOID)
		SetInfoText("$DCL_SEXUSECONSENSUALSCENESCHANCE_DESC")
	elseif (option == sexEnableUnarmedAttacksOID)
		SetInfoText("$DCL_SEXENABLEUNARMEDATTACKS_DESC")
	elseif (option == sexEnableArousedAttacksOID)
		SetInfoText("$DCL_SEXENABLEAROUSEDATTACKS_DESC")
	elseif (option == solicitationminNPCarousalOID)
		SetInfoText("$DCL_SOLICITATIONMINNPCAROUSAL_DESC")
	elseif (option == devicecommentsfollowersenabledOID)
		SetInfoText("$DCL_DEVICECOMMENTSFOLLOWERSENABLED_DESC")
	elseif (option == devicecommentsfolloweractionenabledOID)
		SetInfoText("$DCL_DEVICECOMMENTSFOLLOWERSACTIONENABLED_DESC")
	elseif (option == sexArousedAttacksThresholdOID)
		SetInfoText("$DCL_SEXAROUSEDATTACKSTHRESHOLD_DESC")
	elseif (option == sexGloballyEnabledOID)
		SetInfoText("$DCL_SEXGLOBALLYENABLED_DESC")
	elseif (option == sexCombatSurrenderHealthOID)
		SetInfoText("$DCL_SEXCOMBATSURRENDERHEALTH_DESC")
	elseif (option == sexOutcomeRobberyChanceOID)
		SetInfoText("$DCL_SEXOUTCOMEROBBERYCHANCE_DESC")
	elseif (option == sexAttackThresholdOID)
		SetInfoText("$DCL_SEXATTACKTHRESHOLD_DESC")
	elseif (option == luckycharmdropchanceOID)
		SetInfoText("$DCL_LUCKYCHARMDROPCHANCE_DESC")
	elseif (option == shameidleOID)
		SetInfoText("$DCL_SHAMEIDLE_DESC")
	elseif (option == progressivebondageOID)
		SetInfoText("$DCL_PROGRRESSIVEBONDAGE_DESC")
	elseif (option == shutdownmodOID)
		SetInfoText("$DCL_MODSHUTDOWN_DESC")
	elseif (option == devicecommentsvisibleonlyOID)
		SetInfoText("$DCL_DEVICECOMMENTSVISIBLEONLY_DESC")
	elseif (option == deviceactionsvisibleonlyOID)
		SetInfoText("$DCL_DEVICEACTIONSVISIBLEONLY_DESC")	
	elseif (option == sexCombatKnockAwayWeaponChanceOID)
		SetInfoText("$DCL_SEXCOMBATKNOCKWEAPONCHANCE_DESC")
	elseif (option == sexCombatSurrenderRestraintsChanceOID)
		SetInfoText("$DCL_SEXCOMBATSURRENDERADDRESTRAINTSCHANCE_DESC")
	elseif (option == sexCombatResistChanceOID)
		SetInfoText("$DCL_SEXCOMBATRESISTCHANCE_DESC")
	elseif (option == sexCombatSurrenderRestraintsChanceOID)
		SetInfoText("$DCL_SEXCOMBATNPCSURRENDERCHANCE_DESC")
	elseif (option == sexOutcomeBAQOID)
		SetInfoText("$DCL_SEXOUTCOMEBAQ_DESC")
	elseif (option == sexOutcomeSSOID)
		SetInfoText("$DCL_SEXOUTCOMESS_DESC")
	elseif (option == sexOutcomeInnOID)
		SetInfoText("$DCL_SEXOUTCOMEINN_DESC")
	elseif (option == sexOutcomeHealOID)
		SetInfoText("$DCL_SEXOUTCOMEHEAL_DESC")	
	elseif (option == lockeddoorsonlyOID)
		SetInfoText("$DCL_DOORSLOCKEDONLY_DESC")
	elseif (option == selfbondageenableOID)
		SetInfoText("$DCL_SELFBONDAGEENABLED_DESC")	
	elseif (option == selfbondagewarningOID)
		SetInfoText("$DCL_SELFBONDAGEWARNING_DESC")
	elseif (option == selfbondageminitemsOID)
		SetInfoText("$DCL_SELFBONDAGEMINITEMS_DESC")
	elseif (option == selfbondagemaxitemsOID)
		SetInfoText("$DCL_SELFBONDAGEMAXITEMS_DESC")
	elseif (option == selfbondagecooldownOID)
		SetInfoText("$DCL_SELFBONDAGECOOLDOWN_DESC")
	elseif (option == solicitationdancerapechanceOID)
		SetInfoText("$DCL_SOLICITATIONDANCERAPECHANCE_DESC")
	elseif (option == solicitationguardgambleOID)
		SetInfoText("$DCL_SOLICITATIONGUARDGAMBLE_DESC")
	elseif (option == rubberdollweightOID)
		SetInfoText("$DCL_RUBBERDOLLWEIGHT_DESC")	
	elseif (option == lowperformancemodeOID)
		SetInfoText("$DCL_LOWPERFORMANCEMODE_DESC")
	elseif (option == selfbondagegastrapweightOID)
		SetInfoText("$DCL_SELFBONDAGEGASTRAPWEIGHT_DESC")
	elseif (option == dropusefulkeysOID)
		SetInfoText("$DCL_DROPUSEFULKEYS_DESC")
	elseif (option == useHoodsOID)
		SetInfoText("$DCL_USEHOODS_DESC")
	elseif (option == sexOutcomeHardcoreOID)
		SetInfoText("$DCL_SEXOUTCOMEHARDCORE_DESC")
	elseif (option == trapcooldownOID)
		SetInfoText("$DCL_TRAPCOOLDOWN_DESC")
	elseif (option == sexOutcomeLeftinWildernessOID)
		SetInfoText("$DCL_SEXOUTCOMEWILDERNESS_DESC")
	elseif (option == sexBootsMakeHelplessOID)
		SetInfoText("$DCL_SEXBOOTSMAKEHELPLESS_DESC")
	elseif (option == selfbondagewhenrestrainedOID)
		SetInfoText("$DCL_SELFBONDAGEWHENRESTRAINED_DESC")
	elseif (option == exhibitionistsuitweightOID)
		SetInfoText("$DCL_EXHIBITIONISTSUITWEIGHT_DESC")
	elseif (option == doormodifierOID)
		SetInfoText("$DCL_DOORCHANCEMOD_DESC")
	elseif (option == deviceactionsarousalmodOID)
		SetInfoText("$DCL_DEVICEACTIONSAROUSALMOD_DESC")
	elseif (option == scanforfollowersOID)
		SetInfoText("$DCL_SCANFOLLOWERS_DESC")
	elseif (option == SurrenderKeyOID)
		SetInfoText("$DCL_SEXCOMBATSURRENDERKEY_DESC")
	elseif (option == bondageadventuretrapweightOID)
		SetInfoText("$DCL_BONDAGEADVENTURETRAPWEIGHT_DESC")
	elseif (option == pickpocketkeysOID)
		SetInfoText("$DCL_PICKPOCKETKEYCHANCE_DESC")
	elseif (option == breastresizeOID)
		SetInfoText("$DCL_BREASTRESIZE_DESC")
	elseif (option == cuminflationenableOID)
		SetInfoText("$DCL_CUMINFLATION_DESC")		
	elseif (option == breastminsizeOID)
		SetInfoText("$DCL_BREASTMINSIZE_DESC")		
	elseif (option == breastmaxsizeOID)
		SetInfoText("$DCL_BREASTMAXSIZE_DESC")		
	elseif (option == bellyminsizeOID)
		SetInfoText("$DCL_BELLYMINSIZE_DESC")		
	elseif (option == bellymaxsizeOID)
		SetInfoText("$DCL_BELLYMAXSIZE_DESC")		
	elseif (option == buttminsizeOID)
		SetInfoText("$DCL_BUTTMINSIZE_DESC")
	elseif (option == buttmaxsizeOID)
		SetInfoText("$DCL_BUTTMAXSIZE_DESC")	
	elseif (option == pienabledOID)
		SetInfoText("$DCL_PIENABLED_DESC")
	elseif (option == piarrestweightOID)
		SetInfoText("$DCL_PIARRESTWEIGHT_DESC")
	elseif (option == pibeltweightOID)
		SetInfoText("$DCL_PIBELTWEIGHT_DESC")
	elseif (option == piyokeweightOID)
		SetInfoText("$DCL_PIYOKEWEIGHT_DESC")
	elseif (option == pichainharnessweightOID)
		SetInfoText("$DCL_PICHAINHARNESSWEIGHT_DESC")
	elseif (option == pifineweightOID)
		SetInfoText("$DCL_PIFINEWEIGHT_DESC")
	elseif (option == pirapeweightOID)
		SetInfoText("$DCL_PIRAPEWEIGHT_DESC")
	elseif (option == piletgoweightOID)
		SetInfoText("$DCL_PILETGOWEIGHT_DESC")
	elseif (option == pitieupweightOID)
		SetInfoText("$DCL_PITIEUPWEIGHT_DESC")
	elseif (option == lbkeydropmodifierOID)
		SetInfoText("$DCL_LBKEYDROPMODIFIER_DESC")
	elseif (option == exportsettingsOID)
		SetInfoText("$DCL_EXPORTSETTINGS_DESC")
	elseif (option == importsettingsOID)
		SetInfoText("$DCL_IMPORTSETTINGS_DESC")
	elseif (option == NumbersPerTickOID)
		SetInfoText("$DCL_LEONESCAPENUMPERTICK_DESC")
	elseif (option == SpotChancePerTickOID)
		SetInfoText("$DCL_LEONESCAPESPOTCHANCEPERTICK_DESC")
	elseif (option == KeyStealBaseChanceOID)
		SetInfoText("$DCL_LEONESCAPEKEYSTEALCHANCE_DESC")
	elseif (option == pimisogynyOID)
		SetInfoText("$DCL_PIMISOGYNY_DESC")
	elseif (option == FastTravelControlOID)
		SetInfoText("$DCL_FASTTRAVELDISABLE_DESC")	
	elseif (option == enablehornybuffsOID)
		SetInfoText("$DCL_ENABLEHORNYBUFFS_DESC")	
	elseif (option == enabledevicebuffsOID)
		SetInfoText("$DCL_ENABLEDEVICEBUFFS_DESC")	
	elseif (option == uncontrollablelustOID)
		SetInfoText("$DCL_UNCONROLLABLELUST_DESC")	
	elseif (option == lossofcontrolOID)
		SetInfoText("$DCL_LOSSOFCONTROLENABLED_DESC")	
	elseif (option == restraintsdropchanceOID)
		SetInfoText("$DCL_RESTRAINTSDROPCHANCE_DESC")	
	elseif (option == rc_diarydropchanceOID)
		SetInfoText("$DCL_RCDIARYDROPCHANCE_DESC")	
	elseif (option == rc_itemdropchanceOID)
		SetInfoText("$DCL_RCITEMDROPCHANCE_DESC")	
	elseif (option == rc_minplayerlevelOID)
		SetInfoText("$DCL_RCMINLEVEL_DESC")	
	elseif (option == uncontrollablelustChanceOID)
		SetInfoText("$DCL_UNCONROLLABLELUSTCHANCE_DESC")	
	elseif (option == uncontrollablelustThresholdOID)
		SetInfoText("$DCL_UNCONROLLABLELUSTTHRESHOLD_DESC")	
	elseif (option == lockmenuwhentiedOID)
		SetInfoText("$DCL_LOCKMENUWHENTIED_DESC")	
	elseif (option == shakyhandsOID)
		SetInfoText("$DCL_SHAKYHANDS_DESC")	
	elseif (option == pimisogynyrapechanceOID)
		SetInfoText("$DCL_PIMISOGYNYRAPECHANCE_DESC")	
	elseif (option == pimisogynyrapeoralweightOID)
		SetInfoText("$DCL_PIMISOGYNYRAPEORALWEIGHT_DESC")	
	elseif (option == picitizensreporttoguardOID)
		SetInfoText("$DCL_PICITIZENSREPORTTOGUARD_DESC")	
	elseif (option == pibountyOID)
		SetInfoText("$DCL_PIBOUNTY_DESC")	
	elseif (option == freefollowersOID)
		SetInfoText("$DCL_FREEFOLLOWERS_DESC")	
	elseif (option == HornyBuffsThresholdOID)
		SetInfoText("$DCL_HORNYBUFFSTHRESHOLD_DESC")	
	elseif (option == numboundgirlsOID)
		SetInfoText("$DCL_NUMBOUNDGIRLS_DESC")			
	elseif (option == traprewardsOID)
		SetInfoText("$DCL_TRAPREWARDS_DESC")		
	elseif (option == anklechainsweightOID)
		SetInfoText("$DCL_ANKLECHAINSWEIGHT_DESC")		
	elseif (option == selfbondagenoitemdropsOID)
		SetInfoText("$DCL_SELFBONDAGENOITEMDROPS_DESC")	
	elseif (option == pidelayedarrestOID)
		SetInfoText("$DCL_PIDELAYEDARREST_DESC")	
	elseif (option == pienforcenuditylawOID)
		SetInfoText("$DCL_PIENFORCENUDITYLAW_DESC")		
	elseif (option == gagtalkchanceOID)
		SetInfoText("$DCL_GAGTALKCHANCE_DESC")	
	elseif (option == gagtalksuccesschanceOID)
		SetInfoText("$DCL_GAGTALKSUCCESSCHANCE_DESC")	
	elseif (option == alwayssleepnakedOID)
		SetInfoText("$DCL_ALWAYSSLEEPNAKED_DESC")	
	elseif (option == shoppingquestenabledOID)
		SetInfoText("$DCL_ENABLESHOPPINGQUEST_DESC")	
	elseif (option == sexForceLesbianOID)
		SetInfoText("$DCL_SEXFORCELESBIAN_DESC")		
	elseif (option == catsuitweightOID)
		SetInfoText("$DCL_CATSUITWEIGHT_DESC")
	elseif (option == hobbledressweightOID)
		SetInfoText("$DCL_HOBBLEDRESSWEIGHT_DESC")
	elseif (option == straitjacketweightOID)
		SetInfoText("$DCL_STRAITJACKETWEIGHT_DESC")	
	elseif (option == prison_DifficultyOID)
		SetInfoText("$DCL_PRISONDIFFICULTY_DESC")
	elseif (option == prison_EscapeDifficultyOID)
		SetInfoText("$DCL_PRISONESCAPEDIFFICULTY_DESC")
	elseif (option == prison_NoSexOID)
		SetInfoText("$DCL_PRISONSEX_DESC")
	elseif (option == prison_useVanillaOID)
		SetInfoText("$DCL_PRISONVANILLA_DESC")
	elseif (option == prison_WhippingOID)
		SetInfoText("$DCL_PRISON_WHIPPING_DESC")
	elseif (option == prison_WhippingOID)
		SetInfoText("$DCL_PRISONUSEPOCHANCE_DESC")
	elseif (option == mercyfuldungeonsOID)
		SetInfoText("$DCL_MERCYFULDUNGEONS_DESC")
	elseif (option == FurnitureTrapWeightOID)
		SetInfoText("$DCL_FURNITURETRAPWEIGHT_DESC")
	elseif (option == UltraTightSJWeightOID)
		SetInfoText("$DCL_ULTRATIGHTSJWEIGHT_DESC")
	endIf	
endEvent

Event OnOptionSliderOpen(int opt)
	If opt == basechanceOID
		SetSliderDialogStartValue(basechance)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.1)
	elseif opt == trapcooldownOID
		SetSliderDialogStartValue(trapcooldown)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.0, 24.0)
		SetSliderDialogInterval(0.5)	
	elseif opt == heavilyrestrainedthresholdOID
		SetSliderDialogStartValue(heavilyrestrainedthreshold)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, dclibs.maxDDslotsXlib)
		SetSliderDialogInterval(1)
	elseif opt == sleepdungeonchanceOID
		SetSliderDialogStartValue(sleepdungeonchance)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.1)
	elseif opt == sleepwildernesschanceOID
		SetSliderDialogStartValue(sleepwildernesschance)
		SetSliderDialogDefaultValue(30.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.1)
	elseif opt == sleepcitychanceOID
		SetSliderDialogStartValue(sleepcitychance)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.1)
	elseif opt == sleepnakedbonusOID
		SetSliderDialogStartValue(sleepnakedbonus)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(1.0, 10.0)
		SetSliderDialogInterval(0.1)
	elseif opt == sleeparousedbonusOID
		SetSliderDialogStartValue(sleeparousedbonus)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(1.0, 10.0)
		SetSliderDialogInterval(0.1)
	elseif opt == sleepbelterweightOID
		SetSliderDialogStartValue(sleepbelterweight)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.1)
	elseif opt == dungeonchanceOID
		SetSliderDialogStartValue(dungeonchance)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.1)
	elseif opt == wildernesschanceOID
		SetSliderDialogStartValue(wildernesschance)
		SetSliderDialogDefaultValue(7.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.1)
	elseif opt == citychanceOID
		SetSliderDialogStartValue(citychance)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.1)
	elseif opt == deadbodymodifierOID
		SetSliderDialogStartValue(deadbodymodifier)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.1, 10.0)
		SetSliderDialogInterval(0.1)
	elseif opt == minArousalOID
		SetSliderDialogStartValue(minArousal)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif opt == maxArousalOID
		SetSliderDialogStartValue(maxArousal)
		SetSliderDialogDefaultValue(90)
		SetSliderDialogRange(0, 101)
		SetSliderDialogInterval(1)
	elseIf opt == minnumEquippedItemsOID
		SetSliderDialogStartValue(minnumEquippedItems)
		SetSliderDialogDefaultValue(2)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(1)
	elseIf opt == numEquippedItemsOID
		SetSliderDialogStartValue(numEquippedItems)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(1, dclibs.maxDDslotsXlib)
		SetSliderDialogInterval(1)
	elseIf opt == arousalmodifierOID
		SetSliderDialogStartValue(arousalmodifier)
		SetSliderDialogDefaultValue(0.5)
		SetSliderDialogRange(0.1, 1)
		SetSliderDialogInterval(0.1)
	elseIf opt == commoncontainerweightOID
		SetSliderDialogStartValue(commoncontainerweight)
		SetSliderDialogDefaultValue(0.8)
		SetSliderDialogRange(0, 1)
		SetSliderDialogInterval(0.1)
	elseIf opt == ornatecontainerweightOID
		SetSliderDialogStartValue(ornatecontainerweight)
		SetSliderDialogDefaultValue(1.5)
		SetSliderDialogRange(1, 5)
		SetSliderDialogInterval(0.1)
	elseIf opt == arousalweightOID
		SetSliderDialogStartValue(arousalweight)
		SetSliderDialogDefaultValue(0.5)
		SetSliderDialogRange(0, 1)
		SetSliderDialogInterval(0.1)
	elseIf opt == losekeychanceOID
		SetSliderDialogStartValue(losekeychance)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == sharpitemchanceOID
		SetSliderDialogStartValue(sharpitemchance)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == keydropchanceOID
		SetSliderDialogStartValue(keydropchance)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == rarekeydropchanceOID
		SetSliderDialogStartValue(rarekeydropchance)
		SetSliderDialogDefaultValue(2.5)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == chastitykeyweightOID
		SetSliderDialogStartValue(chastitykeyweight)
		SetSliderDialogDefaultValue(40.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == piercingkeyweightOID
		SetSliderDialogStartValue(piercingkeyweight)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == restraintskeyweightOID
		SetSliderDialogStartValue(restraintskeyweight)
		SetSliderDialogDefaultValue(55.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == AradiaLivingHarnessWeightOID
		SetSliderDialogStartValue(AradiaLivingHarnessWeight)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == AradiaRogueWeightOID
		SetSliderDialogStartValue(AradiaRogueWeight)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == TentacleParasiteWeightOID
		SetSliderDialogStartValue(TentacleParasiteWeight)
		SetSliderDialogDefaultValue(15.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == ChainHarnessWeightOID
		SetSliderDialogStartValue(ChainHarnessWeight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == AradiaLivingHarnesskeychanceOID
		SetSliderDialogStartValue(AradiaLivingHarnesskeychance)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == trapchancemodifierOID
		SetSliderDialogStartValue(trapchancemodifier)
		SetSliderDialogDefaultValue(1.3)
		SetSliderDialogRange(0.1, 10)
		SetSliderDialogInterval(0.1)
	elseIf opt == doormodifierOID
		SetSliderDialogStartValue(doormodifier)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.1, 10)
		SetSliderDialogInterval(0.1)
	elseIf opt == plantchancemodifierOID
		SetSliderDialogStartValue(plantchancemodifier)
		SetSliderDialogDefaultValue(0.5)
		SetSliderDialogRange(0.1, 2.0)
		SetSliderDialogInterval(0.1)	
	elseIf opt == cursedcollarsurfaceweightOID
		SetSliderDialogStartValue(cursedcollarsurfaceweight)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == cursedcollarhideoutweightOID
		SetSliderDialogStartValue(cursedcollarhideoutweight)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == cursedcollardungeonweightOID
		SetSliderDialogStartValue(cursedcollardungeonweight)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == estrusweightOID
		SetSliderDialogStartValue(estrusweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == flashbangchestweightOID
		SetSliderDialogStartValue(flashbangchestweight)
		SetSliderDialogDefaultValue(75)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == cursedcollarquestchanceOID
		SetSliderDialogStartValue(cursedcollarquestchance)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == hisecweightOID
		SetSliderDialogStartValue(hisecweight)
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == slavecollarweightOID
		SetSliderDialogStartValue(slavecollarweight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == stripteasecollarweightOID
		SetSliderDialogStartValue(stripteasecollarweight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == hisecremovalgoldperlevelOID
		SetSliderDialogStartValue(hisecremovalgoldperlevel)
		SetSliderDialogDefaultValue(200)
		SetSliderDialogRange(50, 2000)
		SetSliderDialogInterval(50)
	elseIf opt == sexAttackCooldownOID
		SetSliderDialogStartValue(sexAttackCooldown)
		SetSliderDialogDefaultValue(6)
		SetSliderDialogRange(1, 120)
		SetSliderDialogInterval(1)	
	elseIf opt == slavecollarminsexactsOID
		SetSliderDialogStartValue(slavecollarminsexacts)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 1000)
		SetSliderDialogInterval(1)
	elseIf opt == slavecollarmaxsexactsOID
		SetSliderDialogStartValue(slavecollarmaxsexacts)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0, 1000)
		SetSliderDialogInterval(1)
	elseIf opt == slavecollarmindayswornOID
		SetSliderDialogStartValue(slavecollarmindaysworn)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0, 1095)
		SetSliderDialogInterval(1)
	elseIf opt == slavecollarmaxdayswornOID
		SetSliderDialogStartValue(slavecollarmaxdaysworn)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0, 1095)
		SetSliderDialogInterval(1)
	elseIf opt == slavecollarbeltweightOID
		SetSliderDialogStartValue(slavecollarbeltweight)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == slavecollarcrimeweightOID
		SetSliderDialogStartValue(slavecollarcrimeweight)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == slavecollarsolicitationsuccesschanceOID
		SetSliderDialogStartValue(slavecollarsolicitationsuccesschance)
		SetSliderDialogDefaultValue(30.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == slavecollarsolicitationcriticalfailurechanceOID
		SetSliderDialogStartValue(slavecollarsolicitationcriticalfailurechance)
		SetSliderDialogDefaultValue(20.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationmintipOID
		SetSliderDialogStartValue(solicitationmintip)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 250)
		SetSliderDialogInterval(5)
	elseIf opt == solicitationmaxtipOID
		SetSliderDialogStartValue(solicitationmaxtip)
		SetSliderDialogDefaultValue(30.0)
		SetSliderDialogRange(0, 250)
		SetSliderDialogInterval(5)
	elseIf opt == ringgagweightOID
		SetSliderDialogStartValue(ringgagweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == ballgagweightOID
		SetSliderDialogStartValue(ballgagweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == panelgagweightOID
		SetSliderDialogStartValue(panelgagweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == ponybootsweightOID
		SetSliderDialogStartValue(ponybootsweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == rubbersuitweightOID
		SetSliderDialogStartValue(rubbersuitweight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == slavebootsweightOID
		SetSliderDialogStartValue(slavebootsweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == collarharnessweightOID
		SetSliderDialogStartValue(collarharnessweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == lockingharnessweightOID
		SetSliderDialogStartValue(lockingharnessweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == corsetweightOID
		SetSliderDialogStartValue(corsetweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == armbinderweightOID
		SetSliderDialogStartValue(armbinderweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == shacklesweightOID
		SetSliderDialogStartValue(shacklesweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == sexMinrapistsOID
		SetSliderDialogStartValue(sexMinrapists)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 50)
		SetSliderDialogInterval(1)
	elseIf opt == sexMaxrapistsOID
		SetSliderDialogStartValue(sexMaxrapists)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 25)
		SetSliderDialogInterval(1)
	elseIf opt == slavegagweightOID
		SetSliderDialogStartValue(slavegagweight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == slavegagreleasetimeOID
		SetSliderDialogStartValue(slavegagreleasetime)
		SetSliderDialogDefaultValue(12)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == shockbootsweightOID
		SetSliderDialogStartValue(shockbootsweight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)		
	elseIf opt == slavebeltweightOID
		SetSliderDialogStartValue(slavebeltweight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == enslaveweightOID
		SetSliderDialogStartValue(enslaveweight)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == standardweightOID
		SetSliderDialogStartValue(standardweight)
		SetSliderDialogDefaultValue(150)
		SetSliderDialogRange(0.0, 500.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == slutcollarweightOID
		SetSliderDialogStartValue(slutcollarweight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == whorecollarweightOID
		SetSliderDialogStartValue(whorecollarweight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == slaveitemsweightOID
		SetSliderDialogStartValue(slaveitemsweight)
		SetSliderDialogDefaultValue(2.5)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == dashaitemsweightOID
		SetSliderDialogStartValue(dashaitemsweight)
		SetSliderDialogDefaultValue(2.5)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == solicitationbountyamountOID
		SetSliderDialogStartValue(solicitationbountyamount)
		SetSliderDialogDefaultValue(1000)
		SetSliderDialogRange(50, 10000)
		SetSliderDialogInterval(50)
	elseIf opt == yokeweightOID
		SetSliderDialogStartValue(yokeweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == yokeremovalhelpchanceOID
		SetSliderDialogStartValue(yokeremovalhelpchance)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == yokeremovalwalkawayweightOID
		SetSliderDialogStartValue(yokeremovalwalkawayweight)
		SetSliderDialogDefaultValue(80)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == yokeremovalrapeweightOID
		SetSliderDialogStartValue(yokeremovalrapeweight)
		SetSliderDialogDefaultValue(30)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == yokeremovaltakekeyweightOID
		SetSliderDialogStartValue(yokeremovaltakekeyweight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == yokeremovaladditemweightOID
		SetSliderDialogStartValue(yokeremovaladditemweight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)	
	elseIf opt == solicitationadditemsweightOID
		SetSliderDialogStartValue(solicitationadditemsweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationaddpunishingitemweightOID
		SetSliderDialogStartValue(solicitationaddpunishingitemweight)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationchainharnessweightOID
		SetSliderDialogStartValue(solicitationchainharnessweight)
		SetSliderDialogDefaultValue(33)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationbondagesexchanceOID
		SetSliderDialogStartValue(solicitationbondagesexchance)
		SetSliderDialogDefaultValue(33)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationbondagesexremovalchanceOID
		SetSliderDialogStartValue(solicitationbondagesexremovalchance)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == slutcollarminsexlessdaysneededOID
		SetSliderDialogStartValue(slutcollarminsexlessdaysneeded)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(1, 1095)
		SetSliderDialogInterval(1)
	elseIf opt == slutcollarmaxsexlessdaysneededOID
		SetSliderDialogStartValue(slutcollarmaxsexlessdaysneeded)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(1, 1095)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationslutcollarweightOID
		SetSliderDialogStartValue(solicitationslutcollarweight)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationpaychanceOID
		SetSliderDialogStartValue(solicitationpaychance)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationthreesomechanceOID
		SetSliderDialogStartValue(solicitationthreesomechance)
		SetSliderDialogDefaultValue(33)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationdrugchanceOID
		SetSliderDialogStartValue(solicitationdrugchance)
		SetSliderDialogDefaultValue(33)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationinnchancebonusOID
		SetSliderDialogStartValue(solicitationinnchancebonus)
		SetSliderDialogDefaultValue(40)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationinnkeepershareOID
		SetSliderDialogStartValue(solicitationinnkeepershare)
		SetSliderDialogDefaultValue(33)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == estrusimpregnatechanceOID
		SetSliderDialogStartValue(estrusimpregnatechance)
		SetSliderDialogDefaultValue(75.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == estrusplantattackOID
		SetSliderDialogStartValue(estrusplantattack)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == drugweightOID
		SetSliderDialogStartValue(drugweight)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sprigganweightOID
		SetSliderDialogStartValue(sprigganweight)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == simpleslaveryweightOID
		SetSliderDialogStartValue(simpleslaveryweight)
		SetSliderDialogDefaultValue(20.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == keydropnodemodifierOID
		SetSliderDialogStartValue(keydropnodemodifier)
		SetSliderDialogDefaultValue(0.5)
		SetSliderDialogRange(0.0, 1.0)
		SetSliderDialogInterval(0.1)
	elseIf opt == handrestraintkeychanceOID
		SetSliderDialogStartValue(handrestraintkeychance)
		SetSliderDialogDefaultValue(15.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == headrestraintkeychanceOID
		SetSliderDialogStartValue(headrestraintkeychance)
		SetSliderDialogDefaultValue(9.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == bodyrestraintkeychanceOID
		SetSliderDialogStartValue(bodyrestraintkeychance)
		SetSliderDialogDefaultValue(6.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == legrestraintkeychanceOID
		SetSliderDialogStartValue(legrestraintkeychance)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(0.5)
	elseIf opt == lbquestweightOID
		SetSliderDialogStartValue(lbquestweight)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == lbkeydropmodifierOID
		SetSliderDialogStartValue(lbkeydropmodifier)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0.5, 25.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == devicecommentscooldownOID
		SetSliderDialogStartValue(devicecommentscooldown)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.5, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == devicecommentsactionchanceOID
		SetSliderDialogStartValue(devicecommentsactionchance)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == devicecommentsactionadditemsweightOID
		SetSliderDialogStartValue(devicecommentsactionadditemsweight)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == devicecommentsactionrapeOID
		SetSliderDialogStartValue(devicecommentsactionrape)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == devicecommentsactiongivekeysOID
		SetSliderDialogStartValue(devicecommentsactiongivekeys)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == punishingitemsminlevelOID
		SetSliderDialogStartValue(punishingitemsminlevel)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 100)
		SetSliderDialogInterval(1)
	elseIf opt == rubberglovesbindchanceOID
		SetSliderDialogStartValue(rubberglovesbindchance)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == sexTieUpOnRapeChanceOID
		SetSliderDialogStartValue(sexTieUpOnRapeChance)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == sexNakedAttackChancePerTickOID
		SetSliderDialogStartValue(sexNakedAttackChancePerTick)
		SetSliderDialogDefaultValue(100.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1)
	elseIf opt == sexEnableNakedAttacksArousalMinOID
		SetSliderDialogStartValue(sexEnableNakedAttacksArousalMin)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == sexUseConsensualScenesChanceOID
		SetSliderDialogStartValue(sexUseConsensualScenesChance)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationminNPCarousalOID
		SetSliderDialogStartValue(solicitationminNPCarousal)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == sexArousedAttacksThresholdOID
		SetSliderDialogStartValue(sexArousedAttacksThreshold)
		SetSliderDialogDefaultValue(75)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == sexCombatSurrenderHealthOID
		SetSliderDialogStartValue(sexCombatSurrenderHealth)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(1, 99)
		SetSliderDialogInterval(1)
	elseIf opt == sexAttackThresholdOID
		SetSliderDialogStartValue(sexAttackThreshold)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 5)
		SetSliderDialogInterval(1)
	elseIf opt == sexOutcomeRobberyChanceOID
		SetSliderDialogStartValue(sexOutcomeRobberyChance)
		SetSliderDialogDefaultValue(100.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == luckycharmdropchanceOID
		SetSliderDialogStartValue(luckycharmdropchance)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == sexCombatKnockAwayWeaponChanceOID
		SetSliderDialogStartValue(sexCombatKnockAwayWeaponChance)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sexCombatSurrenderRestraintsChanceOID
		SetSliderDialogStartValue(sexCombatSurrenderRestraintsChance)
		SetSliderDialogDefaultValue(75.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sexCombatResistChanceOID
		SetSliderDialogStartValue(sexCombatResistChance)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sexCombatNPCSurrenderChanceOID
		SetSliderDialogStartValue(sexCombatNPCSurrenderChance)
		SetSliderDialogDefaultValue(33.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sexOutcomeBAQOID
		SetSliderDialogStartValue(sexOutcomeBAQ)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sexOutcomeSSOID
		SetSliderDialogStartValue(sexOutcomeSS)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sexOutcomeLeftinWildernessOID
		SetSliderDialogStartValue(sexOutcomeLeftinWilderness)
		SetSliderDialogDefaultValue(30.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sexOutcomeInnOID
		SetSliderDialogStartValue(sexOutcomeInn)
		SetSliderDialogDefaultValue(40.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == sexOutcomeHealOID
		SetSliderDialogStartValue(sexOutcomeHeal)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == selfbondageminitemsOID
		SetSliderDialogStartValue(selfbondageminitems)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 15)
		SetSliderDialogInterval(1)
	elseIf opt == selfbondagemaxitemsOID
		SetSliderDialogStartValue(selfbondagemaxitems)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 15)
		SetSliderDialogInterval(1)
	elseIf opt == selfbondagecooldownOID
		SetSliderDialogStartValue(selfbondagecooldown)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(1, 720)
		SetSliderDialogInterval(1)
	elseIf opt == solicitationdancerapechanceOID
		SetSliderDialogStartValue(solicitationdancerapechance)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseIf opt == rubberdollweightOID
		SetSliderDialogStartValue(rubberdollweight)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == selfbondagegastrapweightOID
		SetSliderDialogStartValue(selfbondagegastrapweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == exhibitionistsuitweightOID
		SetSliderDialogStartValue(exhibitionistsuitweight)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == bondageadventuretrapweightOID
		SetSliderDialogStartValue(bondageadventuretrapweight)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == pickpocketkeysOID
		SetSliderDialogStartValue(pickpocketkeys)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == breastminsizeOID
		SetSliderDialogStartValue(breastminsize)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 2.0)
		SetSliderDialogInterval(0.1)
	elseIf opt == breastmaxsizeOID
		SetSliderDialogStartValue(breastmaxsize)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0.1, 2.0)
		SetSliderDialogInterval(0.1)
	elseIf opt == bellyminsizeOID
		SetSliderDialogStartValue(bellyminsize)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 1.0)
		SetSliderDialogInterval(0.1)	
	elseIf opt == bellymaxsizeOID
		SetSliderDialogStartValue(bellymaxsize)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.1, 2.0)
		SetSliderDialogInterval(0.1)	
	elseIf opt == buttminsizeOID
		SetSliderDialogStartValue(buttminsize)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 2.0)
		SetSliderDialogInterval(0.1)
	elseIf opt == buttmaxsizeOID
		SetSliderDialogStartValue(buttmaxsize)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.1, 2.0)
		SetSliderDialogInterval(0.1)	
	elseIf opt == piarrestweightOID
		SetSliderDialogStartValue(piarrestweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == pibeltweightOID
		SetSliderDialogStartValue(pibeltweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == piyokeweightOID
		SetSliderDialogStartValue(piyokeweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == pichainharnessweightOID
		SetSliderDialogStartValue(pichainharnessweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == pifineweightOID
		SetSliderDialogStartValue(pifineweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == pirapeweightOID
		SetSliderDialogStartValue(pirapeweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == piletgoweightOID
		SetSliderDialogStartValue(piletgoweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == pitieupweightOID
		SetSliderDialogStartValue(pitieupweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == NumbersPerTickOID
		SetSliderDialogStartValue(NumbersPerTick)
		SetSliderDialogDefaultValue(250)
		SetSliderDialogRange(10, 2500)
		SetSliderDialogInterval(10)
	elseIf opt == SpotChancePerTickOID
		SetSliderDialogStartValue(SpotChancePerTick)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)
	elseIf opt == KeyStealBaseChanceOID
		SetSliderDialogStartValue(KeyStealBaseChance)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == restraintsdropchanceOID
		SetSliderDialogStartValue(restraintsdropchance)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == rc_diarydropchanceOID
		SetSliderDialogStartValue(rc_diarydropchance)
		SetSliderDialogDefaultValue(5.0)
		SetSliderDialogRange(0.5, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == rc_itemdropchanceOID
		SetSliderDialogStartValue(rc_itemdropchance)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.5, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == rc_minplayerlevelOID
		SetSliderDialogStartValue(rc_minplayerlevel)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(1, 50)
		SetSliderDialogInterval(1)	
	elseIf opt == uncontrollablelustChanceOID
		SetSliderDialogStartValue(uncontrollablelustChance)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == uncontrollablelustThresholdOID
		SetSliderDialogStartValue(uncontrollablelustThreshold)
		SetSliderDialogDefaultValue(75)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)	
	elseIf opt == shakyhandsOID
		SetSliderDialogStartValue(shakyhands)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == pimisogynyrapechanceOID
		SetSliderDialogStartValue(pimisogynyrapechance)
		SetSliderDialogDefaultValue(20.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == pimisogynyrapeoralweightOID
		SetSliderDialogStartValue(pimisogynyrapeoralweight)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == picitizensreporttoguardOID
		SetSliderDialogStartValue(picitizensreporttoguard)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == pibountyOID
		SetSliderDialogStartValue(pibounty)
		SetSliderDialogDefaultValue(1000)
		SetSliderDialogRange(100, 10000)
		SetSliderDialogInterval(10)	
	elseIf opt == HornyBuffsThresholdOID
		SetSliderDialogStartValue(HornyBuffsThreshold)
		SetSliderDialogDefaultValue(65)
		SetSliderDialogRange(50, 100)
		SetSliderDialogInterval(1)	
	elseIf opt == numboundgirlsOID
		SetSliderDialogStartValue(numboundgirls)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 50)
		SetSliderDialogInterval(1)	
	elseIf opt == traprewardsOID
		SetSliderDialogStartValue(traprewards)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)			
	elseIf opt == anklechainsweightOID
		SetSliderDialogStartValue(anklechainsweight)
		SetSliderDialogDefaultValue(25.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)		
	elseIf opt == gagtalkchanceOID
		SetSliderDialogStartValue(gagtalkchance)
		SetSliderDialogDefaultValue(75.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)	
	elseIf opt == gagtalksuccesschanceOID
		SetSliderDialogStartValue(gagtalksuccesschance)
		SetSliderDialogDefaultValue(50.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)	
	elseIf opt == catsuitweightOID
		SetSliderDialogStartValue(catsuitweight)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)	
	elseIf opt == hobbledressweightOID
		SetSliderDialogStartValue(hobbledressweight)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1)	
	elseIf opt == straitjacketweightOID
		SetSliderDialogStartValue(straitjacketweight)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)	
	elseIf opt == prison_usePOChanceOID
		SetSliderDialogStartValue(prison_usePOChance)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)	
	elseIf opt == FurnitureTrapWeightOID
		SetSliderDialogStartValue(FurnitureTrapWeight)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	elseIf opt == UltraTightSJWeightOID
		SetSliderDialogStartValue(UltraTightSJWeight)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(0.5)	
	EndIf		
EndEvent

Event OnOptionSliderAccept(int opt, float val)
	If opt == basechanceOID
		basechance = val as float
		SetSliderOptionValue(opt, basechance, "{1}%")
	elseIf opt == trapcooldownOID
		trapcooldown = val as float
		SetSliderOptionValue(opt, trapcooldown, "$DCL_HOURS1")
	elseif opt == sleepdungeonchanceOID
		sleepdungeonchance = val as float
		SetSliderOptionValue(opt, sleepdungeonchance, "{1}%")
	elseif opt == sleepwildernesschanceOID
		sleepwildernesschance = val as float
		SetSliderOptionValue(opt, sleepwildernesschance, "{1}%")
	elseif opt == sleepcitychanceOID
		sleepcitychance = val as float
		SetSliderOptionValue(opt, sleepcitychance, "{1}%")
	elseif opt == sleepnakedbonusOID
		sleepnakedbonus = val as float
		SetSliderOptionValue(opt, sleepnakedbonus, "{1}")
	elseif opt == sleeparousedbonusOID
		sleeparousedbonus = val as float
		SetSliderOptionValue(opt, sleeparousedbonus, "{1}")
	elseif opt == sleepbelterweightOID
		sleepbelterweight = val as float
		SetSliderOptionValue(opt, sleepbelterweight, "{1}")
	elseif opt == deadbodymodifierOID
		deadbodymodifier = val as float
		SetSliderOptionValue(opt, deadbodymodifier, "{1}")
	elseif opt == dungeonchanceOID
		dungeonchance = val as float
		SetSliderOptionValue(opt, dungeonchance, "{1}%")
	elseif opt == wildernesschanceOID
		wildernesschance = val as float
		SetSliderOptionValue(opt, wildernesschance, "{1}%")
	elseif opt == citychanceOID
		citychance = val as float
		SetSliderOptionValue(opt, citychance, "{1}%")
	elseIf opt == heavilyrestrainedthresholdOID
		heavilyrestrainedthreshold = val as int
		SetSliderOptionValue(opt, heavilyrestrainedthreshold, "{0}")
	elseif opt == minArousalOID
		minArousal = val as int
		SetSliderOptionValue(opt, minArousal, "{0}")
	elseif opt == maxArousalOID
		maxArousal = val as int
		SetSliderOptionValue(opt, maxArousal, "{0}")
	elseIf opt == minnumEquippedItemsOID
		minnumEquippedItems = val as int
		SetSliderOptionValue(opt, minnumEquippedItems, "{0}")
	elseIf opt == numEquippedItemsOID
		numEquippedItems = val as int
		SetSliderOptionValue(opt, numEquippedItems, "{0}")
	elseIf opt == arousalmodifierOID
		arousalmodifier = val as float
		SetSliderOptionValue(opt, arousalmodifier, "{1}")
	elseIf opt == commoncontainerweightOID
		commoncontainerweight = val as float
		SetSliderOptionValue(opt, commoncontainerweight, "{1}")
	elseIf opt == ornatecontainerweightOID
		ornatecontainerweight = val as float
		SetSliderOptionValue(opt, ornatecontainerweight, "{1}")
	elseIf opt == arousalweightOID
		arousalweight = val as float
		SetSliderOptionValue(opt, arousalweight, "{1}")
	elseIf opt == doormodifierOID
		doormodifier = val as float
		SetSliderOptionValue(opt, doormodifier, "{1}")
	elseIf opt == losekeychanceOID
		losekeychance = val as int
		SetSliderOptionValue(opt, losekeychance, "{0}%")
	elseIf opt == sharpitemchanceOID
		sharpitemchance = val as int
		SetSliderOptionValue(opt, sharpitemchance, "{0}%")
	elseIf opt == keydropchanceOID
		keydropchance = val as float
		SetSliderOptionValue(opt, keydropchance, "{1}%")
	elseIf opt == rarekeydropchanceOID
		rarekeydropchance = val as float
		SetSliderOptionValue(opt, rarekeydropchance, "{1}%")
	elseIf opt == chastitykeyweightOID
		chastitykeyweight = val as float
		SetSliderOptionValue(opt, chastitykeyweight, "{1}")
	elseIf opt == restraintskeyweightOID
		restraintskeyweight = val as float
		SetSliderOptionValue(opt, restraintskeyweight, "{1}")
	elseIf opt == piercingkeyweightOID
		piercingkeyweight = val as float
		SetSliderOptionValue(opt, piercingkeyweight, "{1}")
	elseIf opt == AradiaLivingHarnessWeightOID
		AradiaLivingHarnessWeight = val as float
		SetSliderOptionValue(opt, AradiaLivingHarnessWeight, "{1}")
	elseIf opt == AradiaRogueWeightOID
		AradiaRogueWeight = val as float
		SetSliderOptionValue(opt, AradiaRogueWeight, "{1}")
	elseIf opt == TentacleParasiteWeightOID
		TentacleParasiteWeight = val as float
		SetSliderOptionValue(opt, TentacleParasiteWeight, "{1}")
	elseIf opt == ChainHarnessWeightOID
		ChainHarnessWeight = val as float
		SetSliderOptionValue(opt, ChainHarnessWeight, "{1}")
	elseIf opt == AradiaLivingHarnesskeychanceOID
		AradiaLivingHarnesskeychance = val as float
		SetSliderOptionValue(opt, AradiaLivingHarnesskeychance, "{1}%")
	elseIf opt == trapchancemodifierOID
		trapchancemodifier = val as float
		SetSliderOptionValue(opt, trapchancemodifier, "{1}")
	elseIf opt == plantchancemodifierOID
		plantchancemodifier = val as float
		SetSliderOptionValue(opt, plantchancemodifier, "{1}")	
	elseIf opt == cursedcollarsurfaceweightOID
		cursedcollarsurfaceweight = val as int
		SetSliderOptionValue(opt, cursedcollarsurfaceweight, "{0}")
	elseIf opt == cursedcollarhideoutweightOID
		cursedcollarhideoutweight = val as int
		SetSliderOptionValue(opt, cursedcollarhideoutweight, "{0}")
	elseIf opt == cursedcollardungeonweightOID
		cursedcollardungeonweight = val as int
		SetSliderOptionValue(opt, cursedcollardungeonweight, "{0}")
	elseIf opt == cursedcollarquestchanceOID
		cursedcollarquestchance = val as float
		SetSliderOptionValue(opt, cursedcollarquestchance, "{1}")
	elseIf opt == rubberdollweightOID
		rubberdollweight = val as float
		SetSliderOptionValue(opt, rubberdollweight, "{1}")
	elseIf opt == estrusweightOID
		estrusweight = val as float
		SetSliderOptionValue(opt, estrusweight, "{1}")
	elseIf opt == flashbangchestweightOID
		flashbangchestweight = val as float
		SetSliderOptionValue(opt, flashbangchestweight, "{1}")
	elseIf opt == hisecweightOID
		hisecweight = val as float
		SetSliderOptionValue(opt, hisecweight, "{1}")
	elseIf opt == slavecollarweightOID
		slavecollarweight = val as float
		SetSliderOptionValue(opt, slavecollarweight, "{1}")
	elseIf opt == stripteasecollarweightOID
		stripteasecollarweight = val as float
		SetSliderOptionValue(opt, stripteasecollarweight, "{1}")
	elseIf opt == slutcollarweightOID
		slutcollarweight = val as float
		SetSliderOptionValue(opt, slutcollarweight, "{1}")
	elseIf opt == whorecollarweightOID
		whorecollarweight = val as float
		SetSliderOptionValue(opt, whorecollarweight, "{1}")
	elseIf opt == hisecremovalgoldperlevelOID
		hisecremovalgoldperlevel = val as int
		SetSliderOptionValue(opt, hisecremovalgoldperlevel, "$DCL_LEVEL")
	elseIf opt == sexAttackCooldownOID
		sexAttackCooldown = val as int
		SetSliderOptionValue(opt, sexAttackCooldown, "$DCL_HOURS0")	
	elseIf opt == lbquestweightOID
		lbquestweight = val as float
		SetSliderOptionValue(opt, lbquestweight, "{1}")
	elseIf opt == lbkeydropmodifierOID
		lbkeydropmodifier = val as float
		SetSliderOptionValue(opt, lbkeydropmodifier, "{1}")
	elseIf opt == slavecollarminsexactsOID
		if val > slavecollarmaxsexacts
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		slavecollarminsexacts = val as int
		SetSliderOptionValue(opt, slavecollarminsexacts, "{0}")
	elseIf opt == slavecollarmaxsexactsOID
		if slavecollarminsexacts > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		slavecollarmaxsexacts = val as int
		SetSliderOptionValue(opt, slavecollarmaxsexacts, "{0}")
	elseIf opt == slavecollarmindayswornOID
		if val > slavecollarmaxdaysworn 
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		slavecollarmindaysworn = val as int
		SetSliderOptionValue(opt, slavecollarmindaysworn, "{0}")
	elseIf opt == slavecollarmaxdayswornOID
		if slavecollarmindaysworn > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		slavecollarmaxdaysworn = val as int
		SetSliderOptionValue(opt, slavecollarmaxdaysworn, "{0}")
	elseIf opt == slavecollarbeltweightOID
		slavecollarbeltweight = val as int
		SetSliderOptionValue(opt, slavecollarbeltweight, "{0}")
	elseIf opt == slavecollarcrimeweightOID
		slavecollarcrimeweight = val as int
		SetSliderOptionValue(opt, slavecollarcrimeweight, "{0}")
	elseIf opt == slavecollarsolicitationsuccesschanceOID
		slavecollarsolicitationsuccesschance = val as int
		SetSliderOptionValue(opt, slavecollarsolicitationsuccesschance, "{0}%")
	elseIf opt == slavecollarsolicitationcriticalfailurechanceOID
		slavecollarsolicitationcriticalfailurechance = val as int
		SetSliderOptionValue(opt, slavecollarsolicitationcriticalfailurechance, "{0}%")
	elseIf opt == solicitationmintipOID
		if val > solicitationmaxtip
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		solicitationmintip = val as int
		SetSliderOptionValue(opt, solicitationmintip, "$DCL_GOLDPERLEVEL0")
	elseIf opt == solicitationmaxtipOID
		if solicitationmintip > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		solicitationmaxtip = val as int
		SetSliderOptionValue(opt, solicitationmaxtip, "$DCL_GOLDPERLEVEL0")
	elseIf opt == ballgagweightOID
		ballgagweight = val as int
		SetSliderOptionValue(opt, ballgagweight, "{0}")
	elseIf opt == ringgagweightOID
		ringgagweight = val as int
		SetSliderOptionValue(opt, ringgagweight, "{0}")
	elseIf opt == panelgagweightOID
		panelgagweight = val as int
		SetSliderOptionValue(opt, panelgagweight, "{0}")
	elseIf opt == slavebootsweightOID
		slavebootsweight = val as int
		SetSliderOptionValue(opt, slavebootsweight, "{0}")
	elseIf opt == ponybootsweightOID
		ponybootsweight = val as int
		SetSliderOptionValue(opt, ponybootsweight, "{0}")
	elseIf opt == collarharnessweightOID
		collarharnessweight = val as int
		SetSliderOptionValue(opt, collarharnessweight, "{0}")
	elseIf opt == lockingharnessweightOID
		lockingharnessweight = val as int
		SetSliderOptionValue(opt, lockingharnessweight, "{0}")
	elseIf opt == corsetweightOID
		corsetweight = val as int
		SetSliderOptionValue(opt, corsetweight, "{0}")
	elseIf opt == armbinderweightOID
		armbinderweight = val as int
		SetSliderOptionValue(opt, armbinderweight, "{0}")
	elseIf opt == shacklesweightOID
		shacklesweight = val as int
		SetSliderOptionValue(opt, shacklesweight, "{0}")
	elseIf opt == sexMinrapistsOID
		if val > sexMaxrapists
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		sexMinrapists = val as int
		SetSliderOptionValue(opt, sexMinrapists, "{0}")
	elseIf opt == sexMaxrapistsOID
		if sexMinrapists > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		sexMaxrapists = val as int
		SetSliderOptionValue(opt, sexMaxrapists, "{0}")
	elseIf opt == slavegagweightOID
		slavegagweight = val as float
		SetSliderOptionValue(opt, slavegagweight, "{1}")		
	elseIf opt == slavegagreleasetimeOID
		slavegagreleasetime = val as int
		SetSliderOptionValue(opt, slavegagreleasetime, "$DCL_HOURS0")
	elseIf opt == enslaveweightOID
		enslaveweight = val as float
		SetSliderOptionValue(opt, enslaveweight, "{1}")
	elseIf opt == shockbootsweightOID
		shockbootsweight = val as float
		SetSliderOptionValue(opt, shockbootsweight, "{1}")	
	elseIf opt == slavebeltweightOID
		slavebeltweight = val as float
		SetSliderOptionValue(opt, slavebeltweight, "{1}")
	elseIf opt == standardweightOID
		standardweight = val as float
		SetSliderOptionValue(opt, standardweight, "{1}")	
	elseIf opt == slaveitemsweightOID
		slaveitemsweight = val as float
		SetSliderOptionValue(opt, slaveitemsweight, "{1}")
	elseIf opt == dashaitemsweightOID
		dashaitemsweight = val as float
		SetSliderOptionValue(opt, dashaitemsweight, "{1}")
	elseIf opt == rubbersuitweightOID
		rubbersuitweight = val as float
		SetSliderOptionValue(opt, rubbersuitweight, "{1}")
	elseIf opt == solicitationbountyamountOID
		solicitationbountyamount = val as int
		SetSliderOptionValue(opt, solicitationbountyamount, "$DCL_GOLD0")
	elseIf opt == yokeweightOID
		yokeweight = val as int
		SetSliderOptionValue(opt, yokeweight, "{0}")
	elseIf opt == yokeremovalhelpchanceOID
		yokeremovalhelpchance = val as int
		SetSliderOptionValue(opt, yokeremovalhelpchance, "{0}%")
	elseIf opt == yokeremovalwalkawayweightOID
		yokeremovalwalkawayweight = val as int
		SetSliderOptionValue(opt, yokeremovalwalkawayweight, "{0}")
	elseIf opt == yokeremovalrapeweightOID
		yokeremovalrapeweight = val as int
		SetSliderOptionValue(opt, yokeremovalrapeweight, "{0}")
	elseIf opt == yokeremovaltakekeyweightOID
		yokeremovaltakekeyweight = val as int
		SetSliderOptionValue(opt, yokeremovaltakekeyweight, "{0}")
	elseIf opt == yokeremovaladditemweightOID
		yokeremovaladditemweight = val as int
		SetSliderOptionValue(opt, yokeremovaladditemweight, "{0}")	
	elseIf opt == solicitationadditemsweightOID
		solicitationadditemsweight = val as int
		SetSliderOptionValue(opt, solicitationadditemsweight, "{0}")
	elseIf opt == solicitationaddpunishingitemweightOID
		solicitationaddpunishingitemweight = val as int
		SetSliderOptionValue(opt, solicitationaddpunishingitemweight, "{0}")
	elseIf opt == solicitationchainharnessweightOID
		solicitationchainharnessweight = val as int
		SetSliderOptionValue(opt, solicitationchainharnessweight, "{0}")
	elseIf opt == solicitationbondagesexchanceOID
		solicitationbondagesexchance = val as int
		SetSliderOptionValue(opt, solicitationbondagesexchance, "{0}%")
	elseIf opt == solicitationbondagesexremovalchanceOID
		solicitationbondagesexremovalchance = val as int
		SetSliderOptionValue(opt, solicitationbondagesexremovalchance, "{0}%")
	elseIf opt == slutcollarminsexlessdaysneededOID
		if val > slutcollarmaxsexlessdaysneeded
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		slutcollarminsexlessdaysneeded = val as int
		SetSliderOptionValue(opt, slutcollarminsexlessdaysneeded, "{0}")
	elseIf opt == slutcollarmaxsexlessdaysneededOID
		if slutcollarminsexlessdaysneeded > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		slutcollarmaxsexlessdaysneeded = val as int
		SetSliderOptionValue(opt, slutcollarmaxsexlessdaysneeded, "{0}")
	elseIf opt == selfbondageminitemsOID
		if val > selfbondagemaxitems
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		selfbondageminitems = val as int
		SetSliderOptionValue(opt, selfbondageminitems, "{0}")
	elseIf opt == selfbondagemaxitemsOID
		if selfbondageminitems > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		selfbondagemaxitems = val as int
		SetSliderOptionValue(opt, selfbondagemaxitems, "{0}")
	elseIf opt == breastminsizeOID
		if val > breastmaxsize
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		breastminsize = val as float
		SetSliderOptionValue(opt, breastminsize, "{1}")
	elseIf opt == breastmaxsizeOID
		if breastminsize > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		breastmaxsize = val as float
		SetSliderOptionValue(opt, breastmaxsize, "{1}")			
	elseIf opt == bellyminsizeOID
		if val > bellymaxsize
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		bellyminsize = val as float
		SetSliderOptionValue(opt, bellyminsize, "{1}")
	elseIf opt == bellymaxsizeOID
		if bellyminsize > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		bellymaxsize = val as float
		SetSliderOptionValue(opt, bellymaxsize, "{1}")				
	elseIf opt == buttminsizeOID
		if val > buttmaxsize
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		buttminsize = val as float
		SetSliderOptionValue(opt, buttminsize, "{1}")
	elseIf opt == buttmaxsizeOID
		if buttminsize > val
			ShowMessage("$DCL_MINVALUELARGERMAXVALUE")
			return
		endif
		buttmaxsize = val as float
		SetSliderOptionValue(opt, buttmaxsize, "{1}")					
	elseIf opt == selfbondagecooldownOID
		selfbondagecooldown = val as int
		SetSliderOptionValue(opt, selfbondagecooldown, "$DCL_HOURS0")	
	elseIf opt == solicitationslutcollarweightOID
		solicitationslutcollarweight = val as int
		SetSliderOptionValue(opt, solicitationslutcollarweight, "{0}")
	elseIf opt == solicitationpaychanceOID
		solicitationpaychance = val as int
		SetSliderOptionValue(opt, solicitationpaychance, "{0}%")
	elseIf opt == solicitationthreesomechanceOID
		solicitationthreesomechance = val as int
		SetSliderOptionValue(opt, solicitationthreesomechance, "{0}%")
	elseIf opt == solicitationdrugchanceOID
		solicitationdrugchance = val as int
		SetSliderOptionValue(opt, solicitationdrugchance, "{0}%")
	elseIf opt == solicitationinnchancebonusOID
		solicitationinnchancebonus = val as int
		SetSliderOptionValue(opt, solicitationinnchancebonus, "{0}%")
	elseIf opt == solicitationinnkeepershareOID
		solicitationinnkeepershare = val as int
		SetSliderOptionValue(opt, solicitationinnkeepershare, "{0}%")
	elseIf opt == estrusimpregnatechanceOID
		estrusimpregnatechance = val as float
		SetSliderOptionValue(opt, estrusimpregnatechance, "{1}%")
	elseIf opt == estrusplantattackOID
		estrusplantattack = val as float
		SetSliderOptionValue(opt, estrusplantattack, "{1}")
	elseIf opt == drugweightOID
		drugweight = val as float
		SetSliderOptionValue(opt, drugweight, "{1}")
	elseIf opt == sprigganweightOID
		sprigganweight = val as float
		SetSliderOptionValue(opt, sprigganweight, "{1}")
	elseIf opt == simpleslaveryweightOID
		simpleslaveryweight = val as float
		SetSliderOptionValue(opt, simpleslaveryweight, "{1}")
	elseIf opt == keydropnodemodifierOID
		keydropnodemodifier = val as float
		SetSliderOptionValue(opt, keydropnodemodifier, "{1}")
	elseIf opt == handrestraintkeychanceOID
		handrestraintkeychance = val as float
		SetSliderOptionValue(opt, handrestraintkeychance, "{1}")
	elseIf opt == headrestraintkeychanceOID
		headrestraintkeychance = val as float
		SetSliderOptionValue(opt, headrestraintkeychance, "{1}")
	elseIf opt == bodyrestraintkeychanceOID
		bodyrestraintkeychance = val as float
		SetSliderOptionValue(opt, bodyrestraintkeychance, "{1}")
	elseIf opt == legrestraintkeychanceOID
		legrestraintkeychance = val as float
		SetSliderOptionValue(opt, legrestraintkeychance, "{1}")
	elseIf opt == devicecommentscooldownOID
		devicecommentscooldown = val as float
		SetSliderOptionValue(opt, devicecommentscooldown, "$DCL_HOURS1")
	elseIf opt == devicecommentsactionchanceOID
		devicecommentsactionchance = val as float
		SetSliderOptionValue(opt, devicecommentsactionchance, "{1}%")
	elseIf opt == devicecommentsactionadditemsweightOID
		devicecommentsactionadditemsweight = val as float
		SetSliderOptionValue(opt, devicecommentsactionadditemsweight, "{1}")
	elseIf opt == devicecommentsactionrapeOID
		devicecommentsactionrape = val as float
		SetSliderOptionValue(opt, devicecommentsactionrape, "{1}")
	elseIf opt == devicecommentsactiongivekeysOID
		devicecommentsactiongivekeys = val as float
		SetSliderOptionValue(opt, devicecommentsactiongivekeys, "{1}")
	elseIf opt == punishingitemsminlevelOID
		punishingitemsminlevel = val as int
		SetSliderOptionValue(opt, punishingitemsminlevel, "{0}")
	elseIf opt == rubberglovesbindchanceOID
		rubberglovesbindchance = val as int
		SetSliderOptionValue(opt, rubberglovesbindchance, "{0}")
	elseIf opt == sexTieUpOnRapeChanceOID
		sexTieUpOnRapeChance = val as float
		SetSliderOptionValue(opt, sexTieUpOnRapeChance, "{1}")	
	elseIf opt == sexNakedAttackChancePerTickOID
		sexNakedAttackChancePerTick = val as float
		SetSliderOptionValue(opt, sexNakedAttackChancePerTick, "{1}%")
	elseIf opt == sexEnableNakedAttacksArousalMinOID
		sexEnableNakedAttacksArousalMin = val as int
		SetSliderOptionValue(opt, sexEnableNakedAttacksArousalMin, "{0}")
	elseIf opt == sexUseConsensualScenesChanceOID
		sexUseConsensualScenesChance = val as int
		SetSliderOptionValue(opt, sexUseConsensualScenesChance, "{0}%")
	elseIf opt == solicitationminNPCarousalOID
		solicitationminNPCarousal = val as int
		SetSliderOptionValue(opt, solicitationminNPCarousal, "{0}")
	elseIf opt == sexArousedAttacksThresholdOID
		sexArousedAttacksThreshold = val as int
		SetSliderOptionValue(opt, sexArousedAttacksThreshold, "{0}")
	elseIf opt == sexCombatSurrenderHealthOID
		sexCombatSurrenderHealth = val as int
		SetSliderOptionValue(opt, sexCombatSurrenderHealth, "{0}")
	elseIf opt == sexAttackThresholdOID
		sexAttackThreshold = val as int
		SetSliderOptionValue(opt, sexAttackThreshold, "{0}")
	elseIf opt == luckycharmdropchanceOID
		luckycharmdropchance = val as float
		SetSliderOptionValue(opt, luckycharmdropchance, "{1}%")
	elseIf opt == sexOutcomeRobberyChanceOID
		sexOutcomeRobberyChance = val as float
		SetSliderOptionValue(opt, sexOutcomeRobberyChance, "{1}%")	
	elseIf opt == sexCombatKnockAwayWeaponChanceOID
		sexCombatKnockAwayWeaponChance = val as float
		SetSliderOptionValue(opt, sexCombatKnockAwayWeaponChance, "{1}%")
	elseIf opt == sexCombatSurrenderRestraintsChanceOID
		sexCombatSurrenderRestraintsChance = val as float
		SetSliderOptionValue(opt, sexCombatSurrenderRestraintsChance, "{1}%")
	elseIf opt == sexCombatResistChanceOID
		sexCombatResistChance = val as float
		SetSliderOptionValue(opt, sexCombatResistChance, "{1}%")
	elseIf opt == sexCombatNPCSurrenderChanceOID
		sexCombatNPCSurrenderChance = val as float
		SetSliderOptionValue(opt, sexCombatNPCSurrenderChance, "{1}%")
	elseIf opt == sexOutcomeBAQOID
		sexOutcomeBAQ = val as float
		SetSliderOptionValue(opt, sexOutcomeBAQ, "{1}")
	elseIf opt == sexOutcomeSSOID
		sexOutcomeSS = val as float
		SetSliderOptionValue(opt, sexOutcomeSS, "{1}")
	elseIf opt == sexOutcomeLeftinWildernessOID
		sexOutcomeLeftinWilderness = val as float
		SetSliderOptionValue(opt, sexOutcomeLeftinWilderness, "{1}")
	elseIf opt == sexOutcomeInnOID
		sexOutcomeInn = val as float
		SetSliderOptionValue(opt, sexOutcomeInn, "{1}")
	elseIf opt == sexOutcomeHealOID
		sexOutcomeHeal = val as float
		SetSliderOptionValue(opt, sexOutcomeHeal, "{1}")
	elseIf opt == solicitationdancerapechanceOID
		solicitationdancerapechance = val as int
		SetSliderOptionValue(opt, solicitationdancerapechance, "{0}%")	
	elseIf opt == selfbondagegastrapweightOID
		selfbondagegastrapweight = val as float
		SetSliderOptionValue(opt, selfbondagegastrapweight, "{1}")
	elseIf opt == exhibitionistsuitweightOID
		exhibitionistsuitweight = val as float
		SetSliderOptionValue(opt, exhibitionistsuitweight, "{1}")
	elseIf opt == bondageadventuretrapweightOID
		bondageadventuretrapweight = val as float
		SetSliderOptionValue(opt, bondageadventuretrapweight, "{1}")
	elseIf opt == pickpocketkeysOID
		pickpocketkeys = val as float
		Actor Player = Game.GetPlayer()
		if !Player.HasPerk(dcur_npcchatperk) && pickpocketkeys > 0.0
			Player.AddPerk(dcur_npcchatperk)
		elseif Player.HasPerk(dcur_npcchatperk) && pickpocketkeys == 0.0
			Player.RemovePerk(dcur_npcchatperk)
		endif
		SetSliderOptionValue(opt, pickpocketkeys, "{1}")
	elseIf opt == piarrestweightOID
		piarrestweight = val as float
		SetSliderOptionValue(opt, piarrestweight, "{1}")
	elseIf opt == pibeltweightOID
		pibeltweight = val as float
		SetSliderOptionValue(opt, pibeltweight, "{1}")
	elseIf opt == piyokeweightOID
		piyokeweight = val as float
		SetSliderOptionValue(opt, piyokeweight, "{1}")
	elseIf opt == pichainharnessweightOID
		pichainharnessweight = val as float
		SetSliderOptionValue(opt, pichainharnessweight, "{1}")
	elseIf opt == pifineweightOID
		pifineweight = val as float
		SetSliderOptionValue(opt, pifineweight, "{1}")
	elseIf opt == pirapeweightOID
		pirapeweight = val as float
		SetSliderOptionValue(opt, pirapeweight, "{1}")
	elseIf opt == piletgoweightOID
		piletgoweight = val as float
		SetSliderOptionValue(opt, piletgoweight, "{1}")
	elseIf opt == pitieupweightOID
		pitieupweight = val as float
		SetSliderOptionValue(opt, pitieupweight, "{1}")
	elseIf opt == NumbersPerTickOID
		NumbersPerTick = val as int
		SetSliderOptionValue(opt, NumbersPerTick, "{0}")	
	elseIf opt == SpotChancePerTickOID
		SpotChancePerTick = val as float
		SetSliderOptionValue(opt, SpotChancePerTick, "{1}%")
	elseIf opt == KeyStealBaseChanceOID
		KeyStealBaseChance = val as float
		SetSliderOptionValue(opt, KeyStealBaseChance, "{1}%")
	elseIf opt == restraintsdropchanceOID
		restraintsdropchance = val as float
		SetSliderOptionValue(opt, restraintsdropchance, "{1}%")
	elseIf opt == rc_diarydropchanceOID
		rc_diarydropchance = val as float
		SetSliderOptionValue(opt, rc_diarydropchance, "{1}%")
	elseIf opt == rc_itemdropchanceOID
		rc_itemdropchance = val as float
		SetSliderOptionValue(opt, rc_itemdropchance, "{1}%")
	elseIf opt == rc_minplayerlevelOID
		rc_minplayerlevel = val as int
		SetSliderOptionValue(opt, rc_minplayerlevel, "{0}")
	elseIf opt == uncontrollablelustChanceOID
		uncontrollablelustChance = val as float
		SetSliderOptionValue(opt, uncontrollablelustChance, "{1}%")
	elseIf opt == uncontrollablelustThresholdOID
		uncontrollablelustThreshold = val as int
		SetSliderOptionValue(opt, uncontrollablelustThreshold, "{0}")
	elseIf opt == shakyhandsOID
		shakyhands = val as float
		SetSliderOptionValue(opt, shakyhands, "{1}%")
	elseIf opt == pimisogynyrapechanceOID
		pimisogynyrapechance = val as float
		SetSliderOptionValue(opt, pimisogynyrapechance, "{1}%")
	elseIf opt == pimisogynyrapeoralweightOID
		pimisogynyrapeoralweight = val as float
		SetSliderOptionValue(opt, pimisogynyrapeoralweight, "{1}")
	elseIf opt == picitizensreporttoguardOID
		picitizensreporttoguard = val as float
		SetSliderOptionValue(opt, picitizensreporttoguard, "{1}%")
	elseIf opt == pibountyOID
		pibounty = val as int
		SetSliderOptionValue(opt, pibounty, "{0}")
	elseIf opt == HornyBuffsThresholdOID
		HornyBuffsThreshold = val as int
		SetSliderOptionValue(opt, HornyBuffsThreshold, "{0}")
	elseIf opt == numboundgirlsOID
		numboundgirls = val as int
		SetSliderOptionValue(opt, numboundgirls, "{0}")
	elseIf opt == traprewardsOID
		traprewards = val as float
		SetSliderOptionValue(opt, traprewards, "{1}%")	
	elseIf opt == anklechainsweightOID
		anklechainsweight = val as float
		SetSliderOptionValue(opt, anklechainsweight, "{0}")	
	elseIf opt == gagtalkchanceOID
		gagtalkchance = val as float
		SetSliderOptionValue(opt, gagtalkchance, "{1}")
	elseIf opt == gagtalksuccesschanceOID
		gagtalksuccesschance = val as float
		SetSliderOptionValue(opt, gagtalksuccesschance, "{1}")
	elseIf opt == catsuitweightOID
		catsuitweight = val as float
		SetSliderOptionValue(opt, catsuitweight, "{0}")
	elseIf opt == hobbledressweightOID
		hobbledressweight = val as float
		SetSliderOptionValue(opt, hobbledressweight, "{0}")
	elseIf opt == straitjacketweightOID
		straitjacketweight = val as float
		SetSliderOptionValue(opt, straitjacketweight, "{0}")
	elseIf opt == prison_usePOChanceOID
		prison_usePOChance = val as float
		SetSliderOptionValue(opt, prison_usePOChance, "{0}")
	elseIf opt == FurnitureTrapWeightOID
		FurnitureTrapWeight = val as float
		SetSliderOptionValue(opt, FurnitureTrapWeight, "{1}")
	elseIf opt == UltraTightSJWeightOID
		UltraTightSJWeight = val as float
		SetSliderOptionValue(opt, UltraTightSJWeight, "{1}")
	EndIf
EndEvent

event OnOptionMenuOpen(int opt)
	if (opt == equipthemeOID)
		SetMenuDialogStartIndex(equiptheme)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(ThemeList)
	endIf
	if (opt == equipthemefollowerOID)
		SetMenuDialogStartIndex(equipthemefollower)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(ThemeList)
	endif
	if (opt == DifficultyOID)
		SetMenuDialogStartIndex(Difficulty)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(CCDifficulty)
	endIf
	if (opt == RapistGenderOID)
		SetMenuDialogStartIndex(RapistGender)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(GenderList)
	endIf	
	if (opt == slavecollarsolicitationenabledOID)
		SetMenuDialogStartIndex(slavecollarsolicitationenabled)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(SolicitationList)
	endIf	
	if (opt == FastTravelControlOID)
		SetMenuDialogStartIndex(FastTravelControl)
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(FastTravelControlList)
	endIf
	if (opt == prison_DifficultyOID)
		SetMenuDialogStartIndex(prison_Difficulty)
		SetMenuDialogDefaultIndex(4)
		SetMenuDialogOptions(DifficultyList)
	endIf	
	if (opt == prison_EscapeDifficultyOID)
		SetMenuDialogStartIndex(prison_EscapeDifficulty)
		SetMenuDialogDefaultIndex(4)
		SetMenuDialogOptions(DifficultyList)
	endIf
endEvent

event OnOptionMenuAccept(int opt, int index)
	if (opt == equipthemeOID)
		if index == dclibs.set_aradia && !installed_Aradia			
			ShowMessage("$DCL_ARADIANAMSG")
			return
		endif
		;if (index == dclibs.set_bronze || index == dclibs.set_silver) && !installed_CD			
		;	ShowMessage("$DCL_CDSNAMSG")
		;	return
		;endif
		equiptheme = index
		SetMenuOptionValue(opt, ThemeList[equiptheme])
	endIf
	if (opt == equipthemefollowerOID)
		if index == dclibs.set_aradia && !installed_Aradia			
			ShowMessage("$DCL_ARADIANAMSG")
			return
		endif
		;if (index == dclibs.set_bronze || index == dclibs.set_silver) && !installed_CD			
		;	ShowMessage("$DCL_CDSNAMSG")
		;	return
		;endif
		equipthemefollower = index
		SetMenuOptionValue(opt, ThemeList[equipthemefollower])
	endif
	if (opt == DifficultyOID)
		Difficulty = index
		SetMenuOptionValue(opt, CCDifficulty[Difficulty])
	endIf
	if (opt == RapistGenderOID)
		RapistGender = index
		SetMenuOptionValue(opt, GenderList[RapistGender])
	endIf
	if (opt == FastTravelControlOID)
		FastTravelControl = index
		SetMenuOptionValue(opt, FastTravelControlList[FastTravelControl])
		dclibs.CheckFastTravel()
	endIf
	if (opt == prison_EscapeDifficultyOID)
		prison_EscapeDifficulty = index
		SetMenuOptionValue(opt, DifficultyList[prison_EscapeDifficulty])		
	endIf
	if (opt == prison_DifficultyOID)
		prison_Difficulty = index
		SetMenuOptionValue(opt, DifficultyList[prison_Difficulty])		
	endIf
	if (opt == slavecollarsolicitationenabledOID)
		slavecollarsolicitationenabled = index
		SetMenuOptionValue(opt, SolicitationList[slavecollarsolicitationenabled])
		if slavecollarsolicitationenabled == 0
			dcur_solicitationenabled.SetValueInt(0)
		elseif slavecollarsolicitationenabled == 1
			dcur_solicitationenabled.SetValueInt(1)
		elseif slavecollarsolicitationenabled == 2
			dcur_solicitationenabled.SetValueInt(2)
		endif
	endIf	
endEvent

Event OnOptionKeyMapChange(Int Option, Int keyCode, String conflictControl, String conflictName)
	Bool Continue = True
	If (keyCode == 1)
		keyCode = 0
		conflictControl = ""
	Endif
	If (conflictControl != "")
		String msg
		If conflictName != ""
			msg = "$DCL_KEYMAPCONFLMSG1"
		Else
			msg = "$DCL_KEYMAPCONFLMSG2"
		Endif
		Continue = ShowMessage(msg, True, "$Yes", "$No")
	Endif		
	If Continue
		If Option == SurrenderKeyOID
			SurrenderKey = keyCode			
		Endif
		SetKeymapOptionValue(Option, keyCode)
		cts.refscr.RegisterKeys()		
	Endif
EndEvent

String Function CreateRankDisplay(String Rank)
	Return "$DCL_NAME{" + Game.GetPlayer().GetActorBase().GetName() + "}_RANK" + Rank
EndFunction

String Function CreateChanceFeedback()
	Return "$DCL_CURRENTTRAPCHANCE" + " " + dclibs.getcurrenttrapchance() + "%"			
EndFunction
	
function ExportInt(string Name, int Value)
	JsonUtil.SetIntValue(File, Name, Value)
endFunction

int function ImportInt(string Name, int Value)
	return JsonUtil.GetIntValue(File, Name, Value)
endFunction

function ExportBool(string Name, bool Value)
	JsonUtil.SetIntValue(File, Name, Value as int)
endFunction

bool function ImportBool(string Name, bool Value)
	return JsonUtil.GetIntValue(File, Name, Value as int) as bool
endFunction

function ExportFloat(string Name, float Value)
	JsonUtil.SetFloatValue(File, Name, Value)
endFunction

float function ImportFloat(string Name, float Value)
	return JsonUtil.GetFloatValue(File, Name, Value)
endFunction

function ExportSettings()
	File = "../DCUR/DCURConfig.json"
	JsonUtil.SetStringValue(File, "ExportLabel", Game.GetPlayer().GetLeveledActorBase().GetName()+" - "+Utility.GetCurrentRealTime() as int)
	JsonUtil.SetStringValue(File, "Version", GetStringVer())	
	ExportFloat("trapcooldown", trapcooldown)
	ExportBool("useflashbanganimation", useflashbanganimation)
	ExportBool("flashbangnodroppingitems", flashbangnodroppingitems)
	ExportBool("modenabled", modenabled)
	ExportBool("containersenabled", containersenabled)
	ExportBool("corpsesenabled", corpsesenabled)
	ExportBool("plantsenabled", plantsenabled)
	ExportBool("minesenabled", minesenabled)
	ExportBool("doorsenabled", doorsenabled)
	ExportBool("lockeddoorsonly", lockeddoorsonly)
	ExportBool("debugenabled", debugenabled)
	ExportBool("debuglogenabled", debuglogenabled)
	ExportBool("resetquests", resetquests)
	ExportBool("alwaysequipfullset", alwaysequipfullset)
	ExportInt("heavilyrestrainedthreshold", heavilyrestrainedthreshold)
	ExportFloat("basechance", basechance)
	ExportInt("minArousal", minArousal)
	ExportInt("maxArousal", maxArousal)
	ExportInt("numEquippedItems", numEquippedItems)
	ExportInt("losekeychance", losekeychance)
	ExportBool("useCD", useCD)
	ExportBool("useSD", useSD)
	ExportBool("useSkoomaWhore", useSkoomaWhore)
	ExportBool("useMME", useMME)
	ExportBool("useAradia", useAradia)
	ExportBool("useEstrus", useEstrus)
	ExportBool("useArmbinder", useArmbinder)
	ExportBool("useBlindfold", useBlindfold)
	ExportBool("useGag", useGag)
	ExportBool("useBra", useBra)
	ExportBool("useBelt", useBelt)
	ExportBool("useBoots", useBoots)
	ExportBool("useHoods", useHoods)
	ExportBool("useVPiercing", useVPiercing)
	ExportBool("useNPiercing", useNPiercing)
	ExportInt("equiptheme", equiptheme)
	ExportInt("equipthemefollower", equipthemefollower)
	ExportBool("useSlaveHarness", useSlaveHarness)
	ExportFloat("sleepdungeonchance", sleepdungeonchance)
	ExportFloat("sleepwildernesschance", sleepwildernesschance)
	ExportFloat("sleepcitychance", sleepcitychance)
	ExportFloat("sleepnakedbonus", sleepnakedbonus)
	ExportFloat("sleeparousedbonus", sleeparousedbonus)
	ExportFloat("dungeonchance", dungeonchance)
	ExportFloat("wildernesschance", wildernesschance)
	ExportFloat("citychance", citychance)
	ExportBool("useRefinedOptions", useRefinedOptions)
	ExportFloat("arousalmodifier", arousalmodifier)
	ExportFloat("arousalweight", arousalweight)
	ExportFloat("deadbodymodifier", deadbodymodifier)
	ExportFloat("doormodifier", doormodifier)
	ExportBool("enableundress", enableundress)
	ExportBool("escape_containersenabled", escape_containersenabled)
	ExportBool("escape_corpsesenabled", escape_corpsesenabled)
	ExportInt("sharpitemchance", sharpitemchance)
	ExportFloat("keydropchance", keydropchance)
	ExportFloat("rarekeydropchance", rarekeydropchance)
	ExportFloat("keydropnodemodifier", keydropnodemodifier)
	ExportFloat("chastitykeyweight", chastitykeyweight)
	ExportFloat("restraintskeyweight", restraintskeyweight)
	ExportFloat("piercingkeyweight", piercingkeyweight)
	ExportFloat("commoncontainerweight", commoncontainerweight)
	ExportFloat("ornatecontainerweight", ornatecontainerweight)
	ExportBool("nokeyswithoutrestraints", nokeyswithoutrestraints)
	ExportInt("minnumEquippedItems", minnumEquippedItems)
	ExportBool("useitemsfrominventory", useitemsfrominventory)
	ExportBool("trapsenabled", trapsenabled)
	ExportFloat("trapchancemodifier", trapchancemodifier)
	ExportBool("enablefollowersupport", enablefollowersupport)
	ExportBool("allowarmbindersfollowers", allowarmbindersfollowers)
	ExportBool("consistenttheme", consistenttheme)
	ExportBool("disablesafewords", disablesafewords)	
	ExportFloat("plantchancemodifier", plantchancemodifier)
	ExportBool("createkeys", createkeys)
	;ExportBool("", EssentialPlayer = true
	ExportFloat("pickpocketkeys", pickpocketkeys)
	ExportInt("ringgagweight", ringgagweight)
	ExportInt("ballgagweight", ballgagweight)
	ExportInt("panelgagweight", panelgagweight)
	ExportInt("slavebootsweight", slavebootsweight)
	ExportInt("ponybootsweight", ponybootsweight)
	ExportInt("corsetweight", corsetweight)
	ExportInt("collarharnessweight", collarharnessweight)
	ExportInt("lockingharnessweight", lockingharnessweight)
	ExportInt("armbinderweight", armbinderweight)
	ExportInt("shacklesweight", shacklesweight)
	ExportInt("yokeweight", yokeweight)
	ExportFloat("estrusweight", estrusweight)
	ExportFloat("FlashBangChestWeight", FlashBangChestWeight)
	ExportFloat("cursedcollarquestchance", cursedcollarquestchance)
	ExportFloat("hisecweight", hisecweight)
	ExportFloat("slavecollarweight", slavecollarweight)
	ExportFloat("slavegagweight", slavegagweight)
	ExportFloat("AradiaLivingHarnessWeight", AradiaLivingHarnessWeight)
	ExportFloat("standardweight", standardweight)
	ExportFloat("slaveitemsweight", slaveitemsweight)
	ExportFloat("slutcollarweight", slutcollarweight)
	ExportFloat("bondageadventuretrapweight", bondageadventuretrapweight)
	ExportBool("slavecollarkeyneeded", slavecollarkeyneeded)
	ExportInt("slavecollarminsexacts", slavecollarminsexacts)
	ExportInt("slavecollarmaxsexacts", slavecollarmaxsexacts)
	ExportInt("slavecollarmindaysworn", slavecollarmindaysworn)
	ExportInt("slavecollarmaxdaysworn", slavecollarmaxdaysworn)
	ExportInt("slutcollarminsexlessdaysneeded", slutcollarminsexlessdaysneeded)
	ExportInt("slutcollarmaxsexlessdaysneeded", slutcollarmaxsexlessdaysneeded)
	ExportInt("slavegagreleasetime", slavegagreleasetime)
	ExportFloat("shockbootsweight", shockbootsweight)
	ExportFloat("slavebeltweight", slavebeltweight)
	ExportFloat("rubberdollweight", rubberdollweight)
	ExportFloat("exhibitionistsuitweight", exhibitionistsuitweight)
	ExportInt("slavecollarbeltweight", slavecollarbeltweight)
	ExportInt("slavecollarcrimeweight", slavecollarcrimeweight)
	ExportInt("slavecollarsolicitationcriticalfailurechance", slavecollarsolicitationcriticalfailurechance)
	ExportInt("slavecollarsolicitationsuccesschance", slavecollarsolicitationsuccesschance)
	ExportInt("solicitationmintip", solicitationmintip)
	ExportInt("solicitationmaxtip", solicitationmaxtip)
	ExportInt("slavecollarsolicitationenabled", slavecollarsolicitationenabled)
	ExportInt("solicitationbountyamount", solicitationbountyamount)
	ExportInt("solicitationadditemsweight", solicitationadditemsweight)
	ExportInt("solicitationaddpunishingitemweight", solicitationaddpunishingitemweight)
	ExportInt("solicitationbondagesexchance", solicitationbondagesexchance)
	ExportInt("solicitationbondagesexremovalchance", solicitationbondagesexremovalchance)
	ExportInt("solicitationslutcollarweight", solicitationslutcollarweight)
	ExportBool("solicitationinnsonly", solicitationinnsonly)
	ExportInt("solicitationpaychance", solicitationpaychance)
	ExportInt("solicitationthreesomechance", solicitationthreesomechance)
	ExportInt("solicitationdrugchance", solicitationdrugchance)
	ExportBool("solicitationenforceclothing", solicitationenforceclothing)
	ExportInt("solicitationinnkeepershare", solicitationinnkeepershare)
	ExportInt("solicitationinnchancebonus", solicitationinnchancebonus)
	ExportInt("solicitationminNPCarousal", solicitationminNPCarousal)
	ExportInt("solicitationdancerapechance", solicitationdancerapechance)
	ExportBool("solicitationguardgamble", solicitationguardgamble)
	ExportInt("yokeremovalhelpchance", yokeremovalhelpchance)
	ExportInt("yokeremovalwalkawayweight", yokeremovalwalkawayweight)
	ExportInt("yokeremovalrapeweight", yokeremovalrapeweight)
	ExportInt("yokeremovaltakekeyweight", yokeremovaltakekeyweight)
	ExportInt("yokeremovaladditemweight", yokeremovaladditemweight)
	ExportFloat("AradiaLivingHarnesskeychance", AradiaLivingHarnesskeychance)
	ExportBool("slavecollarbuffsactive", slavecollarbuffsactive)
	ExportBool("slavecollarjewelleryallowed", slavecollarjewelleryallowed)
	ExportInt("sexAttackCooldown", sexAttackCooldown)
	ExportBool("hisecallowarmbinder", hisecallowarmbinder)
	ExportBool("hisecuseyoke", hisecuseyoke)
	ExportInt("hisecremovalgoldperlevel", hisecremovalgoldperlevel)
	ExportBool("estrusincity", estrusincity)
	ExportBool("flashbangincity", flashbangincity)
	ExportInt("Difficulty", Difficulty)
	ExportBool("collarquestnofasttravel", collarquestnofasttravel)
	ExportBool("cursedcollarquestendgift", cursedcollarquestendgift)
	ExportBool("stripbeltsonrape", stripbeltsonrape)
	ExportInt("rapistgender", rapistgender)
	ExportBool("cursedcollarusepanelgag", cursedcollarusepanelgag)
	ExportInt("cursedcollarsurfaceweight", cursedcollarsurfaceweight)
	ExportInt("cursedcollarhideoutweight", cursedcollarhideoutweight)
	ExportInt("cursedcollardungeonweight", cursedcollardungeonweight)
	ExportFloat("drugweight", drugweight)
	ExportFloat("sprigganweight", sprigganweight)
	ExportFloat("estrusplantattack", estrusplantattack)
	ExportFloat("estrusimpregnatechance", estrusimpregnatechance)
	ExportBool("estrustentacleimpregnationonly", estrustentacleimpregnationonly)
	ExportBool("estrusdrawcrowd", estrusdrawcrowd)
	ExportFloat("enslaveweight", enslaveweight)
	ExportBool("selfbondage", selfbondage)
	ExportBool("dropkeys", dropkeys)
	ExportBool("dothetest", dothetest)
	ExportBool("usesuits", usesuits)
	ExportFloat("rubbersuitweight", rubbersuitweight)	
	ExportInt("rubberglovesbindchance", rubberglovesbindchance)
	ExportBool("lb", lb)
	ExportFloat("lbquestweight", lbquestweight)
	ExportFloat("handrestraintkeychance", handrestraintkeychance)
	ExportFloat("headrestraintkeychance", headrestraintkeychance)
	ExportFloat("bodyrestraintkeychance", bodyrestraintkeychance)
	ExportFloat("legrestraintkeychance", legrestraintkeychance)
	ExportFloat("lbkeydropmodifier", lbkeydropmodifier)
	ExportBool("resetfollowers", resetfollowers)
	ExportBool("devicecommentsenabled", devicecommentsenabled)
	ExportFloat("devicecommentscooldown", devicecommentscooldown)
	ExportFloat("devicecommentsactionchance", devicecommentsactionchance)
	ExportFloat("devicecommentsactionadditemsweight", devicecommentsactionadditemsweight)
	ExportFloat("devicecommentsactionrape", devicecommentsactionrape)
	ExportFloat("devicecommentsactiongivekeys", devicecommentsactiongivekeys)
	ExportBool("devicecommentsfollowersenabled", devicecommentsfollowersenabled)
	ExportBool("devicecommentsfolloweractionenabled", devicecommentsfolloweractionenabled)
	ExportBool("devicecommentsvisibleonly", devicecommentsvisibleonly)
	ExportBool("deviceactionsvisibleonly", deviceactionsvisibleonly)
	ExportBool("deviceactionsarousalmod", deviceactionsarousalmod)
	ExportInt("punishingitemsminlevel", punishingitemsminlevel)
	ExportBool("sexDisallowBeastRaces", sexDisallowBeastRaces)
	ExportBool("sexDisallowElder", sexDisallowElder)
	ExportBool("sexDisallowGuards", sexDisallowGuards)
	ExportBool("sexAllowHumanoids", sexAllowHumanoids)
	ExportBool("sexAllowCreatures", sexAllowCreatures)
	ExportBool("sexMatchingMobs", sexMatchingMobs)
	ExportInt("sexMinrapists", sexMinrapists)
	ExportInt("sexMaxrapists", sexMaxrapists)
	ExportBool("sexAllowThreesomes", sexAllowThreesomes)
	ExportBool("sexchastitypreventsrape", sexchastitypreventsrape)
	ExportBool("sexEnableNakedAttacks", sexEnableNakedAttacks)
	ExportBool("sexEnableBoundAttacks", sexEnableBoundAttacks)
	ExportFloat("sexTieUpOnRapeChance", sexTieUpOnRapeChance)	
	ExportFloat("sexNakedAttackChancePerTick", sexNakedAttackChancePerTick)
	ExportInt("sexEnableNakedAttacksArousalMin", sexEnableNakedAttacksArousalMin)
	ExportInt("sexUseConsensualScenesChance", sexUseConsensualScenesChance)
	ExportBool("sexEnableCombatAttacks", sexEnableCombatAttacks)
	ExportBool("sexEnableUnarmedAttacks", sexEnableUnarmedAttacks)
	ExportBool("sexEnableArousedAttacks", sexEnableArousedAttacks)
	ExportInt("sexArousedAttacksThreshold", sexArousedAttacksThreshold)
	ExportBool("sexGloballyEnabled", sexGloballyEnabled)
	ExportInt("sexCombatSurrenderHealth", sexCombatSurrenderHealth)	
	ExportFloat("sexCombatKnockAwayWeaponChance", sexCombatKnockAwayWeaponChance)
	ExportFloat("sexOutcomeHeal", sexOutcomeHeal)
	ExportFloat("sexOutcomeInn", sexOutcomeInn)
	ExportFloat("sexOutcomeBAQ", sexOutcomeBAQ)
	ExportFloat("sexOutcomeLeftinWilderness", sexOutcomeLeftinWilderness)
	ExportBool("sexForceLesbian", sexForceLesbian)
	ExportBool("sexBootsMakeHelpless", sexBootsMakeHelpless)
	ExportFloat("luckycharmdropchance", luckycharmdropchance)
	ExportBool("shameidle", shameidle)
	ExportBool("progressivebondage", progressivebondage)
	ExportBool("shutdownmod", shutdownmod)
	;ExportBool("overridenomales", overridenomales)
	ExportBool("baqEnabled", baqEnabled)
	ExportFloat("baqDoNothingWeight", baqDoNothingWeight)
	ExportFloat("baqGiveKeyWeight", baqGiveKeyWeight)
	ExportFloat("baqUnlockOneWeight", baqUnlockOneWeight)
	ExportFloat("baqUnlockAllWeight", baqUnlockAllWeight)
	ExportFloat("baqStartBAQWeight", baqStartBAQWeight)
	ExportFloat("baqAddRestraintsWeight", baqAddRestraintsWeight)
	ExportFloat("baqStealStuffWeight", baqStealStuffWeight)
	ExportFloat("baqRapeWeight", baqRapeWeight)
	ExportBool("selfbondageenable", selfbondageenable)	
	ExportBool("selfbondagewarning", selfbondagewarning)
	ExportInt("selfbondageminitems", selfbondageminitems)
	ExportInt("selfbondagemaxitems", selfbondagemaxitems)
	ExportInt("selfbondagecooldown", selfbondagecooldown)
	ExportFloat("selfbondagegastrapweight", selfbondagegastrapweight)
	ExportBool("selfbondagewhenrestrained", selfbondagewhenrestrained)
	ExportInt("rditemcooldownhours", rditemcooldownhours)
	ExportInt("rdsexactsneeded", rdsexactsneeded)
	ExportInt("rdbasearousalthreshold", rdbasearousalthreshold)
	ExportInt("rdarousalthresholdreduceperitem", rdarousalthresholdreduceperitem)
	ExportInt("rdfightoffmuliplier", rdfightoffmuliplier)
	ExportInt("rdsexactsdecayperday", rdsexactsdecayperday)
	ExportBool("rdallowhood", rdallowhood)
	ExportBool("rdrapeallowed", rdrapeallowed)
	ExportInt("rdrapecooldown", rdrapecooldown)
	ExportBool("lowperformancemode", lowperformancemode)
	ExportBool("dropusefulkeys", dropusefulkeys)
	ExportBool("scanforfollowers", scanforfollowers)
	ExportInt("SurrenderKey", SurrenderKey)
	ExportBool("breastresize", breastresize)
	ExportFloat("breastminsize", breastminsize)
	ExportFloat("breastmaxsize", breastmaxsize)
	ExportFloat("buttminsize", buttminsize)
	ExportFloat("buttmaxsize", buttmaxsize)	
	ExportBool("pienabled", pienabled)
	ExportFloat("piarrestweight", piarrestweight)
	ExportFloat("pibeltweight", pibeltweight)
	ExportFloat("pifineweight", pifineweight)
	ExportFloat("piletgoweight", piletgoweight)
	ExportFloat("pirapeweight", pirapeweight)
	ExportFloat("pitieupweight", pitieupweight)		
	ExportInt("MaxCombinations", MaxCombinations)
	ExportInt("NumbersPerTick", NumbersPerTick)
	ExportFloat("SpotChancePerTick", SpotChancePerTick)
	ExportFloat("KeyStealBaseChance", KeyStealBaseChance)	
	ExportInt("fasttravelcontrol", fasttravelcontrol)
	ExportBool("pimisogyny", pimisogyny)
	ExportBool("enablehornybuffs", enablehornybuffs)	
	ExportBool("uncontrollablelust", uncontrollablelust)		
	ExportFloat("restraintsdropchance", restraintsdropchance)
	ExportInt("rc_minplayerlevel", rc_minplayerlevel)
	ExportFloat("rc_itemdropchance", rc_itemdropchance)
	ExportFloat("rc_diarydropchance", rc_diarydropchance)
	ExportFloat("uncontrollablelustChance", uncontrollablelustChance)
	ExportInt("uncontrollablelustThreshold", uncontrollablelustThreshold)
	ExportBool("lockmenuwhentied", lockmenuwhentied)
	ExportFloat("shakyhands", shakyhands)
	ExportFloat("pimisogynyrapechance", pimisogynyrapechance)
	ExportFloat("picitizensreporttoguard", picitizensreporttoguard)	
	ExportInt("HornyBuffsThreshold", HornyBuffsThreshold)
	ExportFloat("tm_basesuccesschance", tm_basesuccesschance)
	ExportFloat("tm_wantsunlockedchance", tm_wantsunlockedchance)
	ExportFloat("tm_fail_donothingweight", tm_fail_donothingweight)
	ExportFloat("tm_fail_tiesPC", tm_fail_tiesPC)
	ExportFloat("tm_fail_rapes", tm_fail_rapes)
	ExportFloat("tm_fail_reports", tm_fail_reports)
	ExportFloat("tm_fail_tiesboth", tm_fail_tiesboth)
	ExportFloat("anklechainsweight", anklechainsweight)
	ExportBool("tm_enabled", tm_enabled)
	ExportBool("selfbondagenoitemdrops", selfbondagenoitemdrops)
	ExportBool("pidelayedarrest", pidelayedarrest)	
	ExportFloat("stripteasecollarweight", stripteasecollarweight)
	ExportFloat("simpleslaveryweight", simpleslaveryweight)
	ExportFloat("sexOutcomeSS", sexOutcomeSS)
	ExportFloat("AradiaRogueWeight", AradiaRogueWeight)
	ExportFloat("TentacleParasiteWeight", TentacleParasiteWeight)
	ExportInt("pibounty", pibounty)
	ExportBool("cuminflationenable", cuminflationenable)
	ExportFloat("gagtalkchance", gagtalkchance)
	ExportFloat("gagtalksuccesschance", gagtalksuccesschance)
	ExportFloat("bellyminsize", bellyminsize)
	ExportFloat("bellymaxsize", bellymaxsize)
	ExportFloat("pimisogynyrapeoralweight", pimisogynyrapeoralweight)
	ExportBool("enabledevicebuffs", enabledevicebuffs)	
	ExportFloat("dashaitemsweight", dashaitemsweight)
	ExportBool("alwayssleepnaked", alwayssleepnaked)
	ExportFloat("traprewards", traprewards)		
	ExportBool("shoppingquestenabled", shoppingquestenabled)
	ExportBool("sexOutcomeHardcore", sexOutcomeHardcore)
	ExportFloat("sexOutcomeRobberyChance", sexOutcomeRobberyChance)
	ExportInt("sexAttackThreshold", sexAttackThreshold)
	ExportBool("sexEnableNightAttacks", sexEnableNightAttacks)
	ExportFloat("piyokeweight", piyokeweight)
	ExportBool("pienforcenuditylaw", pienforcenuditylaw)
	ExportFloat("sexCombatSurrenderRestraintsChance", sexCombatSurrenderRestraintsChance)
	ExportBool("lossofcontrol", lossofcontrol)
	ExportFloat("sleepbelterweight", sleepbelterweight)
	ExportFloat("pichainharnessweight", pichainharnessweight)
	ExportInt("solicitationchainharnessweight", solicitationchainharnessweight)
	ExportFloat("ChainHarnessWeight", ChainHarnessWeight)
	ExportBool("chastitygearneedsgag", chastitygearneedsgag)
	ExportFloat("sexCombatNPCSurrenderChance", sexCombatNPCSurrenderChance)
	ExportInt("numboundgirls", numboundgirls)	
	ExportFloat("catsuitweight", catsuitweight)	
	ExportFloat("hobbledressweight", hobbledressweight)	
	ExportFloat("straitjacketweight", straitjacketweight)
	ExportFloat("whorecollarweight", whorecollarweight)
	ExportFloat("sexCombatResistChance", sexCombatResistChance)
	ExportInt("prison_Difficulty", prison_Difficulty)	
	ExportInt("prison_EscapeDifficulty", prison_EscapeDifficulty)	
	ExportBool("prison_NoSex", prison_NoSex)
	ExportBool("prison_useVanilla", prison_useVanilla)
	ExportBool("prison_Whipping", prison_Whipping)
	ExportFloat("prison_usePOChance", prison_usePOChance)
	ExportBool("mercyfuldungeons", mercyfuldungeons)
	ExportFloat("FurnitureTrapWeight", FurnitureTrapWeight)
	ExportFloat("UltraTightSJWeight", UltraTightSJWeight)
	JsonUtil.Save(File, false)
EndFunction

function ImportSettings()
	File = "../DCUR/DCURConfig.json"
	String version = ""
	If JsonUtil.GetStringValue(File, "Version", version) != GetStringVer()
		If !ShowMessage("$DCL_IMPORTVERSIONWARNING")
			Return
		Endif
	EndIf
	trapcooldown = ImportFloat("trapcooldown", trapcooldown)
	useflashbanganimation = ImportBool("useflashbanganimation", useflashbanganimation)
	flashbangnodroppingitems = ImportBool("flashbangnodroppingitems", flashbangnodroppingitems)
	modenabled = ImportBool("modenabled", modenabled)
	containersenabled = ImportBool("containersenabled", containersenabled)
	corpsesenabled = ImportBool("corpsesenabled", corpsesenabled)
	plantsenabled = ImportBool("plantsenabled", plantsenabled)
	minesenabled = ImportBool("minesenabled", minesenabled)
	doorsenabled = ImportBool("doorsenabled", doorsenabled)
	lockeddoorsonly = ImportBool("lockeddoorsonly", lockeddoorsonly)
	debugenabled = ImportBool("debugenabled", debugenabled)
	debuglogenabled = ImportBool("debuglogenabled", debuglogenabled)
	resetquests = ImportBool("resetquests", resetquests)
	alwaysequipfullset = ImportBool("alwaysequipfullset", alwaysequipfullset)
	heavilyrestrainedthreshold = ImportInt("heavilyrestrainedthreshold", heavilyrestrainedthreshold)
	basechance = ImportFloat("basechance", basechance)
	minArousal = ImportInt("minArousal", minArousal)
	maxArousal = ImportInt("maxArousal", maxArousal)
	numEquippedItems = ImportInt("numEquippedItems", numEquippedItems)
	losekeychance = ImportInt("losekeychance", losekeychance)
	useCD = ImportBool("useCD", useCD)
	useSD = ImportBool("useSD", useSD)
	useSkoomaWhore = ImportBool("useSkoomaWhore", useSkoomaWhore)
	useMME = ImportBool("useMME", useMME)
	useAradia = ImportBool("useAradia", useAradia)
	useEstrus = ImportBool("useEstrus", useEstrus)
	useArmbinder = ImportBool("useArmbinder", useArmbinder)
	useBlindfold = ImportBool("useBlindfold", useBlindfold)
	useGag = ImportBool("useGag", useGag)
	useBra = ImportBool("useBra", useBra)
	useBelt = ImportBool("useBelt", useBelt)
	useBoots = ImportBool("useBoots", useBoots)
	useHoods = ImportBool("useHoods", useHoods)
	useVPiercing = ImportBool("useVPiercing", useVPiercing)
	useNPiercing = ImportBool("useNPiercing", useNPiercing)
	equiptheme = ImportInt("equiptheme", equiptheme)
	equipthemefollower = ImportInt("equipthemefollower", equipthemefollower)
	useSlaveHarness = ImportBool("useSlaveHarness", useSlaveHarness)
	sleepdungeonchance = ImportFloat("sleepdungeonchance", sleepdungeonchance)
	sleepwildernesschance = ImportFloat("sleepwildernesschance", sleepwildernesschance)
	sleepcitychance = ImportFloat("sleepcitychance", sleepcitychance)
	sleepnakedbonus = ImportFloat("sleepnakedbonus", sleepnakedbonus)
	sleeparousedbonus = ImportFloat("sleeparousedbonus", sleeparousedbonus)
	dungeonchance = ImportFloat("dungeonchance", dungeonchance)
	wildernesschance = ImportFloat("wildernesschance", wildernesschance)
	citychance = ImportFloat("citychance", citychance)
	useRefinedOptions = ImportBool("useRefinedOptions", useRefinedOptions)
	arousalmodifier = ImportFloat("arousalmodifier", arousalmodifier)
	arousalweight = ImportFloat("arousalweight", arousalweight)
	deadbodymodifier = ImportFloat("deadbodymodifier", deadbodymodifier)
	doormodifier = ImportFloat("doormodifier", doormodifier)
	enableundress = ImportBool("enableundress", enableundress)
	escape_containersenabled = ImportBool("escape_containersenabled", escape_containersenabled)
	escape_corpsesenabled = ImportBool("escape_corpsesenabled", escape_corpsesenabled)
	sharpitemchance = ImportInt("sharpitemchance", sharpitemchance)
	keydropchance = ImportFloat("keydropchance", keydropchance)
	rarekeydropchance = ImportFloat("rarekeydropchance", rarekeydropchance)
	keydropnodemodifier = ImportFloat("keydropnodemodifier", keydropnodemodifier)
	chastitykeyweight = ImportFloat("chastitykeyweight", chastitykeyweight)
	restraintskeyweight = ImportFloat("restraintskeyweight", restraintskeyweight)
	piercingkeyweight = ImportFloat("piercingkeyweight", piercingkeyweight)
	commoncontainerweight = ImportFloat("commoncontainerweight", commoncontainerweight)
	ornatecontainerweight = ImportFloat("ornatecontainerweight", ornatecontainerweight)
	nokeyswithoutrestraints = ImportBool("nokeyswithoutrestraints", nokeyswithoutrestraints)
	minnumEquippedItems = ImportInt("minnumEquippedItems", minnumEquippedItems)
	useitemsfrominventory = ImportBool("useitemsfrominventory", useitemsfrominventory)
	trapsenabled = ImportBool("trapsenabled", trapsenabled)
	trapchancemodifier = ImportFloat("trapchancemodifier", trapchancemodifier)
	enablefollowersupport = ImportBool("enablefollowersupport", enablefollowersupport)
	allowarmbindersfollowers = ImportBool("allowarmbindersfollowers", allowarmbindersfollowers)	
	consistenttheme = ImportBool("consistenttheme", consistenttheme)
	disablesafewords = ImportBool("disablesafewords", disablesafewords)	
	plantchancemodifier = ImportFloat("plantchancemodifier", plantchancemodifier)
	createkeys = ImportBool("createkeys", createkeys)
	; = ImportBool("", EssentialPlayer = true
	pickpocketkeys = ImportFloat("pickpocketkeys", pickpocketkeys)
	ringgagweight = ImportInt("ringgagweight", ringgagweight)
	ballgagweight = ImportInt("ballgagweight", ballgagweight)
	panelgagweight = ImportInt("panelgagweight", panelgagweight)
	slavebootsweight = ImportInt("slavebootsweight", slavebootsweight)
	ponybootsweight = ImportInt("ponybootsweight", ponybootsweight)
	corsetweight = ImportInt("corsetweight", corsetweight)
	collarharnessweight = ImportInt("collarharnessweight", collarharnessweight)
	lockingharnessweight = ImportInt("lockingharnessweight", lockingharnessweight)
	armbinderweight = ImportInt("armbinderweight", armbinderweight)
	shacklesweight = ImportInt("shacklesweight", shacklesweight)
	yokeweight = ImportInt("yokeweight", yokeweight)
	estrusweight = ImportFloat("estrusweight", estrusweight)
	FlashBangChestWeight = ImportFloat("FlashBangChestWeight", FlashBangChestWeight)
	cursedcollarquestchance = ImportFloat("cursedcollarquestchance", cursedcollarquestchance)
	hisecweight = ImportFloat("hisecweight", hisecweight)
	slavecollarweight = ImportFloat("slavecollarweight", slavecollarweight)
	slavegagweight = ImportFloat("slavegagweight", slavegagweight)
	AradiaLivingHarnessWeight = ImportFloat("AradiaLivingHarnessWeight", AradiaLivingHarnessWeight)
	standardweight = ImportFloat("standardweight", standardweight)
	slaveitemsweight = ImportFloat("slaveitemsweight", slaveitemsweight)
	slutcollarweight = ImportFloat("slutcollarweight", slutcollarweight)
	bondageadventuretrapweight = ImportFloat("bondageadventuretrapweight", bondageadventuretrapweight)
	slavecollarkeyneeded = ImportBool("slavecollarkeyneeded", slavecollarkeyneeded)
	slavecollarminsexacts = ImportInt("slavecollarminsexacts", slavecollarminsexacts)
	slavecollarmaxsexacts = ImportInt("slavecollarmaxsexacts", slavecollarmaxsexacts)
	slavecollarmindaysworn = ImportInt("slavecollarmindaysworn", slavecollarmindaysworn)
	slavecollarmaxdaysworn = ImportInt("slavecollarmaxdaysworn", slavecollarmaxdaysworn)
	slutcollarminsexlessdaysneeded = ImportInt("slutcollarminsexlessdaysneeded", slutcollarminsexlessdaysneeded)
	slutcollarmaxsexlessdaysneeded = ImportInt("slutcollarmaxsexlessdaysneeded", slutcollarmaxsexlessdaysneeded)
	slavegagreleasetime = ImportInt("slavegagreleasetime", slavegagreleasetime)
	shockbootsweight = ImportFloat("shockbootsweight", shockbootsweight)
	slavebeltweight = ImportFloat("slavebeltweight", slavebeltweight)
	rubberdollweight = ImportFloat("rubberdollweight", rubberdollweight)
	exhibitionistsuitweight = ImportFloat("exhibitionistsuitweight", exhibitionistsuitweight)
	slavecollarbeltweight = ImportInt("slavecollarbeltweight", slavecollarbeltweight)
	slavecollarcrimeweight = ImportInt("slavecollarcrimeweight", slavecollarcrimeweight)
	slavecollarsolicitationcriticalfailurechance = ImportInt("slavecollarsolicitationcriticalfailurechance", slavecollarsolicitationcriticalfailurechance)
	slavecollarsolicitationsuccesschance = ImportInt("slavecollarsolicitationsuccesschance", slavecollarsolicitationsuccesschance)
	solicitationmintip = ImportInt("solicitationmintip", solicitationmintip)
	solicitationmaxtip = ImportInt("solicitationmaxtip", solicitationmaxtip)
	slavecollarsolicitationenabled = ImportInt("slavecollarsolicitationenabled", slavecollarsolicitationenabled)
	solicitationbountyamount = ImportInt("solicitationbountyamount", solicitationbountyamount)
	solicitationadditemsweight = ImportInt("solicitationadditemsweight", solicitationadditemsweight)
	solicitationaddpunishingitemweight = ImportInt("solicitationaddpunishingitemweight", solicitationaddpunishingitemweight)
	solicitationbondagesexchance = ImportInt("solicitationbondagesexchance", solicitationbondagesexchance)
	solicitationbondagesexremovalchance = ImportInt("solicitationbondagesexremovalchance", solicitationbondagesexremovalchance)
	solicitationslutcollarweight = ImportInt("solicitationslutcollarweight", solicitationslutcollarweight)
	solicitationinnsonly = ImportBool("solicitationinnsonly", solicitationinnsonly)
	solicitationpaychance = ImportInt("solicitationpaychance", solicitationpaychance)
	solicitationthreesomechance = ImportInt("solicitationthreesomechance", solicitationthreesomechance)
	solicitationdrugchance = ImportInt("solicitationdrugchance", solicitationdrugchance)
	solicitationenforceclothing = ImportBool("solicitationenforceclothing", solicitationenforceclothing)
	solicitationinnkeepershare = ImportInt("solicitationinnkeepershare", solicitationinnkeepershare)
	solicitationinnchancebonus = ImportInt("solicitationinnchancebonus", solicitationinnchancebonus)
	solicitationminNPCarousal = ImportInt("solicitationminNPCarousal", solicitationminNPCarousal)
	solicitationdancerapechance = ImportInt("solicitationdancerapechance", solicitationdancerapechance)
	solicitationguardgamble = ImportBool("solicitationguardgamble", solicitationguardgamble)
	yokeremovalhelpchance = ImportInt("yokeremovalhelpchance", yokeremovalhelpchance)
	yokeremovalwalkawayweight = ImportInt("yokeremovalwalkawayweight", yokeremovalwalkawayweight)
	yokeremovalrapeweight = ImportInt("yokeremovalrapeweight", yokeremovalrapeweight)
	yokeremovaltakekeyweight = ImportInt("yokeremovaltakekeyweight", yokeremovaltakekeyweight)
	yokeremovaladditemweight = ImportInt("yokeremovaladditemweight", yokeremovaladditemweight)
	AradiaLivingHarnesskeychance = ImportFloat("AradiaLivingHarnesskeychance", AradiaLivingHarnesskeychance)
	slavecollarbuffsactive = ImportBool("slavecollarbuffsactive", slavecollarbuffsactive)
	slavecollarjewelleryallowed = ImportBool("slavecollarjewelleryallowed", slavecollarjewelleryallowed)
	sexAttackCooldown = ImportInt("sexAttackCooldown", sexAttackCooldown)
	hisecallowarmbinder = ImportBool("hisecallowarmbinder", hisecallowarmbinder)
	hisecuseyoke = ImportBool("hisecuseyoke", hisecuseyoke)
	hisecremovalgoldperlevel = ImportInt("hisecremovalgoldperlevel", hisecremovalgoldperlevel)
	estrusincity = ImportBool("estrusincity", estrusincity)
	flashbangincity = ImportBool("flashbangincity", flashbangincity)
	Difficulty = ImportInt("Difficulty", Difficulty)
	collarquestnofasttravel = ImportBool("collarquestnofasttravel", collarquestnofasttravel)
	cursedcollarquestendgift = ImportBool("cursedcollarquestendgift", cursedcollarquestendgift)
	stripbeltsonrape = ImportBool("stripbeltsonrape", stripbeltsonrape)
	rapistgender = ImportInt("rapistgender", rapistgender)
	cursedcollarusepanelgag = ImportBool("cursedcollarusepanelgag", cursedcollarusepanelgag)
	cursedcollarsurfaceweight = ImportInt("cursedcollarsurfaceweight", cursedcollarsurfaceweight)
	cursedcollarhideoutweight = ImportInt("cursedcollarhideoutweight", cursedcollarhideoutweight)
	cursedcollardungeonweight = ImportInt("cursedcollardungeonweight", cursedcollardungeonweight)
	drugweight = ImportFloat("drugweight", drugweight)
	sprigganweight = ImportFloat("sprigganweight", sprigganweight)
	estrusplantattack = ImportFloat("estrusplantattack", estrusplantattack)
	estrusimpregnatechance = ImportFloat("estrusimpregnatechance", estrusimpregnatechance)
	estrustentacleimpregnationonly = ImportBool("estrustentacleimpregnationonly", estrustentacleimpregnationonly)
	estrusdrawcrowd = ImportBool("estrusdrawcrowd", estrusdrawcrowd)
	enslaveweight = ImportFloat("enslaveweight", enslaveweight)
	selfbondage = ImportBool("selfbondage", selfbondage)
	dropkeys = ImportBool("dropkeys", dropkeys)
	dothetest = ImportBool("dothetest", dothetest)
	usesuits = ImportBool("usesuits", usesuits)
	rubbersuitweight = ImportFloat("rubbersuitweight", rubbersuitweight)	
	rubberglovesbindchance = ImportInt("rubberglovesbindchance", rubberglovesbindchance)
	lb = ImportBool("lb", lb)
	lbquestweight = ImportFloat("lbquestweight", lbquestweight)
	handrestraintkeychance = ImportFloat("handrestraintkeychance", handrestraintkeychance)
	headrestraintkeychance = ImportFloat("headrestraintkeychance", headrestraintkeychance)
	bodyrestraintkeychance = ImportFloat("bodyrestraintkeychance", bodyrestraintkeychance)
	legrestraintkeychance = ImportFloat("legrestraintkeychance", legrestraintkeychance)
	lbkeydropmodifier = ImportFloat("lbkeydropmodifier", lbkeydropmodifier)
	resetfollowers = ImportBool("resetfollowers", resetfollowers)
	devicecommentsenabled = ImportBool("devicecommentsenabled", devicecommentsenabled)
	devicecommentscooldown = ImportFloat("devicecommentscooldown", devicecommentscooldown)
	devicecommentsactionchance = ImportFloat("devicecommentsactionchance", devicecommentsactionchance)
	devicecommentsactionadditemsweight = ImportFloat("devicecommentsactionadditemsweight", devicecommentsactionadditemsweight)
	devicecommentsactionrape = ImportFloat("devicecommentsactionrape", devicecommentsactionrape)
	devicecommentsactiongivekeys = ImportFloat("devicecommentsactiongivekeys", devicecommentsactiongivekeys)
	devicecommentsfollowersenabled = ImportBool("devicecommentsfollowersenabled", devicecommentsfollowersenabled)
	devicecommentsfolloweractionenabled = ImportBool("devicecommentsfolloweractionenabled", devicecommentsfolloweractionenabled)
	devicecommentsvisibleonly = ImportBool("devicecommentsvisibleonly", devicecommentsvisibleonly)
	deviceactionsvisibleonly = ImportBool("deviceactionsvisibleonly", deviceactionsvisibleonly)
	deviceactionsarousalmod = ImportBool("deviceactionsarousalmod", deviceactionsarousalmod)
	punishingitemsminlevel = ImportInt("punishingitemsminlevel", punishingitemsminlevel)
	sexDisallowBeastRaces = ImportBool("sexDisallowBeastRaces", sexDisallowBeastRaces)
	sexDisallowElder = ImportBool("sexDisallowElder", sexDisallowElder)
	sexDisallowGuards = ImportBool("sexDisallowGuards", sexDisallowGuards)
	sexAllowHumanoids = ImportBool("sexAllowHumanoids", sexAllowHumanoids)
	sexAllowCreatures = ImportBool("sexAllowCreatures", sexAllowCreatures)
	sexMatchingMobs = ImportBool("sexMatchingMobs", sexMatchingMobs)
	sexMinrapists = ImportInt("sexMinrapists", sexMinrapists)
	sexMaxrapists = ImportInt("sexMaxrapists", sexMaxrapists)
	sexAllowThreesomes = ImportBool("sexAllowThreesomes", sexAllowThreesomes)
	sexchastitypreventsrape = ImportBool("sexchastitypreventsrape", sexchastitypreventsrape)
	sexEnableNakedAttacks = ImportBool("sexEnableNakedAttacks", sexEnableNakedAttacks)
	sexEnableBoundAttacks = ImportBool("sexEnableBoundAttacks", sexEnableBoundAttacks)
	sexTieUpOnRapeChance = ImportFloat("sexTieUpOnRapeChance", sexTieUpOnRapeChance)	
	sexNakedAttackChancePerTick = ImportFloat("sexNakedAttackChancePerTick", sexNakedAttackChancePerTick)
	sexEnableNakedAttacksArousalMin = ImportInt("sexEnableNakedAttacksArousalMin", sexEnableNakedAttacksArousalMin)
	sexUseConsensualScenesChance = ImportInt("sexUseConsensualScenesChance", sexUseConsensualScenesChance)
	sexEnableCombatAttacks = ImportBool("sexEnableCombatAttacks", sexEnableCombatAttacks)
	sexEnableUnarmedAttacks = ImportBool("sexEnableUnarmedAttacks", sexEnableUnarmedAttacks)
	sexEnableArousedAttacks = ImportBool("sexEnableArousedAttacks", sexEnableArousedAttacks)
	sexArousedAttacksThreshold = ImportInt("sexArousedAttacksThreshold", sexArousedAttacksThreshold)
	sexGloballyEnabled = ImportBool("sexGloballyEnabled", sexGloballyEnabled)
	sexCombatSurrenderHealth = ImportInt("sexCombatSurrenderHealth", sexCombatSurrenderHealth)	
	sexCombatKnockAwayWeaponChance = ImportFloat("sexCombatKnockAwayWeaponChance", sexCombatKnockAwayWeaponChance)
	sexOutcomeHeal = ImportFloat("sexOutcomeHeal", sexOutcomeHeal)
	sexOutcomeInn = ImportFloat("sexOutcomeInn", sexOutcomeInn)
	sexOutcomeBAQ = ImportFloat("sexOutcomeBAQ", sexOutcomeBAQ)
	sexOutcomeLeftinWilderness = ImportFloat("sexOutcomeLeftinWilderness", sexOutcomeLeftinWilderness)
	sexForceLesbian = ImportBool("sexForceLesbian", sexForceLesbian)
	sexBootsMakeHelpless = ImportBool("sexBootsMakeHelpless", sexBootsMakeHelpless)
	luckycharmdropchance = ImportFloat("luckycharmdropchance", luckycharmdropchance)
	shameidle = ImportBool("shameidle", shameidle)
	progressivebondage = ImportBool("progressivebondage", progressivebondage)
	shutdownmod = ImportBool("shutdownmod", shutdownmod)
	;overridenomales = ImportBool("overridenomales", overridenomales)
	baqEnabled = ImportBool("baqEnabled", baqEnabled)
	baqDoNothingWeight = ImportFloat("baqDoNothingWeight", baqDoNothingWeight)
	baqGiveKeyWeight = ImportFloat("baqGiveKeyWeight", baqGiveKeyWeight)
	baqUnlockOneWeight = ImportFloat("baqUnlockOneWeight", baqUnlockOneWeight)
	baqUnlockAllWeight = ImportFloat("baqUnlockAllWeight", baqUnlockAllWeight)
	baqStartBAQWeight = ImportFloat("baqStartBAQWeight", baqStartBAQWeight)
	baqAddRestraintsWeight = ImportFloat("baqAddRestraintsWeight", baqAddRestraintsWeight)
	baqStealStuffWeight = ImportFloat("baqStealStuffWeight", baqStealStuffWeight)
	baqRapeWeight = ImportFloat("baqRapeWeight", baqRapeWeight)
	selfbondageenable = ImportBool("selfbondageenable", selfbondageenable)	
	selfbondagewarning = ImportBool("selfbondagewarning", selfbondagewarning)
	selfbondageminitems = ImportInt("selfbondageminitems", selfbondageminitems)
	selfbondagemaxitems = ImportInt("selfbondagemaxitems", selfbondagemaxitems)
	selfbondagecooldown = ImportInt("selfbondagecooldown", selfbondagecooldown)
	selfbondagegastrapweight = ImportFloat("selfbondagegastrapweight", selfbondagegastrapweight)
	selfbondagewhenrestrained = ImportBool("selfbondagewhenrestrained", selfbondagewhenrestrained)
	rditemcooldownhours = ImportInt("rditemcooldownhours", rditemcooldownhours)
	rdsexactsneeded = ImportInt("rdsexactsneeded", rdsexactsneeded)
	rdbasearousalthreshold = ImportInt("rdbasearousalthreshold", rdbasearousalthreshold)
	rdarousalthresholdreduceperitem = ImportInt("rdarousalthresholdreduceperitem", rdarousalthresholdreduceperitem)
	rdfightoffmuliplier = ImportInt("rdfightoffmuliplier", rdfightoffmuliplier)
	rdsexactsdecayperday = ImportInt("rdsexactsdecayperday", rdsexactsdecayperday)
	rdallowhood = ImportBool("rdallowhood", rdallowhood)
	rdrapeallowed = ImportBool("rdrapeallowed", rdrapeallowed)
	rdrapecooldown = ImportInt("rdrapecooldown", rdrapecooldown)
	lowperformancemode = ImportBool("lowperformancemode", lowperformancemode)
	dropusefulkeys = ImportBool("dropusefulkeys", dropusefulkeys)
	scanforfollowers = ImportBool("scanforfollowers", scanforfollowers)
	SurrenderKey = ImportInt("SurrenderKey", SurrenderKey)
	breastresize = ImportBool("breastresize", breastresize)
	breastminsize = ImportFloat("breastminsize", breastminsize)
	breastmaxsize = ImportFloat("breastmaxsize", breastmaxsize)
	buttminsize = ImportFloat("buttminsize", buttminsize)
	buttmaxsize = ImportFloat("buttmaxsize", buttmaxsize)	
	pienabled = ImportBool("pienabled", pienabled)
	piarrestweight = ImportFloat("piarrestweight", piarrestweight)
	pibeltweight = ImportFloat("pibeltweight", pibeltweight)
	pifineweight = ImportFloat("pifineweight", pifineweight)
	piletgoweight = ImportFloat("piletgoweight", piletgoweight)
	pirapeweight = ImportFloat("pirapeweight", pirapeweight)
	pitieupweight = ImportFloat("pitieupweight", pitieupweight)		
	MaxCombinations = ImportInt("MaxCombinations", MaxCombinations)
	NumbersPerTick = ImportInt("NumbersPerTick", NumbersPerTick)
	SpotChancePerTick = ImportFloat("SpotChancePerTick", SpotChancePerTick)
	KeyStealBaseChance = ImportFloat("KeyStealBaseChance", KeyStealBaseChance)	
	fasttravelcontrol = ImportInt("fasttravelcontrol", fasttravelcontrol)
	pimisogyny = ImportBool("pimisogyny", pimisogyny)
	enablehornybuffs = ImportBool("enablehornybuffs", enablehornybuffs)	
	uncontrollablelust = ImportBool("uncontrollablelust", uncontrollablelust)		
	restraintsdropchance = ImportFloat("restraintsdropchance", restraintsdropchance)
	rc_minplayerlevel = ImportInt("rc_minplayerlevel", rc_minplayerlevel)
	rc_itemdropchance = ImportFloat("rc_itemdropchance", rc_itemdropchance)
	rc_diarydropchance = ImportFloat("rc_diarydropchance", rc_diarydropchance)
	uncontrollablelustChance = ImportFloat("uncontrollablelustChance", uncontrollablelustChance)
	uncontrollablelustThreshold = ImportInt("uncontrollablelustThreshold", uncontrollablelustThreshold)
	lockmenuwhentied = ImportBool("lockmenuwhentied", lockmenuwhentied)
	shakyhands = ImportFloat("shakyhands", shakyhands)
	pimisogynyrapechance = ImportFloat("pimisogynyrapechance", pimisogynyrapechance)
	picitizensreporttoguard = ImportFloat("picitizensreporttoguard", picitizensreporttoguard)
	HornyBuffsThreshold = ImportInt("HornyBuffsThreshold", HornyBuffsThreshold)
	tm_basesuccesschance = ImportFloat("tm_basesuccesschance", tm_basesuccesschance)
	tm_wantsunlockedchance = ImportFloat("tm_wantsunlockedchance", tm_wantsunlockedchance)
	tm_fail_donothingweight = ImportFloat("tm_fail_donothingweight", tm_fail_donothingweight)
	tm_fail_tiesPC = ImportFloat("tm_fail_tiesPC", tm_fail_tiesPC)
	tm_fail_rapes = ImportFloat("tm_fail_rapes", tm_fail_rapes)
	tm_fail_reports = ImportFloat("tm_fail_reports", tm_fail_reports)
	tm_fail_tiesboth = ImportFloat("tm_fail_tiesboth", tm_fail_tiesboth)
	anklechainsweight = ImportFloat("anklechainsweight", anklechainsweight)
	tm_enabled = ImportBool("tm_enabled", tm_enabled)
	selfbondagenoitemdrops = ImportBool("selfbondagenoitemdrops", selfbondagenoitemdrops)
	pidelayedarrest = ImportBool("pidelayedarrest", pidelayedarrest)	
	stripteasecollarweight = ImportFloat("stripteasecollarweight", stripteasecollarweight)
	simpleslaveryweight = ImportFloat("simpleslaveryweight", simpleslaveryweight)
	sexOutcomeSS = ImportFloat("sexOutcomeSS", sexOutcomeSS)
	AradiaRogueWeight = ImportFloat("AradiaRogueWeight", AradiaRogueWeight)
	TentacleParasiteWeight = ImportFloat("TentacleParasiteWeight", TentacleParasiteWeight)
	pibounty = ImportInt("pibounty", pibounty)
	cuminflationenable = ImportBool("cuminflationenable", cuminflationenable)
	gagtalkchance = ImportFloat("gagtalkchance", gagtalkchance)
	gagtalksuccesschance = ImportFloat("gagtalksuccesschance", gagtalksuccesschance)
	bellyminsize = ImportFloat("bellyminsize", bellyminsize)
	bellymaxsize = ImportFloat("bellymaxsize", bellymaxsize)
	pimisogynyrapeoralweight = ImportFloat("pimisogynyrapeoralweight", pimisogynyrapeoralweight)
	enabledevicebuffs = ImportBool("enabledevicebuffs", enabledevicebuffs)	
	dashaitemsweight = ImportFloat("dashaitemsweight", dashaitemsweight)
	alwayssleepnaked = ImportBool("alwayssleepnaked", alwayssleepnaked)	
	traprewards = ImportFloat("traprewards", traprewards)
	shoppingquestenabled = ImportBool("shoppingquestenabled", shoppingquestenabled)
	sexOutcomeHardcore = ImportBool("sexOutcomeHardcore", sexOutcomeHardcore)
	sexOutcomeRobberyChance = ImportFloat("sexOutcomeRobberyChance", sexOutcomeRobberyChance)
	sexAttackThreshold = ImportInt("sexAttackThreshold", sexAttackThreshold)
	sexEnableNightAttacks = ImportBool("sexEnableNightAttacks", sexEnableNightAttacks)
	piyokeweight = ImportFloat("piyokeweight", piyokeweight)
	pienforcenuditylaw = ImportBool("pienforcenuditylaw", pienforcenuditylaw)
	sexCombatSurrenderRestraintsChance = ImportFloat("sexCombatSurrenderRestraintsChance", sexCombatSurrenderRestraintsChance)
	lossofcontrol = ImportBool("lossofcontrol", lossofcontrol)
	sleepbelterweight = ImportFloat("sleepbelterweight", sleepbelterweight)
	pichainharnessweight = ImportFloat("pichainharnessweight", pichainharnessweight)
	solicitationchainharnessweight = ImportInt("solicitationchainharnessweight", solicitationchainharnessweight)
	ChainHarnessWeight = ImportFloat("ChainHarnessWeight", ChainHarnessWeight)
	chastitygearneedsgag = ImportBool("chastitygearneedsgag", chastitygearneedsgag)
	sexCombatNPCSurrenderChance = ImportFloat("sexCombatNPCSurrenderChance", sexCombatNPCSurrenderChance)
	numboundgirls = ImportInt("numboundgirls", numboundgirls)	
	catsuitweight = ImportFloat("catsuitweight", catsuitweight)	
	hobbledressweight = ImportFloat("hobbledressweight", hobbledressweight)	
	straitjacketweight = ImportFloat("straitjacketweight", straitjacketweight)
	whorecollarweight = ImportFloat("whorecollarweight", whorecollarweight)	
	sexCombatResistChance = ImportFloat("sexCombatResistChance", sexCombatResistChance)
	prison_Difficulty = ImportInt("prison_Difficulty", prison_Difficulty)	
	prison_EscapeDifficulty = ImportInt("prison_EscapeDifficulty", prison_EscapeDifficulty)	
	prison_NoSex = ImportBool("prison_NoSex", prison_NoSex)
	prison_useVanilla = ImportBool("prison_useVanilla", prison_useVanilla)
	prison_Whipping = ImportBool("prison_Whipping", prison_Whipping)
	prison_usePOChance = ImportFloat("prison_usePOChance", prison_usePOChance)
	mercyfuldungeons = ImportBool("mercyfuldungeons", mercyfuldungeons)
	FurnitureTrapWeight = ImportFloat("FurnitureTrapWeight", FurnitureTrapWeight)
	UltraTightSJWeight = ImportFloat("UltraTightSJWeight", UltraTightSJWeight)
	SetVariables(firststart = false)
EndFunction
FormList Property dcur_freeDDslotslist  Auto  

FormList Property dcur_allowedDDitemlist  Auto  

GlobalVariable Property dcur_misogyny_cooldown  Auto  

GlobalVariable Property dcur_tieme_enabled  Auto  
