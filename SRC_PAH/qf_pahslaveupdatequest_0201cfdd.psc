;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname QF_PAHSlaveUpdateQuest_0201CFDD Extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Debug.Notification("Applying update: " + PAHSlaveStoreQuest.SlaveCount() as String + " slaves")
PAHSlaveAlias slave_alias
Int i = PAHSlaveStoreQuest.Slaves.length
while i > 0
	i -= 1
	if PAHSlaveStoreQuest.Slaves[i] != None
		slave_alias = PAHSlaveCoreQuest.slave_aliases[i] as PAHSlaveAlias
		slave_alias.ForceRefTo(PAHSlaveStoreQuest.Slaves[i])
		slave_alias.ReInitOldVersionSlave()
                                slave_alias.EquipCollar()
	endif
endwhile

PAHSlaveCoreQuest.UpdateSlaveCounts()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

PAHSlaveQuestCore Property PAHSlaveCoreQuest Auto
PAHSlaveStoreScript Property PAHSlaveStoreQuest Auto
